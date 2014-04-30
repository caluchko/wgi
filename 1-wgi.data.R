#### opens WB indictators.csv files and puts data in appropriate format
A <- read.csv("Accountability.csv", header = FALSE)
G <- read.csv("Gov Effectiveness.csv", header = FALSE)
L <- read.csv("Rule of Law.csv", header = FALSE)
S <- read.csv("Stability.csv", header = FALSE)
C <- read.csv("Corruption.csv", header = FALSE)
R <- read.csv("Regulatory.csv", header = FALSE)

#create a list of all the data frames
indicators <- list(a = A, c = C, g = G, l = L, r = R, s = S)

# function to convert factors to numeric values
as.numeric.factor <- function(x) as.numeric(levels(x))[x]

# extract the 2012 Estimate value from each data fram in the list
values.2012 <- lapply(indicators, FUN = function(x){
                as.numeric.factor(x[,x[1,] == 2012 & x[2,] == "Estimate"])
                })

#creating data frame and cleaning up
df.2012 <- as.data.frame(values.2012)
countries <- as.character(A[,1])
df.2012 <- cbind(countries, df.2012)
df.2012 <- df.2012[3:217,]

#Note the line breaks in column names below
colnames(df.2012) <- c("Country",                       
                       "Voice &\nAccountability",
                       "Political Stability",
                       "Gov't\nEffectiveness",
                       "Regulatory Quality",
                       "Rule of Law",
                       "Control of\nCorruption")                       
                       
#scatter plot matrix
pairs(df.2012[2:7], pch = ".", panel = "panel.smooth")

#to do: 1) improve scatter plot matrix, 2) linear models, 
#       3) master df with all years