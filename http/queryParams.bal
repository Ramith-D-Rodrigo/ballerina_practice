import ballerina/http;

service on new http:Listener(9090) {
    resource function get .(string name, int age) returns string {
        return "Hello, " + name + " (" + age.toString() + ")";
    }
}


