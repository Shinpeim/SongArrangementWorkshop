require 'kramdown'

markdown = File.read('index.md')
body = Kramdown::Document.new(markdown).to_html

html =<<-EOD
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <link rel="stylesheet" href="./css/reset.css" />
  <link rel="stylesheet" href="./css/style.css" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>SongArrangementWorkshop</title>
</head>

<body>
#{body}
</body>
</html>
EOD
File.write('docs/index.html', html)
