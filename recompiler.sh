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
git clone https://github.com/pho-recipes/Network

# I know it's stupid, but it's sometimes necessary.
cd Basic && git pull
cd Twitter-simple && git pull
cd Twitter-full && git pull
cd Facebook && git pull
cd Web && git pull
cd Network && git pull

rm -fr Basic/.compiled/
rm -fr Twitter-simple/.compiled/
rm -fr Twitter-full/.compiled/
rm -fr Facebook/.compiled/
rm -fr Web/.compiled/
rm -fr Network/.compiled/

~/Code/pho-cli/bin/pho.php build ./Basic/ ./Basic/.compiled pgql
~/Code/pho-cli/bin/pho.php build ./Twitter-simple/ ./Twitter-simple/.compiled pgql
~/Code/pho-cli/bin/pho.php build ./Twitter-full/ ./Twitter-full/.compiled pgql
~/Code/pho-cli/bin/pho.php build ./Facebook/ ./Facebook/.compiled pgql
~/Code/pho-cli/bin/pho.php build ./Web/ ./Web/.compiled pgql
~/Code/pho-cli/bin/pho.php build ./Network/ ./Network/.compiled pgql

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

cd ../Network
git add .compiled && git commit -am "recompiled"
git push

