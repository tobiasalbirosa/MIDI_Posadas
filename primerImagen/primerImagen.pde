// Variable de imagen, Java es un lenguaje "tipado"
PImage imagen;
void setup() {
  imagen = loadImage("0.jpg");
  size(320, 240);
}
void draw() {
  image(imagen, 0, 0, width, height);
}
