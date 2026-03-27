# Practical 1 - Solution


# Questions:
#   
# Q1) Write an R program that: 
# 1.	Takes two numeric values from user. 
# 2.	Performs all arithmetic operations (+, −, *, /, power, modulus). 
# 3.	Stores the results in a vector. 
# 4.	Displays the maximum, minimum, and average value of the results.
# Solution:
a <- as.numeric(readline(prompt = "Enter first number :"))
b <- as.numeric(readline(prompt = "Enter second number :"))

add <- a+b
sub <- a-b
mul <- a*b
div <- a/b
pow <- a^b
mod <- a%%b

result <- c(add, sub, div, mul, div, pow, mod)

maximum_num <- max(result)
minimum_num <- min(result)
average_num <- mean(result)

result
maximum_num
minimum_num



# Q2) Create an R program that:
# 1. Generates 10 random numbers between 1 and 100.
# 2. Calculates square root and then rounded value, ceiling, and floor for each square root value.
# 3. Stores results in a data frame.
# Solution:
num <- sample(1:100, 10)
num

squared_root <- sqrt(num)
rounding_num <- round(squared_root)
ceiling_num <- ceiling(squared_root)
floor_num <- floor(squared_root)

result <- data.frame(
  Number <- num,
  SquareRoot <- squared_root,
  Rounding <- rounding_num,
  Ceiling <- ceiling_num,
  floor <- floor_num
)

print(result)



# Q3) Write an R program that:
# 1. Takes a list of names.
# 2. Converts all names to uppercase.
# 3. Calculates the number of characters in each name.
# 4. Combines the name and its length into a formatted sentence.
# Solution:
name <- c("arantha", "daisy", "swamini", "radha")

upper_name <- toupper(name)
upper_name

count_num <- nchar(upper_name)
count_num

for (i in name) {
  cat(i, "has" ,count_num[j], "characters")
}



# Q4) Write an R program that:
# 1. Creates a vector of numbers from 1 to 200.
# 2. Finds numbers that are divisible by 3 and 5.
# 3. Calculates square root and square of those numbers.
# 4. Displays results in a table format.
# Solution:
x <- 1:200
selected_num <- x[x%%3 == 0 & x%%5 == 0]
selected_num

squared_root <- sqrt(selected_num)
square_num <- selected_num ^ 2

result <- data.frame(
  Number <- selected_num,
  Square <- square_num,
  Squared <- squared_root
)
print(result)



# Q5) Write an R program to evaluate a quadratic equation for given a, b, c values 
# and return real or complex roots.
# Formula: 
# For ax² + bx + c = 0
# Discriminant: D = b² − 4ac
# Roots:   x = (-b ± √D) / 2a
# Soluion:
a <- 1
b <- -4
c<- -5

D <- b^2 - 4*a*c

root_1 <- (-b + sqrt(as.complex(D)))/2*a
root_2 <- (-b + sqrt(as.complex(D)))/2*a

cat("First complex Root is :", root_1, "\n")
cat("second complex Root is :", root_2, "\n")




#----------------------------------------------------------------------------------------------------------------------------------------
# Practice problems

# Problem - 1
# Generate a num from  1 to 200
# find :- divisible by 3 or 7
# divisible by 3 and 7
x <- 1:200

selected_num1 <- x[x%%3 == 0 & x%%7 == 0]
selected_num1

selected_num2 <- x[x%%3 == 0 | x%%7 == 0]
selected_num2



# Problem - 2 
# x <- c(10,20,NA,30,NA,40)
# Find :- Sum ignoring NA
# Replace the NA with mean
x <- c(10,20,NA,30,NA,40)
sum(x, na.rm = TRUE)

mean_x <- mean(x, na.rm = TRUE)
x[is.na(x)] <- mean_x
x
