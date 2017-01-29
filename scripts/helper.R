# @author: josh weinflash
# @created: january 22 2017

# helper function definitions ---------------------------------------------
add_national_average = function(df) {
  # function to add national average unemployment
  # rate as column to data.frame df
  #
  # Args:
  #   df: data.frame
  #
  # Returns: data.frame
  
  # calculate avg
  avg = sum(df$unemployed) / sum(df$civilian_labor_force_population)
  
  # set as column
  df$national_average = rep.int(avg, nrow(df))
  
  return(df)
}

