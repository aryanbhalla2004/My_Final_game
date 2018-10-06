
// This for Traffic Light time and how often it change
TrafficLight light1 = new TrafficLight(100, 40);
int onTime = 3000;
int startTime = millis();

// this all the car image from car1 to car13
PImage car;
PImage car1;
PImage car2;
PImage car3;
PImage car4;
PImage car5;
PImage car6;
PImage car7;
PImage car8;
PImage car9;
PImage car10;
PImage car11;
PImage car12;
PImage car13;

//this is carX and carY for car location
int carX, carY;
int car2X, car2Y;
int car1X, car1Y;
int car3X, car3Y;
int car4X, car4Y;
int car5X, car5Y;
int car6X, car6Y;
int car7X, car7Y;
int car8X, car8Y;
int car9X, car9Y;
int car10X, car10Y;
int car11X, car11Y;
int car12X, car12Y;
int car13X, car13Y;

// w and h is used for my person, W is X locationg and H is Y Location
int w,h;

// b and t is used for my reset button B is X location of reset button and T is Y location of reset buttom
int b;
int t;
 
// Pimage chicken is my charater image 
PImage chicken;

// background is a intro screen background
PImage background; 

// background_game image is the background of the innter game background
PImage background_game; 

// screen widht  and height is the size of my intro screen and stage is steps thats happening as the game process
int screenwidth,screenheight, stage;

void setup() {
    //w and h for turtle 
    w = 40;
    h = 1150;
    
    b = 1300;
    t = 1050;
    // stage is the steps that are happening in the game
    stage = 1;
    
    // screen size
    fullScreen();
    
    //this is a trafic light code that tell what light to start with
    light1.changeColour("amber");
    light1.display();
    
    //this is car image 0
    car = loadImage("car.png");
    carX = 1950;
    carY = 1420;
    
    //this is car image 1
    car1 = loadImage("car.png");
    car1X = 2450;
    car1Y = 1420;
    
    //this is car image 2
    car2 = loadImage("car.png");
    car2X = 2950;
    car2Y = 1420;
    
    //this is car image 3
    car3 = loadImage("car.png");
    car3X = 3450;
    car3Y = 1420;
    
    //this is car image 4
    car4 = loadImage("car.png");
    car4X = 3950;
    car4Y = 1420;
    
    //this is car image 5
    car5 = loadImage("car.png");
    car5X = 4450;
    car5Y = 1420;
    
    //this is car image 6
    car6 = loadImage("car.png");
    car6X = 4950;
    car6Y = 1420;
    
    //this is car image 7
    car7 = loadImage("car1.png");
    car7X = 350;
    car7Y = 1620;
    
    //this is car image 8
    car8 = loadImage("car1.png");
    car8X = -400;
    car8Y = 1620;
    
    //this is car image 9
    car9 = loadImage("car1.png");
    car9X = -1050;
    car9Y = 1620;
    
    //this is car image 10
    car10 = loadImage("car1.png");
    car10X = -1650;
    car10Y = 1620;
    
    //this is car image 11
    car11 = loadImage("car1.png");
    car11X = -2350;
    car11Y = 1620;
    
    //this is car image 12
    car12 = loadImage("car1.png");
    car12X = -2950;
    car12Y = 1620;
    
    //this is car image 13
    car13 = loadImage("car1.png");
    car13X = -3850;
    car13Y = 1620;
    

    //this is my background size
    screenwidth = width;
    screenheight = height; 
    
    // src of my intor Screen Background
    background = loadImage("blur_background.jpg");
    
    // src of the inner game background
    background_game = loadImage("Background_game.jpg");
    
    // image of my charater
    chicken = loadImage("chicken.png");
    
    // color of my intro screnn
    background(0);

    // Image of my intro screen,size,X,Y
    image(background,0,0,screenwidth,screenheight);
}
  
