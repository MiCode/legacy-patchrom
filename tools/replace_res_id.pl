#!/usr/bin/perl 
#===============================================================================
#         FILE: replace_res_id.pl
#
#  DESCRIPTION: The resource id in source code is referenced as const of
#               R.type.name (i.e. application defined resources), and this script
#               would replace them with the value from the specified apk.
#               This is useful if we want to insert the piece of code to one APK
#               in smali format, e.g. to use our implementation for updateInCallNotification()
#               for Phone.apk
#        USAGE: replace_res_id.pl source.java dest.apk > source.java.new
#               rename source.java.new as source.java to build the APK
#===============================================================================

use strict;
use warnings;

my ($srcfile, $apk) = @ARGV;

open(SRC, "<$srcfile");

while(my $line = <SRC>){

    while ( $line =~ /[^\.]R\.([_\.a-zA-Z0-9]+)/g )
    {
        my ($id, $oid) = ($1, $1);
        $id =~ s/\./\\\//;
        #print("aapt d resources $apk | grep spec.*$id\n");
        my $ret = `aapt d resources $apk | grep spec.*$id:`;
        $ret =~ s/^\s*spec\s+resource\s+(0x[0-9a-f]+).*$/$1/;
        chomp($ret);
        if ($ret) {
            $line =~ s/R\.$oid/$ret/;
        }
        else {
            warn "No id found for R.$oid\n";
        }
    }
    print $line;
}
close(SRC);
