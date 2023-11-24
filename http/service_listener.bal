import ballerina/http;

listener http:Listener helloEP = new(9090);

http:Service myService = @http:ServiceConfig {} service object {
    resource function get myGreetings() returns string {
        return "Hello, World!";
    }
};

public function main() returns error?{
    check helloEP.attach(myService, "/hello");
    check helloEP.start();
}   