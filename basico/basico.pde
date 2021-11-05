import processing.video.*;

Capture webcam;
void setup() {
  size(320, 240);
  String[] cameras = Capture.list();
  webcam = new Capture(this, cameras[3]);
  webcam.start();
}
void draw() {
  if (webcam.available() == true) {
    webcam.read();
  }
  image(webcam, 0, 0, width, height);
}
