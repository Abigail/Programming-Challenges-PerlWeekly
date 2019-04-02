#!/opt/perl/bin/perl

use 5.028;

use strict;
use warnings;
no  warnings 'syntax';

use experimental 'signatures';
use experimental 'lexical_subs';


sub fizzbuzz ($max = 20, $sep = "", $fizzbuzz = {3 => 'fizz', 5 => 'buzz'}) {
    say join ($sep => do {my $d = $_;
                          grep {$_}
                          map  {$$fizzbuzz {$_} x !($d % $_)}
                          sort {$a <=> $b} keys %$fizzbuzz}) || $_
        for 1 .. $max;
}


__END__
