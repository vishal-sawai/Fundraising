from django.shortcuts import render
import mysql.connector as sql

# Create your views here.
def adminlogin(request):
    if request.method == "POST":
        m = sql.connect(host="localhost",user="root",passwd="coder",database="FRS")
        uname = ""
        upass = ""
        cursor = m.cursor()
        d = request.POST
        for key,value in d.items():
            if key == "username":
                uname = value
            if key == "userpass":
                upass = value

        c = "select * from admin where username = '{}' and userpass = '{}'".format(uname,upass)  
        cursor.execute(c)
        t = tuple(cursor.fetchall())
        if t == ():
            context = {
                'msg':"*Check Your Username And Password"
            }
            return render(request,'admin/adminlogin.html',context)
        else:
            context = {
               'user':uname
            }
            return render(request,"admin/dashboard.html",context)             

    return render(request,'admin/adminlogin.html')

# dashboard
def dashboard(request):
    return render(request,'admin/dashboard.html')
def donation(request):
    return render(request,'admin/donation.html')    
def campaign(request):
    return render(request,'admin/campaign.html')   
def request(request):
    return render(request,'admin/request.html')    
def message(request):
    return render(request,'admin/message.html')             



        
