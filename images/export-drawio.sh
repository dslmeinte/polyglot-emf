DRAWIO=/Applications/draw.io.app/Contents/MacOS/draw.io

echo "Exporting $1 as SVG and PNG..."
$DRAWIO --export --format svg --border 2 $1
$DRAWIO --export --format png --scale 4.0 $1
mogrify -geometry 900x\> "${1%.*}.png"
$DRAWIO --export --format pdf --crop $1

