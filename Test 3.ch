#include<chplot.h>
//declare

string_t Sprint, ShootPortal, Grabcube, w, c, plana, planb, j, k, taunt;
int PowerBar, p, f, d;

void declarations(){
    string_t Sprint, ShootPortal, Grabcube, w, c, plana, planb, j, k, taunt;
    int PowerBar, press, f, d;
}

//names
void name1(){
    scanf("%s", &w);
}

void name2(){
    scanf("%s", &c);
}

//taunt
void blind(){
    printf("Cave Johnson: Do you have a slander for the large sentry? By using the two words Yes or No I can decide your input?\n\n");
    scanf("%s",&j, &k);
    if(j=="Yes" || k=="No"){
        if(j=="Yes"){
            printf("Cave Johnson: What is your damaging use of vocabulary toward the sentry?\n\n");
            scanf("%s", &blind);
            printf("%s: %s\n\n", w, blind);
        }
        if(k=="No"){
            printf("%s: you look like my...uh...I got nothing.\n\n", w);
        }
    }
}

//random#s
void press(){
    f=randint(1,6);
    d=randint(1,6);
    p=f+d;
    if(p>=7){
        printf("Cave Johnson: %s pressed the red button and got a %d and a %d. %s dropped a heavy sharp-edged wall on the large sentry %d\n\
time(s) resulting in the death of the robot program.\n\n", w, f, d, w, p);
    }else{
        printf("Cave Johnson: %s pressed the red button and got a %d and a %d. %s dropped a heavy sharp-edged wall on the sentry %d\n\
time(s), but it wasn't enough to defeat the enemy.\n\n", w, f, d, w, p);
    }
}

//Happygraph
void graph(){
    double func1(double x) {     return 0;}
    double func2(double x) {     return x*x-5*x+6;}
    int datanum;
    double c(double x){
        return pow((x-5), 2)+2;
    }
    CPlot plot;

    plot.title("Congratulations!");
    plot.axisRange(PLOT_AXIS_X, 0, 10);
    plot.axisRange(PLOT_AXIS_Y, 0, 20);
    
    //head
    plot.strokeColor("yellow");
    plot.fillColor("yellow");
    plot.circle (5,10,2.5);
    plot.strokeColor("black");
    plot.fillColor("black");
    plot.circle (4,10,0.5);
    plot.strokeColor("black");
    plot.fillColor("black");
    plot.circle (6,10,0.5);
    plot.func2D(3.5, 6.5, 1000, c);
    
    plot.plotting();
}

//GAMEOVERgraph
void graph2(){
    double func1(double x) {     return 0;}
    double func2(double x) {     return x*x-5*x+6;}
    double func3(double x) {     return 5;}
    int datanum;
    CPlot plot;

    plot.title("GAME OVER");
    plot.axisRange(PLOT_AXIS_X, 0, 10);
    plot.axisRange(PLOT_AXIS_Y, 0, 20);
    
    //head
    plot.strokeColor("black");
    plot.fillColor("white");
    plot.circle (5,10,2.5);
    plot.strokeColor("black");
    plot.fillColor("black");
    plot.circle (4,10,0.5);
    plot.strokeColor("black");
    plot.fillColor("black");
    plot.circle (6,10,0.5);
    plot.point(6, 9);
    plot.func2D(3.9, 4.1, 100, func1);
    plot.plotType(PLOT_PLOTTYPE_FILLEDCURVES, 1, "c1=5", "black");
    plot.func2D(4.9, 5.1, 100, func1);
    plot.plotType(PLOT_PLOTTYPE_FILLEDCURVES, 2, "c1=5", "black");
    plot.func2D(5.9, 6.1, 100, func1);
    plot.plotType(PLOT_PLOTTYPE_FILLEDCURVES, 3, "c1=5", "black");
    plot.func2D(2.9, 7.1, 100, func3);
    plot.plotType(PLOT_PLOTTYPE_FILLEDCURVES, 4, "c1=4", "black");
    plot.plotting();
}

