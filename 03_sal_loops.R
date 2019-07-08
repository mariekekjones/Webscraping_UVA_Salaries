# loop to create datasets and read websites into the dfs

for (year in c(2011:2016, 2018)){
  # initialize empty dataframe
  mydf <- data.frame()
  
  #for each page of website, use the scrape_sal function and rbind each page to mydf
  for (page in 1:115){
    mydf <- rbind(mydf, scrape_sal(year, page))
  }
  
  #create names of datasets
  temp <- paste0("alldata", year)
  
  # assign df to name
  assign(temp, mydf)
}

#write dataframes to csv
write.csv(alldata2011, file = "2011_UVA_SalaryData.csv")
write.csv(alldata2012, file = "2012_UVA_SalaryData.csv")
write.csv(alldata2013, file = "2013_UVA_SalaryData.csv")
write.csv(alldata2014, file = "2014_UVA_SalaryData.csv")
write.csv(alldata2015, file = "2015_UVA_SalaryData.csv")
write.csv(alldata2016, file = "2016_UVA_SalaryData.csv")
write.csv(alldata2018, file = "2018_UVA_SalaryData.csv")
