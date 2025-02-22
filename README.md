# Unhandled Exception in Solidity Transfer Function

This repository demonstrates an uncommon error in Solidity smart contracts: the lack of proper exception handling in a token transfer function.  The `transfer` function lacks robust error handling; if a transfer fails due to insufficient balance, it reverts silently.  The improved version includes logging of the failed transfer. 

## Bug
The original `transfer` function is straightforward but lacks any logging or indication of failure.  If `balances[msg.sender]` is less than `_value`, the `require` statement reverts the entire transaction without providing any feedback.

## Solution
The solution introduces a `try-catch` mechanism for more graceful error handling.  It now logs the error to the console or to an event, providing more transparency and debugging information.