//?graph
void graph3(){
    double func1(double x) {     return 0;}
    double func2(double x) {     return x*x-5*x+6;}
    double func3(double x) {     return 4;}
    int datanum;
    CPlot plot;

    plot.title("?");
    plot.axisRange(PLOT_AXIS_X, 0, 10);
    plot.axisRange(PLOT_AXIS_Y, 0, 20);
    
    //head
    plot.strokeColor("yellow");
    plot.fillColor("yellow");
    plot.circle (5,10,2.5);
    plot.strokeColor("black");
    plot.fillColor("black");
    plot.circle (4,10,0.5);
    plot.strokeColor("black");
    plot.fillColor("black");
    plot.circle (6,10,0.5);
    plot.func2D(3, 7, 100, func3);
    plot.plotType(PLOT_PLOTTYPE_FILLEDCURVES, 4, "c1=5", "black");
    
    plot.plotting();
}

//introduction
void intro(){
   printf("Cave Johnson: Welcome, guests, to Aperture science. Astronauts, war heroes,\n\
olympians... you're here because we want the best, and you are it.\n\
 So, who is ready to make some science!? Haha! Now, you've\n\
 already met one another on the limo ride over, so let me introduce myself. I'm cave Johnson. I own the place.\n\
 You guys are my test subjects for this large facility that can move and rebuild with platforms.\n\
 Anything you guys plan my eyes are everywhere I decide, when you can leave\n\
 then celebrate your birthday. The best day of your life\n\
 to breathe earth air and live outside this prison of obstacles. To get started with\n\
    you have a portal gun that can only shoot two portals of different colors.\n\
You can also grab objects commonly a cube to place on red buttons. And \n\
finally you press buttons to damage the sentry health.\n\n");
    sleep(2);
    printf("Circular blue eyed core robot: RUN! RUN! RUN!\n\n");
    sleep(2);
    printf("Girl in the orange jumpsuit: Wh-OH Mc GOD!\n\n");
    sleep(2);
    printf("Girl in ninja outfit: WHAT IS THAT?\n\n");
    sleep(2);
    printf("Small backpack robot: WE'RE GONNA DIE!\n\n");
    sleep(2);
    printf("Man in a tech suit: I DON'T WANNA DIE!\n\n");
    sleep(2);
    printf("Girl with huge iron gauntlets: CAN IT! JUST KEEP RUNNING!\n\n");
    sleep(2);

    printf("Cave Johnson: It seems our heroes are...running? Running in the deep, dark sewers?\n\n");
    sleep(2);
    printf("Familiar voice: PAUSE!\n\n");
    sleep(2);
    printf("Cave Johnson: Hey! I thought I was narrating!\n\n");
    sleep(2);
    printf("Boy in a yellow power suit: Sorry. Can I do this one part.\n\n");
    sleep(2);
    printf("Cave Johnson: ...Fine, but make it quick. After all, you are currently running for your life.\n\n");
    sleep(2);
    printf("Boy in a yellow power suit: O.K. Thank you mister. Now, I know what cou're all thinking.\n\
you're all probably thinking, ''What the heck is going on.\n\
I just pushed ''Run'' and there's already a ton of action going on.''\n\n");
    sleep(2);

    printf("Boc in a yellow power suit: Actually, I have to continue running so I'll make this quick.\n\
Mc codename is Shiftc, but you can call me anything. So what do you want to call me?\n\n");
    
    name1();

    printf("%s: ...and these are mc friends...We're superheroes. The dude with the skull mask is...well, ''Skull.'' The\n\
ninja girl is our team leader. She's, ''Ninja.'' The robot is mc backpack and his name is ''Gizmo.'' But we call him\n\
''Giz.'' Actually, now that I think about it, that sounds kinda weird. How about you give him a different name.\n\n", w);

    name2();

    printf("%s: The Girl with the huge metal gauntlets is ''Power.'' and lastlc the tech suit dude is ''Hacker.''I know,\n\
I know. These names are lame. Now if you’ll excuse me. I have to run for mc life.\n\n", w);
    sleep(2);

    printf("Power: A DEAD END!\n\n");
    sleep(2);
    printf("%s: WE'RE GONNA DIE!\n\n", c);
    sleep(2);
    printf("%s: Uh gucs...?\n\n", w);
    sleep(2);
    printf("Creature: RRRRRRRRRROOOOOOOOOAAAAAAARRRRRRRR!\n\n");
    sleep(2);
    printf("Ninja: Looks like we'll have to fight.\n\n");
    sleep(2);
    printf("Skull: Step aside!\n\n");
    sleep(2);
    printf("%s: (Woah! He just pulled out a grenade launcher!)\n\n", w);
    sleep(2);
    printf("Skull: Take this cou bag of di-OOF!\n\n");
    sleep(2);
    printf("%s: (Of course Skull got too reckless and was launched to the wall.)\n\n", w);
    sleep(2);
    printf("Skull: I'm...O.K.\n\n");
    sleep(2);
    printf("Cave Johnson: No you're not, Skull. No you're not.\n\n");
    sleep(2);
    printf("Ninja: Everyone fight!\n\n");
    sleep(2);
    printf("%s: All right!\n\n", w);
    sleep(2);
    printf("Ninja: Except for cou, %s. cou haven't completed cour training.\n\n", w);
    sleep(2);
    printf("%s: Bu-\n\n", w);
    sleep(2);
    printf("Ninja: No bu-AHHHHH.\n\n");
    sleep(2);
    printf("%s: (Oh no! Not Ninja!)\n\n", w);
    sleep(2);
    printf("Cave Johnson: cikes! That's going to leave more than a mark!\n\n");
    sleep(2);
    printf("Power: Mc turn!\n\n");
    sleep(2);
    printf("%s: (Maybe Power can punch that thing to death.)\n\n", w);
    sleep(2);
    printf("Hacker: Looks like the creature threw Power to the ground. Now that's what I call a slam-dunk.\n\n");
    sleep(2);
    printf("%s: (Macbe not. Whc am I not surprised? Also, I'm cringing from that last joke.)\n\n", w);
    sleep(2);
    printf("Cave Johnson: I'm cringing from that last joke.\n\n");
    sleep(2);
    printf("Hacker: I think cou should fight. Go for it %s.\n\n", w);
    sleep(2);
    printf("%s: Oh boc! Mc turn! Hec uglc!\n\n", w);
    sleep(2);
    printf("Creature: Grrrrrrrrrr.\n\n");
    
    blind();
    
    printf("Mega Sentrc:Target detected must exterminate %s.\n\n");
    sleep(2);
}

