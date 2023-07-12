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
