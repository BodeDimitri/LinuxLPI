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

