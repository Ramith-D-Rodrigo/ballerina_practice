import ballerina/io;

public function main(){
    string myString = "Hello World";

    io:print("Full string : " + myString + "\n");

    io:print("First character : " + myString[0] + "\n");

    io:print("Last character : " + myString[myString.length() - 1] + "\n");

    io:print("Substring from 0 to 5 : " + myString.substring(0, 5) + "\n");

    io:print("Substring first 6 characters : " + myString.substring(6) + "\n");

    io:print("Substring from 6 to 11 : " + myString.substring(6, 11) + "\n");   

    io:print("String length : " + myString.length().toString() + "\n");


    string myString2 = "Hello World";
    string myString3 = "Hello World 1";

    io:print("myString == myString2 : " + (myString == myString2).toString() + "\n");
    io:print("myString == myString3 : " + (myString == myString3).toString() + "\n");
    io:print("myString != myString2 : " + (myString != myString2).toString() + "\n");

    //comparison of <, >, <=, >=
    myString = "abc";
    myString2 = "def";
    io:print("myString < myString2 : " + (myString < myString2).toString() + "\n");
    io:print("myString > myString2 : " + (myString > myString2).toString() + "\n");
    io:print("myString <= myString2 : " + (myString <= myString2).toString() + "\n");
    io:print("myString >= myString2 : " + (myString >= myString2).toString() + "\n");

}