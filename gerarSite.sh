hugo

cp -u *.html public/

cp -u themes/slate/layouts/partials/header.html public/
cp -r Objetos public/
cd public/
cat header.html index.html > index2.html
rm header.html
mv index2.html index.html
#mv 404.html disc.html