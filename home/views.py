from django.shortcuts import render, HttpResponse
from myadministration.models import campaigntable
import datetime
from .models import *

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



# Send Campaign Request
def reqCampaign(request):
        if request.method=="POST":
            name = request.POST['name']
            cause = request.POST['cause']
            phone = request.POST['phone']
            email = request.POST['email']
            address = request.POST['address']
            story = request.POST['story']
            amount = request.POST['amount']
            cur_date = datetime.date.today() 
            crnew = crquesttable(name=name,cause=cause,phone=phone,email=email,address=address,date=cur_date,story=story,amount=amount)
            crnew.save()
            return render(request,"index.html")
        else:
            return render(request,"index.html")


        
    
