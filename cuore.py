import turtle
wn = turtle.Screen()
wn.setup(width=400, height=400)
turtle = turtle.Turtle() # Assigning turtle" as name of the turtle

def curve(): # Method to draw curve
    for i in range(200): # To draw the curve
        turtle.right(1)
        turtle.forward(1)

def heart():  # Method to draw full Heart
    turtle.fillcolor('purple')
    turtle.begin_fill()
    turtle.left(140)
    turtle.forward(113)
    curve() # Left Curve
    turtle.left(120)
    curve() # Right Curve
    turtle.forward(112)
    turtle.end_fill()

heart()
turtle.ht() # Hiding Turtle
turtle.done()