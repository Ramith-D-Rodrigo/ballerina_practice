import ballerina/io;

function getAuthorData(xml books) returns string[] {
    string[] authors = [];
    
    foreach xml:Element book in books/<book> {
        xml author = book/<author>;
        authors.push(author.data());
    }

    return authors;
}

public function main(){

    xml sampleXml = xml `<books>
                            <book>
                                <name>Dragon Ball</name>
                                <author>Akira Toriyama</author>
                            </book>
                            <book>
                                <name>Gintama</name>
                                <author>Hideaki Sorachi</author>
                            </book>
                            <book>
                                <name>One Piece</name>
                                <author>Eiichiro Oda</author>
                            </book>
                        </books>`;

    string[] authors = getAuthorData(sampleXml);

    foreach string author in authors {
        io:println(author);
    }
}