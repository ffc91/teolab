$_ = join("",<>);
s/\n/ /g;
s/  / /g;
my @mymatches = /".*?"/gs;
#s/\n//g;
print "$_\n" for (@mymatches);
