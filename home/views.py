from django.shortcuts import render, HttpResponse
from myadministration.models import campaigntable

# Create your views here.
def index(request):
    mydata = campaigntable.objects.all().values()
    context = {
       'cdata': mydata,
       }
    return render(request,'index.html',context)
    

def about(request):
    return render(request,'about.html')

def contact(request):
    return render(request,'contact.html')
        
    
