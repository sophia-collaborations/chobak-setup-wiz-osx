#! /usr/bin/perl
use strict;

my $hme;

$hme = $ENV{'HOME'};

sub verifmul {
  my $lc_each;
  my $lc_loc;
  foreach $lc_each (@_)
  {
    $lc_loc = `which $lc_each`; chomp($lc_loc);
    if ( $lc_loc eq '' )
    {
      die("\nFATAL ERROR: Can not locate user command: " . $lc_loc . " :\n\n");
    }
  }
}

sub chadira {
  my $lc_arg;
  my $lc_ok;
  my $lc_from;
  foreach $lc_arg (@_) {
    $lc_ok = chdir($lc_arg);
    if ( $lc_ok < 0.5 )
    {
      $lc_from = `pwd`; chomp($lc_from);
      die(
        "\nCOULD NOT CHANGE DIRECTORY:" .
        "\nFrom: " . $lc_from . " :" .
        "\n  To: " . $lc_arg . " :" .
      "\n\n");
    }
  }
}


&verifmul('git','curl','perl');

&chadira($hme);
system('mkdir bin 2> /dev/null');
system('mkdir chobak-packs 2> /dev/null');
system('mkdir chobak-packs/usrcmd 2> /dev/null');
&chadira('chobak-packs/usrcmd');

system('pwd');


