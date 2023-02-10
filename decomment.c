/*
 Alfred Ripoll
decomment.c 
*/
#include <stdio.h>
/*
Reads a text file as input and removes comments between ["/", "*"] and ["*","/"] while ignoring this if inside a String or character literal. Also ignores the next character after a "\" if found inside a String or character literal. */

enum State {NORMAL, POSSIBLE_COMMENT, COMMENT, POSSIBLE_ENDCOMMENT, STRING, STRING_BACKSLASH, CHAR, CHAR_BACKSLASH}
   enum State eState

   void NORMALState (int c, enum State estate){
      if (c == '/') {
         estate = POSSIBLE_COMMENT;
         putchar(c);
      }

      else if (c == '"') {
         estate = STRING;
         putchar(c);
      }
      else if (c == ''') {
         estate = CHAR;
         putchar(c);
      }
      else {
         estate = NORMAL;
         putchar(c);
      }
   }
void POSSIBLE_COMMENTState (int c, State estate){
   if (c == '*'){
      estate = COMMENT;
      /* remove the character here */
   }
   else if (c == '"') {
      estate = STRING;
      putchar(c);
   }
   else if (c == ''') {
      estate = CHAR;
      putchar(c);
   }
   else if (c == '/') {
      estate = POSSIBLE_COMMENT;
      putchar(c);
   }
   else {
      estate = NORMAL;
      putchar(c);
      }
}

void COMMENTState (int c, State estate) {
   if (c == '*') {
      estate = POSIBLE_ENDCOMMENT;
   }
   else {
      estate = COMMENT;
   }
}

void POSSIBLE_ENDCOMMENT (int c, State estate) {
   if (c == '/') {
      estate = NORMAL;
   }
   if (c == '*') {
      estate = POSSIBLE_ENDCOMMENT;
   }
   else {
      estate = COMMENT;
   }     
}

void STRING (int c, State estate) {
   if (c == '\')}

int main(void)
{
enum State eState;
}
