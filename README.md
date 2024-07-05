# pay_with_eth

por: Adriel Fabrício e Iago Gomes

## Descrição

OnlineStore é uma aplicação descentralizada (DApp) de loja virtual onde os usuários podem comprar produtos utilizando Ether (ETH). Esta aplicação é construída em Solidity e usa Truffle para desenvolvimento e implantação de contratos inteligentes.

## Funcionalidades

-   Armazena vendas com ID do produto, quantidade, preço e endereço do comprador.
-   Permite recuperar todas as vendas registradas.
-   Autoriza contas específicas a interagir com o contrato inteligente.

## Pré-requisitos

-   Node.js (versão 12.0 ou superior)
-   NPM (Node Package Manager)
-   Truffle
-   Ganache (opcional para desenvolvimento local)

## Instalação

1. Clone o repositório:

    ```sh
    git clone https://github.com/isantana3/pay_with_eth.git
    cd pay_with_eth
    ```

2. Instale as dependências:

    ```sh
    npm install
    ```

3. Configure o Truffle no arquivo `truffle-config.js` para a rede que deseja utilizar.

## Uso

### Compilação e Migração

Para compilar e migrar os contratos, utilize o Makefile:

```sh
make compile
make migrate
```
