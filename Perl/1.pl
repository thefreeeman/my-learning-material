=notes
$#: when used with array name eg., $#buddies, for an array @buddies = qw/1 2 3/, gives the highest index of the array
@_: parameter aray, can be used when pasing arrays to functions. eg., parameter_array
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
~ /^.$/		for matching a string that contains only one character note: [a-z] anything can be in that . character
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

=cut
#print "enter a number\n";
#chomp($number = <STDIN>);
$number = 99;
if ($number = ~/\d/){		
									#>>>>samne as $number = ~/[0-9]/
	print "$number is a number";
}else{ print "$number is Not a number yet\t";}


if ("It does not matter that Matt won the match." =~ /\bat/){
  print "Match!\n\n\n";							#>>>tests for a word boundary match only
}else{
	print "No Match \t";
}

if ("It does not matter that Matt won the match." =~ /\Bat/){
  print "Match!\n\n\n";			#>>>tests for a non-word boundary match only
}



if ("something" =~/\D/){
  print "\tMatched a non-numeric input!";
}


$sep = "_" x 10;
print "$sep\n";

print "Start: Passing parameters by reference";
@array = (0..5);

print("Before function call, array = @array\n");

firstSub(@array);

print("After function call, array =  @array\n");


print "End: Passing parameters by reference";
print "$sep\n";

#start: parameter_array
print qq/start: parameter_array\n/;
firstSub(1,2,3,4,5,6);
firstSub(1..3);
firstSub("A".."Z");
area_rect(2,3);
area_rect(4,5);
area_rect();



sub firstSub{
	$number_of_parameters = @_;
	print "The number of parameters are: $number_of_parameters\n" ;
	($firstVar, $secondVar) = @_ ;
	$firstVar = "A";
	$secondVar = "B";
}

sub area_rect{
	($len, $wid) = @_;
	$area = $len*$wid;
	unless(scalar(@_) == 0 ){
		print "length: $len, width: $wid, area: $area, area_again: ",  $len * $wid, "\n" ;
	}else{
		print "insufficient parameters passed\n";
	}
	
}


#end: parameter array
print qq/end: parameter_array\n/;
print "$sep\n";


#Deleting array elements:
@buddies = qw/Nick Nicky Geeky Peeky/;

for($value = 0; $value <= $#buddies; $value++){
	print "$value: $buddies[$value]\n";
}

print "Deleting Geeky\n";
undef $buddies[2];
for($value = 0; $value <= $#buddies; $value++){
	print "$value: @buddies[$value]\n";
}
print "Deleting Nicky\n";
delete $buddies[1];
for($value = 0; $value <= $#buddies; $value++){
	print "$value: @buddies[$value]\n";
}

print "$sep\n";

#Looping through Arrays
@buddies = qw/Alex, Ganpat, Dhikchak/;
$arraysize = @buddies; #gets the size of the array
$counter = 0;
$count = 0;
print "The array size is: $arraysize \n";
print "The number of elements in the array: $#buddies \n";		#>>>>$#array gives the last index of the array
print "The array elements are: \n";
while ($counter < $arraysize){
	$count = $counter + 1;
	print "$count: @buddies[$counter]\n";
	$counter++;
}

@colleagues = qw/coll1 coll2 coll3/;
$counter = 0;
print "colleagues are: \n and counter=$counter\n";
print "number of colleagues ";
#	$key = <STDIN>; #>>>>>>>just to pause the screen. once any key is hit the screen resumes. 
while ($counter <= $#colleagues){	#>>>> the condition used is <= and not <, since $# gives the highest index of the array. 
	print "@colleagues[counter]\t";
	$counter++;
}
print "\n";



=comment
while (lc ($reply) ne "quit") {
  print "\nType quit to terminate script execution\n\n>";
  chomp($reply = <STDIN>);
} continue {
  print "\nQuitting Script execution\n";
}
=cut

#foreach loop
@playernames = qw(Alexander Sikander Alexandaro);
print "The player names are:\n";
foreach $name (@playernames){
	print "\t$name\n";

}

@playernames2 = qw/player1 player2 player3/;
print "The other team players are:\n";
foreach (@playernames2){
	print "\t$_\n";
}


#for loop
for($intCounter = 0; ;$intCounter = $intCounter +2) {
	print "intCounter: $intCounter\n";
	if($intCounter == 10){
		exit; #>>>>>it is a built-in Perl function that instructs Perl to stop script execution. 
			#>>>>An exit value of 0 usually indicats that the script ran without any errors or problems. 
	}
}


#do while loop
=comment
do {
	print "Type quit to exit";
	chomp($reply = <STDIN>);
}while ( lc($reply) ne "quit" );
=cut

#while loop
=comment
while (lc($reply) ne "quit"){
	#print "reply: $reply\n";
	print "\nType quit to terminate this loop";
	chomp($reply = <STDIN>);
}
=cut


print "lets count from 1 to 10\n";
$count = 1;
while ($count <= 10){
	print $count++."\t"; #>>>>print "$count++"; wont work here. It has to be print count++;
	#$count++;
}
print "\n";



#Working with standard input
=commenting
printf "Enter something to chomp please\n";
chomp($result = <STDIN>);	#>>>> so this chomps the extra new line characters
print STDOUT "result1 is: $result\n";


printf "Again, Enter something to \" chop \" please\n";
chop($result = <STDIN>);
print "result1 is: $result\n";
=cut 

=comment
$result = <STDIN>;
$result1 = chomp $result;
print "result1";
=cut

#another way of doing the same
=comment2
print qq/Enter something to "chop" please\n/;
print "chomp <STDIN>";
=cut


# Refining mathematical precision
$result = sprintf ("%.3f",10/3);
print "result is: $result \n";
#or
printf ("%.3f\n", 10/3);




# The x operator
$row = "_" x 75;
print "$row \n";
print "some text here\n";
print "$row \n";



# Variable intgerpolation

$text = "there was a land called Oz";
$message = "Once upon a time $text\n";
print "$message";
print "Once upon a time \$text\n";	#this avoids scalar interpolation




=syntax: print "\"<string1> \"<string2>"; 
	print q/<any string>/;
	print qq/<any string>/'
	print qq@<any string>@; --> qq or q followed by any non-numeric and non-alphanumeric character
=cut


print "hey"."\n";
print "\"When you see Joe\", Sue said, \"Say Hi for me!.\"\n";
print "\"When you see Joe\", Sue said, \"Say Hi fr me!. \"\n";
print qq#"When you see Joe", Sue said, "Say Hi for me"#;


=cut. this somehow does not work in windows for me
perl -e ‘
print "hi \n";
print "howya doin? \n";
‘
=cut

