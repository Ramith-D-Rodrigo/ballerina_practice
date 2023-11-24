import ballerina/io;

public function main(){
    int []a = [1,2,3,4,5];

    int []b = [1,2,3,4,5];

    io:println(a == b);

    io:print("a length: ", a.length(), "\n");
}