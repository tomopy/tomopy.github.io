currentDate=`date +%F`

echo "## Data for $currentDate" >> docs/$currentDate.md

echo "![Image]($currentDate/peppers/cpu/summary.svg)" >> docs/$currentDate.md
echo "![Image]($currentDate/peppers/gpu/summary.svg)" >> docs/$currentDate.md

echo "[$currentDate.md](docs/$currentDate.md)"