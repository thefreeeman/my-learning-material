#the case statement in perl
=syntax:
CASE: {
	condition && do{
	};
	condition && do{
	};
	condition && do{
	};
}
=cut

$playerscore = 10;
$computerscore = 10;

CASE: {
  $playerscore < $computerscore && do {
    $winner = "Computer";
     last CASE;
  };
  $playerscore == $computerscore && do {
    $winner = "Tie";
     last CASE;
  };
  $playerscore > $computerscore && do {
    $winner = "Player";
     last CASE;
  };
}

print "The winner is: $winner\n";