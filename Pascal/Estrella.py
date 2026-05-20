import turtle 

dibujo = turtle.Turtle()
dibujo.color("Red", "Yellow")
dibujo.speed(1000)
dibujo.begin_fill()

while True:
    dibujo.fd(200)
    dibujo.left(170)
    if abs(dibujo.pos()) < 1:
        break;

dibujo.end_fill()

turtle.done()

