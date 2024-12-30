
#include <stdio.h>
//extern "C" void __stdcall asmfunc(void);

#ifdef __cplusplus
extern "C" {
#endif
int __stdcall asmfunc(int arr[] ,int sizee);
#ifdef __cplusplus
}
#endif
int main() {
    system("cls");
    int abc;
    printf("assembly proc calling from  from C! \n");
    getch();
    int arr[5]={3,-5,6,-7,4};
    int answer=asmfunc(arr,5); //assembly proc calling
    printf("The total number of negative numbers is %d\n",answer);
    getch();
    printf("back to  C! \n"); // printing in c
    
    return 0;
}