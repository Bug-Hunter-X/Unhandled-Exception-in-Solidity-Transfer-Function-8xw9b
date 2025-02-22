```solidity
function transfer(address _to, uint256 _value) public {
    try {
        require(balances[msg.sender] >= _value, "Insufficient balance");
        balances[msg.sender] -= _value;
        balances[_to] += _value;
        emit Transfer(msg.sender, _to, _value);
    } catch (bytes memory reason) {
        // Log the error.  In a production environment, use more sophisticated logging methods
        // such as emitting an event to track failed transactions.
        emit TransferFailed(msg.sender, _to, _value, reason);
    }
}

event TransferFailed(address from, address to, uint256 value, bytes reason);
```