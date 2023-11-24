import ballerina/io;

public function main(){
    boolean a = true;

    io:print("a = ", a, "\n");
    io:print("not a = ", !a, "\n");
    
}