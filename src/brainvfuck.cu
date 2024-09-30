#include "stdio.h"
#include <cuda/std/atomic>

__global__
void plus(unsigned char *ptc){
  *ptc+=1;
}

__global__
void less(unsigned char *ptc){
  *ptc-=1;
}

__global__
void morethan(unsigned char *ptc){
  ptc++;
}

__global__
void lessthan(unsigned char *ptc){
  ptc--;
}

void dot(unsigned char *ptc){
  putchar(*ptc);
}

void comma(unsigned char *ptc){
  *ptc = getchar();
}

int main(){
  unsigned char tape[30000] = {0};
  unsigned char *ptr = tape;
  size_t ptr_size = sizeof(char);
  cudaMallocManaged(&ptr, ptr_size);
  char input[10000]; // Input of 10k chars max
  cudaFree(ptr);
  return 0;
}
