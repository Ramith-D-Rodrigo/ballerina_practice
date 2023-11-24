import ballerina/io;

type Person record {
    string name;
    int age;
};

public function main() returns error? {
    Person[] people;

    json sampleJson = [{"name":"John", "age":30}, {"name":"Jane", "age":25}];

    people = check sampleJson.fromJsonWithType();

    io:println(people[0].name);
    io:println(people[0].age);

    io:print("\n");

    io:println(people[1].name);
    io:println(people[1].age);
}