
users = {
 'Students': [
     {'first_name':  'Michael', 'last_name' : 'Jordan'},
     {'first_name' : 'John', 'last_name' : 'Rosales'},
     {'first_name' : 'Mark', 'last_name' : 'Guillen'},
     {'first_name' : 'KB', 'last_name' : 'Tonel'}
  ],
 'Instructors': [
     {'first_name' : 'Michael', 'last_name' : 'Choi'},
     {'first_name' : 'Martin', 'last_name' : 'Puryear'}
  ]
}
def name():
  for key, data in users.items():
    counter = 0
    print key
    for value in data:
        counter +=1
        name = value ['first_name'] +' ' +value ['last_name']
        char_len = len(name)
        print ("{} - {} - {}" .format(counter, name, char_len))

print name()
