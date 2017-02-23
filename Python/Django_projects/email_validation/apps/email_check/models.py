from __future__ import unicode_literals
from django.db import models
import re
Email_Regex = re.compile(r'^[a-zA-Z0-9.+_-]+@[a-zA-Z0-9._-]+\.[a-zA-Z]+$')

class userManager(models.Manager):
    def validate (self, postData):
        errors = []
        if not Email_Regex.match(postData['email']):
            errors.append("Invalid email")
        if len(errors) == 0:
            newuser = User.objects.create(email= postData['email'])
            return (True, newuser)     #this creates a tuple
        else:
            return (False, errors)

class User(models.Model):
  email = models.CharField(max_length=45)
  created_at = models.DateTimeField(auto_now_add = True)
  updated_at = models.DateTimeField(auto_now = True)
  objects = userManager()
