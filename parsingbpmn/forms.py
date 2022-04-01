from django import forms

from .models import Process, System


class SystemForm(forms.ModelForm):
    class Meta:
        model = System
        fields = ['name']

class ProcessForm(forms.ModelForm):
    class Meta:
        model = Process
        exclude = ["system_id"]
        fields = ['name','xml']