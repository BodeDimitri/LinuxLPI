## Resumo:

https://www.lpi.org/our-certifications/exam-010-objective

## Topic 3: The Power of the Command Line

 ### - *3.1 Archiving Files on the Command Line*:
 ***
 
 tar - Usado para compactação de arquivos no Linux 
 
 Cria o arquivo
 >tar -cf {arquivo} {copia}
 
 Visualiza o conteúdo do arquivo: 
 >tar -tf 
 
 Para desarquivar um tar:
 > tar -xf {arquivo}
 
 **Ele desarquiva no diretório que você estiver**
 
 gzip - E possível colocar um -z no tar, assim compactando o arquivo para gzip também. 
 
 >tar -czvf texto.tar.gz texto.txt| *z*
 
 Exclui:
 
  >tar -xvzf texto.tar.gz texto.txt| *z*
 
 bzip - Existe a opção do bzip que e outra ferramenta de compressão de arquivos.
 
 >tar -cjvf texto.tar.bz2 textp.txt| *j*
 
 Exclui:
 
  >tar -xvjf texto.tar.bz2 textp.txt| *j*
 
 **Não esqueça de usar o -j ou -z quando for descompactar também**
 
 gzip {arquivo} - Para compactar o arquivo.
 
 gunzip {arquivo} ou gzip -d {arquivo} - Descompacta um arquivo. *Funciona apenas com um arquivo e depois de descompactar o arquivo, ele e excluído.*
 
gzip -S {.extensão} {arquivo} - Usado para mudar a extensão de um arquivo. 

gzip -c {arquivo} - Mostra o que está dentro do arquivo.

---

## Find

find {diretório} - Procura no diretório citado. 

find -name {"arquivo"} - Nome do arquivo. *Usar entre aspas*

Ex: 
````
find -name "log-20*" 
````


Tambem e possível usar dois argumentos, mas os dois vão ser obrigatórios estar no nome.

Ex:
````
find -name "*log*" -name "*2016*"
````
Caso você queira que apenas um seja necessário pode usar o "-o" no meio dos dois "-name".

Ex:
````
find -name "*log*" -o "*2016*"
````

Usar o "-a" força o próximo argumento a ser obrigatório.

O "!" seria como a negação, esta pedindo para não aceitar determinado argumento.

E possível usar -type para especificar o tipo de arquivo no comando find.


Ex:

````
find -type d -name "user*" (procura apenas por diretórios)

find /bin -type l (procura em um diretorio pelo tipo)
````

- f de file
- d de directory
- l de link simbólico

find -user {usuário} - Para procurar quem foi o usuário responsável por ter criado esse arquivo.

find -group {grupo} - Para procurar o grupo que criou o arquivo.

find -size {+/-peso} - Peso do arquivo.

````
find -size +5000k (mais de 5 mega)

find -size -5000k (menos de 5 mega)
````

find -atime {-dias} - Procura baseado no tempo de acesso do arquivo.

 - -mtime: Tempo modificado.


find -ctime {-dias} - Procura por quando foi mudado a permissão de algum dos arquivos.

find {diretório} -inum {num_node} - Quando digitamos "ls -i" recebemos o número de node de um arquivo, podemos procurar o arquivo pelo número de node dele.


**Não se esqueça de usar os globbins**

**( ) também são funcionais, porem precisam de uma \ para ser usado.**


Da para executar mais comandos apos o "find", com o uso do "-exec"
> find -name "*log*" -a  -name "*2016*" -exec ls -l "{}" ";"
> find -name "*log*" -a -name "*2016*" -exec rm "{}" ";"

- As {} significa o diretório procurado.

- Esse comando fara que seja exibida a resposta em cada linha.

---

- Zip: O Zip é um formato de compressão amplamente utilizado, que cria arquivos compactados com a extensão ".zip". Ele oferece compressão e empacotamento em um único passo. Além de compactar os arquivos, o Zip pode criar uma estrutura de diretórios e preservar metadados, como permissões de arquivo e datas de modificação. O Zip também suporta a compressão de vários arquivos e diretórios em um único arquivo compactado. É um formato amplamente suportado e pode ser aberto em várias plataformas.

- Tar: O Tar é uma ferramenta de empacotamento que cria arquivos tar, que geralmente têm a extensão ".tar". Diferentemente do Zip, o Tar não realiza a compressão por si só, mas agrupa vários arquivos e diretórios em um único arquivo tar. Ele preserva a estrutura de diretórios, permissões de arquivo e outros metadados. O arquivo tar pode ser compactado posteriormente usando outros utilitários, como o gzip ou o bzip2. O Tar é frequentemente combinado com esses utilitários de compressão para criar arquivos tar.gz ou tar.bz2.

 - Bzip2: O Bzip2 é um utilitário de compressão que cria arquivos compactados com a extensão ".bz2". Ele oferece uma taxa de compressão alta, o que significa que os arquivos compactados são geralmente menores do que aqueles criados pelo gzip ou pelo Zip. No entanto, a compactação é mais lenta. O Bzip2 é amplamente utilizado para compactar arquivos grandes, como arquivos de log ou backups. Ele mantém a estrutura de diretórios e os metadados dos arquivos originais.

Em resumo, o Zip é usado para compactar e empacotar arquivos em um único arquivo, o Tar é usado para agrupar arquivos e diretórios em um arquivo tar e o Bzip2 é usado para compactar arquivos com alta taxa de compressão. Cada um desses utilitários tem suas vantagens e pode ser escolhido com base nos requisitos específicos de compactação e empacotamento.

> Obrigado ChatGPT por esse resumo incrível dos compressores

Não vou me estender sobre os comandos do zip pois eles seguem a mesma linha do tar e do bzip2. Ambos já foram explicados no inicio dessa parte. 

Apenas algumas coisas a se lembrar:

- E possível usar o | junto com o zip.
- $ unzip -l {arquivo} ira mostrar o que tem dentro do arquivo sem descompacta-lo apesar de parecer que vai descompactar.
- -q e usado para não mostrar nada apos a execução do comando.
- Lembrando que o zip e muito mais usado no Windows e preserva as permissões.
 
 