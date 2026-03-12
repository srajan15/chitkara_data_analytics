# range(start, stop, step)
print(list(range(1, 11, 2)))
print(list(range(10, 0, -1)))

for i in range(11):
  print(i, end=" ")

for j in range(10, 0, -1):
  print(j)

for row in range(0, 3):
  for col in range(0, 4):
    print(col, end=" ")
  print("\n")

# while condition:
#   run the code in block

i = 1

while(i < 11):
  print(i)
  i = i + 1

j = 10

while(j >= 0):
  if(j == 5):
    break
  print(j)
  j = j - 1



