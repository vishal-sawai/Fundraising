from django.shortcuts import render

# Create your views here.
def adminlogin(request):
    return render(request,'admin/adminlogin.html')

def dashboard(request):
    return render(request,'admin/dashboard.html')


        
