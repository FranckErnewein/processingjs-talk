
class SnakeManager{

  HashMap<Snake> snakes;

  SnakeManager(){
    snakes = new HashMap(); 
  }

  Snake getSnake( String id ){
    if( snakes.get( id ) == null ){
      snakes.put( id, new Snake() );
    }

    Snake s = (Snake) snakes.get( id );
    return s;
  }

}

class Snake{
  float oldX = null;
  float oldY = null;
  color col;

  Snake(){
    //init new snake with random color
    col = myColor;
  }
  
  void drawNewSegment( float newX, float newY ){
    if( oldY != null && oldX != null ){
      stroke( col );
      line( oldX, oldY, newX, newY );
    }
    oldX = newX;
    oldY = newY;
  }

  void drawNewSegment( float newX, float newY, int r, int g, int b ){
    if( oldY != null && oldX != null ){
      stroke( color( r, g, b ) );
      line( oldX, oldY, newX, newY );
    }
    oldX = newX;
    oldY = newY;
  }
}




SnakeManager manager = new SnakeManager();

color myColor = color(  255, 0, 0); 

void setup(){
  size( 800, 800 );
  background(0);
}


void mouseMoved(){
  sendPosition( mouseX, mouseY, red( myColor ), green( myColor ), blue( myColor ) );
}

void drawLine( String snakeId, float x, float y, int r, int g, int b ){
  manager.getSnake( snakeId ).drawNewSegment( x, y, r, g, b );
}
