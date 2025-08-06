from django.shortcuts import render
from .models import Evento, Contacto
from django.shortcuts import get_object_or_404, redirect
from django.contrib import messages
from .forms import ContactoForm
from django.http import JsonResponse

# Create your views here.
def home(request):
    # data= {
    #     'title': 'Eventos',
    #     'description': 'Bienvenido a la aplicación de eventos',
    #     'events': [
    #         {'name': 'Concierto de Rock', 'date': '2023-10-01', 'location': 'Estadio Municipal'},
    #         {'name': 'Feria de Comida', 'date': '2023-10-15', 'location': 'Parque Central'},
    #         {'name': 'Conferencia de Tecnología', 'date': '2023-11-05', 'location': 'Centro de Convenciones'},
    #     ]
    # }
    # return render(request, 'home.html', data)


    listado_eventos = Evento.objects.filter(activo=True).order_by('fecha_inicio')

    data = {
        'title': 'Eventos Activos',
        'ListadoEventos': listado_eventos,
    }
    return render(request, 'home.html', data)

def about(request):
    return render(request, 'about.html')      




def contacto(request):
    if request.method == 'POST':
        nombre = request.POST.get('nombre', '')
        correo = request.POST.get('email', '')
        mensaje = request.POST.get('mensaje', '')
        tipo = request.POST.get('tipo', '1')

        if not nombre or not correo or not mensaje:
            messages.error(request, 'Todos los campos son obligatorios.')
            return render(request, 'contacto.html')

        try:
            contacto = Contacto(nombre=nombre, correo=correo, mensaje=mensaje, tipo=tipo)
            contacto.save()
            messages.success(request, 'Reporte enviado correctamente.')
        except Exception as e:
            messages.error(request, f'Error al enviar el reporte. Intente más tarde. {e}')




    return render(request, 'contacto.html')




def contacto2(request):
    if request.method == 'POST':
        nombre = request.POST.get('nombre', '')
        correo = request.POST.get('email', '')
        mensaje = request.POST.get('mensaje', '')
        tipo = request.POST.get('tipo', '1')

        if not nombre or not correo or not mensaje:
            messages.error(request, 'Todos los campos son obligatorios.')
            return render(request, 'contacto.html')

        try:
            contacto = Contacto(nombre=nombre, correo=correo, mensaje=mensaje, tipo=tipo)
            contacto.save()
            messages.success(request, 'Reporte enviado correctamente.')
        except Exception as e:
            messages.error(request, f'Error al enviar el reporte. Intente más tarde. {e}')




    return render(request, 'contacto2.html')






def contacto3(request):

    data={
        'form': ContactoForm()
    }

    
    #metodo
    if request.method == 'POST':
        formulario= ContactoForm(data=request.POST)
        if formulario.is_valid():
            formulario.save()
            messages.success(request,'Soporte Enviado Correctamente. ')
        else:
            messages.error(request,'Error al enviar el formulario')
            data['form']=formulario
            

    return render(request,"contacto3.html",data)








def buscar(request):
    nombre = request.POST.get('nombre', '')

    print(nombre)

    if nombre:
        listado_eventos = Evento.objects.filter(nombre__icontains=nombre).order_by('fecha_Inicio')
    else:
        listado_eventos = Evento.objects.all().order_by('fecha_Inicio')

    data = {
        'title': 'Eventos encontrados ...',
        'listado': listado_eventos,
    }    
    return render(request, 'home.html', data)





def detalle(request, id=None):
    #objproducto = get_object_or_404(Producto, pk=id)
    if id is None:
        return redirect('home')
    
    listado_eventos = get_object_or_404(Evento, pk=id) 

    
    data = {
        'title': 'Detalle del evento',
        'listado': listado_eventos,
    }   

    return render(request, 'detalle.html', data)





def evento(request):
    if request.method == 'POST':
        nombre = request.POST.get('nombre', '')
        precio = request.POST.get('precio', '')
        fecha_inicio = request.POST.get('fecha_inicio', '')
        fecha_fin = request.POST.get('fecha_fin', '')
        fecha_asignacion = request.POST.get('fecha_asignacion', '')
        fecha_fin_asignacion = request.POST.get('fecha_fin_asignacion', '')
        # descripcion = request.POST.get('descripcion', '')
        

        try:
            evento = Evento(nombre=nombre, precio=precio, fecha_inicio=fecha_inicio, fecha_fin=fecha_fin, fecha_asignacion=fecha_asignacion, fecha_fin_asignacion=fecha_fin_asignacion,)
            evento.save()
            messages.success(request, 'Evento publicado correctamente.')
        except Exception as e:
            messages.error(request, f'Error al publicar el evento. Intente más tarde. {e}')

    return render(request, 'evento.html')



def listado(request):
    listado_eventos = Evento.objects.all().order_by('fecha_inicio')

    data = {
        'title': 'Listado de Eventos',
        'ListadoEventos': listado_eventos,
    }

    return render(request, 'listado.html', data)





def eventos_json(request):
    listado_eventos = Evento.objects.all().order_by('fecha_inicio')

    return JsonResponse(list(listado_eventos.values()), safe=False)



def listado2(request):
   
    return render(request, 'listado2.html')


def pizza(request):
    return render(request, 'pizza.html')


def listado3(request):
    # listado_eventos = Evento.objects.all().order_by('fecha_inicio')
    return render(request, 'listado3.html')


def listado4(request):
    # listado_eventos = Evento.objects.all().order_by('fecha_inicio')
    return render(request, 'listado4.html')

def flecha(request):
    # listado_eventos = Evento.objects.all().order_by('fecha_inicio')
    return render(request, 'flecha.html')   
