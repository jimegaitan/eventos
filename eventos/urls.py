from django.contrib import admin
from django.urls import path
from . import views
from django.conf import settings
from django.conf.urls.static import static



urlpatterns = [
    path ('', views.home, name='home'),
    path ('about/', views.about, name='about'),
    path ('contacto/', views.contacto, name='contacto'),    
    path ('contacto2/', views.contacto2, name='contacto2'),
    path ('contacto3/', views.contacto3, name='contacto3'),
    path ('evento/', views.evento, name='evento'),
    path ('buscar/', views.buscar,name='buscar'),
    path('detalle/<int:id>/', views.detalle, name='detalle'),
    path ('listado/', views.listado, name='listado'),
    path ('api/eventos/', views.eventos_json, name='eventos_json'),
    path ('listado2/', views.listado2, name='listado2'),
    path ('pizza/', views.pizza, name='pizza'),
    path ('listado3/', views.listado3, name='listado3'),
]+ static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)

 
