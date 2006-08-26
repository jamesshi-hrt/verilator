#!/usr/bin/perl
if (!$::Driver) { use FindBin; exec("./driver.pl", @ARGV, $0); die; }
# $Id:$
# DESCRIPTION: Verilator: Verilog Test driver/expect definition
#
# Copyright 2003 by Wilson Snyder. This program is free software; you can
# redistribute it and/or modify it under the terms of either the GNU
# General Public License or the Perl Artistic License.

compile (
	 fails=>1,
	 expect=>
'%Error: t/t_pp_misdef_bad.v:11: Define or directive not defined: `NOTDEF
%Error: Exiting due to.*',
	 ) if $Last_Self->{v3};

ok(1);
1;

