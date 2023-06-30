#### 4.3 Where Data is Stored:

**Hierarquia de Arquivos no Linux:** Padrão de como deve ser a estrutura de um sistema Linux.

- / - O root do de todos os diretórios, o primeiro da hierarquia.
- /bin - Comandos binários essências para quando boota o pc.
- /sbin - Servem para administração e reparo de sistema, necessários privilégios para alteração. 
- /boot - Boot loader, kernels e o grub.
- /dev - Aparelhos conectados, mouse, teclado, HD, Pendrive.
- /dev/null - Pseudo-device, caso redirecione algo para ele, não vai retornar nada.
- /dev/random - Retorna números aleatórios, comumente usado para criptografia.
- /usr/bin - Contem arquivos executáveis que estão disponíveis para todos os usuários. Contem comando essenciais, como o `ls`, `cp`.
- /usr/sbin - O mesmo que o /sbin, mas não são essenciais para o funcionamento básico do sistema. Esses arquivos executáveis são considerados opcionais e são usados principalmente por administradores do sistema para tarefas avançadas de configuração, diagnóstico, gerenciamento de redes e outras tarefas específicas.
- 