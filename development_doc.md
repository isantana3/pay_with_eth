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
await onlineStore.setAuthorizedAccount("0x09886F7f8Db3A25F3B03470f73c5011633498400", true);

// Armazena uma venda (substitua pelos valores desejados)
const productId = 1;
const quantity = 2;
const price = web3.utils.toWei("0.1", "ether");
// price = 100000000000000000
const authAddress = "0x71d02E51D336aFe6C7C485Ac50A2c67DDE21a26c";
const buyerAddress = "0x09886F7f8Db3A25F3B03470f73c5011633498400";
await onlineStore.storeSale(10, 2, 1000, "0x09886F7f8Db3A25F3B03470f73c5011633498400", {
    from: "0x71d02E51D336aFe6C7C485Ac50A2c67DDE21a26c",
    value: 2000,
});

// Recupera todas as vendas
const sales = await onlineStore.getTotalSales();
console.log(sales);
```
