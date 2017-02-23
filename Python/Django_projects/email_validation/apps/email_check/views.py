from django.shortcuts import render, redirect
from django.contrib import messages
from .models import User
# Create your views here.
def index(request):
    context = {
        'users' : User.objects.all()
    }
    return render(request, 'email_check/index.html', context)

def login(request):
    print request.POST
    user = User.objects.validate(request.POST)
    if user[0] == True:
        messages.add_message(request, messages.INFO, 'Your email is valid.')
        request.session['userid'] = user[1].id
        return redirect ('/')
    if user[0] == False:
        for each in newuser[1]:
            messages.error(request, each) #for each message
        return redirect('/')
