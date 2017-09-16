# Learning NASM
Sources : 
* [Loyola Maryland University Los Angeles](http://cs.lmu.edu/~ray/notes/nasmtutorial/)
* [ASMTUTOR](http://asmtutor.com/) 
* [Official NASM Documentation](http://www.nasm.us/doc/)

I'm trying to learn assembly so i collect sources here, feel free to use it! I will extend it while gaining more knowledge, and i will because knowledge is power! 

#### How to use NASM Compiler and linker ? It basically depends on platform but i realize that if u are learning asm you have 64 bit architecture soooo.... 

```sh $  nasm -felf64 input_file.asm ``` 

In case when u dont use C standard library just fire a linker : 

```sh $  ld input_file.o ``` 

Or if u used C standard library :

```sh $  gcc -m64 input_filed.o ```

