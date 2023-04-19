jekyll build
echo ""
echo ""
echo ""
cd /Users/test01test/Documents/consultoria/editorial/web/websites/sopiarium.github.io
rm -rf *
cd /Users/test01test/Documents/consultoria/editorial/web/websites/web/_site
cp -rf * /Users/test01test/Documents/consultoria/editorial/web/websites/sopiarium.github.io
cd /Users/test01test/Documents/consultoria/editorial/web/websites/sopiarium.github.io
rm actualiza.sh
git status
git add . 

