/*
 Alfred Ripoll
decomment.c 
*/
#include <stdio.h>
/*
Reads a text file as std input and removes comments between ["/", "*"] and ["*","/"] while ignoring this if inside a String or character literal. Also ignores the next character after a "\" if found inside a String or character literal. */

/* Different State types for */
enum Statetype {NORMAL, POSSIBLE_COMMENT, COMMENT, POSSIBLE_ENDCOMMENT, STRING, STRING_BACKSLASH, CHAR, CHAR_BACKSLASH};
   enum Statetype eState; /* holds the current state of the dfa*/

/* Handles the character of input c when the state is NORMAL (and at the beginning of the textilfe), c is the current DFA character
calls putchar(c) which writes c to stdout unless a character moves to POSSIBE_COMMENT state, outputs the state after the input */
   enum Statetype NORMALstate (int c){
      enum Statetype eState;
      if (c == '/') {
         eState = POSSIBLE_COMMENT;
      }
      else if (c == '"') {
         putchar(c);
         eState = STRING;
      }
      else if (c == '\'') {
         putchar(c);
         eState = CHAR;
      }
      else {
         putchar(c);
         eState = NORMAL;
      }
      return eState;
   }
   /* Handles the character of input c when the state is POSSIBLE_COMMENT, c is the current DFA character
calls putchar(c-1) which writes prior character to stdout unless a character moves to COMMENT state, 
calls putchar(c) which writes c to stdout if state changes to NORMAL, CHAR, or STRING
outputs the state after the input*/
enum Statetype POSSIBLE_COMMENTstate (int c){
   enum Statetype eState;
   if (c == '*'){
      eState = COMMENT;
   }
   else if (c == '"') {
      putchar(c - 1);
      putchar(c);
      eState = STRING;
   }
   else if (c == '\'') {
      putchar(c - 1);
      putchar(c);
      eState = CHAR;
   }
   else if (c == '/') {
      putchar(c - 1);
      eState = POSSIBLE_COMMENT;
   }
   else {
      putchar(c - 1);
      putchar(c);
      eState = NORMAL;
      }
   return eState;
}

/* Handles the character of input c when the state is COMMENT, c is the current DFA character,
outputs the state after the input*/
enum Statetype COMMENTstate (int c) {
   enum Statetype eState;
   if (c == '*') {
      eState = POSSIBLE_ENDCOMMENT;
   }
   else {
      eState = COMMENT;
   }
   return eState;
}

/* Handles the character of input c when the state is POSSIBLE_ENDCOMMENT, 
c is the current DFA character,
outputs the state after the input*/
enum Statetype POSSIBLE_ENDCOMMENTstate (int c) { 
   enum Statetype eState;
   if (c == '/') {
      eState = NORMAL;
   }
   else if (c == '*') {
      eState = POSSIBLE_ENDCOMMENT;
   }
   else {
      eState = COMMENT;
   } 
   return eState;    
}

/* Handles the character of input c when the state is STRING, 
c is the current DFA character,
calls putchar(c) which writes c to stdout
outputs the state after the input*/
enum Statetype STRINGstate (int c) {
   enum Statetype eState;
   if (c == '\\') {
      putchar(c);
      eState = STRING_BACKSLASH;
   }
   else if (c == '"') {
      putchar(c);
      eState = NORMAL;
   }
   else {
      putchar(c);
      eState = STRING;
   }
   return eState;
}

/* Handles the character of input c when the state is STRING_BACKSLASH, 
c is the current DFA character, 
calls putchar(c) which writes c to stdout
outputs the state after the input*/
enum Statetype STRING_BACKSLASHstate (int c) {
   enum Statetype eState;
   if (c == '\\') {
      putchar(c);
      eState = STRING_BACKSLASH;
      }
   else {
      putchar(c);
      eState = STRING;
   }
   return eState;
}

/* Handles the character of input c when the state is CHAR,
c is the current DFA character ,
calls putchar(c) which writes c to stdout
outputs the state after the input*/
enum Statetype CHARstate (int c) {
   enum Statetype eState;
   if (c == '\\') {
      putchar(c);
      eState = CHAR_BACKSLASH;
   }
   else if (c == '\'') {
      putchar(c);
      eState = NORMAL;
   }
   else {
      putchar(c);
      eState = CHAR;
   }
   return eState;
}

/* Handles the character of input c when the state is CHAR_BACKSLASH,
c is the current DFA character, 
calls putchar(c) which writes c to stdout
outputs the state after the input*/
enum Statetype CHAR_BACKSLASHstate (int c) {
   enum Statetype eState;
   if (c == '\\') {
      putchar(c);
      eState = CHAR_BACKSLASH;
   }
   else {
      putchar(c);
      eState = CHAR;
   }
   return eState;
}

/* Use a DFA approach. state indicates the DFA state. */
int main(void) {
   int c;
   enum Statetype eState = NORMAL;
   while ((c = getchar()) != EOF) {
      switch (eState) {
         case NORMAL:
         eState = NORMALstate(c);
         break;
         case POSSIBLE_COMMENT:
         eState = POSSIBLE_COMMENTstate(c);
         break;
         case COMMENT:
         eState = COMMENTstate(c);
         break;
         case POSSIBLE_ENDCOMMENT:
         eState = POSSIBLE_ENDCOMMENTstate(c);
         break;
         case STRING:
         eState = STRINGstate(c);
         break;
         case STRING_BACKSLASH:
         eState = STRING_BACKSLASHstate(c);
         break;
         case CHAR:
         eState = CHARstate(c);
         break;
         case CHAR_BACKSLASH:
         eState = CHAR_BACKSLASHstate(c);
         break;
      }
   }
   if (eState == COMMENT || POSSIBLE_ENDCOMMENT) {
      return -1;
      /*Print error line to std err*/
            fprintf(stderr, "Error: line %d: unterminated comment\n", line);
   }
   else {
      return 0;
   }
   }
