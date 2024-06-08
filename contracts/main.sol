// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract OnlineStore {
    // Private data structure to store sales
    struct Sale {
        uint productId;
        uint quantity;
        uint price;
        address buyerAddress;
    }

    // Private array to store all sales
    Sale[] private sales;

    // Contract owner address
    address public owner;

    // Mapping to control authorized accounts
    mapping(address => bool) public authorizedAccounts;

    // Event to log a new sale
    event NewSale(
        uint productId,
        uint quantity,
        uint price,
        address buyerAddress
    );

    // Constructor to set the contract owner
    constructor() {
        owner = msg.sender;
    }

    // Modifier to check if the account is authorized
    modifier onlyAuthorized() {
        require(
            authorizedAccounts[msg.sender] || msg.sender == owner,
            "Not authorized"
        );
        _;
    }

    // Function to add or remove an authorized account
    function setAuthorizedAccount(address _account, bool _authorized) public {
        require(msg.sender == owner, "Only the owner can authorize accounts");
        authorizedAccounts[_account] = _authorized;
    }

    // Function to store a sale
    function storeSale(
        uint _productId,
        uint _quantity,
        uint _price,
        address _buyerAddress
    ) public onlyAuthorized {
        sales.push(
            Sale({
                productId: _productId,
                quantity: _quantity,
                price: _price,
                buyerAddress: _buyerAddress
            })
        );
        emit NewSale(_productId, _quantity, _price, _buyerAddress);
    }

    // Function to retrieve all sales
    function getTotalSales() public view returns (Sale[] memory) {
        return sales;
    }
}
