#### 4.3 Where Data is Stored:

**Hierarquia de Arquivos no Linux:** Padrão de como deve ser a estrutura de um sistema Linux.

- **/** - O root do de todos os diretórios, o primeiro da hierarquia.
- /bin - Comandos binários essências para quando boota o pc.
- /sbin - Servem para administração e reparo de sistema, necessários privilégios para alteração. 
- /boot - Boot loader, kernels e o grub.
- **/dev** - Aparelhos conectados, mouse, teclado, HD, Pendrive.
- /dev/null - Pseudo-device, caso redirecione algo para ele, não vai retornar nada.
- /dev/random - Retorna números aleatórios, comumente usado para criptografia.
- **/usr** - A intenção e que seja apenas arquivos de leitura que contenham arquivos de programas e utilidades.
- **/usr/bin** - Contem arquivos executáveis que estão disponíveis para todos os usuários. Contem comando essenciais, como o `ls`, `cp`.
- **/usr/sbin** - O mesmo que o /sbin, mas não são essenciais para o funcionamento básico do sistema. Esses arquivos executáveis são considerados opcionais e são usados principalmente por administradores do sistema para tarefas avançadas de configuração, diagnóstico, gerenciamento de redes e outras tarefas específicas.
---
- **/etc** - "Editable text configuration" Arquivos de configuração
- /etc/x11 -Arquivos de configuração do gerenciador gráfico.
- /etc/fstab - Arquivo que descreve as partições do HD/SSD
- /etc/hosts - Informações ligada a DNS.
- /etc/passwd - Nome dos usuários.
- /etc/shadow - Senhas, porem criptografadas.
- /media - Usado para montar CD/DVD.
- /mnt - Usado para montar normalmente HD/SSD, e são configurados manualmente.
- /root - Home do usuário root.
- **/lib** - Diretorio onde ficam as bibliotecas ligadas aos programas do `/bin` e `/sbin`. A mesma coisa para o `/usr/bin` e `/usr/sbin`.
- /usr/src - Código fonte de bibliotecas e do kernel.
- /usr/local - Necessário permissão de root, e todos os arquivos baixados aqui não serão afetados por alguma atualização do seu OS. O `/usr/local` aparece nos arquivo do `$PATH`.
- > _/usr/local/sbin:/usr/local/bin:/sbin/bin_
- /usr/local/bin - Arquivos de programas que normalmente o usuário usa. Detalhe que fica baixado para todos os usuários que vão usar a maquina.
---
- **/proc** - E um arquivo virtual que e montado quando o sistema boota e desmontado quando o Linux desliga. 
- /proc/cpuinfo - Representa de maneira virtual informações sobre os processadores.
- /proc/devices - Lista os objetivos, divido entre block devices e character devices.
- /proc/loadavg - Média de uso do CPU. Ou você usa o comando `uptime`.
- /proc/meminfro - Retorna a situação atual da memória do computador. Você pode usar `free -h` para ver de maneira melhor explicada.
- /proc/version - Traz informação sobre a versão usada do Linux.
- **/sys** - Informação sobre o sistema da mais variada quantidade, também criado de maneira virtual.
---
**dmesg** - Lista informações sobre o boot
- **/var** - Arquivos que variam com o passar do tempo, são mutáveis.
- /var/log - Registra informações sobre mensagens do sistema.
- /tmp - Pasta para arquivos temporários.
**syslogd** - Serve para enviar mensagens de log para uma central onde ficam armazenados.
---
**ps** - Mostra todos os processos que estão em execução no bash.
- ps -e - Mostra todos os processos do computador.
- ps -ef - Mostra todos os processos e mais informações. (Traz o usuario e que horas o processo foi executado.)
- ps -f {PPID} - Mostra mais informações sobre o PPID em questão.
- ps l {PPID} - Mais informações ainda.
**kill** - Se você colocar o PID do processo em questão ele matara o processo.
Todo PID tem o seu "pai" PPID e mais "pais" tem mais processos filhos.
**CTRL + Z** - Para o processo.
**fg** - De foreground funciona para tirar o processo do modo pausa.
Processo zombi e quando o "pai" de um processo morre mas o filho continua funcionando.
**top** - Informação sobre o uso do CPU, informação relacionadas a CPU, uso de memoria e informação sobre processos ou programas que estão rodando. Se precisar de ajuda e só apertar "z" ou "?".
**top -p {PPID}** - Mostra um processo em especifico. 
- 