package abstractfactory;

import abstractfactory.color.*;
import abstractfactory.shape.*;

public abstract class AbstractFactory {
   abstract Color getColor(String color);
   abstract Shape getShape(String shape) ;
}
