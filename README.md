Objective
=========
Generating a reverse lookup stemming table

Example:
declaration,declar

About the code
==============
There are two implementations of the this work in Python and Matlab
C++ is under development

How it works
============
Takes and input file and generates a reverse stemming lookup file 
the output file is called "output.txt" and it is in csv format and is readable by excel

Perfromance
============
The Matlab implementation is 35 times slower than Python
Also the Matlab version tool much more time for development :)

Comparison
----------
I have used a large corpus to compare the two implementations. Below is how much it took for each code to generate the lookup table

Matlab: 56.223619 (sec)
Python:  1.606278 (sec)


Input/Output
=============
example input:
--------------
The decleration of  independence  

Example output:
---------------
the,the

declaration,declar

of,of

independence,independ

a,a

transcription,transcript

in,in

congress,congress

july,juli

the,the

unanimous,unanim

declaration,declar
