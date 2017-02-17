from django.shortcuts import render
from .models import User
# Create your views here.
def index(request):
    User.objects.create(first_name='Willie', last_name="Shu")
    user = User.objects.all()
    print user
    return render(request, 'network/index.html')
