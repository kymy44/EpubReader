from rest_framework import viewsets, permissions
from fileAdmin.models import UserFile, Q
from fileAdmin.serializers import UserFileSerializer
from rest_framework.response import Response
from rest_framework import status
from django.core.files import File
from .permissions import IsOwnerOrPublic
from rest_framework.decorators import action


class UserFileViewSet(viewsets.ModelViewSet):
    queryset = UserFile.objects.all()
    serializer_class= UserFileSerializer
    permissions_classes = [permissions.IsAuthenticated]
    
    '''def get_queryset(self):
         #Verifica si la solicitud proviene del endpoint "/public/"
        if self.request.path.endswith('/public/'):
            return UserFile.objects.filter(user__username='public')
        return UserFile.objects.all()
    '''
    @action(detail=False, methods=['get'], url_path='user-files', url_name='user-files')
    def list_user_files(self, request):
        user = request.user
        user_files = UserFile.objects.filter(user=user)
        serializer = self.get_serializer(user_files, many=True)
        return Response(serializer.data)