#!/usr/bin/perl
#
# The Star Wars Quiz (Star Wars Quiz.pl)


#Declare and initialize script variables
$reply = "";       #Stores user supplied data
$isvalid = 0;      #used to control loop execution
$correct = 0;      #Used to keep count of correct answers
$incorrect = 0;    #Used to keep count of incorrect answers
$rank = "";        #Used to store player rank



#This loop manages the display of the game's main menu
while (! $isvalid) {  #Loop until the player types Start

  clear_the_screen(); #Call subroutine that clears the screen

  #Display the quiz's opening menu system
  print "          ";
  print "W e l c o m e   t o   t h e   S T A R   W A R S   Q u i z!";
  print "\n\n\n\n\n\n\n\n\n\n\n\n";
  print "[Start] [Quit] [Help]\n\n";
  print "Enter command: ";  #Prompt user for menu selection before continuing

  #Set variable equal to standard input and remove any trailing newline
  chomp($reply = <STDIN>);

  if (lc ($reply) eq "start") {  #See if the player typed Start

     $isvalid = 1;  #Set variable to enable loop termination

  } elsif (lc ($reply) eq "quit") {  #See if player typed Quit

      clear_the_screen(); #Call subroutine that clears the screen

      #Display closing message
      print "Very well, may the force be with you!\n\n\n\n";
      print "Press Enter to continue: ";

      chomp($reply = <STDIN>); #Force player to press Enter to continue

      exit;  #Terminate game execution
  } elsif (lc ($reply) eq "help") {  #See if the player typed Help

      clear_the_screen(); #Call subroutine that clears the screen

      #Display Help information
      print "Star Wars Quiz Instructions:\n\n";
      print "Type Start to begin the game or type Quit to exit. To play,\n";
      print "answer each question that is presented by typing the\n";
      print "letter that matches the correct answer for each question. Once\n";
      print "all questions have been answered, you will receive your Jedi\n";
      print "rank.\n\n\n\n";
      print "Press Enter to continue: ";

      chomp($reply = <STDIN>);  #Force player to press Enter to continue
  }

}


clear_the_screen(); #Call subroutine that clears the screen

#Question number 1
print "Question 1: Obi-Wan Kenobi's Jedi master in Star Wars I was:\n\n";
print "A. Qui-Gon Jinn\n";
print "B. Yoda\n";
print "C. Mace Windu\n";
print "D. None of the above\n\n\n\n";
print "Answer: ";
chomp($reply = <STDIN>);  #Force player to press Enter to continue

#Analyze the player's answer and determine if it is correct or incorrect
#and store the result of this analysis in the @answers array
if (lc $reply eq "a") {
  $answers[0] = "correct";
} else {
  $answers[0] = "incorrect";
}
clear_the_screen(); #Call subroutine that clears the screen


#Question Number 2
print "Question 2: The arch enemies for the Jedi are known as the:\n\n";
print "A. Sith\n";
print "B. Dark Lords\n";
print "C. Deviators\n";
print "D. None of the above\n\n\n\n";
print "Answer: ";
chomp($reply = <STDIN>);  #Force player to press Enter to continue

#Analyze the player's answer and determine if it is correct or incorrect
#and store the result of this analysis in the @answers array
if (lc $reply eq "a") {
  $answers[1] = "correct";
} else {
  $answers[1] = "incorrect";
}

clear_the_screen(); #Call subroutine that clears the screen


#Question Number 3
print "Question 3: Who did Yoda fight at the end of Star Wars II?\n\n";
print "A. Mace Windu\n";
print "B. Palpatine\n";
print "C. Count Dooku\n";
print "D. None of the above\n\n\n\n";
print "Answer: ";
chomp($reply = <STDIN>);  #Force player to press Enter to continue

#Analyze the player's answer and determine if it is correct or incorrect
#and store the result of this analysis in the @answers array
if (lc $reply eq "c") {
  $answers[2] = "correct";
} else {
  $answers[2] = "incorrect";
}

clear_the_screen(); #Call subroutine that clears the screen


#Question Number 4
print "Question 4: Who killed Mace Windu in Star Wars III?\n\n";
print "A. Palpatine\n";
print "B. The bounty hunter\n";
print "C. Count Dooku\n";
print "D. None of the above\n\n\n\n";
print "Answer: ";
chomp($reply = <STDIN>);  #Force player to press Enter to continue

#Analyze the player's answer and determine if it is correct or incorrect
#and store the result of this analysis in the @answers array
if (lc $reply eq "a") {
  $answers[3] = "correct";
} else {
  $answers[3] = "incorrect";
}

clear_the_screen(); #Call subroutine that clears the screen


#Question Number 5
print "Question 5: Who uttered the phrase \"Help me Obi-Wan Kenobi, you\n";
print "            are our only hope\" in Star Wars IV?\n\n";
print "A. Yoda\n";
print "B. Princess Leia\n";
print "C. Luke\n";
print "D. None of the above\n\n\n\n";
print "Answer: ";
chomp($reply = <STDIN>);  #Force player to press Enter to continue

#Analyze the player's answer and determine if it is correct or incorrect
#and add store the result of this analysis in the @answers array
if (lc $reply eq "b") {
  $answers[4] = "correct";
} else {
  $answers[4] = "incorrect";
}

clear_the_screen(); #Call subroutine that clears the screen


#Loop through the @answer array and count the number of answers the
#player got correct and incorrect
foreach $name (@answers) {

  #Analyze each element stored in the array
  if ($name eq "correct") {
    $correct++;  #Increment the number of correct answers by 1
  } else {
    $incorrect++;  #Increment the number of incorrect answers by 1
  }

}

#Set up a hash and use it when analyzing the player's
#score and assigning a Jedi rank
%ranks = (0 => 'Beginner',
          1 => 'Padawan',
          2 => 'Jedi',
          3 => 'Jedi Night',
          4 => 'Jedi Master',
          5 => 'Jedi Master and Council Member'
);


#Format the display of the player's score and rank
$row = "_" x 50;  #Set variable equal to 50 underscore characters
print "$row\n\n";
print "                     Score:\n\n";
print "$row\n\n";
print "Number of correct answers:   $correct\n";
print "Number of incorrect answers: $incorrect\n\n";
print "Your Jedi rank is: $ranks{$correct}\n\n";
print "$row\n\n\n\n";

chomp($reply = <STDIN>);  #Force player to press Enter to continue


#This subroutine clears the screen by adding 25 blank lines
sub clear_the_screen {

  for ($i=0; $i < 25; ++$i){  #Iterate 25 times
    print "\n";               #display a blank line
  }

}
