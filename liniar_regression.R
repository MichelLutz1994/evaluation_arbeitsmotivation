library(pacman)
pacman::p_load(tidyverse, readxl, ggplot2, moonBook, webr, tidyr, reshape2)

# set working directory to script location
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

# relative path 
# I formated the raw data to a real csv with correct newlines
path <- "data_reformat.csv"
df_raw <-  read.csv(path, header=TRUE)

colnames(df_raw) <- df_raw[1,]
df_1 <- df_raw[3:nrow(df_raw),]

# remove missing data
df_1[df_1 == ""] <- NaN

# convert MO, HY and SD to numeric
df_1[,c(7:43, 45)] <- sapply(df_1[,c(7:43, 45)],as.numeric)

# regression model for all targets
regression_model <- lm(cbind(MO01_01,
                             MO01_02,
                             MO01_03,
                             MO01_04,
                             MO01_05,
                             MO01_06,
                             MO01_07,
                             MO01_08,
                             MO01_09,
                             MO01_10,
                             MO01_11,
                             MO01_12,
                             MO01_13,
                             MO01_14,
                             MO01_15,
                             MO01_16,
                             MO01_17,
                             HY01_01,
                             HY01_02,
                             HY01_03,
                             HY01_04,
                             HY01_05,
                             HY01_06,
                             HY01_07,
                             HY01_08,
                             HY01_09,
                             HY01_10,
                             HY01_11,
                             HY01_12,
                             HY01_13,
                             HY01_14,
                             HY01_15,
                             HY01_16,
                             HY01_17) ~ SD01 + SD02 + SD03 + SD03_09 + SD04, data = df_1)

summary(regression_model)         






