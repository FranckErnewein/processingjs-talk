void setup(){
  size( 400, 400 );
   
}

void drawTweet( Object data ){
  text( data.text, random( width), random(height) );
}
