### Resumo

#### 3.3 Turning Commands into a Script:

---

Bash - Serve para executar arquivos.

```bash
bash {nome_do_arquivo}
```

E possível usar chmod no arquivo para não ter mais que chamar o bash para executar o arquivo.

```bash
chmod +x {nome_do_arquivo}
```

**#!** - Shebangs, e usado na primeira linha de um script para definir qual vai ser o interpretador do script.

```bash
#!/bin/bash
```

- \-v - Mostra o script que esta sendo executado de maneira escrita.

` - Crase consegue executar um comando ou um script.

```bash
echo Meu diretorio atual e `pwd`
```

Também e possível usar **\$()** para executar comando ou um script, essa sintaxe funciona nos shells mais recentes.

---

```bash
PATH="$HOME/{diretorio_do_script}:$PATH"
```

E sempre bom lembrar disso.

---

Por padrão quando você executa um script no bash ele executa em um filho. Se o arquivo tiver uma variável e você modificar ela pelo bash ela seguira o que você colocou e trocara a do script. Você pode reverter isso usando **source** ou um ponto e em seguida o nome do arquivo.

```bash
source {nome_do_aruivo}


. {nome_do_arquivo}
```

- \$? - Funciona para ver a saída do ultimo script, no caso se funcionou ou não.

```bash
echo $?
```

Também e possível forçar a saída de um script adicionando ao final **exit**.

```bash
exit {número_da_saida}
```

O uso de \$ no script junto de um número no script fara com que após o nome dele será definido os argumentos. 

```bash
{nome_do_arquivo} {argumento}
```

Argumento zero ou \${0} e o caminho completo para o script que esta sendo executado.

```bash
#!/bin/bash
#compacta-logs.bash ANO
#    Compacta os arquivos que possuem o nome log e e o ANO definido em um
#arquivo chamado logs.zip
#
#    ANO ano dos arquivos a aserem compactados

echo "compactandos os logs de ${1} em `pwd`"

find . -name '*log*' -name '*${1}*' | zip -@ ${HOME}/logs.zip | wc -l
```

- \$# - Mostra quantos argumentos foram passados.

```bash
#!/bin/bash
#compacta-logs.bash ANO
#    Compacta os arquivos que possuem o nome log e e o ANO definido em um
#arquivo chamado logs.zip
#
#    ANO ano dos arquivos a aserem compactados

ANO = ${1}
echo "compactandos os logs de ${ANO} em `pwd`"

find . -name "*log*" -name "*${ANO}*" | zip -@ ${HOME}/logs.zip | wc -l
```

- \$* - String com todos os argumentos passados.

- \$@ - Lista com todos os argumentos passados.

---

**For e While**

E possível como em outras linguagens de programação usar for e while.

```bash
for {variavel} in {argumento, range}
do



done
```

O **do** vai substituir o comumente usado **:** e o **done** vai encerar o loop.

Exemplo:

```bash
#!bin/bash

for i in `ls *.txt`
do
    echo $i
done
```

E possível omitir o **in** do **for**. 

```bash
for ano
```

Nesse caso ele vai iterar pelos argumentos que foram passados.

---

## Insert & Replace

|       |                                                    |
| ----- | -------------------------------------------------- |
| **i** | insert text before the cursor                      |
| **a** | insert text after the cursor                       |
| **I** | insert text at the beginning of the current line   |
| **A** | insert text at the end of the current line         |
| **o** | insert text in a new line below the cursor         |
| **O** | insert text in a new line above the cursor         |
| **r** | replace a character at the cursor position         |
| **R** | replace characters starting at the cursor position |

## Cursor Motion

|                |                                   |
| -------------- | --------------------------------- |
| **h** or **←** | move cursor left                  |
| **l** or **→** | move cursor right                 |
| **k** or **↑** | move cursor up                    |
| **j** or **↓** | move cursor down                  |
| **G**          | goto the end of file              |
| nG or :n       | goto the line number *n*          |
| **0**          | move to the beginning of the line |
| **$**          | move to the end of the line       |
| **CTRL**+**f** | move one screen view forward      |
| **CTRL**+**b** | move one screen view backward     |

## Ex Commands

|                      |                                                      |
| -------------------- | ---------------------------------------------------- |
| **:q**               | quit current open file                               |
| **:q!**              | force to quit without saving changes                 |
| **:w**               | save file                                            |
| **:w** *file*        | save file as *file*                                  |
| **:wq!**             | force to save file then quit                         |
| **:*x*,*y*w** *file* | write from line x to line y into *file*              |
| **:w »** *file*      | append buffer to *file*                              |
| **:e** *file*        | edit another *file*                                  |
| **:e!** *file*       | edit another *file* without saving current changes   |
| **:r** *file*        | insert *file* content at the current cursor position |
| **:n**               | edit next file in vi arguments file list             |
| **CTRL**+**G**       | display current file name and position               |

## Search & Substitute

|                           |                                                                                                                                                                                                     |
| ------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| /*string*                 | search forward for *string*                                                                                                                                                                         |
| ?string                   | search backward for *string*                                                                                                                                                                        |
| **n**                     | repeat the last search                                                                                                                                                                              |
| **:,$s/*str1*/*str2*/gc** | search and substitute *str1* by *str2* from the current line to the end of file. A line number can be <br>specified before the comma “,”. The “c” ask for confirmation before each<br> substitution |
| **:%s/*str1*/*str2*/g**   | replace all *str1* by *str2* in all the file without prompting for confirmation                                                                                                                     |
| **:%s/*str1*/*str2*/**    | replace *str1* by *str2* on the first occurrence in each line of the file                                                                                                                           |

## Undo, Delete, and Copy

|                 |                                                                             |
| --------------- | --------------------------------------------------------------------------- |
| **u**           | undo last change                                                            |
| **CTRL**+**r**  | redo last undo change                                                       |
| mA              | set mark A to current position. Marks can be the letter *[a-z]* and *[A-Z]* |
| y’A             | yank (copy) from current line to mark *A*                                   |
| d’A             | delete from current line to mark *A*                                        |
| **P**           | put the buffer content before the cursor                                    |
| **p**           | put the buffer content after the cursor                                     |
| **x**           | delete character at cursor position                                         |
| **dW**          | delete first word after cursor position                                     |
| **d$** or **D** | delete from cursor position to end of line                                  |
| **dd**          | delete current line                                                         |
| **J**           | join current line with following line                                       |

> Fonte: Sheel tips ([Vi and Vim Quick References: A One Page Cheat Sheet](https://www.shell-tips.com/cheat-sheets/vim-quick-references/#gsc.tab=0))

> Obrigado sheel tips por esse resumo incrível 

Detalhe que quando você for conectar a um computador remoto e aconselhável preferir uma interface sem gráfico pois nem sempre o sistema operacional do outro computador vai ter interface gráfica.  


