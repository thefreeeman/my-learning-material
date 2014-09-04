=comments start
~m// or ~// or // is for matching regular expressions
/^Please/ 	for starting with "Please"
/her seat\.$/	for ending with "her seat."
/^winner$/	for string containing only "winner"
~ /\bat/	for matching "at" following a blank space or a punctuation character
~ /Mrs?/	for matching either "Mrs" or "Mr"
~ /effort(less)?/	for matching either "effort" or "effortless"
~ /M.s/		for matching Mis, Mrs, Mts etc
~ /Pl...e/	for matching "Pl[a-z][a-z][a-z]e
~ /:$/		for matching a string with : at the end of the string
~ /^.$/		for matching a string that contains only one character note: [a-z] or [0-9] or any special character..anything can be in that . character
~ /c*r/		for matching ccccr or ccr  or cr or r. note: c character has been marked as optional
~ /he+r/ 	for matching her, heer, hear etc. hr would not be matched. note: e has been marked as the character that should be present at least once. 
~ /a{3,5}/	for matching 'a' atleast 3 times and not more than 5 times
~ /a{3,}/	for matching 'a' atleast 3 times and no higher cap
~ /a{5}/	for matchig 'a' atleast 5 times
~ /(123){4,5}/ 	for matching the occurence of the characters 123 for atleast 4 to max 5 times. 
~ /stock | bond | shares | debentures/	for matching "stock" or "bond"
~ /(ca|ba|sta|ja)rs/	for matching cars, bars, stars, jars
~ [a-z]		for matching character between a to z and so on.
\d		same as /[0-9]/
\w		same as /[0-9A-Za-z_]/		>>> there is an underscore at the end
\s		same as /[\t\f\r\n]/
\D		same as any character other than /[0-9]/
\W		same as any character other than /[0-9A-Za-z]_/		>>> there is an underscore at the end
\S		same as any character other than /[\t\f\r\n]/


~ s/string1/string2/g	for replacing string1 with string2; g  is for global replace, use as required
~ tr/x/X/		for replacing x with X 
~ tr/a-z/A-Z/		for replacing every lowercase character to uppercase character
~ /apple/i		if($string =~ /apple/i) ...matches "apple"; case-insensitive

grep(/^M/,@names)	matches elements that start with M in the array @names



=cut


$String1 = "This is a \"small\" statement";
$String1 = $String1." and I want this \"small\" to be made huge";
print "String1: $String1\n";


print "manipulating string using regex\n";
$String1 =~s/small/big/;				#>>>note that the ~ should be closely following the =  here without any space in between
print "String1: $String1\n";
$String1 =~s/to be made huge/to be made bigggggg/;
print "String1: $String1\n";


$applepie = "There is nothing better than an apple pie";
if($applepie =~ /aPpLe/i){
	print"\n\n\nFound my apple moment\n";
}


if ("Mississippi" =~ m/i.*?s/){
  print "We have a match!"; #Matches on  is
} 



print "\nEnter a number";
chomp($number = <STDIN>);

if($number =~/[^0-9]/){				
						#>>>>checks for the input not starting with anything in the numeric set 0-9
	print "1. matches - not starting with a number \n";
}
if($number =~ /^0.$/){				
						#>>>checks for the input beginning with 0 followed by any one character
	print "2. matches - 0 follwed by a character\n";
}

if($number =~ /^0[0-9]$/){			
						#>>>checks for input starting with 0 follwed only by a single digit
	print "3. matches - 0 follwed by a single digit\n";
}

if($number =~ /^0[0-9]+$/){			
						#>>>checks for input starting with 0 follwed only by a combination of digits
	print "4. matches - 0 follwed by a combination of digits\n";
}