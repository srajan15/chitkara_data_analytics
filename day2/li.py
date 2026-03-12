li = [1, "hello", True, 2.5, [25, 26]] # create a list with different data types
li[2] = False # update list items in index 2
del li[3] # delete list items in index 3
for j in li:  # print all the list items
  print(j)

li.append(25)
print(li)
for i in range(0, len(li)):
  print(type(li[i]))

li1 = [25, 15, 14, 28]
li2 = []
li3 = [i for i in li1 if i >= 18]
print(li3)

for i in li1:
  if(i >= 18):
    li2.append(i)
print(li2)

students_details = {
  "name" : "srajan",
  "age" : 45,
  "course" : "CSE",
  "marks" : [85, 45, 32, 82],
  "haveDrivingLicense" : True,
  "parents_details" : {
    "name" : "mob",
    "age" : 50,
    "phone_number" : 23423423
  }
}

print(students_details["marks"])
print(students_details["parents_details"]["phone_number"])
