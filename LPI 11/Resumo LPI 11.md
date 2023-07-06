#### 4.4 Your Computer on the Network:
**IPv4:** O IPv4 (Internet Protocol version 4) é uma versão do protocolo de Internet amplamente utilizado para endereçamento e comunicação na Internet. Ele utiliza endereços de 32 bits, divididos em quatro octetos separados por pontos. Cada octeto varia de 0 a 255 e é representado em notação decimal. Isso permite um total de aproximadamente 4,3 bilhões de endereços IPv4 únicos.

Os endereços IPv4 são essenciais para identificar e rotear pacotes de dados na Internet. Eles são usados para identificar dispositivos conectados à rede, como computadores, servidores, roteadores e outros dispositivos de rede. Os endereços IPv4 são atribuídos aos dispositivos de forma hierárquica, com uma parte identificando a rede (prefixo de rede) e outra parte identificando o dispositivo na rede (sufixo de host). 
Para registrar nomes de site e necessário um **DNS (Domain Name System)**, ele e quem nos retorna o número do IP quando pesquisamos pelo nome na internet.

| Valor Decimal | Descrição |
| --- | --- |
| 0 | Reservado para a rede padrão (endereço de rede) |
| 1-126 | Faixa de endereços reservada para redes públicas |
| 127 | Reservado para loopback (endereço de loopback) |
| 128-191 | Faixa de endereços reservada para redes privadas |
| 192-223 | Faixa de endereços reservada para redes privadas e semiprivadas |
| 224-239 | Faixa de endereços reservada para multicasting |
| 240-255 | Reservado para uso futuro e propósitos especiais |

**dig** - O comando `dig` é uma ferramenta de linha de comando utilizada em sistemas Linux e Unix para realizar consultas DNS (Domain Name System). Ele permite obter informações sobre registros DNS, como endereços IP associados a nomes de domínio.

Ao usar o comando `dig`, você pode especificar o nome do domínio que deseja consultar e o tipo de registro que deseja obter. Por exemplo, para obter o endereço IP associado a um domínio, você pode executar o comando `dig nome_do_dominio`. O `dig` fornecerá a resposta com os registros correspondentes encontrados. O comando `dig` também permite realizar consultas em servidores de nomes específicos, definir opções de pesquisa avançadas e controlar a formatação da saída. É uma ferramenta poderosa para diagnosticar problemas de DNS, verificar a configuração de servidores e obter informações sobre a infraestrutura da rede.

Em resumo, o comando `dig` é uma ferramenta versátil e útil para realizar consultas DNS no sistema Linux. Ele fornece informações detalhadas sobre registros DNS, permitindo que você obtenha e analise informações sobre domínios, endereços IP e configuração de servidores.

**ping** - O comando `ping` é uma ferramenta de linha de comando no Linux usada para testar a conectividade de rede. Ele envia pacotes para um dispositivo de destino e mede o tempo de resposta. O `ping` é útil para diagnosticar problemas de rede, verificar a disponibilidade de um dispositivo remoto e avaliar a latência da rede. Ele fornece informações sobre a disponibilidade e o desempenho da conexão, permitindo monitorar a conectividade ao longo do tempo. 

**ping6** - Mesmo comando que o ping mas esse serve apenas para o IPv6 

**IPv6:** O IPv6 (Internet Protocol version 6) é uma versão mais recente e avançada do protocolo de Internet. Foi desenvolvido para substituir gradualmente o IPv4, devido à escassez de endereços IPv4 disponíveis. O IPv6 utiliza endereços de 128 bits, o que proporciona um espaço de endereçamento muito maior em comparação com os 32 bits do IPv4. Isso permite um número praticamente ilimitado de endereços IPv6 únicos. Além disso, o IPv6 introduz recursos adicionais, como autoconfiguração de endereços, suporte nativo a segurança e melhor eficiência de roteamento. Com o IPv6, há suporte para uma Internet cada vez mais conectada, com mais dispositivos e serviços online, garantindo a continuidade do crescimento da Internet.

---
**ifconfig** - O comando `ifconfig` é uma ferramenta de linha de comando usada em sistemas Linux para exibir e configurar as interfaces de rede do sistema. Ao executar o comando `ifconfig`, você obtém informações detalhadas sobre as interfaces de rede disponíveis, como seus endereços IP, máscaras de sub-rede, endereços MAC e estatísticas de tráfego. Além disso, o `ifconfig` permite configurar manualmente as interfaces de rede, como atribuir um endereço IP estático, definir a máscara de sub-rede e ativar ou desativar interfaces específicas. É uma ferramenta essencial para diagnóstico, configuração e gerenciamento de redes em sistemas Linux. 

