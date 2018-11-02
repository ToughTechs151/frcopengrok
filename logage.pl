#!/usr/bin/perl

use Time::Piece;
chdir("/opt/bitnami/apache-tomcat/logs");
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
if (($ep + 1800) > $now) { 
	print $t->strftime;
	print "\n";
}
