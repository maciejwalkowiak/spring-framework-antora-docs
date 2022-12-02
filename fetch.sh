git clone --depth 1 https://github.com/spring-projects/spring-framework
mkdir -p modules/ROOT/
mkdir -p modules/ROOT/pages
mkdir -p modules/ROOT/images
cp -r spring-framework/framework-docs/src/docs/asciidoc/ modules/ROOT/pages/
mv modules/ROOT/pages/images modules/ROOT/images/