#include <fcntl.h>
#include <stdio.h>
#include <unistd.h>

int main() {
  printf("Starting ...\n");
  int fd = open("/etc/passwd", O_RDONLY);

  if (fd == -1) {
    return 1;
  }  

  printf("fd = %d\n", fd);

  // Read the file 
  int count = 80;
  char buff[count + 1];
  ssize_t n =  read(fd,&buff, count);

  if (n < 0) {
    return 1;
  }

  buff[80] = '\0';
  printf("read data: %s\n", buff);

  close(fd);


  int fd2 = open("./my-file.txt", O_WRONLY | O_CREAT);


  if (fd2 == -1) {
    return 1;
  }  

  
  printf("fd2 = %d\n",fd2);

  close(fd2);

  return 0;  
}

