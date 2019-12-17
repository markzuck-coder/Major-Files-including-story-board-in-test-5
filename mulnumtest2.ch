/*mulnumtest2.ch #3
Generate two random integers ranging from 1 to 10 using the
function randint().  Then prompt the user to enter the product of the two numbers.*/
int x,y,z,v;
    x= randint(1,10);
    y=randint(1,10);
    printf("What is the product of two integers %d x %d?\n",x,y);
    scanf("%d",&z);
    if(z==x*y){
    printf("Correct.\n");

    

}else{
    if(x*y!=z){
    printf("Incorrect. Please try again.\n");
    scanf("%d",&z);    
    }
}
