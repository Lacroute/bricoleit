import point2line.*;

Vect2 velocity = new Vect2( 10, 10 );

println( velocity.magnitude() ); // prints "14.142136"

velocity.normalize();

println( velocity.magnitude() ); // prints "1.0"
