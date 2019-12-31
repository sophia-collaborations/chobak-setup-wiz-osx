#! /usr/bin/perl
use strict;

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

&verifmul('git');


