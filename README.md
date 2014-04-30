##wgi
===
####Analysis of World Governance Indicators
#### This repo contains data from World Governance Indicators (WGI) as well as 
#### R code for manipulating, visualizing, and analyzing the data. 
#### More information on WGI can be found [here](http://info.worldbank.org/governance/wgi/index.aspx#home)
***
### Data: 
#### An Excel speadsheeting containing values for all six WGI indicators for 1996-2012
#### for all countries of the world is available for download at the link above. 
#### For convenience six CSV files - on for each indicator - are posted here. 
#### The R code reads and manipulates these CSV files.
***
### Code:
#### Three R script files are posted. 
####*`1-wgi.data.R` - Reads the six CSVs and generates a data frame with the estimates of each of the six
####indicators for each country for the year 2012. Generates a scatter plot matrix for a quick look at the data.
####- `2-wgi.corrplot.R` - Generates a correlation matrix of the six indicators from the data frame created
####in the previous script.
#### - `3-wgi.splom.R` - Generates a fancier scatter plot matrix of the six indicators.
#### Note1: These scripts should be sourced into R in the same order as they are described. 





