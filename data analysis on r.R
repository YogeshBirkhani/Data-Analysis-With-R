#installing package
install.packages('tidyverse')
library(tidyverse)

#loading dataset
pokemon <- read.csv("pokemon.csv")
View(pokemon)

#checking no of rows and columns
nrow(pokemon)
ncol(pokemon)

#summary 
glimpse(pokemon)

#min_max hp
min(pokemon$hp)
max(pokemon$hp)

#min-max speed
min(pokemon$speed)
max(pokemon$speed)

#finding null values
sum(is.na(pokemon))

#renaming col names
pokemon <- pokemon %>% rename(primary_type = type1)
pokemon <- pokemon %>% rename(secondary_type = type2)
pokemon <- pokemon %>% rename(pokemon_name = name)
colnames(pokemon)


#grass_pokemon
grass_pokemon <- pokemon %>% filter(primary_type == "grass")
View(grass_pokemon)

min(grass_pokemon$speed)
max(grass_pokemon$speed)

mean(grass_pokemon$sp_defense)
mean(grass_pokemon$sp_attack)

#data viz on grass pokemon
install.packages("ggplot2")
library(ggplot2)

#hp
ggplot(data=grass_pokemon, aes(x=hp)) + geom_histogram(fill = 'green')

#height
ggplot(data=grass_pokemon, aes(x=height_m)) + geom_histogram()

#weight
ggplot(data = grass_pokemon, aes(x = weight_kg)) + geom_histogram()


#legendary vs non-legendary
ggplot(data=grass_pokemon,aes(x=is_legendary)) + geom_bar()


#fire_pokemon
fire_pokemon <- pokemon %>% filter(primary_type == 'fire')

min(fire_pokemon$speed)
max(fire_pokemon$speed)

mean(fire_pokemon$sp_attack)
mean(fire_pokemon$sp_defense)

#data viz

#generation
ggplot(data = fire_pokemon,aes(x=generation, fill='green')) + geom_bar()

#secondary_type
ggplot(data = fire_pokemon,aes(x=secondary_type,fill="red")) + geom_bar()

#spdefence vs spattack
ggplot(data = fire_pokemon, aes(x=sp_attack, y=sp_defense)) + geom_point()

#weight vs height
ggplot(data = fire_pokemon, aes(x=weight_kg, y=height_m)) + geom_point()






