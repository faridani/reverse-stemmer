#!/usr/bin/env python

"""
By Siamak Faridani
1/10/2012

call it by: 
python main.py input.txt

"""
from PorterStemmer import *

if __name__ == '__main__':
    p = PorterStemmer()
    if len(sys.argv) > 1:
        for f in sys.argv[1:]:
            infile = open(f, 'r')
            outfile = open("output.txt", "w")
            while 1:
                output = ''
                word = ''
                line = infile.readline()
                if line == '':
                    break
                for c in line:
                    if c.isalpha():
                        word += c.lower()
                        

                    else:
                        if word:
                            output += p.stem(word, 0,len(word)-1)
                            
                            outputstring = ''.join([word, ",", p.stem(word, 0,len(word)-1),"\n"])
                            print outputstring
                            outfile.write(outputstring)
                            word = ''
                            
                        output += c.lower()
                    

            infile.close()
            outfile.close()
