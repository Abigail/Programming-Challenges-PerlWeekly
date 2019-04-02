#!/opt/perl/bin/perl

use 5.028;

use strict;
use warnings;
no  warnings 'syntax';

use Test::More;

use experimental 'signatures';
use experimental 'lexical_subs';

do "./solution.pl";

foreach my $number (0 .. 1000) {
    my $encode = to_base ($number);
    my $decode = from_base ($encode);
    is $decode, $number, "Round trip for $number";
}

done_testing;

__END__
