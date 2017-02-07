x = [4, "Tom", 1, "Michael", 5, 7, "Jimmy Smith"]
# worked with Amer Gheith

def draw_stars(list):
    for i in range(0,len(list),1):
        if type(list[i]) is int:      #set up conditional on integer type
            num = "*"*(list[i])  
            print num
        elif type(list[i]) is str:     #set up conditional on string type
            string = list[i][:1]*(len(list[i]))   #print the first digit of the string mulitpied by the length of the string
            print string.lower()

print draw_stars(x)
