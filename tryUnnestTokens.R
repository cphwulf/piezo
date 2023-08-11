library(readxl)
library(tidytext)
library(tidyr)
library(stringr)
library(dplyr)
myst=read.csv("../Git/DALF23W17/Mappe1.csv",sep=";")
myst=read_excel("../Git/DALF23W17/Mappe2.xlsx")
reviews=readRDS("../Git/DALF23W17/fogreviews.rds")

head(myst)
t=as_tibble(reviews[1,"content"])
cat(t)
ttoken <-  t %>% unnest_tokens(word,value)
reviews %>% filter(grepl("service",content))

sentnames=c("word","num","pos","num2","score","lemlist")
colnames(myst)=sentnames
mydf <- myst
mtest <- mydf %>% select(word,pos,score,lemlist) %>% filter(grepl("servi",word))
                                                            