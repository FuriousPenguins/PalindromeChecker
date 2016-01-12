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
  String s = new String();
  char[] notLetters = {' ', '!', '?', '\'', ','};

  for(int i = 0; i < word.length(); i++){
    boolean isLetter = true;
    for(char temp : notLetters) {
      if(word.charAt(i) == temp) {
        isLetter = false;
      }
    }
    if(isLetter == true) {
      s = s + word.charAt(i);
    }
  }
  s = s.toLowerCase();
  println(s);
  for(int i = 0; i < s.length()/2; i++) {
    if(s.charAt(i) != s.charAt(s.length()-1-i)){
      return false;
    }
  }
  return true;
}

