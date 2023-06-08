from django.shortcuts import render,redirect
from django.contrib.auth.models import User
from django.contrib.auth import login,logout,authenticate
from .models import campaigntable
from home.models import *
import time
import datetime

def dashboard(request):
    if request.user.is_authenticated:
        return render(request,"admin/dashboard.html")
    else:
        return render(request,"admin/adminlogin.html")           

def adminlogin(request):
    if request.user.is_authenticated:
        return render(request,"admin/dashboard.html")
    else:
        if request.method=="POST":
            username=request.POST['username']
            password=request.POST["userpass"]
            user=authenticate(username=username,password=password)
            if user is not None:
                login(request,user)
                return render(request,"admin/dashboard.html") 
            else:
                context = {
                     'msg':"*Check Your Username And Password"
                }
                return render(request,"admin/adminlogin.html",context) 
        else:
            return render(request,"admin/adminlogin.html")    

def signout(request):
    logout(request)
    return render(request,"admin/adminlogin.html")


        
def donation(request):
     if request.user.is_authenticated:
        return render(request,'admin/donation.html')
     else:
        return render(request,"admin/adminlogin.html")   

def campaign(request):
    if request.user.is_authenticated:
        mydata = campaigntable.objects.all().values()
        context = {
          'cdata': mydata,
        }
        return render(request,'admin/campaign.html',context)
    else:
        return render(request,"admin/adminlogin.html")    
       
def request(request):
    if request.user.is_authenticated:
        if request.user.is_authenticated:
            mydata = crquesttable.objects.all().values()
            context = {
                'crdata': mydata,
            }
            return render(request,'admin/request.html',context)
    else:
        return render(request,"admin/adminlogin.html")     
    

def message(request):
    if request.user.is_authenticated:
        return render(request,'admin/message.html')
    else:
        return render(request,"admin/adminlogin.html")    

        

# Add Campaign 
def addCampaign(request):
    if request.user.is_authenticated:
        if request.method=="POST":
            name = request.POST['name']
            title = request.POST['title']
            description = request.POST['desc']
            fund = request.POST['fund']
            img = request.FILES['img']
            t = time.localtime() 
            cur_date = datetime.date.today()
            cur_time = time.strftime("%H:%M:%S", t) 
            cnew = campaigntable(name=name,title=title,description=description,fund=fund,img=img,date=cur_date,time=cur_time)
            cnew.save()
            return redirect("/adminpanel/campaign")
        else:
            return redirect("/adminpanel/campaign")
    else:
        return render(request,"admin/adminlogin.html")

# Delete Row Data

def deleteCampaign(request,id):
    dele = campaigntable.objects.get(id=id)
    dele.delete()
    return redirect("/adminpanel/campaign")

def deleteRequest(request,id):
    dele = crquesttable.objects.get(id=id)
    dele.delete()
    return redirect("/adminpanel/request")

    
                


                 



        
