# Ethereum EVM Assembly
Solidity program done with with "non-functional" assembly expressions as swapN, dupN, add, sub, mul, and exp to compute the simple function bellow:

![Logo](https://alexandrebarros.com/global/func1.png?alt=ethereum-evm-function)

Test case: Evaluating f(5,6) should return 3993.

## Code Preview
```JS
pragma solidity ^0.4.0;

// https://hoytech.github.io/blockchain-vm/lesson1/evm.html
// We will use: swapN, dupN, add, sub, mul, and (optionally) exp.
// Test case: Evaluating f(5,6) should return 3993


contract Test {
    function f(int a, int b) public pure returns (int output) {
        assembly {
            
            // Stack: null
            // User's input variable a
            a 
            
            // Stack: a
            // dup to preserve initial variables a
            dup1
            
            // Stack: a, a
            // User's input variable b
            b
            
            // Stack: a, a, b
            // Sum the variables (a + b)
            add
            
            // Stack: a, (a+b)
            // Prepare exponential
            dup1 
            
            // Stack: a, (a+b), (a+b)
            // Prepare exponential
            dup1
            
            // Stack: a, (a+b), (a+b), (a+b)
            // Prepare exponential Multiply
            mul 
            
            // Stack: a, (a+b), (a+b)*(a+b)
            // Prepare exponential Multiply
            mul
            
            // Stack: a, (a+b)*(a+b)*(a+b)
            // Swap variables
            swap1
            
            // Stack: (a+b)*(a+b)*(a+b), a
            // Push new value 
            2
            
            // Stack: (a+b)*(a+b)*(a+b), a, 2
            // Prepare substraction
            swap1
            
            // Stack: (a+b)*(a+b)*(a+b), 2, a
            // Subtraction (a - 2)
            sub
            
            // Stack: (a+b)*(a+b)*(a+b), (a - 2)
            // Final multiply
            mul
            
            // Stack: (a+b)*(a+b)*(a+b)*(a - 2)
            // Store the top of the stack and print it
            =: output
        }
    }
}
```

## Authors

Name  | Git Hub | LinkedIn | Twitter
------------- | ------------- | ------------- | -------------
Alexandre Rapchan B. Barros  | [@AleRapchan](https://www.github.com/AleRapchan) | [Alexandre-rapchan](https://www.linkedin.com/in/alexandre-rapchan/) | [@rapchan](https://www.twitter.com/rapchan/) 

## Support

For support, email blockchain@alexandrebarros.com or join our Slack channel.
	
## Revisions
Date  |  Revision  |  Description  |  Author
--------  |  --------  |  --------  |  --------	
15/06/2021  |  `0.1`  |  First Draft  |  Alexandre Rapchan B. Barros

## Links
- Use the [Remix Solidity IDE](https://remix.ethereum.org/) to develop and test your program.
- See the [list of EVM opcodes](https://ethereum.stackexchange.com/questions/119/what-opcodes-are-available-for-the-ethereum-evm) for reference.
- More about [ETHEREUM VIRTUAL MACHINE (EVM)](https://ethereum.org/en/developers/docs/evm/)
- FORTH on Browser(http://nhiro.org/learn_language/FORTH-on-browser.html)
