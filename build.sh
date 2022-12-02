git clone --depth 1 --branch v6.0.2 https://github.com/spring-projects/spring-framework

# create work dir
mkdir work

# antora needs to work within a git repository

# make netlify happy
git config user.email "you@example.com"
git config user.name "Your Name"

cd work
git init .
touch .gitignore
git add .gitignore
git commit -m 'initialize repository'
cd ..

# copy src files to work
cp -r modules work/

# copy spring framework pages
cp -r spring-framework/framework-docs/src/docs/asciidoc/ work/modules/ROOT/pages/

# relocate images to match antora defaults
mv work/modules/ROOT/pages/images/* work/modules/ROOT/images/images/

# copy antora config file
cp antora.yml work/

# run antora
npx antora --extension @antora/lunr-extension antora-playbook.yml