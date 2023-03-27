#funtion
#for(....){.........}
#plot




# Usage:for(....){.........}
# 使用時機:當你會重複做同一件事情很多次

#Exercise E

score <- sample(1:100, 50, T)

my.test <- function(x){
  m <- mean(x)
  n <- length(x)
  a <- sum((x >= 60))
  b <- sum((x >= 90))
  if (a >= (0.5*n) & b>0){ print(c("本次成績不調分，平均為：",m))
    }else{print(c("本次成績會調分，不及格比例為：",(n-a)/n))
      }
}

my.test(score)

#A simple example:
#重複列印出一個平方數,執行10次
  for(i in 1:10) {
    print(i^2)
  }
#Exercise1
#重複列印出偶數數列(從2起跳)的平方數,執行 100次
  
for (i in 1:100) {
  print((2*i)^2)
}
#Exercise2
#請從標準常態模型生成出100個觀察值
  
for (i in rnorm(100)) {
  print(i)
}
#Exercise3
#score = sample(80:100, 10000, replace = T)
#請統計有多少個score分別等於80, 85, 90, 95, 100
 
score = sample(80:100, 10000, replace = T)


for (i in score[c(80,85,90,95,100)]) {
  print(i)
}


# for{裡面}還可以用for
# 但是R執行的速度會變慢 ○ 所以請節制使用loop
# 自訂函式(function)也可以搭for
  
#Exercise 4
#請用plot與points(x,y,pch=20)劃出scatterplot
library(MASS) 
mu = c(0,0)
p = 0.5
n= 100
sigma = matrix(c(1, p, p, 1), 2, 2)  #它必須是正定矩陣 
data = mvrnorm(n, mu, sigma)
x = data[,1]
y = data[,2]

#plot(x,y)
#points(x,y,pch=20)

#Exercise 5!!!!!!!!!!!!!!

#Plot𝑧=𝑥2+𝑦2,−2<𝑥,𝑦<2 using persp(x, y, z)

x <- x>-2
y <- y<2
z <-x^2+y^2
zf = function(x,y){x^2+y^2}

n = 50
x.grid =  seq(-2, 2, length=n)
y.grid = seq(-2, 2, length=n)
z.grid = outer(x.grid,y.grid, FUN = zf)

persp(x.grid, y.grid, z.grid)

#Exercise 6
#請找出 第100個偶數發生的位置
#你需要逐一檢查每個數值是否為偶數(%%2)
#若是,則必須記錄那些東西才有辦法確定目標已達成

number = sample(0:100, 10^3, replace = T)

n = 1:100
a = number[number[n]%%2==0]
a
a[100]

#Exercise 7
#Define a function 

#n=100
#k =1:n

#a



for (i in 5) {
  for (j in 1:5) {
    print(1:j)
  }
}

#b





#for (j in 1:5) {
#print((2*j-1))
#}