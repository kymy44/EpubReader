from django.contrib import admin

# Register your models here.

from fileAdmin.models import UserFile

class AdminUserFile(admin.ModelAdmin):
        list_display = ("id","file","uploaded_at","title")

admin.site.register(UserFile,AdminUserFile)