from django.contrib import admin
from django.urls import path
from myadministration import views

app_name = 'myadministration'

urlpatterns = [
  path("",views.adminlogin,name='adminlogin'),
  path("dashboard/",views.dashboard,name="dashboard"),
  path("donation/",views.donation,name="donation"),
  path("campaign/",views.campaign,name="campaign"),
  path("request/",views.request,name="request"),
  path("message/",views.message,name="message"),
]