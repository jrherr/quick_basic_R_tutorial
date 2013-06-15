#Introduction To R

#Getting Help

?log

help.search("linear model")

#Variable and assignments

a=5
a

a<-5
a

b=7*24
b

ab=b/a
ab

#===============================
# () are for functions

ls()

log(a)

# privdes name of function you are interested in

args(log)

#================================

exp(ab)

log(ab)

sqrt(ab)

#================================
# vectors

2:15

75:83

13:4

d=1:10
d

# seq (from, to, length= or by=)

f=seq(9, 3, length=10)
f
g=seq(5, 16, by=0.5)
g

#arguably the most flexible vector creator

h=c(6,3,9,2,27,1)
h

k=c(b,a,f)
k

# then you can create complex vectors and compute on the fly

n=c(2+4,7*8,a+b,seq(1,3, by=2), 5:3)

# repeated value vectors, rep (similar to sequence), note the modifiers: length, times, each

rep(2,length=5)

rep(c(1,2,3),times=3)

rep(c(1,2),each=4)

# subscripting : taking peices of vectors
# [] are for subsets

d<-8:3
d[3] # the third element of d

f[3:6] # elements 3, 4, 5, and 6 of f

g>10 # logical vector

g[g>10] #just the elements in g that are greater than 10

d[d<5]=1
d

#=====================================

# working with vectors

a=1:10

b=3:12

a+2

a+b

# log functions, such as log(x,base=2)

exp(a) #exponential of a

log10(b) #log base 10 of b

log(a,base=2) #log example here with base 2, you can do logarithms with any base

#=========================================

# reading in data

dat=read.csv("expData.csv") #this is the code we use when we want to 
dat

#=========================================

# subsetting - when you need a certain data point use dat[5,4]

dat [3,2]

dat[1:3,2] # calls row 1,2 and 3, second column

dat[6, ]

dat$time #this is the same as calling dat[ ,1]

dat$expVal[4:8] #calls the second column, rows 4 through 8, same

#============================================
 
#Loading packages

library(plyr)


#Functions


###################################################
###################################################
square=function(x){ #name our function and define one argument
  res=x^2 #operation the function will perform when called
  return(res) #the information we want back
} #end of function


###################################################
###################################################
W=square(5) #call the square function and give it the argument of 5, 
#so that it will square 5
W

###################################################
###################################################
power=function(x,y=2){ #name our function and define two arguments, 
  #y has the default value of 2
  res2=x^y #operation the function will perform when called
  return(res2) #the information we want back
} #end of function


###################################################
###################################################
power(5) #does the same thing as our square function
power(5,3) #cubes 5
power(y=0.5, x=25) #takes the square root of 25


#Loops


###################################################
###################################################
IT=5 #number of times we want our loop to do the operation
p=seq(3,7,by=1) #a vector of powers we are going to take 4 too.
result=rep(NA, length=IT) #create an empty vector to store the results in
for(i in 1:5){ #tell our loop that it is going to start with i=1 and count up 
  #(by whole numbers) until i=5
  result[i]=4^p[i] #stores the result of the calculation in the i'th place in
  # our result 
  #vector, e.g. result[1]=4^p[1] or 4^3
} #end of for loop
result

