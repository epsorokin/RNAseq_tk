my $file = shift;
my $char =  "a"; 
open (FH, "$file") or die ($!);

my %ids;
my $count = 0;
print "searching for $count\n";

while(<FH>) {
	# $_ represents a current line
	next if (/^@/); # skip lines beginning with @
	chomp; # remove a new line character
	my @a = split;
	my $insert_id = $a[0]; # this is an insert id
	
	if (not defined $ids{$insert_id}) {
		++$count;
		$ids{$insert_id} = def;
	}
}
    
print "counted $count\n";

close FH; 



