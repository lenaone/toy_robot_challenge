# Toy Robot Simulator

## Description

* The application is a simulation of a toy robot moving on a square tabletop,
  of dimensions 5 units x 5 units.
* There are no other obstructions on the table surface.
* The robot is free to roam around the surface of the table, but must be
  prevented from falling to destruction. Any movement that would result in the
  robot falling from the table must be prevented, however further valid
  movement commands must still be allowed.

Create an application that can read in commands of the following form -

```
PLACE X,Y,F
MOVE
LEFT
RIGHT
REPORT
```

* `PLACE` will put the toy robot on the table in position X,Y and facing NORTH,
  SOUTH, EAST or WEST.
* The origin (0,0) can be considered to be the SOUTH WEST most corner.
* The first valid command to the robot is a `PLACE` command, after that, any
  sequence of commands may be issued, in any order, including another `PLACE`
  command. The application should discard all commands in the sequence until
  a valid `PLACE` command has been executed.
* `MOVE` will move the toy robot one unit forward in the direction it is
  currently facing.
* `LEFT` and `RIGHT` will rotate the robot 90 degrees in the specified direction
  without changing the position of the robot.
* `REPORT` will announce the X,Y and F of the robot. This can be in any form,
  but standard output is sufficient.
* A robot that is not on the table can choose the ignore the `MOVE`, `LEFT`, `RIGHT`
  and `REPORT` commands.
* Input can be from a file, or from standard input, as the developer chooses.
* Provide test data to exercise the application.

#### Constraints:

* The toy robot must not fall off the table during movement. This also
  includes the initial placement of the toy robot.
* Any move that would cause the robot to fall must be ignored.

Example Input and Output:

### Example a

    PLACE 0,0,NORTH
    MOVE
    REPORT

Expected output:

    0,1,NORTH

### Example b

    PLACE 0,0,NORTH
    LEFT
    REPORT

Expected output:

    0,0,WEST

### Example c

    PLACE 1,2,EAST
    MOVE
    MOVE
    LEFT
    MOVE
    REPORT

Expected output

    3,3,NORTH

#### Deliverables:

* Please provide your source code, and any test code/data you using in
developing your solution.

* Please engineer your solution to a standard you consider suitable for
production. It is not required to provide any graphical output showing the
movement of the toy robot.

### Set up

1. Make sure you have installed Ruby 2.5.
2. clone this repository: `git clone https://github.com/lenaone/toy_robot_challenge`
3. Change to the app directory: `cd toy_robot_challenge`
3. Install the minitest gem: `gem install minitest`

Running the app: `ruby cli.rb`
Testing the app: `ruby toy_robot_test.rb`


### Approach
 
* The toy robot challenge, I approached, To get information from user input. In a class, toy robot move from the information using 4 diffrent methods. Therefore, User need to give an input with command so robot can move it. If input include command then matching with regex expression then get the information and excute in class. Without command, toy robot ignored the input. 

* From methods, if toy robot use methods for left and right, only facing change it. Only move can change x,y as increase or decrease.

* In a test, Test all the possible so, given input and different input is working or not also, I need to check toy robot move over the grid and think about other wrong excute from the user and test.


