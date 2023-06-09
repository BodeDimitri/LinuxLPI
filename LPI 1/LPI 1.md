## Resumo:

### Topic 1: The Linux Community and a Career in Open Source

#### 1.1 Linux Evolution and Popular Operating Systems

Linux foi criado baseando-se no MINIX como uma versão Open Source, criador: Linus Torvalds. Em 1991, Linus Torvalds, um estudante finlandês de ciência da computação, começou a desenvolver um sistema operacional inspirado no MINIX, um sistema Unix-like desenvolvido por Andrew S. Tanenbaum. Linus estava insatisfeito com as limitações do MINIX e decidiu criar um sistema operacional livre e de código aberto que pudesse ser executado em hardware compatível com o PC.

Sistema baseados no Linux possui: Kernel, bibliotecas, utilitários e interface com o usuário.

Licença GPL (General Public License): Uma versão gratuita do programa que permite modificações e redistribuições desde que não tenham pagamento envolvido.

Distribuições do Linux:

- Debian: mantida pela comunidade, comumente usado para servidor mas pode ser usado para desktop.

- Ubuntu: baseado no debian, mantido por uma organização e responsável por popularizar o Linux nos desktops no mundo inteiro, muito famoso pela instalação simplificada e de facil acesso.

- Ubuntu Server: versão crua do Ubuntu que tem apenas um terminal mas e usada com o foco de gerencia de servidor.

- RedHat Enterprise Linux (RHEL): mantida pela RedHat, versão de empresa que e paga.

- Fedora Linux: baseado no RedHat, versão gratuita.

- CentOS: baseada no RHEL, sem os programas proprietários da RedHat.

- OpenSuse: versão gratuita do Suse com foco no desktop.

- Suse Linux: versão paga mas que tem suporte da empresa.

- ScientificLinux: distribuição que já vem com softwares específicos para a comunidade de pesquisa.

- Mint Linux: uma versão desktop de linux de simples uso, particularmente a minha favorita.

- Android: existe uma discussão se é realmente um linux ao pé da letra, mas para todos os efeitos ele na prova será considerado uma distribuição linux.
  (-Alura)

- LTS (Long Term Support): Versão que vai continuar recebendo suporte oficial.

#### 1.2 Major Open Source Applications

- Navegador: Firefox, Chromium(Chrome) e Konqueror.
  
  - E-mail: Thunderbird.
    Editor de Textos e de Planilhas: LibreOffice (mais usado), OpenOffice.
    Editor de Imagens: Gimp, Inkscape.
    Editor de Videos: Cinelerra.
    Editor de Áudio: Audacity.
    Modelação 3D: Blender.
    Servidores HTTP: HTTPD Apache, NGINX.
    C, Java, JavaScript, Perl, shell, Python, PHP.
    Lamp - Linux, Appache, MySQL, PHP.
    NFS(Linux): E um protocolo para compartilhamento de arquivos que estão na mesma rede.
    Samba: Mesma coisa que o NFS alem de gerenciar impressoras, mas pode compartilhar entre Linux e Windows.
    CUPS: Sistema de impressão modular, e para gerenciar as impressoras.
    Cliente de e-mail: Postfix, OpenLDAP(serviço de replica de informações).
    Servidor DNS: Bind (instalação de servidor DNS feita pelo Linux).
    DNSmasq: Servidor de DHCP, fornece endereços IPs para computadores conectados na rede.

  Funciona para todas as distribuições:

      "-"Significa usar um atalho".
       "--"" "Comando explicito".
  E possivel tamber juntar abreviações como: "rpm --query --all" para  "rpm -qa".

- Ubuntu:
  Apt-get "install" "remove": Instalação de pacotes no Linux.
  Sources.list: Lista onde fica localizado os repositorios ("etc/apt/sources.list"). Ai esta listado tudo que o apt-get e o apt-cache tem como base.
  Apt-get update: Atualizar os repositorios.
  Apt-get install --only-upgrade "aplicativo": Serve para atualizar um aplicativo em específico.
  Dpkg: Gerenciador de pacotes do debian. (dpkg -i "mysql").
  Dpkg --list: Lista os pacotes instalados ou apenas baixados. No canto esquerdo mostra o status do pacote, ele pode estar: Unknow, Install, Remove, Purge e Hold.
  Apt-get -f install: Atualiza todas as dependências pendentes.
  .deb: Todos os Linux que derivam do Debian conseguem usar.

- Fedora:
  .rpm: E o equivalente ao dpkg do fedora.
  yum: E o equivalente ao apt do fedora.
  Porem o yum foi trocado por outro gerenciador de pacotes que e o dnf, caso não tenha o dnf baixado o Fedora vai aconselhar o download dele. 
  rpm --query --all: Mostra todos os pacotes instalados na máquina.
  rpm -e "programa": Remover programas.
  CentOS:
  Nmcli d: Mostra os dispositivos de conexão.
  Nmtui: Editar os dispositivos de conexão.
  systemctl restart network: Reinicia o sistema de internet.
  Yum se localiza "etc/yum".
  Yum funciona normalmente. (yum search "aplicativo", yum install "aplicativo").
  Yum info "aplicativo"-server: Da informação do aplicativo a ser baixado.
  Yum remove "aplicativo": Remover o aplicativo.
  Yum makecache: Atualiza a lista de pacotes.
  Yum update: Atualiza tudo.
