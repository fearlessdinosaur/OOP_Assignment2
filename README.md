# OOP_Assignment2
Classic Game for OOP module

#Description
A remake of the classic game Breakout(brickBreaker) for the second OOP assignment created in Proccessing.A player controlled paddle must keep a ball inside the play area while it bounces around destroying the blocks.

youtube Link: https://youtu.be/ho0GZuXXRf8

#Controls
 - Press 1 to run game
 - A and D drive paddle left and right
 - spacebar launches balls from paddle
 
#Concepts/how game works
 - if all blocks are destroyed the game is won
 - if all live are lost the game is over and player is returned to menu
 - powerups are earned by breaking blocks
 
#Features
 - Screens : menu,gameScreen,endscreen
 - collisions : between ball and walls,paddle and bricks
 - ArrayLists : adding and removing from
 - Inheritance : two instances, gameob superclass and powerup superclass
 - PVectors : all co-ordinates represented by PVectors and Motion works through vector maths
 - classes : 7 classes and 2 super classes
 - No sprites used : all objects rendered in game
 
#Elements of Game
- blocks: the blocks are placed by a for loop and stored in an array list, their colour is randomly generated, when hit they are removed
- Paddle: This is the player block which is used to prevent the ball from leaving the screen
- Ball: The ball bounces around the screen and destroys the bricks,ending the game if it passes over the base line 3 times
- Boost(powerup): increases the size of the paddle making it easier to stop the ball escaping for a short amount of time
- multiplier(powerup): doubles score earned per block destroyed for a short amount of time 
  


