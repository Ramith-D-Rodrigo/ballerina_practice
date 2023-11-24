import ballerina/io;

public function main() {
    int? i = 10;

    if (i is int) {
        io:println("i is an int");
    } else {
        io:println("i is not an int");
    }

    int? j = ();

    if (j is int) {
        io:println("j is an int");
    } else {
        io:println("j is not an int");
    }
}