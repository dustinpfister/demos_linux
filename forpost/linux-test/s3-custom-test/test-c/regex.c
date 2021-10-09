#include <stdio.h>
#include <regex.h>        

regex_t regex;
int reti;

int main() {
   reti = regcomp(&regex, "^a[[:alnum:]]", 0);
   if (reti) {
      fprintf(stderr, "Could not compile regex\n");
      regfree(&regex);
      return 1;
   }
   printf("%i\n", reti);
   regfree(&regex);
   return 0;
}
