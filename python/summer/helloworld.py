# import random
# price = 10 
# rating = 4.9
# print(price)
# print(f"{rating:.2f}")
# print(f"Hello, I've watched stranger things and I think it should be a {rating:.2f} star show")
# Patient = ['John Smith', 20]
# if Patient[0] == 'John Smith': 
#     print("existing patient") 
# else : 
#     print("new patient")

# name = input('What is your name? ')
# print('Hi ' + name)

# name = input("What is your name? ")
# color = input("What is your favorite color? ")
# print(name + " likes " + color)

# birth_year = input("birth year: ")
# print(type(birth_year))
# age = 2024 - int(birth_year)
# print(f"congrats! you are {age}")

# weight = input("how much do you weigh?: ")
# kgs = int(weight) * 0.453592
# print(f"you are {kgs:.1f} kilograms")

# course = "Python for beginners"
# print(len(course))
# print(course.upper())
# print(course.replace('Python', 'Java'))
# print('python' in course)

# weather = input("what is the weather today? ").lower()
# if weather == "hot":
#     print("It's a hot day\nDrink plenty of water")
# elif weather == "cold":
#     print("It's a cold day.\nWear warm clothes")
# else:
#     print("It's a lovely day")

# price = 1000000
# credit = input("Is the buyer's credit good or bad?: ").lower()
# if credit == "good":
#     down_payment = int((price*10)/100)
#     print(f"The buyer needs to put down 10% which is {down_payment}")
# elif credit == "bad":
#     down_payment = int((price*20)/100)
#     print(f"The buyer needs to put down 20% which is {down_payment}")
# else:
#     print("invalid information")

# name = input("What is your name? ")
# name_length = len(name)
# if name_length < 3:
#     print("Name must be at least 3 characters")
# elif name_length > 50:
#     print("Name can be a maximum of 50 characters")
# else:
#     print("name looks good!")

# weight = input("Weight: ")
# lbs_kg = input("(L)bs or (K)g ").lower()
# if lbs_kg.find("l"):
#     lbs = int(weight) *  0.45
#     print(f"You are {lbs:.1f} pounds")
# elif lbs_kg.find("k"):
#     kg = int(weight) * 0.456592
#     print(f"You are {kg:.1f} kilograms")

# i = 1
# while i<= 5:
#     print('*' * i)
#     i+=1
# print("Done")


#Guessing Random Number Game
# secret_number = random.randint(1,20)
# guess_count = 0
# guess_limit = 3
# while guess_count < guess_limit:
#     number = int(input("guess number: "))
#     guess_count+=1
#     if number == secret_number:
#         print("Yay! That's correct")
#         break
#     elif number < secret_number:
#         print("Higher than that")
#     elif number > secret_number:
#         print("Less than that")
# else:
#     print("sorry you suck")
#     print(f"The number was {secret_number}")

# command = ""
# started = False
# while True:
#     command = input("> ").lower()
#     if command == "start":
#         if started:
#             print("Car has already started dumbass")
#         else: 
#             started = True
#             print("Car started...")
#     elif command == "stop":
#         if not started:
#             print("What are you doing dingus? the car isn't moving")
#         else:
#             started =  False
#             print("car stopped")
            
#     elif command == "help":
#         print("""
# start - to start the car
# stop - to stop the car
# quit - to quit
#         """)
#     elif command == "quit": 
#         break        
#     else:
#         print("Sorry, I don't understand")

# prices = [10,20,30]
# sum = 0
# for price in prices:
#     sum+=price
# print(sum)

# for x in range(4):
#     for y in range(3):
#         print(f"({x},{y})")

# numbers = [5,2,5,2,2]
# for i in range(1):
#     for num in numbers:
#         print("x"*num)

# numbers = [3,6,2,8,4,50]
# max_num = numbers[0]
# for num in numbers:
#     if max_num < num:
#         max_num = num
# print(max_num)





