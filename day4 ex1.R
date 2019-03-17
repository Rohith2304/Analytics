#create a dataframe of these columns for 1000 students
#rollno, sname, gender, age, marks1, marks2, passfail
#passfail- 0 fail, 1 pass
n=1000
(rollno = 1:n)
(name=paste('student',1:n,sep=''))
(gender=sample(c('M','F'),size=n,replace=T,prob=c(.35,.65)   ))#M,F,65% females
length(gender)
table(gender)
(age=trunc(runif(n,20,30)))# between 20 and 30 , uniform distribution
(marks1=round(rnorm(n,mean=65,sd=10)))#eman =65, sd=10,normal distribution
(marks2=round(rnorn(n,mean=70,sd=8),2)) # mean =70, sd=8, normally distributed
(course = sample(c('btech','mtech','phd'), size=n, replace=T, prob=c(.7, .2, .1)))
(passfail=sample(c(0,1),size=n,replace=T,prob=c(.4,.6))) #pass , fail on placement drive
# give the dataframs as dataiitb
dataiitb = data.frame(rollno, sname, gender, age, course, marks1, marks2, passfail)
write.csv(dataiitb,'./data/dataiitb.csv')#subdirectory data in current repository

#find gender mean of marks1 and marks2
#find properties of data
#first few and last few rows
head(dataiitb)
tail(dataiitb)
#dimensions
dim(dataiitb)
#no of rwos and colinmns
nrow(dataiitb);ncol(dataiitb)

# summary
summary(dataiitb)
# structure
str(dataiitb)
#class of data
class(dataiitb)
#find gender mean of marks1 and marks 2

#arrange the data in the order of marks1

