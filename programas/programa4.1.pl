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
my $patron2 =  "(GALLETA|GALLETITAS|DULCE DE LECHE|DULCE DE LECHE CON AGREGADOS|DULCE DE LECHE CON CREMA|DULCE DE LECHE PARA REPOSTERIA)";
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
    #my $patron = $patron1.';(?:.*?);'.$patron2.';(?:(?:.*?);){2}URUGUAY;(?:(?:.*?);){7}HABILITADO;(?:.*?);(?:.*?);.*?';
    #------V5.1-----------------
        #my $patron = $patron1.';(?:.*?);'.$patron2.';(?:(?:.*?);){2}URUGUAY;(?:(?:.*?);){7}HABILITADO;(?:.*?);(?:.*?);.*?';
        #my $patron1 = '((\w?);){23}';?>
    #------V5.2-----------------
        #my $patron = $patron1.';(?:.*?);'.$patron2.';(?:(?:.*?);){2}URUGUAY;(?:(?:.*?);){7}HABILITADO;(?:.*?);(?:.*?);.*?';
        #my $patron1 = '((?>.*);){23}';
    #------V5.3-----------------
        my $patron = '(?>.*);(?>.*);((?>.*);){6}'.$patron1.';(?>.*);'.$patron2.';(?>.*);(?>.*);URUGUAY;((?>.*);){5}(?>.*);HABILITADO;(?>.*);(?>.*);(?>.*)'; 
        #my $patron1 = '(.*?);(.*?);((?>.*);){6}(.*?);((?>.*);){2}(.*?);(.*?);((?>.*);){8}(.*?)';
#------V6-----------------
    #my $patron = '((.*?);){2}(?:(?:.*?);){6}'.$patron1.';(?:.*?);'.$patron2.';(?:(?:.*?);){2}URUGUAY;(?:(?:.*?);){7}HABILITADO;(?:.*?);(?:.*?);.*?';
#------V7-----------------
    #my $patron = $patron1.'.*;'.$patron2.'.*;URUGUAY;.*;HABILITADO;[2015,2016,2017]';
#------V8-----------------
    #my $patron = '((?>.*);){8}'.$patron1.';(?>.*);'.$patron2.';(?>(?>.*);){2}URUGUAY;(?>(?>.*);){7}HABILITADO;(?>.*);(?>.*);(?>.*)';


#• <FDESDE_HAB> <= 31/12/2015
#• <FHASTA_HAB> >= 01/01/2017


#[1-9]|[12][0-9]|3[01

#my @mymatches = /$patron/gm;



#<NOMBRE>\n
#sino:
#<NOMBRE>/<NOM_FANTASIA>\n
#• \t<CAPITULO>/<CLASE>\n
#• \t<VIDA_UTIL>\n
#• \t<MARCA>\n
#• \t<TAMANIO_PRESENTACION>\n



#---------Original-----------------
#print $patron;print "\n";
#my @mymatches = /$patron/gm;
#print "$_\n" for (@mymatches); 

#---------V1-----------------------
#print $patron;print "\n";
#my @mymatches = /$patron/gm;
#my @mymatches =  /$patron1/gm;
#print "$_\n" for (@mymatches); 

#---------V2-----------------------
print $patron;print "\n";
my @mymatches = /$patron/gm;
for (@mymatches){
   /$patron1/gm;
   print "$1\n"
};

#print "$_\n" for (@mymatches);
#print "$_\n" for (@mymatches2); 


#my $patron = "*";

#for (@mymatches){
#    push @mymatches2, $_ = /$patron/g;
#    };
#print "$_\n" for (@mymatches); 
#my @mymatches2 = ( @mymatches =~ /patron/); 
#print $patron;print "\n";
#print "$_\n" for (@mymatches2); 