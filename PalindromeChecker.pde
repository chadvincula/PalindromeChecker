public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  //your code here
  for(int i = 0; i < word.length(); i++)
    if(noSpaces(noCapitals(noSymbols(word))).equals(reverseString(noSpaces(noCapitals(noSymbols(word))))))
      return true;
  return false;
}
public String reverseString(String word)
{
  //returns a string from the end to beginning
  String word2 = new String("");
  for(int i = word.length()-1; i >= 0; i--)
    word2 += word.charAt(i);
  return word2;
}
public String noSpaces(String word)
{
  //removes spaces from a string
  String word2 = new String("");
  for(int i = 0; i < word.length(); i++)
    if(word.charAt(i) != ' ')
    {
      word2 += word.charAt(i);
    }
  return word2;
}
public String noCapitals(String word)
{
  //converts capital letters to lower case letters
  return word.toLowerCase();
}
public String noSymbols(String word)
{
  //returns only letters from a string
  String word2 = new String("");
  for(int i = 0; i < word.length(); i++)
    if(Character.isLetter(word.charAt(i)) == true)
      word2 += word.charAt(i);
  return word2;
}