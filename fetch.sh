git clone --depth 1 https://github.com/spring-projects/spring-framework
mkdir work
cp -r modules work/
cp -r spring-framework/framework-docs/src/docs/asciidoc/ work/modules/ROOT/pages/
mv work/modules/ROOT/pages/images/* work/modules/ROOT/images/images/
cp antora.yml work/
npx antora --extension @antora/lunr-extension antora-playbook.yml