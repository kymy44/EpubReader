from django.contrib import admin

# Register your models here.

from fileAdmin.models import UserFile


class AdminUserFile(admin.ModelAdmin):
    list_display = (
        "id",
        "user",
        "title",
        "isPublic",
        "file",
        "uploaded_at",
    )


admin.site.register(UserFile, AdminUserFile)
