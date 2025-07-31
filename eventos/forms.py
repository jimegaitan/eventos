from django import forms
from .models import Contacto

class ContactoForm(forms.ModelForm):
    class Meta:
        model = Contacto
        fields = ['nombre', 'correo', 'mensaje', 'tipo']
        widgets = {
            'mensaje': forms.Textarea(attrs={'rows': 4, 'cols': 40}),
            'nombre': forms.TextInput(attrs={'placeholder': 'Ingrese su nombre completo', "class":"form-control"}),
            'correo': forms.EmailInput(attrs={'placeholder': 'Ingrese su correo electrónico', "class":"form-control"}),
            'mensaje': forms.Textarea(attrs={'placeholder': 'Ingrese su mensaje' , "class":"form-control"}),
            'tipo': forms.Select(attrs={"class":"form-select"}),

        }
        labels = {
            'nombre': 'Nombre Completo',
            'correo': 'Correo Electrónico',
            'mensaje': 'Mensaje',
        }