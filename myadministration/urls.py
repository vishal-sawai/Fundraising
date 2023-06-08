from django.contrib import admin
from django.urls import path
from myadministration import views

app_name = 'myadministration'

urlpatterns = [
  path("",views.adminlogin,name='adminlogin'),
  path("signout/",views.signout,name="signout"),
  path("dashboard/",views.dashboard,name="dashboard"),
  path("donation/",views.donation,name="donation"),
  path("campaign/",views.campaign,name="campaign"),
  path("request/",views.request,name="request"),
  path("message/",views.message,name="message"),
  path("addCampaign",views.addCampaign,name="addCampaign"),
  path("deleteCampaign/<int:id>",views.deleteCampaign, name="deleteCampaign"),
  path("deleteRequest/<int:id>",views.deleteRequest, name="deleteRequest"),
  path("deleteMsg/<int:id>",views.deleteMessage, name="deleteMessage"),
]