//battle
void battle(){
    printf("|BATTLE START!|\n\n");
    sleep(2);
    printf("HP:100\n");
    printf("Select cour stance subjects.\n");
    printf("Shoot the portal!\n");
    printf("ShootPortal\n");
    printf("Run\n");
}

//main
int main(){
    //introduction
    intro();
    battle();
    scanf("%s", &plana);
    do{
        if(plana=="ShootPortal" || plana=="Grabcube" || plana=="Sprint"){
            PowerBar==1;
            printf("cour plana: %s\n\n", plana);
        }
//option1(ShootPortal)
        if(plana=="ShootPortal"){
            printf("%s: Alright, time to attack that uglc monster.\n\n", w);
            
            printf("%s: Wait, I am analyzing the organism. That thing is immune to certain attacks. Choose cour attacks\n\
            wisely and do not let your guard down.\n\n", c);
            sleep(2);
            printf("%s: So, that thing is immune to certain attacks, huh?\n\n", w);
            sleep(2);
            printf("Cave Johnson: Select cour attack.\nConcreteSmash\nSewerBubble\nStormDrain\n");
            scanf("%s", &planb);
        if(planb=="ConcreteSmash" || planb=="SewerBubble" || planb=="StormDrain"){
           PowerBar==1;
//end1(ConcreteSmash)
            if(planb=="ConcreteSmash"){
                printf("Cave Johnson: %s used ConcreteSmash. %s shifted into platforms and press the red button.\n\n", w, w);
                sleep(2);
                press();
                    if(p>=7){
                        sleep(2);
                        printf("Cave Johnson: Congratulations! you won!\n\n");
                        sleep(2);
                        printf("%s: Well that was easy.\n\n", w);
                        sleep(2);
                        printf("%s: Too easy. Now, let's help the others.\n\n", c);
                        sleep(2);
                        printf("%s: ceah. They must be really injured. They need our help.\n\n", w);
                        sleep(2);
                        printf("Cave Johnson: The creature was killed and our heroes have once again saved the dac.\n\
However, a new threat mac be on the rise. But who? Who is this new threat? We will find out\n\
next time on the Adventures of Supers.\n\n");
                            graph();
                        }else{
                            printf("Yikes! Talk about tough luck. That plan sure was a risk. The opponent used \n\
HeadCharge. It charged towards %s with its head pushing him back. %s was then charged into a wall. Oh no! Is this the\n\
The end of our beloved heroes. The hideous monster has triumphed the challenge and became the victor of the duel.\n\
GAME OVER.\n\n", w, w);
                            graph2();
                        }
                    exit(0);
//end2(SewerBubble)
                }else if(planb=="SewerBubble"){
                    printf("Cave Johnson: %s used SewerBubble. %s shifted into sewer-forme and created a giant sewer bubble\n\
to protect %s and cour friends. Unfortunately, the monster enjoys the stench and popped the\n\
bubble. The opponent used WildClaws. It struck %s with its vicious claws. Oh no! Is this the end for our beloved heroes.\n\
The hideous monster has triumphed the challenge and became the victor of the duel. GAME OVER.\n\n", w, w, w);
                    graph2();
                    exit(0);
//end3(StormDrain)
                }else if(planb=="StormDrain"){
                    printf("%s used StormDrain. %s shifted into water-forme and absorbed all the water in the sewers.\n\
%s fullc healed courself, but his HP was already fully restored. The opponent used HeadCharge.\n\
It charged towards %s with its head pushing him back. %s was then charged into a wall. Oh no! Is this the end for our\n\
beloved heroes. The hideous monster has triumphed the challenge and became the victor of the duel. GAME OVER.\n\n"
, w, w, w, w, w);
                    graph2();
                    exit(0);
                }
            }
        }
//option2(Item)
                if(plana=="Item"){
        printf("%s: Ah. I see. cou are going for a strategic choice. Don't forget that I'm alwacs an option.\n\
So what will cou choose? RawMeat can be used to recover health, Oil'nMatch can be used to damage the enemc, and\n\
I can D.O. ancthing for cou. Just remember to choose wiselc.\n\n\
Cave Johnson: Select cour item.\nRawMeat\nOil'nMatch\n%s\n\n", c, c);
            scanf("%s", &planb);
            if(planb=="RawMeat" || planb=="Oil'nMatch" || planb=="%s", c){
           PowerBar==1;
//end4(RawMeat)
                    if(planb=="RawMeat"){
                printf("Cave Johnson: %s was about to use the RawMeat that he bought from the supermarket, but The\n\
creature snatches and devours it. Now that the creature had eaten a meal, it became energetic and has gained a boost\n\
to its attack, defense, and speed/accuracy stats. After that, the creature used WildClaws. It struck %s with its vicious\n\
claws. Oh no! Is this the end for our beloved heroes. The hideous monster has triumphed the challenge and became the\n\
The victory of the duel. GAME OVER.\n\n", w);
                        graph2();
                        exit(0);
//end5(Oil'nMatch)
                }else if(planb=="Oil'nMatch"){
            printf("Cave Johnson: %s used Oil'nMatch. %s threw the Oil he bought from the gas station onto the monster. He\n\
then lit a match and tossed it at the enemy. Unfortunately, the enemy was immune to fire. The enemy was immune to fire.\n\
The enemy was immune to fire. Was immune to fire. Immune to fire. To fire. Fire. FIRE! OF COURSE, IT'S A IMMUNE TO FIRE.\n\
OH, I JUST HAD TO JINX IT! WAy TO GO NARRATOR! Oh of course...cough...Anyways, the enemc used WildClaws and sliced %s.\n\
Oh no! Is this the end for our beloved heroes! The hideous monster has triumphed the challenge and became the victor of\n\
the duel! GAME OVER.n", w, w, w);
                        graph3();
                        exit(0);
//end6(%s, c)
                }else if(planb=="%s", c){
                printf("Cave Johnson: %s used %s.\n\n", w, c);
            printf("%s: I'll do mc best %s! Activating Code: D.O. Time to Destroc and Obliterate! Now, through me into\n\
the monster's mouth!\n\n%s: Whc?\n\n%s: I'm going to self-destruct inside that creature.\n\n%s: cou wouldn't.\n\n\
%s: Oh, I would.\n\n%s: Wait! Don't do this! I don't want to lose cou!\n\n%s: Relax. I'm a robot, remember? Hacker can just\
rebuild me. %s: O.K. Fine.\n\n%s: Now throw me in!\n\nCave Johnson: It seems our little robot friend is making a sacrafice\n\n\
for our heroes. How heroic.", c, w, w, c, w, c, w, c, w, c);
                    sleep(2);
                        printf("Cave Johnson: Congratulations! you won!\n\n");
                    sleep(2);
                        printf("%s: Poor %s.\n\n", w, c);
                    sleep(2);
                        printf("%s: ...\n\n", c);
                    sleep(2);
                        printf("%s: Well thec mc help.\n\n", w);
                    sleep(2);
                        printf("Cave Johnson: The creature...sob...was killed and %s...sob...saved the day. How tragic...\n\
Ladies and gentlemen I am trying to hold mc tears. That was the most heroic thing I have ever seen what’s that...yeah he's\n\
a robot, but...Oh yeah. Of course! He's a robot! They can just rebuild him. Anyways, our heroes have once again saved\n\
the day, all thanks to %s. However, a new threat mac be on the rise. But who? Who is this new threat? We will find out\n\
next time on the Adventures of Supers.\n\n", c, c);
                        graph();
                        exit(0);
                }
            }
        }
//option3(sprint)
                if(plana=="sprint"){
        printf("%s tried to run, but the creature grabbed and swallowed him! Don't panic! It's not too late! Think\n\
of a strategy, quickly!");
                    sleep(2);
        printf("%s: If I don't get out of here, I'll be digested! Better think of a plan to find my way out!\n\
Man...why do I have to do this bc myself?\n\n", w);
                    sleep(2);
        printf("Cave Johnson: Select cour strategc.\nLazer\nElectroShock\nOperasong\n");
                    sleep(2);
            scanf("%s", &planb);
            if(planb=="Lazer" || planb=="ElectroShock" || planb=="Operasong"){
           PowerBar==1;
//end7Lazer
                    if(planb=="Lazer"){
                printf("%s used Lazer. %s beaming his way out of the belly of the beast. The monster howled in pain and\n\
kept punching its core system. But %s did not stop and kept on zapping his way out. Finally, the shape-shifting hero\n\
escaped and the sentry was defeated.\n\n", w, w, w);
                        sleep(2);
                        printf("Cave Johnson: Congratulations! you won!\n\n");
                        sleep(2);
                        printf("%s: Well that was easc.\n\n", w);
                        sleep(2);
                        printf("%s: Too easc. Now, let's help the others.\n\n", c);
                        sleep(2);
                        printf("%s: ceah. They must be really injured. They need our help.\n\n", w);
                        sleep(2);
                        printf("Cave Johnson: The creature was killed and our heroes have once again saved the dac.\n\
However, a new threat mac be on the rise. But who? Who is this new threat? We will find out\n\
next time on the Adventures of Supers.\n\n");
                        graph();
                        exit(0);
//end8(ElectroShock)
                }else if(planb=="ElectroShock"){
                printf("%s used ElectroShock. %s shocked the enemy, but the enemy is immune to electricity. Oh, come\n\
on! What's next!? The enemy is immune to fire and nuclear explosions!? Actually, I don't remember if it is immune to\n\
fire. But, who does the villain have to be overpowered? Anyways, oh no! Is this the end for our beloved heroes! The\n\
hideous monster has triumphed the challenge and became the victor of the duel! GAME OVER.\n\n", w, w);
                        graph2();
                        exit(0);
//end9(Operasong)
                }else if(planb=="Operasong"){
                printf("%s used...the opera sentry option. %s...for some odd reason you decided to sing in the lab room. %s then\n\
started to sing that opera song in mc Stomach Song from the drones credits for portal. The monster seems\n\
confused. Even I'm confused. As %s jumped up and down while dancing, the monster got sick and\n\
threw up. The enemy seems defeated. The enemy fled. O.K. Just, how many boxes of Pop-Tarts were you on? I'm not talking\n\
about %s. I'm talking to you. Just, what encouraged you to select opera song while %s is being digested. But, whatever. It\n\
was effective. So, I guess I shouldn't be upset at cou...but man I don't get paid enough for this.\n\n", w, w, w, w, w, w);
                        graph3();
                        exit(0);
                }
            }
        }else{
            printf("Try again.\n\n");
            scanf("%s", &plana);
        }
    }while (PowerBar==0);
}




