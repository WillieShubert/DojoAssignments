from django.shortcuts import render, HttpResponse, redirect

# Create your views here.
def index(request):
  print "*"*50
  return render(request, 'survey/index.html')

def submit(request):
    if 'counter' not in request.session:
        request.session['counter'] =1
    print "Got Result."
    request.session['name'] = request.POST['name']
    request.session['location'] = request.POST['location']
    request.session['language'] = request.POST['language']
    request.session['comment'] =  request.POST['comment']
    request.session['counter']+=1
    return redirect('/result')

def result(request):
	print request.method
	return render(request, 'survey/result.html')
