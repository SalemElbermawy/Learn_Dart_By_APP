print("Hello world")

print("5 + 5")

print(5+5)

print(f"result {5+5}")

name="salem"

# ---- rules of variables

# data structure

print(f"hello {name}")

# list

names=["salem","ahmed","mazen","Malek"]

print(names)
#
names.append("shimaa")
names.insert(2,"gamal")
names.remove("salem")
names.pop(3)

names.clear()

# 

names={"salem","salem","salem","malek"}
print(names)

names=["salem","ahmed","mazen","Malek","mazen","ahmed"]
print(set(names))

#

coordinates=(212,435)

print(coordinates)

#
dic={
    "name":"salem",
    "age":12,
    "city":"Giza"
}

print(dic)

print(dic['name'])
print(dic['age'])
print(dic['city'])

dic["second_name"]="ahmed"

dic["name"]="saif"



for x in range(10):
    print(f"heloo {x}")

for _ in range (10):
    print("helooo")

li=["BMW","Mercedeze","AUDI","SKODA","SEAT"]

for item in li :
    print(item)

#####

dic = {
    "name":"salem",
    "age":12
}

for key in dic:
    print(dic[key])


####
i=0
while i<10:
    print("STEM")
    i+=1

#####

for x in range (10):
    if x == 5:
        continue
    else:
        print(x)

############
for x in range (10):
    if x == 5:
        break
    else:
        print(x)
###############

def greeting():
    print("Heloooo!")
    print("here you will find what you want")
    print("Godd User")

greeting()


def greeting(name):
    print(f"heloo {name}")


def number():
    return 5*4+2

result=number()
print(result)


def info(name,age):
    greeting()
    print(f"your name is {name}")
    print(f"your age is {age}")

info()
######

class Car():
    def __init__(self,model,max_speed):
        self.model=model
        self.speed=max_speed
        print(self.model,self.speed)

    def info(self):
        print(f"your car is {self.model}")
        print(f"the maximum speed is {self.speed}")

car_1=Car()

car_1.info()

car_1.model="Audi"
car_1.info()