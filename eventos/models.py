from django.db import models
from django.utils import timezone
from django.contrib.auth.models import User

# Create your models here.
class Evento(models.Model):
    nombre = models.CharField(max_length=200)
    precio = models.DecimalField(max_digits=10, decimal_places=2)
    fecha_asignacion  = models.DateField()
    fecha_fin_asignacion = models.DateField()
    fecha_inicio = models.DateField()
    fecha_fin = models.DateField()
    diploma = models.BooleanField(default=False)
    activo = models.BooleanField(default=True)
    description = models.TextField(blank=True, null=True)
    created_at = models.DateTimeField(default=timezone.now)
    updated_at = models.DateTimeField(auto_now=True)
    image = models.ImageField(upload_to='images/',null=True)
    



    def __str__(self):
        return self.nombre   



# class Asistencia(models.Model):
#     eventoid = models.IntegerField(),
#     participanteid = models.IntegerField(),
#     asistencia = models.BooleanField(default=False),


# class asigxactividad(models.Model):
#     eventoid = models.IntegerField(),
#     asignacionid = models.IntegerField(),
#     actividadid = models.IntegerField(),


tipo_contacto = [
    (1, 'No puedo asignarme al Evento'),
    (2, 'Problemas de conexión'),
    (3, 'No recibí el enlace'),
    (4, 'Otro'),
]

class Contacto(models.Model):
    nombre = models.CharField(max_length=200)
    correo = models.EmailField()
    tipo = models.IntegerField(choices=tipo_contacto)
    mensaje = models.TextField()
    created_at = models.DateTimeField(default=timezone.now)

    def __str__(self):
        return self.nombre
    


