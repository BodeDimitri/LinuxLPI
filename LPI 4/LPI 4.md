### Resumo:

#### 2.2 Using the Command Line to Get Help:

**help:** Help seguido do nome para ter uma lista de informações sobre o comando, apenas funciona com comandos built-in.
**-h2:** Fornece mais ajuda ainda.
**--help:** Para comandos que não são integrados no shell.
**man:** Mostra o manula do comando em questão. (Groff e o programa usado para criar páginas do man). O man usa o que esta escrito no /etc/manpath.config
less: Paginação de arquivos.

```
diego@ubuntu:~$ man man                                        
1 - Executable programs or shell commands                     
2 - System calls (functions provided by the kernel)           
3 - Library calls (functions within program libraries)        
4 - Special files (usually found in /dev)                     
5 - File formats and conventions eg /etc/passwd               
6 - Games                                                     
7 - Miscellaneous (including macro packages  and  conven-     
    tions), e.g. man(7), groff(7)                             
8 - System administration commands (usually only for root)    
9 - Kernel routines [Non standard]                            
```

Comandos man:    

- SPACE - Serve para trocar de pagina no man.-

- (UPWARD ARROW and DOWNWARD ARROW) -  Sobre ou desce uma linha.

- /{pesquisa} - Usado para pesquisar dentro do man.

- man -k {palavra}: Procura pela palavras nos manuais. (Apropos e o progema que faz essa pesquisa)

- whatis {palavra}: Informa o capítulo (1-9) e uma descrição, exemplo:

```
diego@ubuntu:~$ whatis zip                                    
zip (1)        - ASCII character set encoded in octal, dec...
```

**info:** E como se fosse um man mas e navegavel.(Usa um programa chamado tex para gerar arquivos que podem ser visualizados e o emacs para navegar pelas informações)
**/usr/share/doc/:** Onde fica localizado o changelog, o que foi alterado entre as versões, copyright, TODO e o whatsnew que são explicações de atualizações.
**HOWTO:** Manuais que podem ser baixados e localizados na /usr/share/doc/. Trazem formas de como fazer atividades.
**Locate {pesquisa}:** Serve para localizar arquivos. Ele organiza os arquivos dentro de um banco de dados, então caso você cria um novo ou exclue um antigo e necessário atualizar o banco de dados pelo seguinte comando sudo updatedb. locate -e não mostrara o que foi apagado, mas os que foram criados ainda não seram visualizados. Por isso e importante o crontab, que e um programa que agenda tarefas para serem realizadas automaticamente.


