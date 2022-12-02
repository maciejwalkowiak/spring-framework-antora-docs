echo "Downloading Spring Framework project"

wget -q https://github.com/spring-projects/spring-framework/archive/refs/tags/v6.0.2.zip

echo "Unzipping"

unzip -q v6.0.2

# create work dir
mkdir work

cp _redirects work/site/

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

echo "Copying src files to work"

# copy src files to work
cp -r modules work/

echo "Copying spring framework pages"

# copy spring framework pages
cp -r spring-framework-6.0.2/framework-docs/src/docs/asciidoc/ work/modules/ROOT/pages/

echo "Relocating images"

# relocate images to match antora defaults
mkdir -p work/modules/ROOT/images/images/
mv work/modules/ROOT/pages/images/* work/modules/ROOT/images/images/

echo "Copying antora config file"

# copy antora config file
cp antora.yml work/

tree work

echo "Running Antora"

# run antora
npm run antora

echo "Running Antora finished"