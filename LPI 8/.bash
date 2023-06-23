```bash
#!bin/bash

for i in `ls *.txt`
do
    echo $i
done
```
#!bin/bash

for ano in $*
do
    echo "Compactando os arquivos do ano ${ano}"

    find -name "*log*" -name "*${ano}*" | zip -@ oi.zip
done