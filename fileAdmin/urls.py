from rest_framework import routers
from django.urls import include, path
from .api import UserFileViewSet

app_name = "userFile"

router = routers.DefaultRouter()
router.register(
    r"userFile",  # la r quiere decir que es una expresion regular
    UserFileViewSet,
    "userFile",  # este 3er parámetro es obligatorio cuando se registran más de un viewset
)

urlpatterns = [
    path("", include(router.urls)),
    path(
        "public/",
        UserFileViewSet.as_view({'get': 'list'}),
        name='public-userfile-list',
    ),  # con esto publicamos el método GET por defecto como endpoint
]