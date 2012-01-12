#!/usr/bin/env python

"""
By Siamak Faridani
1/10/2012

call it by: 
python main.py input.txt

"""
from PorterStemmer import *
import time


if __name__ == '__main__':
    print "Starting..."
    start = time.clock()
    wordsseen = {}
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
                            if not (word in wordsseen):
                                #print outputstring
                                outfile.write(outputstring)
                                wordsseen[word] = 1

                            
                            word = ''
                            
                        output += c.lower()
                    
            #print wordsseen.keys()
            infile.close()
            outfile.close()
            end = 1000 * (time.clock() - start)
            print 'Time elapsed: %.3f ms' % (end)