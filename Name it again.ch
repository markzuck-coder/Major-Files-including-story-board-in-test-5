/*Icecream.ch
Displays cost of icecream*/
string_t name;
int iceCream, cost;
//initialization
printf("Hey, what is you name?\n");
scanf("%s",&name);
printf( "icecream costs $2 a bar, how many would you like to buy %s?\n");
scanf("%d", &iceCream);
//calculation
cost= iceCream*2;
//output
printf( "Nice to meet you, %s your total cost is $%d.\n",name,cost);

