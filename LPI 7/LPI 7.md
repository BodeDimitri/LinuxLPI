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
