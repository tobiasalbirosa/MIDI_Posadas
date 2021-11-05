import processing.video.*;
Movie movie;
float framesTotalesDeMiVideo;
void setup() {
  size(320, 240);
  movie = new Movie(this, "video.mov");
  movie.loop();
  framesTotalesDeMiVideo = movie.duration();
}
//IMPORTANTE ->
void movieEvent(Movie movie) {
  movie.read();
}
void draw() {
  image(movie, 0, 0, width, height);
}
void mouseClicked() {
  movie.pause();
}
void keyPressed() {
  movie.play();
}
