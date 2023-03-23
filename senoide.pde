float y;
float x = 0.0;
float amplitude = 60.0;
float vl_angular = 1 / 30.0;
float x_anterior;
float y_anterior;
void setup() {
    size(800, 400);
    smooth();
    background(205, 66, 144);
    strokeWeight(2);
    stroke(255);
    line(0, height / 2, width, height / 2);
}

void draw() {
    for (int i = 0; i < 2; ++i) {
        line(x_anterior, height / 2 + y_anterior, x, height / 2 + senoidal(x));
        x_anterior = x;
        y_anterior = senoidal(x);
        x++;
    }
    if (x >= width) {
        exit();
    }
}
float senoidal(float tempo) {
    y = amplitude * sin(vl_angular * tempo);
    return y;
}
