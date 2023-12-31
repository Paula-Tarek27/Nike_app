from django.db import models
from django.contrib.auth.models import User

# Create your models here.
class Product(models.Model):
    name = models.CharField(max_length=50)
    description = models.CharField(max_length=80)
    image = models.CharField(max_length=50)
    price = models.CharField(max_length=50)
    avalible = models.BooleanField(True)
    owner = models.ForeignKey(User,on_delete= models.CASCADE)
