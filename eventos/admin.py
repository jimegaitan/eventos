from django.contrib import admin
from .models import Evento, Contacto

# Register your models here.
admin.site.register(Evento)

# @admin.register(Evento)
# class EventoAdmin(admin.ModelAdmin):
#     list_display = ('id', 'nombre', 'fecha_inicio', 'fecha_fin', 'precio', 'diploma', 'activo')
#     search_fields = ('nombre', )
#     list_filter = ('activo', 'diploma')
#     ordering = ('fecha_inicio',)
#     date_hierarchy = 'fecha_inicio'


#     fieldsets = (
#         (None, {
#             'fields': ('nombre', 'descripcion')
#         }),
#         ('Fechas', {
#             'fields': ('fecha_asig', 'fecha_inicio', 'fecha_fin', 'fecha_finasig')
#         }),
#         ('Detalles Financieros', {
#             'fields': ('precio',)
#         }),
#         ('Configuración', {
#             'fields': ('diploma', 'activo')
#         }),
#     )


admin.site.register(Contacto)
