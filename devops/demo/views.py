from django.shortcuts import render

# Create your views here.
from django.http import HttpResponse

def home(request):
    return HttpResponse("<h1>Welcome to the Demo App!</h1><p>This is a basic Django app.</p>")

