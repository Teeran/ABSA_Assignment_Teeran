package ReusableMethod;

import java.util.Random;

public class utility {
    //---------------------------------------------------------------------------------
    //Description: Generate random Number with any length based on input
    public String generateRandomValue( int length)
    {
        String candidateChars = "0123456789";
        StringBuilder sb = new StringBuilder();
        Random random = new Random();
        for (int i = 0; i < length; i++)
        {
            sb.append(candidateChars.charAt(random.nextInt(candidateChars
                    .length())));
        }
        return sb.toString();
    }
    //---------------------------------------------------------------------------------

}
