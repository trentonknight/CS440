#!/usr/bin/env python
a = int('0x00400000',16)
print a
b = int('0x00400004',16)
print b
c = int('0x00400008',16)
print c
d = int('0x0040000c',16)
print d
e = int('0x00400010',16)
print e
f = int('0x00400014',16)
print f
#jal command increments by 16 or 4 * 4
la = int('0x00400024',16)
print "la $s3, numOne:"
print la
sw = int('0x00400028',16)
print "sw $s1, 0($s3):"
print sw                                                                
li = int('0x0040002c',16)
print li
syscall = int('0x00400030',16)
print syscall
