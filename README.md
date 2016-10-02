# Projeto Ozone
O projeto consiste na utilização do paradigma MapReduce para a implementação de algoritmos para manipulação de dados a partir de satélites de monitoramento climático. Trata-se de um grande volume dados, os quais devem ser extraídos e tratados. Dentre as métricas a serem implementadas destacam-se média aritmética, valores mínimo e máximo e desvio padrão. Os algoritmos implementados preveem a necessidade de seleção de intervalos de tempo e de espaço para a extração de amostras e/ou dados específicos de uma dada região.

Para conseguir executar os arquivos do projeto, é necessário alguma versão do Java Development Kit (recomenda-se o 8) e Hadoop, que é uma plataforma de computação distribuída para processamento de grandes quantidades de dados.

## Instalação das Ferramentas
Todos os comandos listados aqui foram executados no Debian 8 (Jessie), deve funcionar funcionar sem mais problemas em distribuições derivadas.

**Java Development Kit**

É recomendável que ao invés da plataforma comunitária e de código aberto do java, use-se a priprietária. Então, vamos remover as versões comunitárias do java:
```
apt-get remove --purge openjdk-*
```
Adição dos Repositórios da Oracle:
```
echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | tee /etc/apt/sources.list.d/webupd8team-java.list
echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | tee -a /etc/apt/sources.list.d/webupd8team-java.list
```
Permissão de chave para o gerenciador de pacotes:
```
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EEA14886
```
Atualização dos repositórios:
```
apt-get update
```
Instalação do Java JDK 8:
```
apt-get install oracle-java8-installer
```
Para testar se a instalação foi um sucesso:
```
java -version ou javac -version
```

**Servidor SSH**
```
apt-get install ssh
```

**Apache Hadoop**
