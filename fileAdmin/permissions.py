# permissions.py

from rest_framework import permissions

class IsOwnerOrPublic(permissions.BasePermission):
    def has_object_permission(self, request, view, obj):
        # Si el usuario es el propietario del objeto, permite el acceso
        if request.user == obj.user:
            return True
        # Si el usuario es "public" y el objeto pertenece al 
        # usuario "public", permite el acceso
        elif request.user.username == 'public' and obj.user.username == 'public':
            return True
        return False