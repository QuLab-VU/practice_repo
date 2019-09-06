#Lista allow for the construction of mutiple objects under 1 title
my_vector <- 1:10 # Vector with numerics from 1 up to 10
my_matrix <- matrix(1:9, ncol = 3)# Matrix with numerics from 1 up to 9
my_df <- planets_df[1:10,]

my_list <- list (my_vector, my_matrix, my_df)
my_list