void draw() {
  // Intro Screen 
  if(stage==1)
   {
      // size of the Welcome to my game
      textSize(90);
      
      // align to the center of the text
      textAlign(CENTER);
      
      //color of the my welcome to my game
      fill(255);
      
      //text welcome to my game and x and y
      text("WELCOME TO MY GAME",width/2,750);
      // size of PRESS ANY KEY TO START THE GAME
      
      // size of text 
      textSize(80);
      
      //color of PRESS ANY KEY TO START THE GAME
      fill(255,255,0);
      //text welcome to my game and x and y
      text("PRESS ANY KEY TO START THE GAME",width/2,height/2);
      
      //key press to go to stage 2 or screen2
      if(keyPressed == true)
      {
      stage = 2;
      }   
   }
   
   // stage 2
   if(stage==2)
   {
     // this my my inner game background image
     image(background_game,0,0,screenwidth,screenheight);
     
     // this is my image of my charater 
     image(chicken,w,h,150,250);
     
     //When light is red, switch to green after 1 second
     if (millis() - startTime > onTime && light1.lightOn == "red") 
     {
       light1.changeColour("green");
       startTime = millis();
     }
     
     //When light is amber, switch to red after 1 second
    if (millis() - startTime > onTime && light1.lightOn == "amber") 
    {
        light1.changeColour("red");
        startTime = millis();
    }
    
    //When light is green, switch to amber after 1 second
    if (millis() - startTime > onTime && light1.lightOn == "green") 
    {
        light1.changeColour("amber");
        startTime = millis();
    }
    
    
    light1.display();
    image(car, carX, carY);
    image(car1,car1X,car1Y);
    image(car2,car2X,car2Y);
    image(car3,car3X,car3Y);
    image(car4,car4X,car4Y);
    image(car5,car5X,car5Y);
    image(car6,car6X,car6Y);
    image(car7,car7X,car7Y);
    image(car8,car8X,car8Y);
    image(car9,car9X,car9Y);
    image(car10,car10X,car10Y);
    image(car11,car11X,car11Y);
    image(car12,car12X,car12Y);
    image(car13,car13X,car13Y);
    
    // this is a speed set for every color like in green it is faster and at red it stops
    if (light1.lightOn == "green") 
    {
      carX -= 30;
      car1X -= 30;
      car2X -= 30;
      car3X -= 30;
      car4X -= 30;
      car5X -= 30;
      car6X -= 30;
      car7X += 30;
      car8X += 30;
      car9X += 30;
      car10X += 30;
      car11X += 30;
      car12X += 30;
      car13X += 30;
    }
     
    // this is a speed set for every color like in red it stops and in amber it slows down
    if (light1.lightOn == "red") 
    {
      carX -= 0;
      car1X -= 0;
      car2X -= 0;
      car3X -= 0;
      car4X -= 0;
      car5X -= 0;
      car6X -= 0;
      car7X += 0;
      car8X += 0;
      car9X += 0;
      car10X += 0;
      car11X += 0;
      car12X += 0;
      car13X += 0;
    }
    
    // this is a speed set for every color like in amber it is slower and at red it stops
    if (light1.lightOn == "amber")
    {
      carX -= 20;
      car1X -= 20;
      car2X -= 20;
      car3X -= 20;
      car4X -= 20;
      car5X -= 20;
      car6X -= 20;
      car7X += 20;
      car8X += 20;
      car9X += 20;
      car10X += 20;
      car11X += 20;
      car12X += 20;
      car13X += 20;
    }
    
    // this is value set for where will the next batch will spon
     if (carX <= -1200) 
     {
       carX = 1950;
       car1X = 1950;
       car2X = 2450;
       car3X = 2950;
       car4X = 3450;
       car5X = 3950;
       car6X = 4350;
       car7X = 350;
       car8X = -400;
       car9X = -1050;
       car10X = -1650;
       car11X = -2350;
       car12X = -2850;
       car13X = -3950;
    }
    
    //If character is past the windows width, load stage 3 
    if(w >= width)
    {
      stage = 3;
    }
    
    //If character is passed "Y" loation 1200, load stage 4
    if(h >= 1200){
      stage = 4;
    }
    
    //If character is passed "Y" loation 1120, load stage 4
    if(h <= 1120){
      stage = 4;
    }
  }
  
    //stage 3
    if(stage==3)
    {
       // background of the stage 3 window
       background(0);
       
       // size of text 
       textSize(100);
       
       //color of text
       fill(255);
       
       // text and "X","Y" location
       text("Your Finally Out Of The Busy Road/Street", width/2,height/2);
       
       //color of my reset button
       fill(255);
       
       //mode of my reset butoon
       rectMode(CENTER);
       
       //size, shape and location on my button
       rect(b,t,500,100);
       
       //color of the restart text
       fill(255,0,0);
       
       //size of the restart text
       textSize(50);
       
       //test and size 
       text("Restart",1300,1050);
       
       //reset button code if you press the mouse button on the cordinates it will restart the game
       if(mousePressed == true)
       { 
          if(mouseX >= width/2 -250 && mouseX <= width/2 +250 && mouseY <= height/2 +150 && mouseY >= height/2 -150)
             {
               draw();
               setup();
             
             }
       }
    }
     
     //stage 4
     if(stage==4){
       //background color for stage 4
       background(0);
       
       //size of text
       textSize(150);
       
       //color of the text
       fill(255);
       
       //text of the stage4
       text("Stay On The Side Walk", width/2,height/2);
       
       //color of my reset button
       fill(255);
       
       //mode of my button
       rectMode(CENTER);
       
       //Button with size and location
       rect(b,t,500,100);
       
       //color of my text
       fill(255,0,0);
       
       // size of my text
       textSize(50);
       
       //reset test and loaction
       text("Restart",1300,1050);
       
       //reset button code if you press the mouse button on the cordinates it will restart the game
       if(mousePressed == true)
         { 
            if(mouseX >= width/2 -250 && mouseX <= width/2 +250 && mouseY <= height/2 +150 && mouseY >= height/2 -150)
              {
                 setup();
              }
              
         }
     
     }
     
}

      
// keypressed
void keyPressed() {
  
  //if the pressed w my character move up
  if(key == 'w'){
    h = h - 10;
  }
  
  //if the pressed s my character move down
  if(key == 's'){
    h = h + 10;
  }
  
  //if the pressed a my character move left
  if(key == 'a'){
    w = w - 10;
  }
  
  //if the pressed d my character move right
  if(key == 'd'){
    w = w + 10;
  }
}

