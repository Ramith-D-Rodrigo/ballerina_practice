import ballerina/io;

public function main(){
    string greeting = getGreeting("Ramith");

    io:println(greeting);
}

function getGreeting(string name) returns string {
    return "Hello " + name;
}