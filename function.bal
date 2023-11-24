import ballerina/io;

public function main() {
    string message = getMessage();

    io:println(message);
}

function getMessage() returns string {
    return "Hello World!";
}