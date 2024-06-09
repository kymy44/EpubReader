from rest_framework import viewsets, permissions
from fileAdmin.models import File, Q
from fileAdmin.serializers import FileSerializer
from rest_framework.response import Response
from rest_framework import status
#from django.core.files import File
from rest_framework.decorators import action


class FileViewSet(viewsets.ModelViewSet):
    queryset = File.objects.all()
    serializer_class = FileSerializer
    permission_classes = [permissions.IsAuthenticated]

    def list(self, request):  # sobreescribo el método por defecto para el GET de listas
        reqUser = self.request.user
        files_qs = File.objects.filter(user=reqUser)
        serializer = FileSerializer(files_qs, many=True)
        return Response(serializer.data)

    def retrieve(self, request, pk=None):  # sobreescribo el método por defecto
        try:
            file = File.objects.get(pk=pk)

            if file.isPublic:
                serializer = FileSerializer(file)
                return Response(serializer.data)
            if file.user == self.request.user:
                serializer = FileSerializer(file)
                return Response(serializer.data)
            print(file.user, " tal ", self.request.user)
            return Response(status=status.HTTP_403_FORBIDDEN)

        except File.DoesNotExist:
            return Response(
                {"detail": "File not found or not owned by user"},
                status=status.HTTP_404_NOT_FOUND,
            )

    def listPublicFiles(self, request):
        files_qs = File.objects.filter(isPublic=True)
        files = FileSerializer(files_qs, many=True).data
        return Response(files)

    # asegura que el usuario que se guarda sea el que realiza la peticion
    def perform_create(self, serializer):

        serializer.save(user=self.request.user)

    @action(detail=False, methods=["delete"], url_path="delete")
    def delete_file(self, request):
        file_id = request.data.get("id")
        if not file_id:
            return Response(
                {"detail": "ID is required"}, status=status.HTTP_400_BAD_REQUEST
            )

        try:
            file = File.objects.get(id=file_id, user=request.user)
            file.delete()
            return Response(
                {"detail": "File deleted successfully"},
                status=status.HTTP_204_NO_CONTENT,
            )
        except File.DoesNotExist:
            return Response(
                {"detail": "File not found or not owned by user"},
                status=status.HTTP_404_NOT_FOUND,
            )
