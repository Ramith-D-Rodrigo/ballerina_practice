import ballerina/io;

type myOwnType int; //should be defined before the main function

type myOwnType2 map<string>;

public function main() {
    myOwnType a = 10;
    myOwnType b = 20;
    myOwnType c = a + b;
    io:println(c);


    myOwnType2 m = {"a":"b"};


    io:println(m["a"]);


}