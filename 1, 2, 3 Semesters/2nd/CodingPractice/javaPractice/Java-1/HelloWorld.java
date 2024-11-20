// WARNING: This file is auto-generated and any changes to it will be overwritten
import lang.stride.*;
import edu.duke.*;

/**
 * Write a description of HelloWorld here.
 * @author (your name) @version (a version number or a date)
 */
public class HelloWorld
{

    /**
     * 
     */
    public void runHello()
    {
        FileResource res =  new  FileResource("Hello World!");
        for (final String line : res.lines()) {
            System.out.println(line);
        }
    }
}
