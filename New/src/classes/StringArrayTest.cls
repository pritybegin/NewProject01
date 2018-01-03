public class StringArrayTest {
    public static List<String> generateStringArray(Integer m)
    {
        List<String> my=new List<String>();
        for(Integer n=0; n<m; n++)
        {
            my.add('Test '+n);
                System.debug(my[n]);
        }
        return my;
    }

}