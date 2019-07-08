This repo houses scripts and resulting data files from <http://data.richmond.com/salaries/2013/state/university-of-virginia/> that contain names, titles, and gross annual salary for ~8000 employees at the University of Virginia each year.

Data were scraped from HTML tables from 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2018. Data from 2017 were not available (I think because Richmond Times Dispatch did not submit a FOIA request for those).

**01_webscraping.R** is the script where I developed the functions to scrape the HTML tables

**02_scrape_sal_function.R** is the cleaned version of the function to perform webscraping for each year.

**03_sal_loops.R** is where I use the function for each page for each year and produce the csv data files.


*Special thanks to Brigitte Hogan and Adrian Kester for their assistance developing the function*
