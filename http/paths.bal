import ballerina/http;

service on new http:Listener(9090) { //base path is http://localhost:9090/

    resource function get .() returns string {
        return "Hello, World!";
    }

    resource function get firstPath() returns string {
        return "Hello, World from first path!";
    }

    resource function get secondPath() returns string {
        return "Hello, World from second path!";
    }

    resource function get firstPath/fourthPath() returns string {
        return "Hello, World from fourth path!";
    }

    resource function get users() returns string {
        return "Hello, World from users path!";
    }

    resource function get users/[int id]() returns string {
        return "getting user with id " + id.toString();
    }

    resource function get users/[int id]/[string name]() returns string {
        return "getting user with id " + id.toString() + " and name " + name;
    }

    resource function get users/[int id]/orders() returns string {
        return "getting orders of user with id " + id.toString();
    }
}
