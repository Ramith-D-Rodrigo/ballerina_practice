import ballerina/io;

function printArr(int[] arr) {
    foreach int i in arr {
        io:println(i);
    }
}

function printArr2(int[] arr) {
    foreach int i in 0 ..< arr.length() {
        io:println(arr[i]);
    }
}


public function main() {
    int[] arr = [1, 2, 3, 4, 5];
    printArr(arr);

    int[] arr2 = [5, 4, 3, 2, 1];
    printArr2(arr2);
}
