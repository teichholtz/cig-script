#!/usr/bin/perl

# compute years

$beginyear=1981;
$endyear = 2022;

$beginprice=65;   # cents
$endprice  =1335; # cents

$packsperyear= 3*365;

$numyears = $endyear - $beginyear;
$priceincrease = $endprice - $beginprice;



# price increase per year in cents
$priceincreaseperyear = $priceincrease / $numyears;
#
#  display the price increase per year
# 
printf "the price per pack increase per year will be %d\n\n", $priceincreaseperyear;

for($i=1;$i<$numyears;$i++){
    # printf "Year = %d\n",$beginyear+$i;
    
    # 
    # yearly increase for this year
    # computed by the yearly linear amount multiplied by the number of years
    # This will be in cents
    #
    $this_year_increase= $priceincreaseperyear * $i;    # first year is 1
    
    # Begin Price * 1095 = money spent first year
    # Add yearly increase to the Begin Price an then multiply by 1095 for second year
    # Add two times yearly increase to the begin price and then multiply by 1095 for third year.
    # Add three times yearly increase to the begin price and then multiply by 1095 for fourth year
    

    #
    # compute the pack price for this year
    #
    
    $pack_price_this_year = $beginprice + $this_year_increase;
    printf "Pack price in cents this year %s\n",( sprintf "%.2f",($pack_price_this_year/100));
    # 
    # compute how much we will spend this year, again in cents
    #

    $this_year_expenditure = $pack_price_this_year * 1095;

    
    #
    # printf "cost for this year in cents %d was %d\n",$beginyear+$i,$this_year_expenditure;
    #

    $ty_dollars= sprintf "%.2f", ($this_year_expenditure/100);
    printf "cost for this year in dollars %d was %d\n",$beginyear+$i,$ty_dollars;

    $total=$total+$ty_dollars;
    printf "** running total is %d\n",$total;
}

printf "done\n";
