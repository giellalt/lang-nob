echo "\n"
echo "Script to check whether rule tags in grammarchecker.cg3 are declared in the errors* files\n"

echo "List grammarchecker tags from grammarchecker file and save as xxg\n"
 cat grammarchecker.cg3 |grep "^LIST &"|cut -d" " -f2|tr -d "&"|sort > xxg

echo "List grammarchecker tags from native language ftl file and save as xxn\n"
 cat errors-nb.ftl |grep "^[a-z]"|cut -d" " -f1|sort > xxn

echo "List grammarchecker tags from English ftl file and save as xxe\n"
 cat errors-en.ftl |grep "^[a-z]"|cut -d" " -f1|sort > xxe


echo "List grammarchecker tags from json file and save xxj\n"
 cat errors.json |grep '"id"'|cut -d'"' -f4|sort > xxj

echo "List grammarchecker tags from xml file and save xxx\n"
cat errors.source.xml | grep "error id"|cut -d'"' -f2|sort > xxx

echo "Grammarchecker tags missing in native ftl file (empty line if all tags are declared):\n"
 comm -23 xxg xxn
echo "\n"
 
echo "Grammarchecker tags missing in English ftl file (empty line if all tags are declared):\n"
 comm -23 xxg xxe
echo "\n"
 
echo "Grammarchecker tags missing in the file errors.json (empty line if all tags are declared):\n"
 comm -23 xxg xxj
echo "\n"

echo "Grammarchecker tags missing in the file errors.source.xml (empty line if all tags are declared):\n"
 comm -23 xxg xxx
echo "\n"

echo "Delete auxiliary xx* files\n"
rm -f xxe xxn xxg xxj xxx 
