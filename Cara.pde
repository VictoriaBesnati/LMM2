color [] c={

#2D221E,
#3C2E28,
#4B3932,
#5A453C,
#695046,
#785C50,
#87675A,
#967264,
#A57E6E,
#B48A78,
#C39582,
#D2A18C,
#E1AC96,
#F0B8A0,
#FFC3AA,
#FFCEB4,
#FFDABE,
#FFE5C8,
} ;

color [] colorOjos={
#287233,
#3B83BD,
#C29B61,
#4B3621,
#804000
};
int queColor=0;
int queColorOjos=0;
class Cara{

Cara(){







}

void dibujar(int a,int b){ 
if(queColor>16){queColor=0;}
if(queColorOjos>3){queColorOjos=0;}
   if (mouseX > width/2 - a/2 && mouseX < a + (width/2-a/2) && mouseY > height/2 -200&& mouseY < b + height/2-100 ) {
      
      if (mousePressed) {
       queColor++;
      }}fill(c[queColor]);
   ellipse(width/2,height/2-100,a,b);

//ojos
fill(255);
ellipse(width/2-50,height/2-150,a/5,b/10);
ellipse(width/2+50,height/2-150,a/5,b/10);
//color ojos
 if (mouseX > width/2 - a/2 - 50 && mouseX < a/10 + (width/2-((a/2)/10)) && mouseY > height/2 -150 && mouseY < b/10 + height/2-150 ) {
      
      if (mousePressed) {
       queColorOjos++;
      }}fill(colorOjos[queColorOjos]);

ellipse(width/2-50,height/2-150,a/10,b/10);

/*if (mouseX > width/2 + a/2 + 50 && mouseX < a/10 + (width/2-((a/2)/10)) && mouseY > height/2 -150 && mouseY < b/10 + height/2-150 ) {
      
      if (mousePressed) {
       queColorOjos++;
      }}*/fill(colorOjos[queColorOjos]);
ellipse(width/2+50,height/2-150,a/10,b/10);


//pupila

fill(0);
ellipse(width/2-50,height/2-150,a/15,b/15);
ellipse(width/2+50,height/2-150,a/15,b/15);

//boca
fill(255);
ellipse(width/2,height/2-30,a/3,b/18);
 


}
}
