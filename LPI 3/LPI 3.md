### Resumo:



#### Topic 2: Finding Your Way on a Linux System

#### 2.1 Command Line Basics:

**Shell**: um interpretador de comandos que traduz os comandos digitados em tarefas que o sistema Linux deve realizar. 


**GNU Bash (Bourne Again SHell)** ou simplesmente Bash é um interpretador de comandos, um entre os diversos tradutores entre o usuário e o sistema operacional conhecidos como shell.

**Echo**: Comando usado para mostrar um texto na tela. Echo e um comando builtin.

```
diego@ubuntu:~$ echo Olá Mundo   
Olá Mundo                       
```

**Pwd**: Descobrir o diretório atual. Comando builtin.

```
diego@ubuntu:~$ pwd
home/diego
```

**Aliased** são comandos "apelidados", atalhos para comandos.
**Type:** Descobre a origem de um comando do sistema.

**Hash:**

```
diego@ubuntu:~$  type echo     
echo is a shell builtin       
diego@ubuntu:~$  type -t echo  
builtin                       
```

**LS:** Listagem de diretórios. Detalhe nas opções **-la** pois mostra nelas os arquivos oculos e mais detalhes sobre os mesmos.
**Linux Syntax:**
Maioria das vezes vai seguir esse padrão.

```
diego@ubuntu:~$  {comando} {opções} {argumentos}
```

**Variaveis:** Não acho que tenho que explicar isso para ser sincero, só saiba que para chamar elas use um "$".

```
diego@ubuntu:~$  idade = 19                                   
diego@ubuntu:~$  Diego tinha $idade anos quando escreveu isso.
Diego tinha $idade anos quando escreveu isso.                
```

Variaveis de Shell apenas vão funcionar dentro do Shell criado. Uma maneira de contornar isso seria usar o export, tornando a uma variavel de ambiente.


Seguinte exemplo onde executamos um bloco de notas que contem a variavel idade, que agora vai funcionar por causa do export idade.

```
diego@ubuntu:~$  export idade                                   
diego@ubuntu:~$  bash mostra idade                              
diego@ubuntu:~$  Diego tinha ${idade} anos quando escreveu isso.
Diego tinha $idade anos quando escreveu isso.                  
```

**Env**: Usado para visualizar todas as variáveis de ambiente. Tambem pode ser usado da seguinte maneira:

```
diego@unbuntu:~$  env nome=Diego idade=19 bash mostra_idade_nome
Seu nome é Diego e você tem 19 anos.                          
```

Levando em consideração que você tem um arquivos com as variaveis $nome e $idade. E uma variavel temporaria.
As variaveis que forem criadas por você e forem temporarias são escritas com as letras mínusculas, as variaveis de ambiente sempre vão ser maiusculas.

**OBS:** Usa {} para fechar a variavel.
**unset:** Exclui a variavel.

```
diego@ubuntu:~$  unset {variavel} 
diego@ubuntu:~$  echo {variavel}  
```

**export -n:** O comando "export -n" é usado no Linux para remover a variável de ambiente especificada. A opção "-n" é usada para desfazer a exportação da variável de ambiente, o que significa que a variável de ambiente não estará mais disponível para processos filhos. A variável e seu valor serão mantidos, mas apenas localmente no shell.

**Varíaveis de ambientes:**

- ps1...: Variavel de ambiente que e aquela parte do terminal onde marca o seu     nome, hora e data, e diretório. E possível customizar-la.

- home: Indica qual o diretório raiz do usuario.

- logname: Nome do usuario atual.

- UID: a number assigned by Linux to each user on the system. This number is used to identify the user to the system and to determine which system resources the user can access. O uid de número 0 e reservado para o root.

- editor: Editor de texto padão do Linux, e possivel mudar-lo, e so muda a variável.

**Atalhos:**

- CTRL + A: Vai para o ínicio da linha.

- CTRL + E: Vai para o fim da linha.

- CTRL + C: Interrompe o programa.

- CTRL + D: Desconecta do terminal.

- CTRL + L: Limpa o terminal.

- CTRL + R: Procura no histórico pelo comando digitado.

**history:** Mostra o historico de comandos digitados, tambem pode indicar a quantidade que eles vão aparecer por colocar um número na frente.
**$HISTFILE(/home/"usuario"/.bash_history):** Onde fica armazenado os arquivos do histórico. 
**PATH environment variable:**  It specifies the directories to be searched to find a command. São executadas em ordem, então se você tiver duas com o mesmo nome a que vai ser usada vai ser a que vier primeiro.

```
diego@ubuntu:~$  PATH=$PATH:/home/diego/
diego@ubuntu:~$  PATH=/home/diego/:$PATH
```

Como foi mostrado acima e possivel adicionar qualquer caminho ao path e ate possivel mudar a sequencia deles. O ":" virgula do terminal. 

A preferencia de execução vai ser sempre do comando que for builtin do Shell, depois programas.

1. Builtin
2. Programas

**which:** Informa qual programa vai ser executado.
**whereis:** Procurar o onde estão os arquivos relacionados ao programa.
**";"** serve para executar dois comandos na mesma linha. 

**exit status:** Para conseguir o resultado do comando, se ele foi positivo ou se deu erro e só digitar echo $?.

```
diego@ubuntu:~$  ls                      
diego@ubuntu:~$  {ls é um comando valido}
diego@ubuntu:~$  echo $?                 
> 0                                     
```

**0** - Sucesso encerrado com sucesso.
**127** - Comando não encontrado.

**&&:** Usado como um "e", se caso um comando funcionar ele executa outro.

```
diego@ubuntu:~$ home/diego/estou_no_sucesso && Win!
>Estou no sucesso                                 
>Win!                                             
```

**||:** Usado como um "ou", se o primeiro for verdadeiro não executa o segundo, mas se o primeiro for negativo então vai executar o segundo.

```
diego@ubuntu:~$ home/diego/falha && Win!
>Win!                                  
```

**Globbing**

- *: Usado como coringa e que pode representar qualquer coisa.
  

- ?: Delimita a quantidade de elementos, no caso um "?" significa um elemento.
  

- \\: Barra invertida permite continuar o comando na proxima linha.
  

- \\: Barra invertida tambem funciona para ignorar uma letra em uma linha de comando.

```
diego@ubuntu:~$ echo \* Bem-vindo \*
> * Bem-vindo *                    
```

**'':** Tambem e possivel usar aspas para indicar que so se trata apenas de um texto, detalhe que enquanto não fechar as aspas o comando vai continuar pedindo para continuar. Detalhe que as as aspas duplas "" tambem funcionam.

**!:** Usado como negação [!1-9]. Não são permitidos números de 1-9.


**;:** Ponto-vírgula e usado para usar mais de um comando na mesma linha, e so usar entre os comandos.


**{exemplo1,exemplo2}:** Procura por ambos ou mais padrões digitados.
**Obs:** [a-z] não acessa ç ou acentos.


