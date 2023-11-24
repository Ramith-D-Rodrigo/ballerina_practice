import ballerina/io;

type myRecordType record {float a; int b; string c;};

public function main() {
    record {int x; string y;} r = {x: 1, y: "a"};

    io:println(r.x);
    io:println(r.y);


    myRecordType myRecord = {a: 1.0, b: 2, c: "a"};

    io:println(myRecord.a);
    io:println(myRecord.b);
    io:println(myRecord.c);

    
}