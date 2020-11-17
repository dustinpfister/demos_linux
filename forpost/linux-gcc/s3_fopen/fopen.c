#include <stdio.h>
int main ()
{
  FILE * pFile;
  pFile = fopen ("test.txt","w");
  if (pFile!=NULL)
  {
    fputs ("This is just a test.",pFile);
    fclose (pFile);
  }
  return 0;
}