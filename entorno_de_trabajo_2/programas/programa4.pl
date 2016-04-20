$_=join("",<>);
#s/\n/ /g;
#s/\r/ /g;
#s/  / /g;
/.*[\r\n]$/gm;
my @mymatches = /((.*);){8}.*/gm;


#my $lala = 0;
#for (@mymatches){
#print $lala ; print "$_\n" ;
#$lala++;
#}

my $patron1 = "ALIMENTOS FARINACEOS|LECHE Y DERIVADOS";
my $patron2 =  "GALLETA|GALLETITAS|DULCE DE LECHE|DULCE DE LECHE CON AGREGADOS|DULCE DE LECHE CON CREMA|DULCE DE LECHE PARA REPOSTERIA";
 
 
my $patron = "((.*);){8}.*";#.$patron1."([;]{2,2})".$patron2."([;]{3,3})Uruguay([;]{7,7})HABILITADO;(.*);(.*);.*";
#my $patron = ".*;{23}";#.$patron1."([;]{2,2})".$patron2."([;]{3,3})Uruguay([;]{7,7})HABILITADO;(.*);(.*);.*";

#my $patron = "*";
#for (@mymatches){
#    push @mymatches2, $_ = /$patron/g;
#    };
#print "$_\n" for (@mymatches); 
#my @mymatches2 = ( @mymatches =~ /patron/); 
print $patron;print "\n";
print "$1\n" for (@mymatches); 