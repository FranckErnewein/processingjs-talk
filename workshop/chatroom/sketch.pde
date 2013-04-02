
void setup(){
  size( 400, 400 );
  background(255);
  noLoop();
}

void drawText( String message ){
  fill( random(255),random(255),random(255) );
  textSize( random( 10, 40 ) );
  text( message, random( width ), random( height ) );
}
