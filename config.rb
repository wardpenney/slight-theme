# Set this to the root of your project when deployed:
http_path = "/"
sass_dir = "assets/stylesheets"
css_dir = "slightjewelry-5922201/assets"
images_dir = "slightjewelry-5922201/assets"
javascripts_dir = "slightjewelry-5922201/assets"

# output_style = :expanded or :nested or :compact or :compressed
output_style = :expanded

# line_comments = false

on_stylesheet_saved do |filename|
  if system "mv #{filename} #{filename}.liquid"
    puts "Adding .liquid extensinos to #{filename}. (shopify-theme-sass-compass)"
  else
    puts "ERROR (shopify-theme-sass-compass): Failed to append .liquid extension to #{filename}."
  end
end