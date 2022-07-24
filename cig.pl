#!/usr/bin/perl

# compute years

$beginyear=1981;
$endyear = 2022;

$beginprice=65;   # cents
$endprice  =1200; # cents

$packsperyear= 3*365;

$numyears = $endyear - $beginyear;
$priceincrease = $endprice - $beginprice;



# price increase per year in cents
$priceincreaseperyear = $priceincrease / $numyears;

for($i=0;$i<$numyears;$i++){
    printf "Year = %d\n",$beginyear+$i;
    $yearincrease=($i*$priceincreaseperyear);

    $money = sprintf "%.2f",$yearincrease/100 ;
    printf "increase for year $i was $money\n";
    printf "cost per pack was %d\n",($yearincrease+$beginprice) / 100;
    printf "cost for year was %d\n",(($yearincrease+$beginprice) * $packsperyear)/100;
    $total = $total + ($yearincrease+$beginprice) * $packsperyear;
    printf "running total is %d\n\n\n",$total/100;
}



$year1cost=$packsperyear  * $beginprice;
$year2cost=($packsperyear * ($beginprice+27));

printf "done\n";
