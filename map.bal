import ballerina/io;

public function main(){
    map<int> m = {"a":1, "b":2, "c":3};

    io:println(m["a"]);

    m["d"] = 4;

    io:println(m["d"]);

    io:println(m["e"]); //should print nil

    //use .get if the key is present
    io:println(m.get("a"));
    //io:println(m.get("e")); //should throw an error
}