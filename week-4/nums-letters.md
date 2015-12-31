What does puts do?  
puts returns nil and prints the output and a newline to the console.  


What is an integer? What is a float?  
An integer is a number without a decimal point.  
A float is a number with a decimal point.  


What is the difference between float and integer division?  
How would you explain the difference  
to someone who doesn't know anything about programming?  
Dividing with floats is like normal division. Ruby returns the quotient and  
a decimal remainder, even if it is just .0  
However, integer division only returns the quotient without the remainder.  
Float division:  
    25.0 / 4 = 6.25  
Integer division:  
    25 / 4 = 6  

```
puts "There are #{365 * 24} hours in a year."
puts "There are #{10 * 365 * 24 * 60} minutes in a decade."
```
