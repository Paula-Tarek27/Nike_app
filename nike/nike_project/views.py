from django.shortcuts import render
from rest_framework import generics
from .models import Product
from .serializers import Myproductserializer
# Create your views here.
class GetAllProduct(generics.ListAPIView):
    queryset = Product.objects.all()
    serializer_class = Myproductserializer

class AddNewProduct(generics.CreateAPIView):
    querset = Product.objects.all()
    serializer_class = Myproductserializer

class DeleteNewProduct(generics.ListAPIView):
    querset = Product.objects.all()
    serializer_class = Myproductserializer

class UpdateNewProduct(generics.CreateAPIView):
    querset = Product.objects.all()
    serializer_class = Myproductserializer
