from django.shortcuts import render,redirect
from django.contrib.auth.models import User
from django.contrib.auth import login,authenticate

def dashboard(request):
    if request.user.is_authenticated:
        # c={"img":pr}
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

        
def donation(request):
    return render(request,'admin/donation.html')    
def campaign(request):
    return render(request,'admin/campaign.html')   
def request(request):
    return render(request,'admin/request.html')    
def message(request):
    return render(request,'admin/message.html')             



        
