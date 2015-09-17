set -x 
filename='js/FAIcons.js'
echo ".pragma library" > $filename
echo "var Icon = {" >> $filename
curl -s https://raw.githubusercontent.com/FortAwesome/Font-Awesome/master/css/font-awesome.css 2>&1 | sed -e ':a' -e 'N' -e '$!ba' -e 's/before {\n  content: //g' | sed 's/}//g' | sed 's/\.//' | sed 's/\\f/\\uf/' | sed 's/;/,/' | grep 'fa-' | grep -v 'before' | grep -v '{' | grep -v "animation" | grep -v "root" | sed 's/fa-//' | sed 's/-/_/g' | sort | uniq >> $filename
echo "};" >> $filename
