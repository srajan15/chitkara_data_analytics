global_var = "what is data analytics"

def ram(x):
  a = mohan(x)
  print(global_var)
  return a

def mohan(y):
  print(global_var)
  b = sohan(y) # local variables
  return b

def sohan(z):
  print(global_var)
  c = "automate the task that require human intelligence"
  return c

print(ram("what is Ai"))
