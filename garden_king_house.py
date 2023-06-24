#This program is a tribute to the power of nature

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#

#Importing Libraries
import math 
import random
from collections import Counter

#Printing a tribute
print ("Nature is powerful \nIt's beauty and complexity \nBeaches, mountains, forests, oceans \nWe must respect and preserve nature.")

#Defining Functions
def power_of_nature(sun, wind): 
  print ("The power of the sun and the wind are combined and create beauty.")
  return sun**wind

#Calculating the power of nature
power = power_of_nature(3,5)
print ("The power of nature is:", power)

#Making a list of animals
nature = ["deer", "bear", "fox", "eagle", "rabbit", "wolf"]

#Creating a class
class Nature:
  def __init__(self, name, species):
    self.name = name
    self.species = species

  def introduce(self):
    print("Hi, I'm", self.name + ", I am a", self.species + ".")

#Creating objects of the class
nature_1 = Nature("Ricky", "rabbit")
nature_2 = Nature("Buddy", "bear")
nature_3 = Nature("Fifi", "fox")
nature_4 = Nature("Fifi", "eagle")

#Calling the introduce method
nature_1.introduce()
nature_2.introduce()
nature_3.introduce()
nature_4.introduce()

#Creating a function to show the beauty of nature
def show_beauty_of_nature(nature):
	counter = Counter(nature)
	for item in counter.most_common(len(nature)):
		print(item[0], item[1])

#Invoking the function
show_beauty_of_nature(nature)

#Creating a function to generate a random number
def random_number(): 
  random_num = random.randint(1,100)
  return random_num

#Invoking the function
rNum = random_number()
print("The random number generated is: ", rNum)

#Creating a function to calculate the area of a circle
def calculate_area_of_circle(radius): 
  area = math.pi*radius*radius
  return area

#Invoking the function
radius = 5
area = calculate_area_of_circle(radius)
print ("The area of the circle with the radius of", radius, "is", area)

#Printing a message
print ("Respect the power of nature.")