**Servidor DHCP** - Um servidor DHCP (Dynamic Host Configuration Protocol) é um componente fundamental em redes de computadores que fornece configurações de rede automaticamente para dispositivos clientes. Ele atribui dinamicamente endereços IP, máscaras de sub-rede, gateways padrão e outros parâmetros de rede para os dispositivos que se conectam à rede. O servidor DHCP simplifica a configuração e a administração da rede, pois elimina a necessidade de configurar manualmente cada dispositivo individualmente. Quando um dispositivo se conecta à rede, ele solicita uma configuração ao servidor DHCP, que responde com os detalhes necessários. Isso permite que os dispositivos obtenham automaticamente uma configuração correta de rede, facilitando a conectividade e o gerenciamento eficiente da rede.

---
**dnslookup** - O comando `dnslookup` (ou `nslookup`) no Linux é uma ferramenta de linha de comando usada para consultar registros DNS de um nome de domínio específico. Ele fornece informações sobre os registros DNS associados a um domínio, como o endereço IP correspondente. É útil para verificar a resolução de nomes, diagnosticar problemas de DNS e obter informações sobre a configuração DNS de um domínio. 
**Lembrando que todo o modem tem um servidor DNS e o computador cacheia os DNS. E o comando usado e o nslookup**

**host** - O comando `host` é uma ferramenta de linha de comando no Linux usada para realizar consultas DNS (Domain Name System). Ele é usado para obter informações sobre um nome de domínio, como o endereço IP associado a ele. Ao executar o comando `host` seguido pelo nome de domínio, ele envia uma solicitação de pesquisa DNS para o servidor DNS configurado no sistema e exibe a resposta correspondente. Isso permite verificar a resolução de nomes, identificar endereços IP e obter informações sobre a infraestrutura de rede de um determinado domínio. O comando `host` é útil para diagnóstico de rede, solução de problemas de DNS e verificação de conectividade com servidores e serviços específicos.

O ip **127.0.0.1** e o IP que e nosso e apenas nossa maquina enxerga **loopback** , com eles nos podemos nos auto-pingar, essas informações ficam armazenadas no diretório: `etc/hosts`. Também existe o `etc/resolv.conf` que lista os servidores de DNS.

Resumindo: 
- **/etc/resolv.conf**: Este arquivo contém a lista de servidores DNS (Domain Name System) que o sistema utiliza para resolver nomes de domínio em endereços IP. Ele define os servidores DNS aos quais o sistema irá consultar ao realizar pesquisas de resolução de nomes. Cada linha no arquivo especifica um servidor DNS, e o sistema percorre a lista na ordem especificada para encontrar as respostas de resolução de nomes.
    
- **/etc/hosts**: O arquivo /etc/hosts é utilizado para criar associações entre nomes de host e endereços IP no sistema. Ele permite definir aliases (apelidos) para hosts locais sem a necessidade de consultas DNS externas. É comumente usado para adicionar entradas personalizadas, mapeando nomes de domínio para endereços IP locais ou vice-versa. As entradas neste arquivo têm precedência sobre as consultas DNS para os nomes especificados.
    
- **/etc/hostname**: Este arquivo contém o nome da máquina (hostname) atribuído ao sistema. É usado para definir o nome pelo qual o sistema é identificado na rede local. Geralmente, o conteúdo deste arquivo é o nome de host do sistema sem o domínio. O arquivo /etc/hostname é lido durante a inicialização do sistema para configurar o nome da máquina.
---
**route** - O comando `route` no Linux é uma ferramenta de linha de comando usada para visualizar, adicionar e manipular as tabelas de roteamento IP. É uma ferramenta útil para configurar a direção do tráfego de rede/rotas de saída em um sistema Linux, determinando quais interfaces e gateways são usados para encaminhar pacotes entre redes, 

**ip route show** - Comando parecido com o `route` mas esse da mais informações. Caso o caminho mostrado tenha a palavra "via" e que se trata de um gateway.

**gateway** - Um gateway, no contexto de redes de computadores, é um dispositivo ou sistema responsável por interconectar diferentes redes e facilitar a comunicação entre elas. Funcionando como um ponto de entrada ou saída para o tráfego de rede, um gateway realiza a tradução e o encaminhamento de pacotes de dados entre redes distintas. Ele atua como uma interface entre redes diferentes, permitindo que dispositivos em uma rede se conectem e se comuniquem com dispositivos em outra rede.
O gateway é responsável por rotear os pacotes de dados corretamente, garantindo que eles cheguem ao seu destino correto na rede de destino. Além disso, o gateway também pode executar funções como firewall, balanceamento de carga e conversão de protocolos. Em suma, um gateway é um elemento essencial para a interconexão de redes e o roteamento eficiente de dados.

**ip addr show** - Informações sobre o ip, mais denso que o `ifconfig`.

**netstat** - Mostra tudo que esta aberto e que de alguma maneira se conecta. 
- netstat -tl - Para receber informações do TCP `-t` e o `-l` para os que estão escutando.
- netstat -tln - Mostra o número das portas.
- sudo netstat -tlnp - Motra o PID.
- netstat -u - Informações de conexão UDP.
- netstat -s - Estatísticas de informações enviadas.
- netstat -tlnp | grep “número da porta” - Processos de uma porta especifica. 
