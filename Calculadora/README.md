# Instruções Gerais para o Funcionamento da Calculadora ⇩⇩⇩ #

<p>
O projeto foi desenvolvido com o sistema operacional Windows, ou seja, todas as aplicações foram instaladas na versão para Windows e as orientações do README são voltadas para o mesmo.
</p>
<p>
O editor de texto utilizado durante o desenvolvimento da calculadora foi o Visual Studio Code (VScode), recomendo utilizar o mesmo <a herf="https://code.visualstudio.com/">Download aqui</a>. O terminal escolhido foi o Cmder (v1.3.24), <a href="https://github.com/cmderdev/cmder/releases/tag/v1.3.24">Download aqui</a>, podendendo também ser utilizado terminal do VScode.
</p>

⚠️ Se você já possui os pré-requisitos e já clonou a pasta com os arquivos para a sua máquina ou GitHub, pode ir para o item **Executando**, lá estão as instuções para executar os testes da calculadora e em sequência a explicação das classes e metódos.

 **Pré-Requisitos**

* Ter uma conta no GitHub => Se não possuir, crie sua conta em: <https://github.com/signup> 
* Ter o Git instalado na máquina (v2.41.0 x64) => Passo a passo em: <https://git-scm.com/book/pt-br/v2/Come%C3%A7ando-Instalando-o-Git>
* Terminal;
* Editor de Texto + extensões em Ruby;
* Ruby+Devkit (v3.2.2-1 x64) _versão recomendada_ => Disponível em: <https://rubyinstaller.org/downloads/>
* Gem's => **Rspec**, win32console, bundler, ruby-debug-ide

Tendo os pré-requistos, partimos para a preparaçãpo do ambiente e as instruções para instalação das Gem's e extensões. 

## Preparação de Ambiente ##

1. VScode

Com o programa aberto, selecionamos as abas 'view -> extensions' **atalho Crtl+Shift+X** <br>
Sugestão de extensões: Ruby, Snippets and Syntax Highlight for Gherkin (Cucumber), Gherkin Indent, EditorConfig, Ruby Solargraph e Code Runner.

2. Cmder

Abrir o terminal e executar os seguintes comandos: <br>
gem install win32console<br>
gem install bundler<br>
gem install ruby-debug-ide <br>
<br>
Conferir as gem's instaladas com o comando: gem list ou gem list bundler + (nome da gem para filtrar) <br> <br>
⚠️ Quando for usar o Cmder, não esqueça de abrir o terminal na pasta onde os arquivos da calculadora foram baixados, ou, acessar a pasta usando o comando cd

## Clonando o Diretório ##
Obs: caso você queira clonar todo o repositório para o seu GitHub, siga os passos do [README](../README.md) da main. 
1. Crie uma nova pasta na sua máquina;
2. Abra o Git Bash na pasta criada;
3. Entre com o comando: **git clone -n [https://github.com/Thais-Ossanes/2_RealityStone_-Thais_Ossanes-_Compass.git ]**;
(após esse comando, o repositório com os arquivos está acessível)
4. Comando **ls** confirma que o repositório foi clonado (confirma vendo o nome do repositório: RealityStone_-Thais_Ossanes-_Compass);
5. Entre com o comando **cd RealityStone_-Thais_Ossanes-_Compass**;
6. Entre com o comando **git checkout HEAD [Calculadora]**
7. Comando **ls** confirma se a pasta foi clonada;
8. Entre com o comando **cd Calculadora**;
9. Entre com o comando **code .** (abrirá os aquivos no VScode);
10. 

## Executando ##

Abra o Cmder na pasta 'Calculadora' e entre com o comando **bundle install** (assim serão instaladas as gem's **rspec**  e **pry** contidas no arquivo 'Gemfile').
Após instalar as Gem's entre com o Cmder na pasta 'specs' e execute o arquivo 'calculadora_spec.rb' => comando => **Rspec calculadora_spec.rb**. No terminal do VScode é o mesmo comando, só é necessário abrir um terminal direto no arquivo selecionado (atalho ctrl + shift + ')
<br>
Ele deve resultar em algo parecido com essa imagem: 

## Classes e Métodos ##




## Sites que Podem te Ajudar ##

<a href="https://carlos-augusto-roque.medium.com/clonagem-de-repositório-no-github-como-clonar-apenas-uma-pasta-ou-um-arquivo-de-um-repositório-9baaad5ea3d8#:~:text=Execute%20o%20comando%20%3A%20git%20checkout,apenas%20a%20pasta%20“pages”.">Como clonar um diretório no GitHub</a>