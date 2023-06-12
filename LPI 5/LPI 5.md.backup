## Resumo:

https://www.lpi.org/our-certifications/exam-010-objective

 ### - *2.3 Using Directories and Listing Files*:
 ___
 
 / - Não esqueça que esse e o diretório raiz. Caractere especial que indica as raízes dos diretórios. Não pode ser usada em nomes de arquivos.
 **No Linux arquivos ou diretórios com letra maiúscula ou minuscula faz diferença, caracterizando como arquivos diferentes. Nome disso e case sensite.**
 
 **Null também e invalido.**
 
No Linux não tem problema em usar o ponto no nome dos arquivos, ele não tem a mesma serventia que no windows, que e dividir o nome do arquivo para a extensão dele. Ainda assim o ponto ainda costuma ser usado para descrever a extensão mais por um costume.
 
Não existe limitação do tamanho do nome de arquivos, usando um ponto no inicio do nome de um arquivo fara com que ele se torne um arquivo oculto.

Caracteres mais usados para o nome do arquivo:

+ "a - z"
+ "A - Z"
+ "0 - 9"
+ "+" "-" "_" "."

---
+ Caminho absoluto procura o diretório desde o root
>/home/diego/Pasta-central/jogos

+ Caminho relativo usa o diretório atual como base para chegar no diretório desejado (não  usa barra no inicio como o caminho absoluto)
> Pasta-central/jogos

Atalho para voltar o diretório:
>cd ..

*Basicamente um "." significa o diretório atual e ".." e o diretório  anterior*

Executa o script desde que você esteja no mesmo diretório que ele, também pode ser executado usando outros métodos, como o caminho absoluto.

>./{nome do script}

Diretório base do usuário é
> home/{nome do usuário}

root
>/root

"~" O Til referencia o diretório home do usuário Linux.

"cd -" volta para o diretório anterior

---

**Existem 4 tipos de arquivos(cores normalmente usadas inclusas):**

1. plain file (branco, )
2. exeecutable file (verde, arquivos executáveis)
3. directory file (azul, pastas)
4. link (azul claro, atalhos)
---

"ls -F" Vai mostrar todos os arquivos como o ls padrão, mas os arquivos links vão ter um * no inicio do nome deles.


"ls -P" Marca apenas os diretórios.

"ls -a" Mostra todos os arquivos, os ocultos também. 

"ls -r" Inverte a ordem do ls.

"ls --sort=size" ou "ls -S" Organiza elas seguindo o tamanho do arquivo.

"ls --format=long" Formata com uma listagem longa e mais completa. Mostrando permissões, nome, tamanho e data de criação.

"ls --format=extensions" ou "ls -X" Organiza pelas extensões.

"ls --recursive" ou "ls --R" Organiza de maneira recursiva, mostrando os arquivos dentro e segue ate chegar a ultima pasta.

"ls -d" Mostra as propriedades do diretório.

"ls -i" Mostra os laços
 
 ---
 
 ### -  *2.4 Creating, Moving and Deleting Files:*
 
  
 mkdir {nome} - Cria um diretório.(*Pode ser usado de maneira recursiva*)
 
 mkdir {nome} -p - Caso seja inserido algum diretório que não foi criado ele sera criado.
 
 rmdir {nome} - Apaga o diretório. (*apenas se ele estiver vazio*)
 
 rmdir {nome} -p - Apaga todos, desde que estejam vazios.
 
 Também e possível usar globbing no mkdir e no rmdir
 
 Ex:
 >mkdir -p Pictures/fotos/201{1,2,3,4,5}/trimestre{1,2,3,4}
 
 O globbing indica que vão ser criadas 5 pastas com os números em questão e o trimestre também. 
 
 "mkdir -v" ou "rmdir -v" - Mostra mais detalhes do que aconteceu na execução do comando.
 
touch {nome} - Caso o arquivo exista muda a data de atualização do arquivo para agora, caso não exista ele cria o arquivo. 

touch opções: 

1. -m alterar apenas a data de modificação.
2. -a alterar apenas a data de acesso.
3. -c para que o arquivo não seja criado caso ele não exista.

cp {arquivo1} {arquivo2} - Serve para copiar arquivos, possível trocar o nome na copia, copiar e mover para outro diretório e os dois ao mesmo tempo. Possível copiar mais de um arquivo. **Cuidado pois ele pode sobrescrever arquivos.**

Ex:

>cp texto.txt texto1.txt

>cp arquivos/texto.txt arquivos2/texto2.txt

>cp arquivos/texto.txt arquivos2/

>cp arquivos/* pastacentral/

E possível usar -i para criar uma opção iterativa.

Ex: 
````
cp arquivos/texto.txt arquivos/texto.txt

cp: overwrite 'arquivos/texto.txt'
````

Usar -v mostra de melhor maneira todos os processos feitos.

Usar -u para copiar arquivos que foram atualizados a pouco tempo, mesmo que eles já estejam copiados.

-b serve para criar um backup do arquivo

Ex:
````
cp -b arquivos/texto.txt pastacentral/
ls pastacentral/
texto.txt~ texto.txt
````

-R para copiar uma pasta inteira. *Copia arquivos ocultos também*

-f serve para forçar a sobrescrever.

>rm arquivos pastacentral

rm {arquivo} - Remove o arquivo especificado.

 - **Cuidado ao usar rm -rf**

Ex:
>rm  texto.txt

mv {arqivo/diretório} {arquivo/diretório} - Serve para mover arquivos ou editar.

>mv arquivos/texto.txt  arquivos/programa.txt

 
 