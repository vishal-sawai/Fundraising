from django.db import models
from myadministration.models import *

# Create your models here.
class crquesttable(models.Model):
       name = models.CharField(max_length=200)
       cause = models.CharField(max_length=200)
       phone = models.CharField(max_length=100)
       email = models.CharField(max_length=100)
       address = models.CharField(max_length=200)
       story = models.CharField(max_length=500)
       amount = models.CharField(max_length=100)
       date = models.DateField(default=None)
       
class contacttable(models.Model):
       name = models.CharField(max_length=200)
       email = models.CharField(max_length=100)
       phone = models.CharField(max_length=100)
       message = models.CharField(max_length=100)

class donation(models.Model):
       name = models.CharField(max_length=200)
       phone = models.CharField(max_length=200)
       email = models.CharField(max_length=200)
       address = models.CharField(max_length=300)
       amount = models.IntegerField()
       cid = models.IntegerField()
       payment_id = models.CharField(max_length=300,null=True, blank=True)
       date = models.DateField(default=None,null=True, blank=True)
       time = models.TimeField(default=None,null=True, blank=True)
       pstatus = models.CharField(max_length=200,null=True, blank=True)



