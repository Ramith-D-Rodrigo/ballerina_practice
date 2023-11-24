import ballerina/io;

public function main() {
    int i = 10;
    float f = 3.0;

    io:print(i + <int>f); //no implicit conversion from float to int
}