#Testing out commenting

# here I am testing code to webscrape name, title, and salary data from UVA from the richmond times dispatch

library(tidyverse)
library(rvest)

# Identify the url from where you want to extract data
base_url <- "http://data.richmond.com/salaries/2018/state/university-of-virginia?page=11"
webpage <- read_html(base_url)

# read tables from website
tbls <- html_nodes(webpage, "table") 

#read the <td> tags and format as html text
innards <- html_nodes(tbls[[2]], "td") %>% html_text()

#turn the td tagged material into a dataframe
mydata <- matrix(innards, ncol = 3, byrow = T) %>% as.data.frame()

names(mydata) <- c("Name", "Title", "Salary")

mydata
