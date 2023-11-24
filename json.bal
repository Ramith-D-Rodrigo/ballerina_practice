import ballerina/io;

function getArtists(json songs) returns string[] | error {
    json[] arr = <json[]> songs; // casting to json array
    string[] artists = [];

    foreach var song in arr {
        string artist = check song.artist;
        artists.push(artist);
    }

    return artists;    
}

public function main() returns error?{
    json sampleJson = [
        {
            "title" : "Anytime Anywhere",
            "artist" : "Milet"
        },
        {
            "title" : "Awake",
            "artist" : "Hayami Saori"
        },
        {
            "title" : "Sakura Mitsutsuki",
            "artist" : "SPYAIR"
        }
    ];

    string[] artists = check getArtists(sampleJson);

    io:print(artists);
}