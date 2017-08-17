package creation.abstractfactory;

import creation.abstractfactory.color.*;
import creation.abstractfactory.shape.*;

public abstract class AbstractFactory {
   abstract Color getColor(String color);
   abstract Shape getShape(String shape) ;
}
