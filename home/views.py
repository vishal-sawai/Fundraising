from django.shortcuts import render,redirect, HttpResponse
from myadministration.models import campaigntable
import datetime,time
from .models import *
import razorpay
from django.conf import settings
from django.views.decorators.csrf import csrf_exempt
from django.http import HttpResponseBadRequest
from django.http import HttpResponseRedirect
import json

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

def thankyou(request):
    return render(request,'thankyou.html')

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
            return render(request,"thankyou2.html")
        else:
            return render(request,"index.html")

# Send message
def sendMsg(request):
        if request.method=="POST":
            name = request.POST['name']
            phone = request.POST['phone']
            email = request.POST['email']
            message = request.POST['message']
            msgnew = contacttable(name=name,phone=phone,email=email,message=message)
            msgnew.save()
            return render(request,"thankyou3.html")
        else:
            return render(request,"contact.html")

def donationform(request):
    if request.method == "POST":
        name = request.POST['dname']
        phone = request.POST['dphone']
        email = request.POST['demail']
        address = request.POST['daddress']
        amount = int(request.POST['damount'])
        cid = request.POST['campaignid']
        campaigntitle = request.POST['campaigntitle']
        client = razorpay.Client(
        auth=(settings.RAZOR_KEY_ID, settings.RAZOR_KEY_SECRET))
        payment = client.order.create({'amount': amount*100,'currency':'INR','payment_capture':1})
        context = {'payment':payment,
        'name':name,
        'email':email,
        'phone':phone,
        'address':address,
        'oamount':amount,
        'cid':cid,
        'campaigntitle':campaigntitle
        }
        return render(request,"payment.html",context)

def successReq(request):
    if request.method == 'POST':
        payment_id = request.POST.get('payment_id')
        name = request.POST.get('name')
        phone = request.POST.get('phone')
        email = request.POST.get('email')
        amount = request.POST.get('amount')
        address = request.POST.get('address')
        cid = request.POST.get('cid')
        campaigntitle = request.POST.get('campaigntitle')
        t = time.localtime() 
        cur_date = datetime.date.today()
        cur_time = time.strftime("%H:%M:%S", t) 
        dsnew = donationtable(name=name,phone=phone,email=email,address=address,date=cur_date,time=cur_time,amount=amount,cid=cid,payment_id=payment_id,campaigntitle=campaigntitle,pstatus="done")
        dsnew.save()
        cdamount = campaigntable.objects.filter(id=cid).values('raisedfund').first()
        rraisedfund = int(cdamount['raisedfund']) + int(amount) 
        campaigntable.objects.filter(id=cid).update(raisedfund=rraisedfund)
        return redirect("/thankyou") 



        


        
       
    
        
        
        


    


    
        
        


        
    
