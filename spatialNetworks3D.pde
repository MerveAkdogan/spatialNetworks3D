
import controlP5.*;

import peasy.*;
import processing.opengl.*;

PeasyCam cam;

PMatrix3D currCameraMatrix;

PGraphics3D g3;


int grs = 30;

int mtfk = 30;

int bny = 20;

int ysm = 50;

int ytk = 40;

int ymk = 20;

ControlP5 MyController;


color CL = #00FF1B;

int ON_OFF = 0;


void setup() {


size(600, 600, OPENGL);


g3 = (PGraphics3D)g;


cam = new PeasyCam(this, 200,300,100, 500);


MyController = new ControlP5(this);


MyController.addSlider("grs",0,100,30,20,100,10,100);  //("ad",min değ,max değ, default değ, x, y, genişlik, yükseklik)


MyController.addSlider("mtfk",0,100,30,50,100,10,100);


MyController.addSlider("bny",0,100,20,80,100,10,100);


MyController.addSlider("ysm",0,100,50,110,100,10,100);


MyController.addSlider("ytk",0,100,40,140,100,10,100);


MyController.addSlider("ymk",0,100,20,170,100,10,100);

//fill(150); //grs
//ellipse(-118, 210, 10, 10);

//fill(255);  //mtfk
//ellipse(-83, 210, 10, 10);

//fill(20,50,209);  //bny
//ellipse(-48, 210, 10, 10);

//fill(0,200,50);  //ysm
//ellipse(-14, 210, 10, 10);

//fill(255,127,80);  //ytk
//ellipse(21, 210, 10, 10);

//fill(255,0,0);  //ymk
//ellipse(56, 210, 10, 10);

MyController.setAutoDraw(false);


}


void draw(){




background(0);




noFill();


stroke(150);  //gri
strokeWeight(1);
pushMatrix();
translate(200,300,0); //giriş
sphere(grs);
popMatrix();

stroke(255);//beyaz
pushMatrix();
translate(400,300,0);  //mutfak
sphere(mtfk);
popMatrix();

stroke(20,50,209);//mavi
pushMatrix();
translate(500,200,0);  //banyo.
sphere(bny);
popMatrix();

stroke(0,200,50); //yeşil
pushMatrix(); 
translate(200,25000/ysm,0); //salon
sphere(ysm);
popMatrix();

stroke(255,127,80); //turuncu
pushMatrix();
translate(400,100,0);  //yatak o.
sphere(ytk);
popMatrix();

stroke(255,0,0); //kırmızı
pushMatrix();
translate(400,500,0);  //yemek o.
sphere(ymk);
popMatrix();

stroke(50);  //koyu gri
strokeWeight(grs/10 + mtfk/10);
line(200,300,0, 400,300,0);  //grs+ mtfk
strokeWeight(grs/10 + bny/10);
line(200,300,0, 500,200,0);   //grs+ bny
strokeWeight(grs/10 + ysm/10);
line(200,300,0, 200,25000/ysm,0);  //grs+ysm
strokeWeight(mtfk/10 + ymk/10);
line(400,300,0, 400,500,0);     //mtfk+ymk
strokeWeight(grs/10 + ytk/10);
line(200,300,0, 400,100,0);      //grs+ytk
strokeWeight(grs/10 + ymk/10);
line(200,300,0, 400,500,0);      //grs+ymk
strokeWeight(mtfk/10 + ymk/10);
line(400,300,0, 400,500,0);     //mtfk+ymk
strokeWeight(ysm/10 + ymk/10);
line(200,25000/ysm,0, 400,500,0);   //ysm+ymk

gui();





}


void gui() {

currCameraMatrix = new PMatrix3D(g3.camera);

camera();

MyController.draw();

g3.camera = currCameraMatrix;

}


public void On_Off(){

if(ON_OFF == 0){

ON_OFF = 1;

CL = #FF0022;

}


else{

ON_OFF = 0;

CL = #00FF1B;

}

}
