wget -q https://github.com/spring-projects/spring-framework/archive/refs/tags/v6.0.2.zip
unzip -q v6.0.2

# create work dir
mkdir work

# antora needs to work within a git repository

cd work
git init .

# make netlify happy
git config user.email "you@example.com"
git config user.name "Your Name"

touch .gitignore
git add .gitignore
git commit -m 'initialize repository'
cd ..

# copy src files to work
cp -r modules work/

# copy spring framework pages
cp -r spring-framework-6.0.2/framework-docs/src/docs/asciidoc/ work/modules/ROOT/pages/

tree work

# relocate images to match antora defaults
mkdir -p work/modules/ROOT/images/images/
mv work/modules/ROOT/pages/images/* work/modules/ROOT/images/images/

# copy antora config file
cp antora.yml work/

# run antora
npx antora --extension @antora/lunr-extension antora-playbook.yml