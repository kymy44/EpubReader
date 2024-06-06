from rest_framework import routers
from django.urls import include, path
from .api import FileViewSet

app_name = "files"

router = routers.DefaultRouter()
router.register(
    r"files",  # la r quiere decir que es una expresion regular
    FileViewSet,
    "files",  # este 3er parámetro es obligatorio cuando se registran más de un viewset
)


urlpatterns = [
    path("", include(router.urls)),
    path(
        "public/",
        FileViewSet.as_view(
            {"get": "listPublicFiles"},
        ),  # con esto publicamos un metodo como endpoint
    ),
]
