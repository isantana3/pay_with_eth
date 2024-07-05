const OnlineStore = artifacts.require("OnlineStore");

contract("OnlineStore", accounts => {
  it("should store a sale correctly", async () => {
    const onlineStore = await OnlineStore.deployed();

    // Authorize an account
    await onlineStore.setAuthorizedAccount(accounts[1], true, { from: accounts[0] });

    // Store a sale
    await onlineStore.storeSale(1, 2, 100, accounts[2], { from: accounts[1], value: 200 });

    // Retrieve sales
    const sales = await onlineStore.getTotalSales();
    assert.equal(sales.length, 1, "Sale was not stored correctly");
    assert.equal(sales[0].productId, 1, "Product ID mismatch");
    assert.equal(sales[0].quantity, 2, "Quantity mismatch");
    assert.equal(sales[0].price, 100, "Price mismatch");
    assert.equal(sales[0].buyerAddress, accounts[2], "Buyer address mismatch");
  });

  it("should not store a sale with insufficient ether", async () => {
    const onlineStore = await OnlineStore.deployed();

    try {
      // Attempt to store a sale with insufficient ether
      await onlineStore.storeSale(2, 3, 100, accounts[3], { from: accounts[1], value: 200 });
      assert.fail("The sale should have failed due to insufficient ether");
    } catch (error) {
      assert.include(error.message, "Insufficient Ether sent for the purchase", "Expected error not thrown");
    }
  });
});
