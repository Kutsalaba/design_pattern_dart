// abstract class Image {
//   void displayImage();
// }

// class RealImage implements Image {
//   final String _filename;

//   RealImage(this._filename) {
//     _loadImageFromDisk();
//   }

//   void _loadImageFromDisk() {
//     print("Loading    $_filename");
//   }

//   @override
//   void displayImage() {
//     print("Displaying $_filename");
//   }
// }

// class ProxyImage implements Image {
//   RealImage? _image;
//   final String _filename;
//   final blankImage = RealImage("blank");

//   ProxyImage(this._filename);


//   @override
//   void displayImage() {
//   if (_image != null) return _image!.displayImage();

//   print("[ProxyImage] cache miss $_filename");
//   blankImage.displayImage();
//   RealImage(_lowFilename).displayImage();
//   _image = RealImage(_filename)..displayImage();
//   }

//   String get _lowFilename =>
//     _filename.replaceFirst(RegExp(r'HiRes_\d+\w+_'), 'LoRes_');
// }

// main() {
  
//   Image image1 = ProxyImage("HiRes_10MB_Photo1");
//   Image image2 = ProxyImage("HiRes_10MB_Photo2");

//   image1.displayImage(); // loading necessary
//   image1.displayImage(); // loading unnecessary
//   image2.displayImage(); // loading necessary
//   image2.displayImage(); // loading unnecessary
//   image1.displayImage(); // loading unnecessary
// }