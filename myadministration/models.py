from django.db import models

# Create your models here.
class campaigntable(models.Model):
       name = models.CharField(max_length=100)
       title = models.CharField(max_length=100)
       description=models.CharField(max_length=500)
       fund = models.IntegerField()
       raisedfund = models.IntegerField(null=True, blank=True)
       img = models.FileField()
       date = models.DateField(default=None)
       time = models.TimeField(default=None)
   

       
	
	
	
 

