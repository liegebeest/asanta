import sys
import random
from random import shuffle
a_string = sys.argv[1]
sum_ord=float(0.0)
for x in a_string:
  sum_ord = (ord(x)/100) + sum_ord
random.seed(sum_ord)
l = ["Eline VDV","Joris","Sebastiaan","Dirk","Kristof","Eline H","Pieter", "Petrus", "Eva"]
random.shuffle(l)
print("*****************************The super extrarandom kadoselector***************************")
first=l[0]
second=l[1]
second_last=l[-2]
last=l[-1]
zin=" koopt voor "
sys.stdout.write("%s%s%s\n" % (first, zin, second))
i=0
for x in xrange(1, (len(l)-1)):
  if i > 0:
    sys.stdout.write("%s%s%s\n" % (l[x-1], zin, l[x]))
    i = 0
  i = i + 1
sys.stdout.write("%s%s%s\n" % (second_last, zin, last))
sys.stdout.write("%s%s%s\n" % (last, zin, first))
print("***Het algoritme is niet verantwoordelijk voor het verkrijgen van een slecht kado*********")                                                                                                     
