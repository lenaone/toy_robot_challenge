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

1. Make sure you have Ruby 2.5 installed in your machine.
2. Clone this repository: `git clone https://github.com/lenaone/toy_robot_challenge.git`
3. Change to the app directory: `cd toy_robot_challenge`
3. Install the minitest gem: `gem install minitest`

### Running the app: 

 `ruby cli.rb`

### Testing the app: 
    
`ruby toy_robot_test.rb`


### Approach
 
I started by creating the ToyRobot class with the initial methods like `place`, `move`, `left`, `right` and `report` and including attributes to store its position on the board. The cli.rb file was created to separate the action of playing the game and the ToyRobot itself, reading the user input and calling the right action on the robot instance.

### Approach on testing

I decided to start by writing tests based on the examples given on the problem description, where it lists a sequence of commands and the expected result of a call to `report`. I also created tests in regards to individual methods such as `right`, `left` from the ToyRobot class and also tests about invalid inputs to make sure the robot would respond with `Not placed` or not do anything depending on its current position.


