$_=join("",<>);
#s/\n/ /g;
#s/\r/ /g;
#s/  / /g;
#[\r\n]$
#my $lala = 0;
#for (@mymatches){
#print $lala ; print "$_\n" ;
#$lala++;
#}

my $patron1 = "(ALIMENTOS FARINACEOS|LECHE Y DERIVADOS)";
my $patron2 =  "(?:GALLETA|GALLETITAS|DULCE DE LECHE|DULCE DE LECHE CON AGREGADOS|DULCE DE LECHE CON CREMA|DULCE DE LECHE PARA REPOSTERIA)";
#------ORiginals-----------------
    #my $patron = $patron1.'(?:(?:.*?);){14}';#.$patron2.'(;(.*?)){2};Uruguay(;(.*?)){7,7};HABILITADO;(.*?);(.*?);.*?';
    #my $patron = ".*;{23}";#.$patron1."([;]{2,2})".$patron2."(?:(?:.*?);){3}Uruguay([;]{7,7})HABILITADO;(.*);(.*);.*";

#------V1-----------------
    #my $patron = $patron1.'(?:(?:.*?);){14}';#.$patron2.'(;(.*?)){2};Uruguay(;(.*?)){7,7};HABILITADO;(.*?);(.*?);.*?';
#------V2-----------------
    #my $patron = $patron1.'(?:.*?);'.$patron2;
#------V3-----------------
    #my $patron = $patron1.';(?:.*?);'.$patron2.';(?:(?:.*?);){2}'; #;Uruguay(;(.*?)){7,7};HABILITADO;(.*?);(.*?);.*?';
#------V4-----------------
    #my $patron = $patron1.';(?:.*?);'.$patron2.';(?:(?:.*?);){2}URUGUAY;(?:(?:.*?);){7}';#HABILITADO;(?:.*?);(?:.*?);.*?';
#------V5-----------------
    my $patron = $patron1.';(?:.*?);'.$patron2.';(?:(?:.*?);){2}URUGUAY;(?:(?:.*?);){7}HABILITADO;(?:.*?);(?:.*?);.*?';



print $patron;print "\n";
my @mymatches = /$patron/gm;
print "$_\n" for (@mymatches); 

#my $patron = "*";
#for (@mymatches){
#    push @mymatches2, $_ = /$patron/g;
#    };
#print "$_\n" for (@mymatches); 
#my @mymatches2 = ( @mymatches =~ /patron/); 
#print $patron;print "\n";
#print "$_\n" for (@mymatches2); 