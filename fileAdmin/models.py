# models.py
from django.db import models
from django.db.models import Q
from django.contrib.auth.models import User
import uuid

def generateRandomFileName(instance, filename):
    extension = filename.split('.')[-1]  # Obtiene la extensión del archivo
    nombre_archivo = str(uuid.uuid4()) + '.' + extension  # Genera un nombre único usando uuid
    return 'user_files/' + nombre_archivo # Devuelve la ruta en donde se guardará el archivo

class UserFile(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    file = models.FileField(upload_to=generateRandomFileName)
    uploaded_at = models.DateTimeField(auto_now_add=True)
    title = models.CharField(max_length=100)
    
    #def __str__(self):
        #return f'{self.user.username} - {self.file.name}'

