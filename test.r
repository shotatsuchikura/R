montecarlo <- function(initial_sale,average,sd) {
	sale <- c()
	sale[1] <- initial_sale
	for (i in 1:5){
		rate <- rnorm(1, mean = average, sd = sd)
		sale[i+1] <- sale[i]*rate
	}
	return(sale)
}

sale_2017 <- c()
sale_2018 <- c()
sale_2019 <- c()
sale_2020 <- c()
sale_2021 <- c()

for (n in 1:10000){
  sales <- montecarlo(495715,1.0547,0.0319)
  sale_2017[n] <- sales[2]
  sale_2018[n] <- sales[3]
  sale_2019[n] <- sales[4]
  sale_2020[n] <- sales[5]
  sale_2021[n] <- sales[6]
}

for (n in 1:10000){
  
}

SalesGrowthRate <- rnorm(10000000, mean = 1.0547, sd = 0.0319)
hist(SalesGrowthRate, freq = FALSE)

hist(sale_2021, freq = FALSE)

write.table(sale_2021, file="sale_2021.csv", sep=",")


x <- rnorm(10000, mean = 1, sd = 0.1)
hist(x)

