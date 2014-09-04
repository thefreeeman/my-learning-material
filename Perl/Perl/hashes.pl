#doubts: how to check and install missing perl modules
#** unless checks for !truth of a condition

#! /usr/bin/perl

#examples of hashes

%a = ('John Paul' => 45, 'Tapas'=> 47, '_Sumana' => 23);
$check = "John Paul";
print "check is $check\n\n\a";

if(exists $a{"$check"} ){
	print "exists\n";
	$age = $a{'$check'};
	print "age: $age\n";
}else{
print "not exists";
}


#Getting hash size
$operation = 'null'."\n";
print "Operation: $operation";
@akeys = keys %a;
$totalkeys = @akeys;
print "Total hash keys: $totalkeys \n";

@avalues = values %a;
$totalvalues = @avalues;
print "Total hash values: $totalvalues\n";


#Adding an element to a hash
$operation = 'Add element'."\n";
print "Operation: $operation";

$a{'AddedElement'} = 23;

@akeys = keys %a;
$totalkeys = @akeys;
print "Total hash keys: $totalkeys \n";

@avalues = values %a;
$totalvalues = @avalues;
print "Total hash values: $totalvalues\n";


#Deleting an item from a hash
$operation = 'Delete element'."\n";
print "Operation: $operation";

$operation = 'Delete element'."\n";
delete $a{'AddedElement'};

@akeys = keys %a;
$totalkeys = @akeys;
print "Total hash keys: $totalkeys \n";

@avalues = values %a;
$totalvalues = @avalues;
print "Total hash values: $totalvalues\n";


#########################
#use of switch statement

print "check: $check\n";
=cut
use Switch
switch ($check){
	case "something" { }
	case "Van Dam" {}
	else {}
}
=cut

use feature "switch";
#use Switch; 
$var = 10; 
@array = (10, 20, 30); 
%hash = ('key1' => 10, 'key2' => 20); 
switch($var){ 
	case (10) { print "number 100\n"; next; }
	case ("a"){ print "string a"; }
	case [1..10,42]{ print "number in list"; }
	case (\@array){ print "number in list"; }
	case (\%hash){ print "entry in hash"; }
	else { print "previous case not true"; }
}