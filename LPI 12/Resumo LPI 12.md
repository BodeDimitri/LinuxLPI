### Topic 5: Security and File Permissions

####  5.1 Basic Security and Identifying User Types
**Root** - Usuário especial, usuário de ID 0, tem acesso a tudo e a qualquer comando.
**cat/etc/passwd** - Outros programas também podem acabar criando usuários para permitir o uso do programa.
**id {usuário}** - Comando id mostra o determinado id de um usuário. 
Além de usuários, existe grupos que dividem os usuários, alguns usuários pertencentes a um grupo tem acesso a alguma pasta e outros que não estão no grupo já não.
**useradd** - Adicionar usuário.
- -m - Cria um diretório home.
- -k - Permite que seja criado um modelo para o /home do usuário
**userdel** - Remove usuário.
- -r - Remove o diretório do /home quando o usuário for apagado.
**su {usuário}** - Para acessar outro usuário.
**su -{usuario}** - Cria um ambiente de shell para você, como se estivesse no outro usuário.
**passwd {usuário}** - Alterar a senha de outro usuário, e necessário ser SU.
*cat/etc/shadow* - Se algum usuário estiver com a senha como uma `!` e impossível o acesso.
O Linux pode criptografar uma mesma senha de 4096 formas diferentes.
**vipw** - Serve para editar o shadow.
**w** - O que um determinado usuário esta fazendo ou foi executado.
**sudo -i** - Terminal de SU.

*cat/etc/sudoers* - Aqui e registrado quais usuários tem a permissão de usar sudo.
**last {usuários}** - Ultimo login dos usuários.

---
**ls -l** - Além de mostrar mais informações mostra o dono da pasta ou do arquivo.

**Tabela de permissões:**

| Permissões | Caractere | Significado               |
|------------|-----------|---------------------------|
| Leitura    |     r     | Permissão de leitura      |
| Gravação   |     w     | Permissão de gravação     |
| Execução   |     x     | Permissão de execução     |
| Nenhuma    |     -     | Nenhuma permissão         |

| Tipo | Proprietário | Grupo | Outros |
|------|--------------|-------|--------|
| Arq  |    rw-       | r--   | r--    |
| Dir  |    rwx       | r-x   | r-x    |

**chmod {usuario}{+/-} {arquivo/diretorio}** - Para adicionar ou remover permissões para determinado arquivo ou diretório.
- + - Para adicionar permissões.
- - Para remover permissões.
- = - Substitui a ou as permissões pela permissão ou a permissão desejada. 
- -R - Deixa o comando recursivo, se você estiver dando essa permissão para um diretório todos os arquivos também vão ter permissão que foi dada no comando.
- Em relação a parte de usuários a letra *U* seria o próprio usuário, *O* seria outros usuários. Detalhe que se você for dono de um arquivo você pode alterar as permissões ser SU.
- O *G* e referente a qualquer grupo e *A* são para todos.
- * - Permissão para todos os arquivo no determinado diretório.
**chown {usuário} {arquivo/diretório}** - Altera o dono de um arquivo. A única pessoa que pode alterar isso e o SU.
---
Além de existir permissões individuais para cada usuário, existe também o conceito de grupo, que pode dar permissões para usuários que estiverem em determinado grupo fazer alguma coisa, isso facilita a gerencia de vários usuários.
`-rw-r--r-- 1 usuário grupo 124 jul 13 10:00 arquivo.txt`

Segundo nome que aparece ali vai ser referenciado ao grupo, todos os usuários que estão em um grupo vão ter a mesma permissão sobre determinado arquivo ou diretório. 
*Também e possível usar virgulas para adicionar mais de um permissão*
`chmod u=rw,g=rw,o=x programa`
Pode também pegar as permissões de um grupo e aplicar a outros usando **--reference={arquivo_base} {arquivo_alterao}**

Os números que vem depois do grupo também tem sua importância, eles representam de formas numérica o tipo de permissão.

| Permissão | Número | Binário |
|-----------|--------|---------|
| Nenhuma    |   0    | 000     |
| Execução   |   1    | 001     |
| Gravação   |   2    | 010     |
| Gravação e Execução | 3 | 011     |
| Leitura    |   4    | 100     |
| Leitura e Execução | 5 | 101     |
| Leitura e Gravação | 6 | 110     |
| Leitura, Gravação e Execução | 7 | 111     |

Cada número em sequencia faz referencia a proprietário, grupo e usuário.

**sudo chown {usuário}:{grupo} {arquivo/diretório}** - Muda o grupo além do usuário, coloca `:` no meio do usuário e o grupo.
**t** - Arquivos criados por um usuário não podem ser removido por outros. Também chamado de Sticky Bit pois o arquivo vai estar atrelado ao diretório. 
**s** - Executa como root.

---
**id -u** - Retorna informações sobre o ID do usuário.
- -u {nome} - ID do usuário fornecido.
- -g {nome} - ID do grupo do usuário.
- -G {nome} - Todos os grupos de determinado usuário.
- -n {nome} - Da o nome do grupo em vez do número.
- Também pode misturar como -ng ou -nG.
**usermod -a -G {grupos} {usuario}** - Mudar o grupo de um usuário.
- -a - Adicionar, vem do append.
- -G - Adiciona um grupo secundário, caos não for usado o grupo será trocado.
**groupadd {grupo}** - Cria o grupo.
Detalhe que os grupos ficam localizados na pasta `etc/group`.
São visualizados da seguinte maneira:
> {grupo}:x:{numero_do_grupo}
- 
Diferença ente grupos: 
*Grupo primário* - Grupo que o SO relaciona os arquivos criados pelo usuário.
*Grupo secundário* - Grupos para um determinado usuario, pode ter mais de um.

---
**ln (hardlinks)** - Cria link entre arquivos. São referenciados diretamente no inode do arquivo, portanto e necessário excluir o link para perder o acesso.
Ex:
`ln {arquivo_origem} {link_destino}`
>ln /home/Diego/programa /usr/local/bin/programa
>Primeiro o diretório de origem e depois o link de destino 
- **-s (Symbolic Links)** - Um link simbólico é um arquivo especial que contém o caminho (path) para outro arquivo ou diretório. Ele cria uma referência para o arquivo original, permitindo que você acesse o arquivo usando o link simbólico em vez do caminho real.
- Os links simbólicos podem apontar para arquivos ou diretórios em qualquer localização, mesmo em sistemas de arquivos diferentes.
- 
Alguns pontos importantes a serem observados:

1. Ao trabalhar com links, é essencial ter cuidado para evitar loops ou links quebrados, pois podem causar problemas de integridade e navegação no sistema de arquivos.
2. Os links simbólicos geralmente são mais flexíveis, pois podem apontar para qualquer localização no sistema de arquivos, mas exigem uma resolução adicional para encontrar o arquivo real.
3. Os links físicos são mais eficientes em termos de espaço em disco, pois compartilham o mesmo inode com o arquivo original.
4. Ao modificar um arquivo através de um link, as alterações afetarão o arquivo original, independentemente de ser um link simbólico ou físico.
- 
