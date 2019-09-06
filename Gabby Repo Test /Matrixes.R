# Matrixes 
matrix(1:9, byrow = TRUE, nrow = 3)#3 Row matrix nrow= 3, numbered 1-9 1:9, organized by row byrow = true)

#Constructing a Matrix from data
# Box office Star Wars (in millions!)
new_hope <- c(460.998, 314.4)
empire_strikes <- c(290.475, 247.900)
return_jedi <- c(309.306, 165.8)
box_office <- c(new_hope, empire_strikes, return_jedi)#Compile data into a vector#
star_wars_matrix <- matrix(box_office, byrow= TRUE, nrow= 3)# Organize data into a matrix#
#Identify catagories for naming 
region <- c("US", "non-US")
titles <- c("A New Hope", "The Empire Strikes Back", "Return of the Jedi")
#Set the values to the names to identify rows and columns#
colnames(star_wars_matrix) <- region
rownames(star_wars_matrix) <- titles
star_wars_matrix

# Box office Star Wars (in millions!) - different year 
The_phantom_Menace <- c( 474.5,  552.5)
Attack_of_the_Clones <- c(310.7,  338.7)
Revenge_of_the_Sith <- c(380.3,  468.5)
box_office2 <- c(The_phantom_Menace, Attack_of_the_Clones, Revenge_of_the_Sith)#Compile data into a vector#
star_wars_matrix2 <- matrix(box_office2, byrow= TRUE, nrow= 3)# Organize data into a matrix#
#Identify catagories for naming 
region <- c("US", "non-US")
titles <- c("The_phantom_Menace", "Attack_of_the_Clones", "Revenge_of_the_Sith")
#Set the values to the names to identify rows and columns#
colnames(star_wars_matrix2) <- region
rownames(star_wars_matrix2) <- titles
star_wars_matrix2

#Calculatign within a matrix#
worldwide_vector <- rowSums(star_wars_matrix)
all_wars_matrix <- rbind(star_wars_matrix, star_wars_matrix2)#rbind() bnd the two matrixese together
total_revenue_vector <- colSums(all_wars_matrix)#Calculate the total revenues of the new combined columns 
total_revenue_vector

# Select withing a matrix, select the non-US revenue for all movies, average, and select the first 2 movies 
non_us_all <- all_wars_matrix[,2]
mean(non_us_all) #mean of row 2) 
non_us_some <- all_wars_matrix[1:2,2] #first 2 numbers within row 2#
non_us_some

#Math within a Matrix 
visitors <- all_wars_matrix/5 #calculating visitors if the price of the tickets where $5#
visitors #the estimated number of people at each movie in the us and non-us


# Box office Star Wars (in millions!) - ticket prices
A_New_Hope <- c(5.0, 5.0)
The_Empire_Strikes_Back <-c(6.0, 6.0)
Return_of_the_Jedi <- c(7.0, 7.0)
The_phantom_Menace <- c(4.0, 4.0)
Attack_of_the_Clones<- c(4.5, 4.5)
Revenge_of_the_Sith <- c(4.9,4.9)
box_office3 <- c(A_New_Hope, The_Empire_Strikes_Back, Return_of_the_Jedi, The_phantom_Menace, Attack_of_the_Clones, Revenge_of_the_Sith)#Compile data into a vector#
ticket_prices_matrix <- matrix(box_office3, byrow= TRUE, nrow= 6)# Organize data into a matrix#
#Identify catagories for naming 
region <- c("US", "non-US")
titles <- c("A_New_Hope", "The_Empire_Strikes_Back", "Return_of_the_Jedi", "The_phantom_Menace", "Attack_of_the_Clones", "Revenge_of_the_Sith")
#Set the values to the names to identify rows and columns#
colnames(ticket_prices_matrix) <- region
rownames(ticket_prices_matrix) <- titles
ticket_prices_matrix

#Calculating multiple matrixes 
visitors <- all_wars_matrix/ticket_prices_matrix
visitors
mean(visitors) #average number of vistors for each move in the us and non-us; the number of visitors/ ticket prices