class TrafficLight {
    int xpos;
    int ypos;
    String lightOn = "red";
    
    //location of my lights
    TrafficLight(int x, int y) {
        xpos = x;
        ypos = y;
    }
    
    // this is the code that may my traffic light range color
    void changeColour(String lightColour) {
        lightOn = lightColour;
}

void display() {
        String lightColour = lightOn;
        
        // color of my traffic 
        fill(0, 0, 0,0);
        
        //boarder of the rect
        strokeWeight(0);
        
        //the back panel for traffic light
        rect(xpos, ypos, 100, 220);//back panel
        //red light and color
        if (lightColour == "red") {
            fill(255, 0, 0);
            lightOn = "red";
        } else {
            fill(100, 0, 0);
        }
        ellipse(xpos + 50, ypos + 40, 60, 60);//red
        
        //amber light
        if (lightColour == "amber") {
          //color red
            fill(255, 255, 0);
            lightOn = "amber";
        } else {
            fill(100, 100, 0);
        }
        ellipse(xpos + 50, ypos + 110, 60, 60);//amber  
        //green light
        if (lightColour == "green") {
          //green color in the circle
            fill(0, 255, 0);
            lightOn = "green";
        } else {
            fill(0, 100, 0);
        }
        //green light shape
        ellipse(xpos + 50, ypos + 180, 60, 60);//green
    }

}

/**

My four (or more) text,images,and?or shapes are:
*
My Car,Character,intor Text and background image
*
My one or more self-taught animation
*
traffic light
*
My four or more animation that were not learned form online 
*
moving character,moving car,press any key to switch screen,
*
For movement use
  * Use 'w' for moving up
  * Use 'a' for moving left
  * Use 's' for moving down
  * Use 'd' for moving right

*/
