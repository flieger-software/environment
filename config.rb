add_import_path "bower_components/bootswatch/paper"

http_path = "/"
sass_dir = "src/css"
css_dir = "assets/css"
images_dir = "assets/img"
javascripts_dir = "assets/js"

output_style = (environment == :production) ? :compressed : :expanded
line_comments = false
