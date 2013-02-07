section .data
   
   msg1: db 'Enter age',10,0   
   msgin: db "%d", 0               
   num1: dd 0             
   msg2:db 'Eligible',10,0
   msg3:db 'Not Eligible',10,0
   age: dd 18


section .text

  global main
  extern printf
  extern scanf

main:

   push ebp ;
   mov ebp,esp ;
   push msg1;
   call printf

   add esp, 4 ; remove parameters
   push num1 ; address of integer1 (second parameter)
   push msgin ; arguments are right to left (first parameter)
   call scanf;

  mov eax,[num1];

  cmp eax,[age];

  jge final;

 push msg3
        call printf
        jmp last;


final:

 push msg2;
 call printf
 jmp last;

last:

 mov esp,ebp;
  pop ebp
   ret



