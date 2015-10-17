import procontroll.*;
import java.io.*;

ControllIO controll;
ControllDevice device;

ControllButton triangle;
ControllButton circle;
ControllButton cross;
ControllButton square;

void setup(){
  size(400,400);
  
  controll = ControllIO.getInstance(this);

  // controll.printDevices();
  device = controll.getDevice(2);
  
  //device.setTolerance(0.05f);
    
  triangle = device.getButton(1);
  circle = device.getButton(2);
  cross = device.getButton(3);
  square = device.getButton(4);
  
  fill(0);
  rectMode(CENTER);
  noStroke();
}

float totalX = width/2;
float totalY = height/2;
float current_x;
float current_y;

void draw(){
  background(255);
  
  fill(255,0,0);
  if(square.pressed()){
    rect(60, 50, 55, 55);
  }else if(triangle.pressed()){
    triangle(30, 75, 58, 20, 86, 75);
  }else if(circle.pressed()){
    ellipse(56, 46, 55, 55);
  }else if(cross.pressed()){
    strokeWeight(4);
    stroke(255, 0, 0);
    line(30, 20, 85, 75);
    line(30, 75, 85, 20);
    noStroke();
  }
}
