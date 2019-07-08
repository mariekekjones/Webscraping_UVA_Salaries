library(tidyverse)
library(rvest)

scrape_sal <- function(year, page){
  
  # Identify the url from where you want to extract data
  base_url <- paste0("http://data.richmond.com/salaries/", year, "/state/university-of-virginia?page=", page)
  
  webpage <- read_html(base_url)
  
  # read tables from website
  tbls <- html_nodes(webpage, "table") 
  
  #read the <td> tags and format as html text
  innards <- html_nodes(tbls[[2]], "td") %>% html_text()
  
  #turn the td tagged material into a dataframe
  mydata <- matrix(innards, ncol = 3, byrow = T) %>% as.data.frame()
  
  names(mydata) <- c("Name", "Title", "Salary")
  
  mydata
}
