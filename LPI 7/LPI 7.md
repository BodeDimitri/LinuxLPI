### Resumo

#### - 3.2 Searching and Extracting Data from Files:

----

**wc** - serve para contar a quantidade de palavras. (E uma abreviação de wordcounter) 

```shell
wc {nome_do_arquivo}
```

> {linhas} {letras} {bytes} {nome do arquivo}

- Se usar o -L conta a quantidade de letras na linha mais longa.

**more** - mostra mais informações do arquivo e pre-visualiza ele

- ENTER para avançar.

- B para voltar.

- Q simplesmente sai .

- / Pesquisa a seguinte palavra.

- H mostra mais comandos. 

- ! para executar comandos.

**less** - usa basicamente os mesmos comandos do more, mas pode usar as setas do teclado.

- / para pesquisar para frente.

- ? para pesquisar para trás .

Ambos podem receber dois arquivos, para navegar entre eles:

- :n para ir para o próximo.

- :p para ir para o anterior.

**cat**  - abrir arquivos

- -n mostra a quantidade de linhas.

**head** - Primeiras 10 linhas de um arquivo.

**tail** - Ultimas 10 linhas de um arquivo.

- -n +{número} mostrar o arquivo inteiro a partir da linha especificada.

- -n {número} As ultimas linhas especificadas pelo número.

- -f acompanha atualização do arquivo.

---

**stdin** - Standard input | *0*

**stdout** - Standard output | *1*

**stderr** - Standard error | *2*

**>** Pode servir para redirecionar o output de um comando para um arquivo. Também pode ser especificado o canal que vai ser utilizado no arquivo em questão.

```shell
ls > listagem.txt
```

```shell
cd /194ni2em 2> erros.txt
```

**>>** Usar duas significa append, isso quer adicionar ao arquivo que você esta redirecionando. 

**>&** E usado para redirecionar o canal para outro canal.

```shell
cd /1miopkfe 2>&1 > erros.txt
```

Quando for zipar algo você pode usar -@ e indicar o diretório.

```shell
zip logs.zip -@
{agora digita todos os arquivos a serem zipados}
```

*Quando acabar e so pressionar CTRL+D.*

**<** Também pode ser usado, mas usando outro arquivo como parâmetro.

```shell
zip -@ logs.zip < arquivscompactar.txt
```

*Todos os arquivos a serem zippados estão sendo informados no arquivscompactar.txt*

**|** Pipe serve para usar a saída de um comando e usar como parâmetro no próximo comando.

```shell
ls -la | less
```

**cut** serve para cortar uma parte do texto. *começa na posição 1*

- -c especifica as colunas.

- aceitam  **,** ou **-** 

- --output-delimiter="{delimitador}" coloca um delimitador escolhido pelo usuário. 

```shell
cut -c 1-4,15-20 --output-delimiter="," notasfiscais.txt
```

- -f {número do campo}corta por campos.

- -d{separador no texto} se refere ao que vai separar o texto.

```shell
cut -f 1,5 -d: /etc/passwd
```

**Paste** Basicamente o copia e cola, ta no nome. 

```shell
paste {arquivo1} {arquivo2}
```

- -s cola na vertical

**sort** serve para organizar uma lista ou um texto em sequência.

```shell
sort {arquivo1}
```

E precedência que vai ser seguida para ordenar o sort seguir a seguinte:

1. $LC_ALL

2. $LC_COLLATE

3. $LANG

(Se não tiver uma variável setada ele vai se basear na tabela ASCII.)

- -r inverte a sequencia.

- -t{delimitador} escolhe um delimitador para o texto.

- -k{campo/field} para escolher o campo que vai se basear para organizar.

- -u retira os campos que são repetidos.

- -o e basicamente o >.

```bash
$ cut -c 1-4,5-14,15-20 --output-delimiter=: notasfiscais.posicional | sort -k 2 -t: -o notasfiscais.posicional
```

**uniq** tira as linhas repetidas que estão em sequencia. 

```bash
uniq {arquivo}
```

**grep** encontra palavras em um arquivo.

```bash
grep {palavra a ser procurada} {arquivo}
```

- -n informa a linha.

- -c retorna a quantidade de número de linhas que possuem ocorrências. 

- -i para ignorar se e maiúsculo ou minúsculo.
  
  *GREP OPTIONS não e usado mais* 

Lembrando que gloobings tambem são usados no grep.

- **.** significa qualquer coisa.

- \* zero  ou mais aparições do ultimo elemento. 

- **[]** são usados como range. Não esquecer de usar aspas **''** pois pode ocorrer um erro na interpretação  

```bash
grep '201[56]' post-do-blog.txt
```

+ \+ uma ou mais aparições do ultimo elemento. Não esqueça de usar a barra invertida \.

+ ? torna o caractere opcional .

```bash
grep '[[:digit:]]\+,\?,[[:digit:]]\+'
```

A interrogação esta tornando a virgula opcional.

- \\{caractere} para ele funcionar da maneira que não e esperada. Exemplo: Se você for usar um . sem o sentindo de significar qualquer coisa você usa um\.

- -v serve para inverter o resultado.

- -l retorna apenas os arquivos que foram encontrado a busca desejável. 

- -r procura no diretório atual e nos diretórios filhos.

Você pode usar dois greps com um | para pesquisar por mais palavras ou dígitos no meio do arquivo.

```bash
grep SQL mysql.txt | grep -c '[[:digit:]]'
```
