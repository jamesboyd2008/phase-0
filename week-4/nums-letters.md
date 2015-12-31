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


*How does Ruby handle addition, subtraction, multiplication, and division of numbers?  
Addition, subtraction, and multiplication function in Ruby in a logical sense,  
much like how they do in elementary school arithmetic. Division, however,  
works differently for floats and integers. Dividing with floats is like normal  
division. Ruby returns the quotient and a decimal remainder, even if it is just .0  
However, integer division only returns the quotient without the remainder.  
Float division:  
    25.0 / 4 = 6.25  
Integer division:  
    25 / 4 = 6  

*What is the difference between integers and floats?  
Floats have a decimal and integers do not have a decimal.  


*What is the difference between integer and float division?  
See above.  


*What are strings? Why and when would you use them?  
A string is a cluster of letters, but can contain other characters or nothing.  
We use them as values for variables. They can me manipulated as well, using  
any of the 101 String methods available in Ruby 2.2.3.  
To view all the methods, just type    String.methods  


*What are local variables? Why and when would you use them?  
Local variables declared in a method or within a loop cannot be accessed  
outside of that loop or method. They may not work throughout the entire program.  
We use local variables all the time. They hold values we can use to compute stuff.  


*How was this challenge? Did you get a good review of some of the basics?  
I did get a good review of some basics in this challenge.  
It was a nice refresher.  


*Also add links to the your challenge solution files so people can easily access them  
 to give you feedback. There should be a link for each exercise above.  

https://github.com/jamesboyd2008/phase-0/blob/master/week-4/defining-variables.rb  
https://github.com/jamesboyd2008/phase-0/blob/master/week-4/simple-string.rb  
https://github.com/jamesboyd2008/phase-0/blob/master/week-4/basic-math.rb  
