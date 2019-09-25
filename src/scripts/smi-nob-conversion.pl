#!/usr/bin/perl -w
#
# smi-smn-conversion.pl
# Convert names in the SMI propernoun lexicon to smn.
# $Id$

use strict;
use utf8;
use feature 'unicode_strings';
BEGIN {
       $| = 1;
       binmode(STDIN, ':encoding(UTF-8)');
       binmode(STDOUT, ':encoding(UTF-8)');
}
use open qw( :encoding(UTF-8) :std );

while(<>) {
	# Continuation lexicon substitutions:



	s/ C\-FI\-NEN/nen PROP/g ;
	s/C\-FI\-NEN/nen PROP/g ;
	s/ACCRA\-A_MWE/PROP/g ;
	s/ACCRA\-A/PROP/g ;
	s/ACCRA\-LOAN/PROP/g ;
	s/ACCRA\-Y_MWE/PROP/g ;
	s/ACCRA\-Y/PROP/g ;
	s/ACCRA_MWE/PROP/g ;
	s/ACCRA/PROP/g ;
	s/BALAK/PROP/g ;
	s/LONDONBERN/PROP/g ;
	s/BERN\-LOAN/PROP/g ;
	s/BERN_MWE/PROP/g ;
	s/BERN/PROP/g ;
	s/BETFAGE/PROP/g ;
	s/BISSAU/PROP/g ;
	s/CNAME_EVEN/PROP/g ;
	s/DUBAI_MWE/PROP/g ;
	s/DUBAI/PROP/g ;
	s/DUORTNUS/PROP/g ;
	s/ENDLEX/PROP/g ;
	s/ ERVASTI/i PROP/g ;
	s/GATA/PROP/g ;
	s/GIRUNA/PROP/g ;
	s/HANNOLA/PROP/g ;
	s/HAWAII/PROP/g ;
	s/HEIM/PROP/g ;
	s/JOKULL/PROP/g ;
	s/LONDON\-LOAN/PROP/g ;
	s/LONDON_MWE/PROP/g ;
	s/LONDON/PROP/g ;
	s/MACKENZIE/PROP/g ;
	s/ MAKI/i PROP/g ;
	s/ MALAWI/i PROP/g ;
	s/MOLDAVIA\-LOAN/PROP/g ;
	s/MOLDAVIA/PROP/g ;
	s/NIEJTE/PROP/g ;
	s/ NIEMI/i PROP/g ;
	s/NIKOSIIJA/PROP/g ;
	s/NYSTØ\-LOAN/PROP/g ;
	s/NYSTØ_MWE/PROP/g ;
	s/NYSTØ/PROP/g ;
	s/OY/PROP/g ;
	s/PERU/PROP/g ;
	s/ PIPPI\-LOAN/i PROP/g ;
	s/ PIPPI_MWE/i PROP/g ;
	s/ PIPPI/i PROP/g ;
	s/RONDANE\-SG\-LOAN/PROP/g ;
	s/RONDANE\-SG/PROP/g ;
	s/RONDANE\-LOAN/PROP/g ;
	s/RONDANE/PROP/g ;
	s/SIJTE/PROP/g ;
	s/SKANIK/PROP/g ;
	s/SUND\-LOAN/PROP/g ;
	s/SUND/PROP/g ;
	s/\+CmpNP\/None//g ;
	s/flagK/K/g ;
	

# sme special symbols
	s/^//g ;
	s/b9/b/g ;
	s/e9/e/g ;
	s/d9/d/g ;
	s/g9/g/g ;
	s/h9/h/g ;
	s/j9/j/g ;
	s/k9/k/g ;
	s/m9/m/g ;
	s/n9/n/g ;
	s/o9/o/g ;
	s/p9/p/g ;
	s/r9/r/g ;
	s/s9/s/g ;
	s/t9/t/g ;
	s/z9/z/g ;
	s/æ9/æ/g ;
	s/5 / /g ;
	s/7 / /g ;
	s/8 / /g ;
	s/9 / /g ;
	s/5^/ /g ;
	s/7^/ /g ;
	s/8^/ /g ;
	s/9^/ /g ;


	my $line = $_;

	print $line;
}
