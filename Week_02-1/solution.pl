#
# Read numbers from STDIN, write them to STDOUT. Leading 0's are stripped
# from each line.
#
#   Note:  The program assumes the input contains only positive numbers,
#          and exactly one number per line. The challenge does not 
#          specify that this is the case.
#
# Perl one-liners typically have the code inside quotes (' or "), but
# they are just there to prevent certain characters to be interpreted
# by the shell. Our program does not have such characters, so there is
# no need to use quotes. 
#
# Also, we don't have to use / as a delimiter with substitutions.
# So we don't. We picked - instead.
#

perl -pes-^0+--
