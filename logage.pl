#!/usr/bin/perl

$how_long = 1800;
$how_long =`cat /home/bitnami/howlong` if  -e "/home/bitnami/howlong";
use Time::Piece;
chdir("/opt/bitnami/apache/logs");
$ls = `ls localhost_access* | tail -1`;
chomp($ls);
#$str = `grep source $ls | tail -1
$str = `grep source $ls | tail -1 | cut -d' ' -f 4`;
chomp($str);
$str =~ s/^\[//;
my $t = Time::Piece->strptime($str, "%d/%b/%Y:%T");
$ep = $t->epoch;
$now = localtime->epoch;
$diff = $now - $ep;
if (($ep + $how_long) > $now) { 
	print $t->strftime;
	print "\n";
}
