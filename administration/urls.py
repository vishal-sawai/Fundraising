from django.contrib import admin
from django.urls import path
from administration import views

urlpatterns = [
  path("",views.adminlogin,name='login'),
  path("dashboard",views.dashboard, name='dashboardv') 
]