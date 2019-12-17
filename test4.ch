#include<chplot.h>
//declare

string_t Sprint, ShootPortal, Grabcube, w, c, plana, planc, planb, j, k, taunt;
int PowerBar, p, f, d;

void declarations(){
    string_t Sprint, ShootPortal, Grabcube, w, c, plana, planc, planb, j, k, taunt;
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
    printf("GLaDOS: Do you have a slander for the large sentry? By using the two words, Yes or No I can decide your input?\n\n");
    scanf("%s",&j, &k);
    if(j=="Yes" || k=="No"){
        if(j=="Yes"){
            printf("GLaDOS: What is your damaging use of vocabulary toward the sentry?\n\n");
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
        printf("GLaDOS: %s pressed the red button and got a %d and a %d. %s dropped a heavy sharp-edged wall on the large sentry %d\n\
time(s) resulting in the death of the robot program.\n\n", w, f, d, w, p);
    }else{
        printf("GLaDOS: %s pressed the red button and got a %d and a %d. %s dropped a heavy sharp-edged wall on the sentries %d\n\
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
   printf("GLaDOS: Welcome, guests, to Aperture Science. Astronauts, war heroes,\n\
Olympians... you're here because we want the best, and you are it.\n\
 So, who is ready to make some science!? Haha! Now, you've\n\
 already met one another on the limo ride over, so let me introduce myself. I'm GLaDOS. I own the place.\n\
 You guys are my test subjects for this large facility that can move and rebuild with platforms.\n\
 Anything you guys plan my eyes is everywhere I decide when you can leave\n\
 then celebrate your birthday. The best day of your life\n\
 to breathe earth air and live outside this prison of obstacles. To get started with\n\
    you have a portal gun that can only shoot two portals of different colors.\n\
You can also grab objects commonly a cube to place on red buttons. And \n\
finally, you press buttons to damage the sentries health.\n\n");
    sleep(2);
    printf("Spherical blue-eyed core robot: Wake up guys you have been asleep for a day\n\
    and this room has been quiet for a while, shooting the portal to the ceiling will get us closer to an exit.\n\n");
    sleep(2);
    printf("Girl in the orange jumpsuit: My head has really bad pain, did you amputate my frontal lobe? I just noticed I can talk again.\n\n");
    sleep(2);
    printf("Doug Rattmann: Nice to know that this is the only room with a bed and refrigerator packed with food.\n\n");
    sleep(2);
    printf("Spherical blue-eyed core robot: Well now that we reached this exit I just wanted thank you guys for your best efforts\n\
...beep… I just clicked on shut on switch GLaDOS knew we were here run! \n\n");
    sleep(2);
    printf("Doug Rattmann: Are you clumsy as a robot I don’t expect you to make simple mistakes tell me you aren’t working with GlaDOS!\n\n");
    sleep(2);
    printf("Girl in the orange jumpsuit: Doug he isn’t, I caused him to turn the switch when\n\
    I was excited about leaving this cesspool. Oh, dear\n\
    GLaDOS is awake keep calm everything is going well we just need\n\ to portal out of here, ouch that big claw of metal hearts… just\n\ great we are all being tested in the program again\n\n");
    sleep(2);

    printf("GLaDOS: It seems my novices are recalling how fun testing really was.\n\ After you guys were so eager to awaken me from the\n\ power switch. Running in the deep, dark damaged system without\n\ light could cause you to fall into my pit of magma. After you guys killed me my maintenance\n\ has undergone temporary damage. I will try to make my tests much more \n\challenging than they should be… conceivably, I can’t destroy\n\ you since you are the only smart human in the factory.\n\n");
    sleep(2);
    printf("Doug Rattman: Hold on GLaDOS after rebooting you how come you forgot my friend’s \n\names looks like I damaged some of your obstacles now this could\n\ be used as an escape route or blind spot. \n\n");
    sleep(2);
    printf("GLaDOS: Hey Doug I am going to make sure I place more\n\ turrets in locations you would never notice.\n\n");
    sleep(2);
    printf("Girl in the orange jumpsuit: I am trying to use the portal to reach test room five\n\, these come the platforms are timed in removal.\n\ I better use a cube and launch it on the red button.\n\n");
    sleep(2);
    printf("GLaDOS: ...Fine, I will let you pass room five and send you to six, also I will\n\ ask for your name at a short while right after I ask \n\my other loyal cores to repair my system settings. \n\n");
    sleep(2);
    printf("Girl in the orange jumpsuit: This new room isn’t as bad, I need the break room to be\n\ installed for this clumsy blue core to catch a break on energy life;\n\ he may need solar light to recharge.''\n\n");
    sleep(2);

    printf("Spherical blue-eyed core robot: Actually, I have ten percent charge on this side weapon I found from test three.\n\
My code name for your information GlaDOS is Wheatley. But since I am created\n\ by a human what do you want to call me?\n\n");
    
    name1();

    printf("%s: ...these companion cubes deserve a name too but I guess a lower level of thinking in this facility is used for torture and waste of natural resources. How about you give her a different name.\n\n", w);

    name2();

    printf("%s: Looks like GlaDOS  kept a seperate room on test room nine in a jungle.\n\n", c);
    sleep(2);

    printf("Doug Rattmann: A door with no other escape!\n\n");
    sleep(2);
    printf("%s: Does this mean we can leave from here?\n\n", c);
    sleep(2);
    printf("%s: Uh guys apparently this is the room with the large turret?\n\n", w);
    sleep(2);
    printf("Large sentry: Target detected! Must attack in order meet GlADOS’s requirements\n\n");
    sleep(2);
    printf("Doug Rattmann: Looks like we'll have to demolish it my portal gun has one portal on the sharp platform that crushes.\n\n");
    sleep(2);
    printf("%s: Step aside I got this sentry it just needs to be uncoded!\n\n",c);
    sleep(2);
    printf("%s: (It is firing take cover, I just noticed it can place mines!)\n\n", w);
    sleep(2);
    printf("%s: Take this you reckless machine! Aaah…(explosion)… ouch.\n\n",c);
    sleep(2);
    printf("%s: (This is worst than expected %s got knocked out we only have you Rattmann.)\n\n",w, c);
    sleep(2);
    printf("%s: I am fine just need some time to lay down.\n\n",c);
    sleep(2);
    printf("GLaDOS: I am getting close to making a cake after you guys finish fighting my bot.\n\n");
    sleep(2);
    printf("%s:I can’t stand your insults to target my friends I never got to see the\n\ world I lived in this place my enire life, and I don’t want die here.\n\n", w);
    sleep(2);
    printf("%s: Except for you, %s. You haven’t helped figure out the method to defeat a large sentry.\n\n",c, w);
    sleep(2);
    printf("%s: I need to work with Rattmann to deactivate this give me some time.\n\n", w);
    sleep(2);

    printf("%s: (Oh no not another sentry I’m placing the shields)!\n\n", w);
    sleep(2);
    printf("%s: (Maybe my program can turn off the lights).\n\n", w);
    sleep(2);
    printf("Rattmann: Now from my perspective GlaDOS doesn’t have a sense of thought.\n\n");
    sleep(2);
    printf("%s: (This is the part where we are given options to attack this bot).\n\n", w);
    sleep(2);
    printf("Large Sentry: GlaDOS wants to test your guys’s train of thought, try to escape.\n\n");
    
    blind();
    
    printf("Mega Sentry:Target detected must exterminate %s.\n\n");
    sleep(2);
}

//battle
void battle(){
    printf("|Attack plan!|\n\n");
    sleep(2);
    printf("HP:100\n");
    printf("Select cour stance subjects.\n");
    printf("Shoot the portal to activate sharp spiked platform!\n");
    printf("Grab a cub to place on red button to go to the next test.\n\ Then drop it in quick sand. \n");
    printf("Run to throw the blue core for deactivation.\n");
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
            printf("your plana: %s\n\n", plana);
        }
//option1(ShootPortal)
        if(plana=="ShootPortal"){
            printf("%s: Alright, time to attack the sentries.\n\n", w);
            
            printf("%s: The sentry has a strong encryption. It can avoid certain types of sand and has a fairly fast speed of firing. Choose your attacks\n\
            In a decisecive manner.\n\n", c);
            sleep(2);
            printf("GLaDOS: Select cour attack.\nTreeDrop\nSewerAcid\nPowerShutoff\n");
            scanf("%s", &planb);
        if(planb=="TreeDrop" || planb=="SewerAcid" || planb=="PowerShutoff"){
           PowerBar==1;
//end1(TreeDrop)
            if(planb=="TreeDrop"){
                printf("GLaDOS: %s used TreeDrop. %s shifted into platforms and \n\press the red button to cause the tree to tilt the machine and spike it at the weak spot.\n\n", w, c);
                sleep(2);
                press();
                    if(p>=7){
                        sleep(2);
                        printf("GLaDOS: With the planned approaching you guys solved my puzzle!\n\n");
                        sleep(2);
                        printf("%s: Well that was easy I would expect a greater challenge next time.\n\n", w);
                        sleep(2);
                        printf("%s: I am expecting something much easier I found\n\ the options lowered when Rattmann is slow at running compared to a robot.\n\n", c);
                        sleep(2);
                        printf("%s: These bots are programmed with the sound of compassion but no ending to this process.\n\n", w);
                        sleep(2);
                        printf("GLaDOS: I have absolute immunity and I can cheat in the game, the whole point is the personal management for development in science.\n\
However, a new thought came to my mind I am just a simple super computer founded by\n\ Cave whom I never knew would let me\n\ take over. I am the one who attacked your parents %s and you will\n\ never see them till the end of time.\n\n",c);
                            graph();
                        }else{
                            printf("Talk about bad calculating. That plan sure was a risk. The opponent used \n\
Rapid-fire. It stunned %s with its fake projectiles pushing \n\her back into the platform. %s was then clamped into a wall. I \n\am ashamed of how a rocket scientist could have solved this \n\better than you. Oh no! Is this the part where we are all disparaged\n\ and lose due to our chances of selection. \n\
What are you doing, are you just \n\having a little five minutes to yourself? Fair enough, a character in Star Wars has respect from the young Jedi and both of my friends are unconsciously waiting to let me disclaim my thought conspicuously. You've had a rough time. You've been asleep for who knows how long. \n\You've got the massive brain damage. And you're having a little rest. But NOW.\n\ Get yourself up. And pick me up, it is no joke with no legs life is miserable.\n\
GAME OVER\n\n", c, c);
                            graph2();
                        }
                    exit(0);
//end2(SewerAcid)
                }else if(planb=="SewerAcid"){
                    printf("GLaDOS: %s used SewerAcid. %s shifted into using dangerous liquids and created a giant sewer globule\n\
to protect %s and his friends. Unfortunately, the sentries are acid-proof and the scent contains no damaging effect to its sense\n\
it’s a robot. The opponent used Electricburner. It struck %s with its shocking systematic cable claws that have heating burners to melt flesh. Great Scott, Rattmann has a reflect of damaged senses from the stench of nitric acid.\n\
The overpowered machine has triumphed the challenge and became\n\ the vanquisher of the engaged escape plan. Apparently, \n\my sentries are much more complex than the core with two other\n\ humans. Am I in danger?" Let me answer those questions with a question. Who \n\wants to make 60 dollars!? Cash. You can also feel free to relax for up to 20 minutes\n\ in the waiting room. Which is a darn side more comfortable than the park\n\ benches most of you were sleeping on when we found you.\n\ For many of you I realize that 60 dollars are an unprecedented windfall, \n\so don't go spending it all on... I dunno, %s, what do these people buy?\n\ Tattered hats? Beard dirt?"GAME OVER.\n\n", c, c, c, w);
                    graph2();
                    exit(0);
//end3(PowerShutoff)
                }else if(planb=="PowerShutoff"){
                    printf("%s: %s used PowerShutoff. %s shifted into the method of closing lights to make the bots shoot at one another and Rattmann would shoot a portal to escape with silence.\n\
%s fully healed herself, but her health was already fully restored. The opponent used rapid-fire immediately before the plan so everyone is stunned.\n\
It fires in the direction %s with the other bot placing mines back again\n\. %s was then clamped into a wall and the blue core wines over\n\ his incompetent friends. Oh no! Is this the end for our\n\
beloved friends. The repulsive sentries have triumphed the challenge and became the conqueror \n\of the contest. I will say this, and I'm going to say it on tape so everybody hears it\n\ a hundred times a day. If I die before you people can pour me into a human, I want Cave to run this place. Now he would argue. Otherwise modest like that, but you make him! Heck, put him on my computer, I don't care. Alright, tests over. GAME OVER.\n\n"
,w, c, c, c, c, c);
                    graph2();
                    exit(0);
                }
            }
        }
//option2(Grabcube)
                if(plana=="Grabcube"){
        printf("%s: Well you are going for a strategic choice of receiving the assistant cube. Don't forget that I'm always an option.\n\
So what will you choose? bloodfusion can be used to recover health, portalflame can be used to damage the enemy, and\n\
I can apply for any plan for you. Just remember to choose decisively.\n\n\
GLaDOS: Select cour Grabcube.\nbloodfusion\nportalflame\n%s\n\n", w, w);
            scanf("%s", &planb);
            if(planb=="bloodfusion" || planb=="portalflame" || planb=="%s", c){
           PowerBar==1;
//end4(bloodfusion)
                    if(planb=="bloodfusion"){
                printf("GLaDOS: %s was about to use the bloodfusion that he bought by Rattmann to help %s from prior damage, but the\n\
Sentries are gaining on its cover location and fires %s from behind coincidentally. Now that the sentries had fired one member the Rattmann decides to give up and surrender, but he is also fired at by the sentries.\n\
To its attack, defense, and speed and accuracy statistic in the firing. After that, the sentry used a power charge. It deactivates %s from talking so the robot is the most powerful thinker \n\
In luck games. Alright, I've been thinking.\n\ When life gives you lemons, don't make lemonade! Make life take\n\ the lemons back! Get mad! I don't want your darn lemons! \n\What am I supposed to do with these! I \n\demand to see life's manager! Make life rue the day it thought it\n\ could give Cave Johnson lemons! You know who I am! I'm the robot who's gonna burn\n\ your house down! With the lemons! I'm gonna \n\get my engineers to invent a combustible lemon that burns your house down!!. GAME OVER.\n\n", c,c,w);
                        graph2();
                        exit(0);
//end5(portalflame)
                }else if(planb=="portalflame"){
            printf("GLaDOS: %s used portal frame. %s threw the cube from the side of the covered post onto the sentries. It\n\
Obviously, the cube missed hitting the two targets the good thing was that they launched a portal to make the cube land on the button on dropping the sentries on the fire pit of magma. Unfortunately, the enemy was immune to fire.\n\
As a side joke to add an extra sentence, the consideration that an enemy could not die from the fire makes the sentry invincible./n/ Just a heads up, that coffee Cave gave you guys earlier had fluorescent calcium \n\in it so we can track the neuronal activity in your brain. There's a slight chance\n\ the calcium could harden and vitrify your frontal lobe. Anyway, don't\n\ stress yourself thinking about it. I'm serious... Visualizing the scenario\n\ while under stress actually triggers the reaction.\n\
As a joke, the sentry wasn’t above the flaming pit so it immediately targeted %s.\n\
The blue core saddened for the second time in this option he loses to a simple two giant sentry that could possibly outwit the logic of the game.\n\
 GAME OVER!n", c, c, c);
                        graph3();
                        exit(0);
//end6(%s, c)
                }else if(planb=="%s", w){
                printf("GLaDOS: %s used %s.\n\n", c, w);
            printf("%s: I'll do my best %s! Activating Code: I need you to throw me so I can attach to the side of Glados in the portal from when we first met \n\
Heart of the computer!\n\n%s: Why?\n\n%s: I'm going to system override with the rest of the cores.\n\n%s: Alright, this sounds great.\n\n\
%s: Oh, I wouldn’t feel well if the core takes over.\n\n%s: Wait! Don't do this! I don't want to lose you! I don’t want your memory chip to be corrupted\n\n%s: Relax. I'm a robot, remember? Rattmann can just rebuild me. %s: That sounds like a plan.\n\n%s: Now throw me in!\n\nGLaDOS: It seems our little robot friend is making a sacrafice\n\n\
I just want to say I miss you guys and if you want to \n\remove one power you are going to deal with another bad me.", w, w, c, w, w, c, w, w, c, w);
                    sleep(2);
                        printf("GLaDOS: Congratulations! you guys won one of my hardest tests!\n\n");
                    sleep(2);
                        printf("%s: I really miss the old %s.\n\n", c, w);
                    sleep(2);
                        printf("%s: Woow I really love this new body I think I could just keep you guys here too\n\n", w);
                    sleep(2);
                        printf("%s: What are you saying I helped you up there?.\n\n", c);
                    sleep(2);
                        printf("GLaDOS: The robot could have been a good friend but %s was warned. How tragic...\n\
This is very sad for the best friend to be replaced as another computer power.\n\ That is in a sense useful as the victory without a\n\ doubt I have been replaced from the testing chambers council\n\
What is this? %s gets help from me to defeat her friend \n\and win back my position this seems honorable for a next ending.\n\
All-day, all thanks to %s. I plan to formulate the choir in the sense of a birthday\n\ reward for restoring order from an evil best friend. If\n\ you've cut yourself in the course of this test, you might notice that\n\ your blood is pure gasoline. That's normal. We've been shooting you with a \n\invisible laser that's supposed to turn blood into gasoline. So all that means is it's working.\n\ To be continued on Portal adventure.\n\n", w, c,c);
                        graph();
                        exit(0);
                }
            }
        }
//option3(sprint)
                if(planc=="sprint"){
        printf("%s tried to run, but the sentries had arms grabbed and stunned Rattmann! There is no need to worry always a way to surive\n\
of a strategy, quickly!");
                    sleep(2);
        printf("%s: If I don't get out of here, I'll be mentally incapable of winning! Better think of a plan to find my way out!\n\
This irritation to the mind do I have to do this because of my friends?\n\n", w);
                    sleep(2);
        printf("GLaDOS: Select cour strategy.\nLazer\nElectroShock\nOperasong\n");
                    sleep(2);
            scanf("%s", &planb);
            if(planc=="Lazer" || planc=="ElectroShock" || planc=="Operasong"){
           PowerBar==1;
//end7Lazer
                    if(planc=="Lazer"){
                printf("%s used Lazer from the generated code of %s and used the portal gun to find the exact point the sentries were planning to walk towards. %s beaming his way out of the center of the sentries to make them implode. The Sentries started burning and\n\
kept punching its core system. But %s did not stop and kept on zapping his way out. Finally, the Rattmann made sure the sentry was permanently executed using the portal gun to drop it in the flaming pit to, after all, most of the pieces left were scrap metal\n\
The friends escaped and the sentry was defeated.\n\n", c, w,c, c);
                        sleep(2);
                        printf("GLaDOS: Congratulations! You guys won!\n\n");
                        sleep(2);
                        printf("%s: Well that was easier than expected.\n\n", w);
                        sleep(2);
                        printf("%s: With this level expect the hardest things later..\n\n", c);
                        sleep(2);
                        printf("%s: Yeah, I never knew the other cores could recieve damage from the main owner of the facility..\n\n", w);
                        sleep(2);
                        printf("GLaDOS: The sentries defeated and much harder tests ahead show gratitude and cooperation on achievement.\n\
With the new hope in direction the group needs to find more tests under achievemnts. We will find out\n\
next time on the Adventures Portal.\n\n");
                        graph();
                        exit(0);
//end8(ElectroShock)
                }else if(planc=="ElectroShock"){
                printf("%s used ElectroShock. %s shocked the enemy, but the enemy is immune to\n\ electricity. Obviously, if you shock or stun a robot it\n\ will pause which gives enough time to launch\n\ the portal or sprint for the clear escape. The bad thing is this is the game of luck and\n\ the robot fires at the group when the portal gun shoot to create the electric field from %s. \n\In case you're interested, there are still some positions available for that bonus opportunity I\n\ mentioned earlier. Again, all you gotta do is let us disassemble you. We're not banging rocks\n\ together here, we know how to put a man back together. So, that's a complete \n\reassembly. New vitals, spit shine on the old ones.\n\ Plus we're scooping out tumors. Frankly, you should be paying us. GAME OVER.\n\n", w, w,w);
                        graph2();
                        exit(0);
//end9(Operasong)
                }else if(planc=="Operasong"){
                printf("%s used...the opera sentry option. %s...for some odd reason you guys decided to sing in the lab room. %s then\n\
started to sing that opera song in from the drones credits for Portal. The sentries seem\n\
confused. Even I'm disoriented. As %s jumped up and down while dancing, the Sentry got in the mood and\n\
Sang along the credits. The enemy seems reduced. The enemy remained and created allies but it showed some artistic capabilities for cooperation in music. So how long has this song been going on just for hours and hours\n\
 %s. I'm talking to you. Just, what encouraged you to select opera song while %s is being digested. But, whatever. It\n\
was effective. So, I guess I shouldn't be upset at you...but man \n\the selection of music overall and decision making was\n\ obnoxious for me personally enough for this. For this winning victory, I want to\n\ to congratulate everyone for joining a celebrating opera for peace in science using\n\ music to relate to waves in physics, after all this entire code has to come to an end\n\ with a famous Cave quote ’ ’Since making test participation\n\ mandatory for all employees. The quality of our test subjects\n] has risen dramatically. Employee retention, however, has not. [sick cough] As a\n\ result, you may have heard that we are going to phase out human testing. There are\n\ still a few things to wrap up, though. First up, conversion gel. [sick cough] The\n\ bean counters\n\ told me we literally could not afford to buy 7 dollars worth of moon rocks much less\n\ 70 million. Bought 'em anyway, ground them up, mixed them into a gel... and guess\n\ what! Ground-up moon rocks are pure poison! I am\n\ deathly ill. Still, it turns out that they are a \n\great portal conductor. So\n\ now, we're going to see if jumping in and out of these portals \n\can leach the lunar poison out of a man’s bloodstream. When life gives you lemons, make \n\lemonade. [sick cough] Let's all stay positive and do some science.’ ‘ \n\n", c, c, c, c, c, c);
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





