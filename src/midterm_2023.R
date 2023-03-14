# Midterm exam :: CS301S2023

## Date: 14 March 2023

## Name: Add your name here

rm(list = ls()) # clear out the variables from memory to make a clean execution of the code.

# If you want to remove all previous plots and clear the console, run the following two lines.
graphics.off() # clear out all plots from previous work.

cat("\014") # clear the console

################################
# Q 1: Begin by loading the "tidyverse" library. Note, if you have not installed this library, then you will have to include code to install it. 
  # TODO: add code for library

################################
# Q 2: Use the "read.table()" function to load and open the included csv data file, "LifeExpectancyData.csv". So that you are able to work with this data, be sure to assign the variable "dat" to this loaded csv dataset.

  # TODO: add code to load and read a csv file

################################
# Q 3: Write code to view the loaded dataset to get familiar with the data. 

  # TODO: Add code to view the dataset that we just loaded.

################################
# Q 4: Describe your observations. What is this dataset?

  # TODO What is this dataset?

################################
# Q 5: Using the code below, you note that the "Status" column contains two main values (of type character or string); "Developing" and "Developed". How would you classify the kind of data do you see in the column?

unique(dat$Status)

  # TODO: 
  
################################
# Q 6: Create two sub datasets ("deving" and "deved") from the superset ("dat").
# -All data in "deving" for the "Developing" state of Status of the "dat" superset.
# -All data in "deved" for the "Developed" state of Status of the "dat" superset.

  # TODO: create deving dataset for the "Developing" state of Status

  # TODO: create deved dataset for the "Developed" state of Status

# We will be using the "corPlot()" function from the "psych" library package. If you have not yet installed this package, then you will have to do so before continuing.

################################
# Q 7: Using the text at https://cran.r-project.org/web/packages/psych/vignettes/intro.pdf, describe in clear and meaningful language what kind of results the "corPlot()" function returns? 

  # TODO 

################################
# Q 8: Complete the following code to apply the fourth to the twenty-second columns of "deving" to the corePlot() fuction. Note the line above this function, "dev.off()" is there to remove plots which may still be residing in memory, and would cause an error for corPlot().
  
  # TODO: complete the code

  dev.off() # Clear away any plot already in memory. 
  corPlot(deving)

  ################################
# Q 9: In the Life.expectancy column of the "deving" dataset, ignoring any values of 1, what is the largest value? What is the smallest value? Give the values and the variables they represent.

  # TODO: highest value: associated variable
  
  # TODO: lowest value: associated variable

################################  
# Q 10: According to the "deving" dataset, explain what these above two values imply for the associated variables?

    # TODO

################################  
# Q 11: Complete the following code to apply the fourth to the twenty-second columns of "deved" to the corePlot(). Note the line above this function, "dev.off()" is there to remove plots which may still be residing in memory, and would cause an error for corPlot().

  # TODO: complete the code
  
  dev.off() # Clear away any plot already in memory. 
  corPlot(deved)

################################
# Q 12: In the "Life.expectancy" column of the "deved" dataset, ignoring any values of 1, what is the largest value? What is the smallest value? Give the values and the variables they represent.

  # TODO: highest value: associated variable
  
  # TODO: lowest value: associated variable

################################    
# Q 13: According to the "deved" dataset, explain what these above two values imply?  
  
  # TODO
  
# We want to compare the "Life.expectancy" data of two countries (Afghanistan and Bahamas) of the "Deving" dataset. The comparison will be a t-test.

################################
# Q 14: What is the null hypothesis of our test?

  # TODO: Ho

################################
# Q 15: What is the alternative hypothesis of our test?

  # TODO: Ha

################################
# Q 16: Correct the following code to set up the two datasets for the test. 

  # TODO: Complete the code
  
deving_Afgh_LE <- dat | filter(Status="Developing" Country="Afghanistan") | select(Life.expectancy)

deving_Baha_LE <- dat | filter(Status="Developing" Country="Bahamas") | select(Life.expectancy)

t-test(deving_Afgh_LE| [deving_Baha_LE])

################################
# Q 17: What is the output of your corrected code from above? (paste in output from the test)

  # TODO: output

################################
# Q 18: Which hypothesis do we conclude? In clear and meaningful language, please justify your decision.

  # TODO

# You suspect that there is a large difference between Year by Life.expectancy in both of the "deving" and "deved" datasets. You first need a plot to confirm your thinking.

################################
# Q 19: Prepare a ggplot scatter plot of the "deving" and "deved" datasets to be shown together on a single canvas. The points from the "deving" are to be shown in RED, and the points for the "deved" dataset are to be shown in BLUE. For each dataset, let x correspond to "Year" and y to describe the data of the "Life.expectancy" column.

dev.off()
# TODO: ggplot of Year versus Life.Expectancy for deving vs deved

################################
# Q 20: Modify this code to show the same type of plot where you let x correspond to "Year" and y to describe the data of the "Adult.Mortality" column.


dev.off()
# TODO: ggplot of Year versus Adult.Mortality for deving vs deved

# (Did you remember to leave your name at the top of this code?)

######################################################
