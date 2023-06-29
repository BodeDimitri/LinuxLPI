### _Topic 4: The Linux Operating System_

#### 4.1 Choosing an Operating System:
---
**Hardware:** Acho que não preciso comentar que isso e a parte física do seu computador (não sei se algum dia alguém além de mim vai ler isso) como o processador, placa-mãe, placa de vídeo, fonte, etc...
Software: E o código, o programa que você usa (olha só to escrevendo isso pq ta no curso).

A placa-mãe é um componente vital de um computador que conecta e coordena todos os outros componentes. Ela possui uma variedade de conexões que permitem a comunicação entre os diferentes dispositivos e periféricos. Aqui está um resumo das principais conexões encontradas em uma placa-mãe típica:

1. Socket do processador (CPU): É aqui que a CPU (Unidade Central de Processamento) é instalada na placa-mãe. O socket varia dependendo do tipo e modelo do processador. Os processadores também tem família de arquitetura, isso e importante para quando for baixar um OS. Velocidade medida em GHz.
     ^643b67
2. Slots de memória (DIMM): Esses slots permitem a instalação dos módulos de memória RAM (Random Access Memory) do computador. A quantidade e tipo de slots podem variar, dependendo da placa-mãe.
    
3. Slots de expansão (PCIe, PCI, etc.): Esses slots permitem a instalação de placas de expansão, como placas de vídeo, placas de som, placas de rede e outros dispositivos adicionais. O PCIe (Peripheral Component Interconnect Express) é o slot mais comum atualmente, utilizado para placas de alta velocidade.
    
4. Conectores SATA: Esses conectores permitem a conexão de unidades de armazenamento, como discos rígidos (HDDs) e unidades de estado sólido (SSDs), bem como unidades de CD/DVD.
    
5. Conectores USB: A placa-mãe possui vários conectores USB (Universal Serial Bus), que permitem a conexão de dispositivos periféricos, como teclados, mouses, impressoras, câmeras e outros dispositivos USB.
    
6. Conectores de áudio: São usados para conectar alto-falantes, fones de ouvido, microfones e outros dispositivos de áudio à placa-mãe.
    
7. Conectores Ethernet: Permitem a conexão de um cabo de rede para acesso à Internet ou redes locais.
    
8. Conectores de vídeo: Dependendo da placa-mãe, pode haver conectores para vídeo integrado, como HDMI, DisplayPort ou VGA. Esses conectores permitem a conexão de monitores diretamente à placa-mãe.
    
9. Conectores de energia: A placa-mãe possui vários conectores de energia, como o conector de alimentação principal (geralmente um conector ATX de 24 pinos) e um conector de alimentação auxiliar para fornecer energia estável à placa-mãe.

**BIOS(Basic Input/Output System)** - Ela é responsável por inicializar o sistema operacional e os dispositivos de hardware, realizando uma série de verificações e configurações durante o processo de inicialização. A BIOS fornece uma interface de comunicação básica entre o hardware e o software do sistema, permitindo que o sistema operacional e outros programas interajam com os componentes do computador. Ela também possui configurações acessíveis ao usuário, como opções de inicialização e ajustes de hardware. Embora tenha sido amplamente substituída pelo UEFI (Unified Extensible Firmware Interface), a BIOS ainda é encontrada em muitos computadores mais antigos.

**RAM (Random Acess Memory)** - E a memoria temporária, que jogos ou aplicativos usam temporariamente, apenas enquanto estão sendo executados, também e uma memoria muito rápida e quando você desliga seu computador tudo o que esta sendo armazenado nela e perdido. Sua velocidade e medida em MHz.

**HD(Hard Disk) SSD(Solid State Drive)** - Os HDs usam discos magnéticos giratórios e braços mecânicos para ler e gravar dados, oferecendo maior capacidade de armazenamento, mas com velocidades de acesso mais lentas. Por outro lado, os SSDs utilizam chips de memória flash para armazenamento, oferecendo velocidades de leitura e gravação mais rápidas, maior durabilidade e menor ruído. Embora os HDs sejam mais adequados para armazenar grandes quantidades de dados, os SSDs são ideais para melhorar o desempenho geral do sistema, com tempos de inicialização mais rápidos e carregamento ágil de aplicativos e arquivos. A escolha entre eles depende das necessidades individuais de armazenamento e desempenho.

**Hibernação** - O computador desliga boa parte dos componentes e puxa menos energia e parece desligado, porem continua ligado e quando você clicar no botão de ligar ele vai voltar ao estado que estava antes de desligar. Para esse processo ele manda o que esta na memoria RAM para o HDD/SSD e quando você liga ele pega do HDD/SSD de volta para a memoria RAM. 

**Suspensão** - Parecido com a hibernação porem ele não desliga totalmente as memorias RAM, apenas manda bem pouca energia.

---
**Partições:**
- lsblk - Lista todos os HD/SSDs e as partições. 
````bash
$ lsblk
NAME   MAJ:MIN RM  SIZE RO TYPE MOUNTPOINT
sda      8:0    0   20G  0 disk 
├─sda1   8:1    0   16G  0 part /
├─sda2   8:2    0    1K  0 part 
└─sda5   8:5    0    4G  0 part [SWAP]
sdb      8:16   0    2G  0 disk 
sr0     11:0    1 1024M  0 rom
`````
- As partições [1,2,3,4] são consideradas primarias e são sempre reservadas para o boot da maquina. Também exista uma parte do HDD que comumente e usada com swap, que e basicamente acontece quando a RAM esta muito cheia ela manda uma parte para o HD e depois o HD manda de volta para a RAM.

- fdisk - Serve para particionar os HDD/SDDs.
- 
`fdisk /dev/{disco}`

- mkfs -t {disco} ext4 - Cria um sistema de arquivos.

- mount {diretorio} -  Serve para montar a partição, isso e um passo necessário para deixar a partição "utilizável".
- 
`sudo mount dev/sdb1/mnt/secundario`

- umont {diretorio} - Desmonta a partição. Caso você reinicie ou desligue a maquina o mount some sem usar o comando.
- 
Porem no arquivo *etc/fstab* e possível configurar o que vai sempre ser montado.
---
- /media -  Serão montados DVDs
- /mnt - Serão montados HDDs, SSDs e Pendrives.

**Fonte** - Basciamente e o que gere energia para todos os componentes do seu computador, dependendo dos seu componentes você vai precisar de uma fonte com maior voltagem para suportar tudo.

