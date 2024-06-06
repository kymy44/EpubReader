from django.core.exceptions import ValidationError


def validate_file_extension(value):
    if not value.name.endswith(".epub"):
        raise ValidationError("El archivo debe tener la extensión .epub")


def validate_file_size(value):
    limit = 50 * 1024 * 1024  # 50 MB
    if value.size > limit:
        raise ValidationError("El tamaño del archivo no debe exceder los 50 MB")
