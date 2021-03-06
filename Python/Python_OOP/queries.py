class User(models.Model):
  first_name = models.CharField(max_length=25)
  last_name = models.CharField(max_length=25)
  age = models.IntegerField()
  created_at = models.DateTimeField(auto_now_add=True)
  updated_at = models.DateTimeField(auto_now=True)
  def __str__(self):
    return self.first_name + " " + self.last_name
