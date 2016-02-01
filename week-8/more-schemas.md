Here is a one-to-one schema:  

![one-to-one schema](one-to-one.png)  

This schema demonstrates a one-to-one relationship because there is only one  
sun in our solar system.  It has multiple properties, but there is still only  
just one sun.  

Here is a many-to-many schema:  

![many-to-many schema](many-to-many.png)

##Reflection

What is a one-to-one database?  
A one-to-one database contains collections of data in which the values only  
correspond directly to one other value in another database.  Things are in pairs.  

When would you use a one-to-one database?  
(Think generally, not in terms of the example you created).  
You would use a one-to-one database when you have tables whose items only relate  
to each other in pairs.  Like a table of everyone's left eyeballs and a table of
everyone's right eyeballs.

What is a many-to-many database?  
The clue would be that there would be a join table connecting two tables that would contain at least the ids of the two tables it's linking. This could be done with research.
A many-to-many database is a collection of data tables whose values correspond  
to multiple values from multiple tables.  In a schema of one such database, you  
will see tables joined together by one, or more, other tables.

When would you use a many-to-many database?   
(Think generally, not in terms of the example you created).  
A many-to-many database could be used when you have fields from 3 or more tables  
relating to one another, through one or more tables.  If you have lots of things  
relating to lots of things relating to lots of things, you can use a many-to-many  
database.

What is confusing about database schemas? What makes sense?  
Are schemas just for planning?  Is there a program that produces a schema based  
on a database?  If there isn't, we should write it.  Schemas make sense for planning,  
but I feel that they make more sense for more complicated databases.  A simple  
spreadsheet may suffice for a smaller one.  I don't know.
