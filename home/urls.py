from django.contrib import admin
from django.urls import path
from home import views

app_name = 'home'
urlpatterns = [
  path("",views.index,name='home'),
  path("index",views.index,name='home'),
  path("about",views.about,name='about'),
  path("thankyou",views.thankyou,name='thankyou'),
  # path("thankyou2",views.thankyou2,name='thankyou2'),
  path("Contact",views.contact,name='contact'),
  path("crquest",views.reqCampaign,name='crquest'),
  path("msgsend",views.sendMsg,name='msgsend'),
  path("cdonation",views.donationform,name='cdonation'),
  path("successpay",views.successReq,name='success')

]
