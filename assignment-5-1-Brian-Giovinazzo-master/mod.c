#include <stdio.h>
#include <stdlib.h>

#define SIZE 1944

int main(int argc, char *argv[]) {
  unsigned char buffer[SIZE];
  FILE *in;
  FILE *out;

  in = fopen("./test/dungeon.o","rb");
  out = fopen("dungeon_mod.o","w+b");
  fread(buffer,sizeof(buffer),1,in);
  buffer[107] = 0;
  buffer[108] = 0;
  
  fwrite(buffer,sizeof(buffer),1,out);
  fclose(in);
  fclose(out);
  return 0;
}
