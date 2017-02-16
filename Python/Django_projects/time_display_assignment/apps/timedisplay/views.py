from django.shortcuts import render
from datetime import datetime
# Create your views here.
def index(request):
  print "*"*50
  context = {
    "time": datetime.now()
    }
  return render(request, 'timedisplay/index.html', context)
