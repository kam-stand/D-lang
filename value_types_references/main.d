import std.stdio;


void main(string[] args){

// value types in D lang are primitives and static arrays
int speed;
writeln("Please enter speed of car: ");
readf("%d", &speed);

writefln("The address of variable is: %x ", &speed);
writeln("the value is: ", speed);


{
	for(int i =0; i<=12; i++){
		if (i % 2 == 0){
			writeln("This is even: ", i);
		}
	}


}



}
