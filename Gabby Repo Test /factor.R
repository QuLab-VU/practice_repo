#Factors = Catagorical dat = Data that is within catagories i.e sex 
# factor function, encodes vecotrs as factors 

#Converting a catagorical vector to a factor

#sex factor#
sex_vector <- c("Male", "Female", "Female", "Male", "Male")
factor_sex_vector <-factor(sex_vector)
factor_sex_vector

# Animal factor#
animals_vector <- c("Elephant", "Giraffe", "Donkey", "Horse")
factor_animals_vector <- factor(animals_vector)
factor_animals_vector

# Temperature factor #
temperature_vector <- c("High", "Low", "High","Low", "Medium")
factor_temperature_vector <- factor(temperature_vector, order = TRUE, levels = c("Low", "Medium", "High"))
factor_temperature_vector

#building a factor with levels
survey_vector <- c("M", "F", "F", "M", "M")
factor_survey_vector <- factor(survey_vector)
levels(factor_survey_vector) <-c("Female", "Male") #levels ae the options amongst the factor 
factor_survey_vector
survey_vector <- c("M", "F", "F", "M", "M")
factor_survey_vector <- factor(survey_vector)
factor_survey_vector

summary(survey_vector) #Calculates the number of factors within the dataset
summary(factor_survey_vector)# Calculates the number of each factor in each level 

#Ordered Factors
speed_vector <-c("medium", "slow", "slow", "medium", "fast")
factor_speed_vector <- factor(speed_vector, ordered=TRUE, levels = c("slow","medium","fast")) #adding ordered=TRUE indicated that the factor is in a order
factor_speed_vector
summary(factor_speed_vector)

#Comparing ordered Factors 
da2 <- factor_speed_vector[2] #selects the second datapoint in the factor
da5 <- factor_speed_vector[5]#selects the fith datapoint in the factor
#Comparing datapoints within a factor 
da2 > da5# Is data analyst 2 faster than data analyst 5?

#CREATING A DATAFRAME 
#planets datafram = name of planet, type of plante (terrstisl vs. gas), diameter of planer, rotaion, and if it has rings (true or false)
#Use datafram when you have both numeric and catagorical datapoints 
name <- c("Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune") 
type <- c("Terrestrial planet", "Terrestrial planet", "Terrestrial planet", 
          "Terrestrial planet", "Gas giant", "Gas giant", "Gas giant", "Gas giant")
diameter <- c(0.382, 0.949, 1, 0.532, 11.209, 9.449, 4.007, 3.883)
rotation <- c(58.64, -243.02, 1, 1.03, 0.41, 0.43, -0.72, 0.67)
rings <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE)
planets_df <-data.frame(name, type, diameter, rotation, rings)
planets_df

#investigating a dataframe 
str(planets_df)#investigates structure of the dataframe
head(planets_df)#beggining of the data frame
tail(planets_df)# end of the dataframe

#Selecting within a datafram 
planets_df[1,3] #diameter of mercury
planets_df [4]#all infroamtion on mars
planets_df[1:5, "diameter"]#selecting the first 5 values of the diameter column 
rings_vector <- planets_df$rings #use the $ when selcting a catagorical variable from a dataframe
rings_vector
planets_df[rings_vector,] #select all columns from the planet with rings 
subset(planets_df, subset = diameter < 1)#Planets with a diameter less than 1 

#SORTING 
positions <-  order(planets_df$diameter) #Order planets by diameter sizes 
planets_df[positions,]
