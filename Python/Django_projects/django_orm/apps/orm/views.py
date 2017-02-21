from django.shortcuts import render, redirect
from .models import Blog, Comment
# Create your views here.
def index(request):
    context = {
    'blogs' : Blog.objects.all()
    #select * from Blog
    }
    return render(request, 'orm/index.html', context)

def blog(request):
    #using ORM
    Blog.objects.create(title=request.POST['title'], blog=request.POST['blog'])
    # insert into blogs (title, blog) values(title, blog,)
    return redirect('/')
