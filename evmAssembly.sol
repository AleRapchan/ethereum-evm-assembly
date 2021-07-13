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