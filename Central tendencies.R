#Q1 ====

philip = c(15,21,20,20,20)
mathew = c(30,25,12,35,0)
#a) Find the mean, median and range for Philip and Matthews.
mean(philip)
mean(mathew)
median(philip)
median(mathew)
range(philip)
range(mathew)

# b) Who is more consistent?

sd(philip)
sd(mathew)

# c) Who makes the most parts in a week, on an average? 


boxplot(philip,mathew,names=c("philip","mathew"))

quantile(mathew,c(.25,.5,.75))

#Q2 ====

kohli_scores = c(65,72,58,77)

mean(kohli_scores)
median(kohli_scores)

new_scores = append(kohli_scores,70)
mean(new_scores)
median(new_scores)
 print("Median has increased")
#Q3 ====
 rote = c(11, 7.5, 8.5, 10, 10, 10.5, 5.5, 10, 9, 9.5, 5.25, 8, 6.5, 10.5, 8.75, 0, 6, 6, 6.75, 8.75, 0, 9.5, 7.5, 8.5, 7 )
 mean(rote)
 
 sd(rote) #standard deviation = spread
 
 hist(rote)
 hist(rote,xlab = "scores",col = "pink",border = "blue")
quantile(rote,c(0.25,0.5,0.75)) 
boxplot(rote)
#Q4 ====
A=c(1:100)
A
mean(A)
median(A)


A= seq(1:100)
A

B = runif(100, min = 20, max = 60) 
B

sd(B)
hist(B,breaks = 100)

C = c(rep(1,10),rep(2,20),rep(3,30))
C
table(C)
which.max(table(C))


#Q6 ====

# Load package "datasets":
library(datasets)

#Load data "mtcars":
data(mtcars)

#Info about dataset:
?mtcars

#Display datasets:
mtcars
dim(mtcars)
names(mtcars) #names of all columns
str(mtcars) #datatypes of all columns
summary(mtcars)
#to convert 'am' into categorical variable
mtcars$am = as.factor(mtcars$am)
summary(mtcars)
#to subset the numeric variables

N= subset(mtcars,select = c(mpg,hp,wt))

boxplot(N)
colMeans(N)

T =table(mtcars$cyl)
T[names(T)=='6']
