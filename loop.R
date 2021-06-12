library(rmarkdown)
library(tidyverse)

mydataset <- datasets::mtcars
lista.carros <- rownames(mydataset)

for (c in lista.carros){
  df <- mydataset %>% filter(rownames(mydataset) == c)
  render("relatorio.Rmd",output_file = paste0(c,'.docx'),
         output_format = "word_document")
}