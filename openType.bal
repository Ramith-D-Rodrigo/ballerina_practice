import ballerina/io;

type Food record {
    string name;
    decimal calories;
};



public function main(){
    Food carrot = {
        name : "carrot",
        calories : 25.0,
        "color" : "orange" //can add fields using index
    };

    io:print("Food name: ", carrot.name, "\n");
    io:print("Food calories: ", carrot.calories, "\n");
    io:print("Food color: ", carrot["color"], "\n"); //can access using index
}