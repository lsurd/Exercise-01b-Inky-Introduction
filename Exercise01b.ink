/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Basic Choices
 - Knot structure
 - Recurring choices
 - Conditionals in descriptions
 - Conditionals in choices
 
 In the assignment:
 - Add four more knots (and feel free to change any of the example text, this is YOUR story)
 - Add at least one more conditional
*/

This is our basic story example! Goodbye!
->home

== home ==
Earlier this morning you'd forced yourself out of your simple hovel for one, promising yourself you'd get around to an adventuring gig. Surely there'd be at least one exciting looking one for today. After dressing in some comfortable adventure worthy atire you head out the door. 
+[Head to town to visit the job board] -> job_board
*[It's too early for all that, head back to sleep] -> dialouge_option

== job_board ==
Reading over the options only one really catches your eye, once you're able to brush past all the advertisements and scam listings which were easy enough to weed out. 
+[help wanted at the shoreline: 200 gold piece reward for a hard days work!] -> shoreline

== dialouge_option ==
Well that just won't do. How do you expect to pay this weeks rent?! Miss Lottie already said you were pushing your luck on your payments. 
*go back -> home

== shoreline ==
Once you reach the shoreline you notice a stout jolly looking man with pale blue skin and fins jutting out of the space where his ears sit, chatting with a taller tan woman with dark hair pushed out of her hair, both dressed in coveralls. Upon noticing your enterance he turns to fully face you with a large smile,
"Well what brings you down here this fine afternoon?" 
*["I'm here for the post on the job board"] -> begin_shoreline_job
*["I'm just exploring the area"]-> melancholy_response
+["A couple of wrong turns, I'll be on my way!"] -> job_board


== melancholy_response == 
"I wish the area were a bit more worth exploring at the moment! With the rowboat wreckage we have to keep the area under close servalance so no one gets hurt. With just my co-captain and I it probably won't be ready until tomorrow at the earliest!" 
*["I'm sorry to hear that, maybe I could return on a better day."] -> job_board
*["I could help you get it done! I'd seen a job listing for it anyways!"] -> begin_shoreline_job
== begin_shoreline_job ==
The fisherman fishman clapped his hands together with a hardy chuckle, leading you further towards the shore. Upon further inspection you notice driftwood splayed all across the beach, as well as fishing nets and bits of seaglass shining in the sun.
"My name is Fineus, and my co-captain here is Sal. She and I will guide you through the job."
* [You hold out a hand to be shaken "Right then, let's get this job started"]-> job_options

== job_options ==
With Fineus, Sal, and yourself on the job it should be finished by sundown, if not before! 
"Which area would you like to start on?" Sal asked, already rolling her sleves up in preparation of the days work. 
+["I can start on the driftwood"] -> driftwood_pickup
+["The nets seem like they need untangling"] -> net_organizing
+["It'd be dangerous to just leave the seaglass laying out like that"] -> pickup_seaglass

== net_organizing ==
Looking over the nets, you notice Fineus drift towards the driftwood and Sal make her way towards the seaglass. The nets seem easy enough to untangle, and you make quick work of the rope, eventually folding them into tidy squares away from the shoreline. 
+[tell Sal you've finished the work] -> Sal
+[tell Fineus you've finished the work] -> Fineus
+[sit quietly] -> tease

== pickup_seaglass ==
Before starting on the seaglass you notice a small bin, one with paper bags and the other with plastic.
*[grab a plastic bag]->use_plastic
*[grab a paper bag] -> use_paper

== use_plastic ==
You use the plastic bag to hold the seaglass, and utilize a small grabber to pick up the sharp pieces. There's a moment of horror as you realize the bag begins to tear! Luckily you're almost done and are able to collect the last of the pieces before any bits of plastic or glass escape into the environment. 
+[tell Sal you've finished the work] -> Sal
+[tell Fineus you've finished the work] -> Fineus
+[sit quietly] -> tease

== use_paper ==
You make quick work of the seaglass, utilizing a small grabber to avoid cutting yourself on the sharp glass. The bag holds strong against the glass making the work fly by. 
+[tell Sal you've finished the work] -> Sal
+[tell Fineus you've finished the work] -> Fineus
+[sit quietly] -> tease

== driftwood_pickup ==
"Alrighty" Fineus began, "You get to work on that driftwood, I'll work on the nets, and Sal you're on seaglass!" 
Sal nodded and began to diligently work on the seaglass leaving you with the driftwood. Near the first piece you notice a pair of large leather gloves. 
+[you put on the gloves] -> work_w_gloves
+[you begin placing the wood in organized stacks] -> wood_in_stacks_splinters

== wood_in_stacks_splinters==
Yowch!! As you go to pick up the wood you get a pretty nasty splinter. 
+[power through the splinter and continue to work]-> work_wo_gloves
+[put on the gloves] -> work_w_gloves

== work_wo_gloves ==
You finish up your work placing the wood in neat stacks far enough from the shore that they don't risk being pulled back in by the tide. You swear you see a couple dots of red lining the sand, but promptly ignore it. 
+[tell Sal you've finished the work] -> Sal
+[tell Fineus you've finished the work] -> Fineus
+[sit quietly] -> tease 

== work_w_gloves ==
With your hands safely gaurded you quickly get to work placing the wood in neat stacks far enough from the shore that they don't risk being pulled back by the tide. 
+[tell Sal you've finished the work] -> Sal
+[tell Fineus you've finished the work] -> Fineus
+[sit quietly] -> tease 

== tease ==
A few quiet moments pass before you realize both Fineus and Sal are staring right at you from a far off spot on the beach. Once you lock eyes with the two of them, they burst into laughter leaning on one another for support. Both look just about ready to fall to the floor. As you walk towards the duo Fineus dries his eyes and Sal holds a hand to her lips. An attempt to save whatever of your pride is left. 
"You don't have ta be so shy kiddo just let us know whenever you're finished with a job." Fineus says, leading the way to where you began before. 
"You did a great job here today, you should be proud!" Sal added in. 
* ["thanks."]-> paytime
* ["It's all in a days work"] -> paytime

== Fineus ==
"What a fine job you've done here! Sal better look out for her position as co-captain the way you're workin!" Fineus chuckles slapping you so hard on the back you swear you black out for just a moment from the impact. Though you recover quick enough to follow him back to where you began before. 
* ["thanks."]-> paytime
* ["It's no problem really"] -> paytime
* ["whatever"] -> paytime_old

== Sal ==
"you finished mighty quickly! Feel free to come to the shore anytime you need something or some extra coin, you've got a wonderful work ethic." Sal notes, leading you back to where you began before.
* ["thanks, I'll think about it."]-> paytime
* ["It's no problem really"] -> paytime
* ["whatever"] -> paytime_miffed

== paytime_miffed ==
Sal fixes you with a warning look, before offering out the bag of gold. 
* [take the payment] -> gold
*[Don't take the payment]-> no_gold

== paytime_old ==
Fineus glances down at you with a mischevious glint in his eye and a soft chortle, offering out a bag of gold. 
* [take the payment] -> gold
*[Don't take payment]-> no_gold

== paytime ==
Sal and Fineus look between eachother. Sal then reaches over and grabs a pouch of gold presenting it to you. {take the payment:| home_final }
* [take the payment] -> gold
*[Don't take payment]-> no_gold

== gold ==
you've obtained 200 gold pieces! 
*[now tired out from a long days work you head back home.]-> home_final

== no_gold ==
What do you think you're doing? That payment was the whole reason you got out of your warm comfortable bed! Go back and get that gold, you've earned it. 
*[return to the shoreline] -> paytime

== home_final ==
Once you walk in the door, you feel the heaviness of the day weigh on you. It's not intrusive or fully uncomfortable, but rather peaceful as you place your gold on your nightstand and promptly pass out happy and fulfilled. Maybe you'll even get a chance to visit the shoreline another day. 
-> END
/* I'm not toally sure I did the conditional in the correct format, but I think I got the idea of the conditional in a very round about way. I saved the conditional for last, and watched the video and ran through it on the inky page a couple times. I'll most likely ask you about it after class on thursday :] 


