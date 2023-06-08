from django.db import models

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
    

