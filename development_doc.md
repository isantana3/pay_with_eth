# Documentation

For this project I wanna try write an english documentation for devs. This will help me to practice my english and learn more about solidity.

## Sumary

### Data Structure:

-   Created a structure Sale that contains productId, quantity, price, and buyerAddress.

### Private Array:

-   Used a private array sales to store all sales.

### Owner Address and Authorized Accounts:

-   Defined the contract owner and a mapping to control authorized accounts.

### Events:

-   Created an event NewSale to log each sale.

### Modifier onlyAuthorized:

-   Ensured that only the owner or authorized accounts can interact with certain functions of the contract.

### Function setAuthorizedAccount:

-   Allows the contract owner to add or remove authorized accounts.

### Function storeSale:

-   Stores a new sale in the sales array.

### Function getTotalSales:

-   Returns all sales stored in the contract.

## Tips and snippets

### Testing locally on terminal

To run on terminal, use the make comands for compile, deploy and then, open the console.

You can use those snippets for start

```javascript
// Obtém a instância do contrato implantado
const onlineStore = await OnlineStore.deployed();

// Adiciona uma conta autorizada (substitua por um endereço de conta válido)
await onlineStore.setAuthorizedAccount("0x44ed92E355b50EA14e86c2Ae00e9D61786bfc916", true);

// Armazena uma venda (substitua pelos valores desejados)
await onlineStore.storeSale(1, 2, 100, "0xCDd4F3d7ddbFf8DF1291282394562c4e807959E3");

// Recupera todas as vendas
const sales = await onlineStore.getTotalSales();
console.log(sales);
```
