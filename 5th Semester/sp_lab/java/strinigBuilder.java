public class strinigBuilder {

    public static void main(String[] args) {
        StringBuilder rstr = new StringBuilder(args[0]);
        for(int i=0; i<(rstr.length()-1)/2; i++)
        {
            int front = i;
            int back = rstr.length()-i-1;
            char cfront = rstr.charAt(front);
            char cback = rstr.charAt(back); 
            rstr.setCharAt(front, cback);
            rstr.setCharAt(back, cfront);

        }
        System.out.println(rstr);
    }
}