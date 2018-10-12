cats <- read.csv(file = "data/feline-data.csv")

### some info on variables ###
# cats$coat
# cats$weight
# cats[1,1]
# typeof(cats$coat)
# str(cats)

cats.readr <- readr::read_csv('data/feline-data.csv')

### some more info on variables ###
# typeof(TRUE)
# typeof(3)
# typeof(3L)
# typeof(1+1i)
# my_vector <- vector(length=3)
# another_vector <- vector(mode='character', length=3)
# str(another_vector)

### work on cats dataframe ###

if(!dir.exists('cleaned_data')){
  dir.create('cleaned_data',showWarnings = FALSE)
  write.csv(cats,file='cleaned_data/feline-data-c.csv', row.names = FALSE)
}