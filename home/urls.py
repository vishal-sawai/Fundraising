from django.contrib import admin
from django.urls import path
from home import views

app_name = 'home'
urlpatterns = [
  path("",views.index,name='home'),
  path("about",views.about,name='about'),
  path("Contact",views.contact,name='contact'),
   path("crquest",views.reqCampaign,name='crquest')


]
