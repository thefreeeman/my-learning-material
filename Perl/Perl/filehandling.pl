=comments
<	or r	read
>	or w	create, write and truncate
>>	or a	create, append, write
+<	or r+	read and write
+>	or w+ 	reads, create, write, truncate
+>>	or a+	reads, creates, writes and truncates


=cut

$count = 1;
$entry = "";

main_sub();


sub main_sub{
if (-e "somefile.txt"){
	readfile();

}else{
	print "The file does not exist mate\n";
	create_file();

	readfile();
}
}

sub readfile{
	print "trying to read file, count: $count\n";

	read_first_line();
	read_entire_file_thru_scalar();
	read_entire_file_thru_array();

	$count++;
	close DATA;
}



sub create_file{
	print "creating file since it does not already exists";
	open(CREATE, ">>somefile.txt");
	print CREATE prompt_to_write();
	close CREATE;
}

sub prompt_to_write{
	print "Enter [y/n] if you want to write in the file";
	chomp($answer = <STDIN>);
	if($answer =~ /yes/i){
		print "Start typing in without hitting return key";
		$entry = <STDIN>;		
		return $entry;
	}	
}


sub read_first_line{
	print "\UReading file :: only first line\n";
	open (DATA, '+<somefile.txt') or die "Could not open the file for reading\n";
	
	$data_to_display =<DATA>;
	print "1st statement in the file: \t$data_to_display";
	close DATA;			#>>>remove this close and the remove the next file open statement to see what happens
}

sub read_entire_file_thru_scalar{
	print "\UReading file :: the entire file through scalar\n";
	open (DATA, '+<somefile.txt') or die "Could not open the file for reading\n";
	while(<DATA>){
		print "$_\n";
	}
	close DATA;			#>>>remove this close and the remove the next file open statement to see what happens
}

sub read_entire_file_thru_array{
	print "\UReading file :: the entire file through array\n";
	open (DATA, '+<somefile.txt') or die "Could not open the file for reading\n";
	@contents = <DATA>;
	print "@contents\n";

}



