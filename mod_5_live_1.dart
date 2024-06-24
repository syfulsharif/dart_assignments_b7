// Define the base class Media
class Media {
  void play() {
    print("Playing media...");
  }
}

// Define the derived class Song that inherits from Media
class Song extends Media {
  String artist;

  Song(this.artist);

  @override
  void play() {
    print("Playing song by $artist...");
  }
}

// Main function to create instances and call play() methods
void main() {
  // Create an instance of Media
  Media videoMedia = Media();
  // Create an instance of Song with an artist
  Song myFavoriteSong = Song("Brian Adams");
  
  // Call the play() method on both instances
  videoMedia.play();
  myFavoriteSong.play();
}
