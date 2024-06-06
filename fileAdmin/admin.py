from django.contrib import admin

# Register your models here.

from fileAdmin.models import File


class AdminFile(admin.ModelAdmin):
    list_display = (
        "id",
        "user",
        "title",
        "isPublic",
        "file",
        "uploaded_at",
    )


admin.site.register(File, AdminFile)
