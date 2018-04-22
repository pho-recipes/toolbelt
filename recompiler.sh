# two variables
# compilation dir
# pho-cli binary

mkdir ~/Downloads/recompile
cd ~/Downloads/recompile

git clone https://github.com/pho-recipes/Basic
git clone https://github.com/pho-recipes/Twitter-simple
git clone https://github.com/pho-recipes/Twitter-full
git clone https://github.com/pho-recipes/Facebook
git clone https://github.com/pho-recipes/Web

rm -fr Basic/.compiled/
rm -fr Twitter-simple/.compiled/
rm -fr Twitter-full/.compiled/
rm -fr Facebook/.compiled/
rm -fr Web/.compiled/

~/Code/pho-cli/bin/pho.php build ./Basic/ ./Basic/.compiled pgql
~/Code/pho-cli/bin/pho.php build ./Twitter-simple/ ./Twitter-simple/.compiled pgql
~/Code/pho-cli/bin/pho.php build ./Twitter-full/ ./Twitter-full/.compiled pgql
~/Code/pho-cli/bin/pho.php build ./Facebook/ ./Facebook/.compiled pgql
~/Code/pho-cli/bin/pho.php build ./Web/ ./Web/.compiled pgql

cd Basic
git add .compiled && git commit -am "recompiled"
git push

cd ../Twitter-simple
git add .compiled && git commit -am "recompiled"
git push

cd ../Twitter-full
git add .compiled && git commit -am "recompiled"
git push

cd ../Facebook
git add .compiled && git commit -am "recompiled"
git push

cd ../Web
git add .compiled && git commit -am "recompiled"
git push

