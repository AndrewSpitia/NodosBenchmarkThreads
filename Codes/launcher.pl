#!/usr/bin/perl
#####################################
# Date: 2022-03-03
# Course: Parallel Computing
# Topic laboratory design and execution automation (mean and deviation)
#####################################

$PATH=`pwd`; # get the current path
chomp($PATH); # remove the last character (\n)
$N =36; # number of processes
system "make clean"; # clean the previous compilation
system "make all"; # compile the program

$machineFile = "$PATH/machine.txt"; # machine file
open(MACHINE, '<', $machineFile) or die $!; # open the file to get the machine name
$machineName="";
while(<MACHINE>){
   $machineName= $_;
}
close($machineFile);
#Vector of executables
chomp($machineName);
@Executables=("Algorithm1","Algorithm2","Algorithm3");
@Dimension=("96","200","400","800","1600","3600");
@Threads=("1","2","4","8");
foreach $size (@Dimension){
	foreach $exe (@Executables){
		$File="results/results-$machineName.csv";
		#print"$File \n";
		foreach $thread (@Threads){
			open(FILE,">>",$File) or die "Could not open file $File";
			print FILE "Node,NumThreads,Load,Algorithm,Time\n";
			for($i=0;$i<$N;$i++){
				print FILE "$machineName,$thread,$size,$exe,";
				system "$PATH/$exe $size $thread>> $File";
				print FILE "\n";
			}
		}
			
		close($File);
	}
	
}