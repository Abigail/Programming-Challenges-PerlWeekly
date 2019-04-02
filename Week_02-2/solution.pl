#!/opt/perl/bin/perl

use 5.028;

use strict;
use warnings;
no  warnings 'syntax';

use experimental 'signatures';
use experimental 'lexical_subs';

my $base = 35;

my @char = (0 .. 9, 'A' .. 'Y');
my %char;
while (my ($key, $value) = each @char) {
    $char {$value} = $key;
}

sub to_base ($number) {
    my $out = "";
    while ($number) {
        use integer;
        $out    .= $char [$number % $base];
        $number /= $base;
    }
    scalar reverse $out || 0;
}


sub from_base ($number) {
    my $out = 0;
    foreach my $c (split // => $number) {
        $out *= $base;
        $out += $char {$c};
    }
    $out;
}



__END__
