# function which returns function which will encode vectors with values  of 'vec' 
label_encoder = function(vec){
  levels = sort(unique(vec))
  function(x){
    match(x, levels)
  }
}

#colors = c("red", "red", "blue", "green")

color_encoder = label_encoder(mm$Decision) # create encoder

encoded_colors = color_encoder(mm$Decision) # encode colors
encoded_colors
