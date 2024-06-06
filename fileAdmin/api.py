from rest_framework import viewsets, permissions
from fileAdmin.models import UserFile, Q
from fileAdmin.serializers import UserFileSerializer
from rest_framework.response import Response
from rest_framework import status
from django.core.files import File
from rest_framework.decorators import action


class UserFileViewSet(viewsets.ModelViewSet):
    queryset = UserFile.objects.all()
    serializer_class = UserFileSerializer
    permission_classes = [permissions.IsAuthenticated]

    def list(self, request):
        requestingUser = self.request.user
        if not requestingUser.is_authenticated:
            return Response(
                {"detail": "Authentication credentials were not provided."}, status=401
            )

        files_qs = UserFile.objects.filter(user=requestingUser)
        serializer = UserFileSerializer(files_qs, many=True)
        return Response(serializer.data)

    def retrieve(self, request, pk=None):
        try:
            file = UserFile.objects.get(pk=pk, user=request.user)
            serializer = UserFileSerializer(file)
            return Response(serializer.data)
        except UserFile.DoesNotExist:
            return Response(
                {"detail": "File not found or not owned by user"},
                status=status.HTTP_404_NOT_FOUND,
            )

    def listPublicFiles(self, request):
        files_qs = UserFile.objects.filter(isPublic=True)
        files = UserFileSerializer(files_qs, many=True).data
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
            user_file = UserFile.objects.get(id=file_id, user=request.user)
            user_file.delete()
            return Response(
                {"detail": "File deleted successfully"},
                status=status.HTTP_204_NO_CONTENT,
            )
        except UserFile.DoesNotExist:
            return Response(
                {"detail": "File not found or not owned by user"},
                status=status.HTTP_404_NOT_FOUND,
            )
