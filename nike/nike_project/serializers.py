from rest_framework import serializers
from .models import Product

class Myproductserializer(serializers.ModelSerializer):
    class Meeta:
        model = Product
        fields = '__all__'