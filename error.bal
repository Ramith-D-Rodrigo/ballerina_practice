import ballerina/io;

function errorFunc(int input) returns error|string{
    if(input % 2 == 0){
        return "fine";
    }
    else{
        return error("error");
    }
}

public function main(){
    int input = 5;
    string|error result = errorFunc(input);
    if(result is string){
        io:println(result);
    }
    else{
        io:println(result.message());
    }
}