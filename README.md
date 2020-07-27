## README

Esta é uma aplicação simples de exemplo de como construir uma API em Rails.
Abaixo você encotrará vários itens para auxiliá-lo a executar esse projeto

## Pré requisitos

Ter instalado na máquina os seguintes recursos com suas respectivas versões:

- Ruby `2.7.1`
- Postgres `11.1`

## Instalação

Depois de obter todos os [pré requisitos](#pré-requisitos), basta executar os seguintes comandos na sequência:

1. `gem install pg -v '1.2.3'`
2. `bin/setup`

Após isso, execute:

`rails s`

Pronto agora é baixar a [collection de endpoints](https://raw.githubusercontent.com/SauloSilva/api_example/master/app/doc/api_example.postman_collection.json) e os environments de [development](https://raw.githubusercontent.com/SauloSilva/api_example/master/app/doc/development.postman_environment.json) e [production](https://raw.githubusercontent.com/SauloSilva/api_example/master/app/doc/production.postman_environment.json) e importar em seu POSTMAN

## Testes

Para executar os testes é necessário ter os [pré requisitos](#pré-requisitos) e também ter finalizado a [instalação](#instalação) das dependências com sucesso.

Sendo assim, agora é so executar o seguinte comando:

`rspec`

## Servidor

A API foi hospedada no heroku.
Esta [neste link](https://api-example-challenge.herokuapp.com).

## Prints das telas

**Exemplo de uma request via POSTMAN**

![](https://github.com/SauloSilva/api_example/raw/master/public/Screen%20Shot%202020-07-27%20at%202.18.04%20AM.png)
![](https://github.com/SauloSilva/api_example/raw/master/public/Screen%20Shot%202020-07-27%20at%202.18.14%20AM.png)

**Demostração da suíte com coverage 100%**

![](https://github.com/SauloSilva/api_example/raw/master/public/Screen%20Shot%202020-07-27%20at%202.17.21%20AM.png)
