--[[

  The jokes module introduces the following:
  -- sends random jokes to the client 
  
  TODO: add more jokes

]]--

local funFacts = {
   "[\f0PASTA-TIP\f7] Eat your carbs!"
  ,"[\f0PASTA-TIP\f7] Carbohydrates stimulate serotonine production: eat pasta and be happy!"
  ,"[\f0PASTA-TIP\f7] Did you know Chinese people invented spaghetti? Problem is, they suck at cooking."
  ,"[\f0PASTA-TIP\f7] Did you know Thomas Jefferson introduced pasta in USA? Yeah, I don't care either."
  ,"[\f0PASTA-TIP\f7] Feeling hungry? Get yourself some awesome pasta!"
  ,"[\f0PASTA-TIP\f7] Never trust a woman who can't cook pasta. Never."
  ,"[\f0PASTA-TIP\f7] Hey, is that a pasta cup? I'm eating that, see you later!"
  ,"[\f0PASTA-TIP\f7] I'm not saying pasta is good. Pasta is BEST."
  ,"[\f0PASTA-TIP\f7] Did you hear about the italian chef that died? He pasta way."
  ,"[\f0PASTA-TIP\f7] What do blondes and spaghetti have in common? They both wiggle when you eat them."
  ,"[\f0PASTA-TIP\f7] Where did the spaghetti go to dance? To the meat-ball."
  ,"[\f0PASTA-TIP\f7] If you ate pasta and antipasta at the same time would you still be hungry?"
  ,"[\f0PASTA-TIP\f7] The trouble with eating pasta is that five or six days later you're hungry again!"
  ,"[\f0PASTA-TIP\f7] My girlfriend broke up with me the other day because she said I'm addicted to pasta. At the moment I'm feeling cannelloni."
  ,"[\f0PASTA-TIP\f7] Entered what I ate today into my new fitness app and it just sent an ambulance to my house."
  ,"[\f0PASTA-TIP\f7] Any salad can be a Caesar salad if you stab it enough."
  ,"[\f0PASTA-TIP\f7] I am on a seafood diet. Every time I see food, I eat it."
  ,"[\f0PASTA-TIP\f7] Pastaland runs on Tesseract, too! Go download the latest nightly build!"
  ,"[\f0PASTA-TIP\f7] Go check Pastaland on Tesseract, you never have enough pasta!"
  ,"[\f0PASTA-TIP\f7] I have pastad my italian cooking class! (FritzFokker)"  
  ,"[\f0PASTA-TIP\f7] The best condiment for pasta is more pasta! (Fritz_Fokker)"
  ,"[\f0PASTA-TIP\f7] What do you call an Italian hooker? A Pasta-tute. (Fritz_Fokker)"
  ,"[\f0PASTA-TIP\f7] I don't always watch movies, but when I do, it's a spaghetti western. (Fritz_Fokker)"
  ,"[\f2GIRL-TIP\f7] Women fake orgasms. Men fake foreplay. (FritzFokker)"
  ,"[\f2GIRL-TIP\f7] Look at your hot wife then look at your ugly in-laws. Enjoy your future wife-in-law. (FritzFokker)"
  ,"[\f2GIRL-TIP\f7] Thongs! The correct way to walk around with a wedgie. (FritzFokker)"
  ,"[\f2GIRL-TIP\f7] Calcicum deficiency only affects single and sexless women. (FritzFokker)"
  ,"[\f2GIRL-TIP\f7] The sex was great... then she woke up.  (FritzFokker)"
  ,"[\f0BTS\f7] The difference between women and Sauer? In Sauer, the fastest you fire, the better you are! (IdonRedcat)"
  ,"[\f0BTS\f7] [On a player that left Pastaland] I guess he decided to go gluten free for a while :( (Fritz_Fokker)"  
  ,"[\f2GIRL-TIP\f7] What is the difference between a girlfriend and a wife? About 3 skirt sizes. (FritzFokker)"
  ,"[\f2GIRL-TIP\f7] What happens when your girlfriend stops putting on make up? She becomes your wife. (FritzFokker)"
  ,"[\f2GIRL-TIP\f7] How do you tell if a man is married? You don’t. It’s bad enough he has to know it. (FritzFokker)"
  ,"[\f2GIRL-TIP\f7] If i had a dollar for every girl that found me unattractive, they would eventually find me attractive."
  ,"[\f2GIRL-TIP\f7] A recent study has found that women who are a little overweight live longer than the men who mention it."
  --,"[\f2GIRL-TIP\f7] My ex wrote to me: Can you delete my number? I responded: Who is this?"
  --,"[\f2GIRL-TIP\f7] Is google a woman? Because it won't let you finish your sentence without coming up with other suggestions"
  --,"[\f2GIRL-TIP\f7] What's six inches long, two inches wide, and drives women wild? Money."
  --,"[\f2GIRL-TIP\f7] Telling a girl to calm down works about as well as trying to baptize a cat."
  --,"[\f2GIRL-TIP\f7] Never laugh at your girlfriends choices. You are one of them."
  --,"[\f2GIRL-TIP\f7] My girlfriend had her driver's test the other day. She got 8 out of 10. The other 2 guys jumped clear."
  --,"[\f2GIRL-TIP\f7] She wanted a puppy. But I didn't want a puppy. So we compromised and got a puppy."
  --,"[\f2GIRL-TIP\f7] What's the difference between your wife and your job? After five years your job will still suck."
  --,"[\f2GIRL-TIP\f7] You should argue with your girlfriend only when she's not around."
  ,"[\f2GIRL-TIP\f7] The biggest difference between men and women is what comes to mind when the word 'Facial' is used."
  ,"[\f2GIRL-TIP\f7] Makeup tip: You're not in the circus."
  ,"[\f2GIRL-TIP\f7] My girlfriends dad asked me what I do. Apparently, 'your daughter' wasn't the right answer."
  ,"[\f2GIRL-TIP\f7] Why did Eve bite the forbidden apple? Because it tasted better than Adam's banana."
  ,"[\f2GIRL-TIP\f7] Having sex in an elevator is wrong on so many levels."
  ,"[\f2GIRL-TIP\f7] A girl phoned me the other day and said, 'Come on over, there's nobody home.' I went over. Nobody was home."
  ,"[\f2GIRL-TIP\f7] My girlfriend told me to go out and get something that makes her look sexy. So I got drunk."
  --,"[\f2GIRL-TIP\f7] What is the difference between 'ooooooh' and 'aaaaaaah'? About three inches."
  ,"[\f2GIRL-TIP\f7] Three words to ruin a man's ego: 'Is it in?'"
  ,"[\f2GIRL-TIP\f7] What should you do if your girlfriend starts smoking? Slow down and use a lubricant."
  --,"[\f2GIRL-TIP\f7] Early to bed, early to rise, makes a man sexually deprived."
  ,"[\f2GIRL-TIP\f7] Avoid arguments about the toilet seat. Use the sink."
  ,"[\f2GIRL-TIP\f7] Why do Women have legs? So they don't leave snail trails on the ground"
  --,"[\f2GIRL-TIP\f7] How do you fix a woman's watch? Why should you - there's a clock on the oven."
  ,"[\f2GIRL-TIP\f7] I haven't spoken to my wife for 18 months. I don't like to interrupt her."
  ,"[\f2CREEP-TIP\f7] My girlfriend thinks that I'm a stalker. Well, she's not exactly my girlfriend yet."
  ,"[\f2GIRL-TIP\f7] Our last fight was my fault: My wife asked me 'What's on the TV?' I said, 'Dust!'"
  ,"[\f2GIRL-TIP\f7] The most effective way to remember your wife's birthday is to forget it once."
  --,"[\f2GIRL-TIP\f7] Why did the woman cross the road? Who cares, what's she doing out of the kitchen?"  
  --,"[\f2GIRL-TIP\f7] How do you turn a fox into an elephant? Marry It!"
  --,"[\f2GIRL-TIP\f7] What is the difference between a battery and a woman? A battery has a positive side."
  --,"[\f2GIRL-TIP\f7] How are fat girls and mopeds alike? They're both fun to ride until your friends find out."
  ,"[\f2GIRL-TIP\f7] Why do women rub their eyes when they wake up? Because they don't have balls to scratch."
  ,"[\f2GIRL-TIP\f7] Why do husbands die before their wives? They want to."
  ,"[\f2GIRL-TIP\f7] Her: 'I look fat. Can you give me a compliment?' Me: 'You have perfect eyesight.'"
  ,"[\f2GIRL-TIP\f7] Relationships are a lot like algebra. Have you ever looked at your X and wondered Y?"
  ,"[\f2GIRL-TIP\f7] If I ever need a heart transplant, I'd want my ex's. It's never been used."
  --,"[\f2GIRL-TIP\f7] My wife and I were happy for twenty years. Then we met."
  ,"[\f2GIRL-TIP\f7] Outvoted 1-1 by my girlfriend again."
  ,"[\f2GIRL-TIP\f7] My girlfriend and I always compromise. I admit I'm wrong and she agrees with me."
  ,"[\f2GIRL-TIP\f7] I wonder what fish smelled like before women went swimming?"
  ,"[\f2GIRL-TIP\f7] Getting married is like buying a dishwasher. You'll never have to do it by hand again."
  ,"[\f2GIRL-TIP\f7] Mafia and pussy are the same: one slip of the tongue and you are in deep shit."
  ,"[\f2GIRL-TIP\f7] What kind of bees produce milk? Boobies."
  ,"[\f2GIRL-TIP\f7] The worst penalty for bigamy is to have two mothers-in-law."
  ,"[\f2GIRL-TIP\f7] Life is like a penis: women make it hard for no reason."
  --,"[\f2GIRL-TIP\f7] Women and tornadoes are the same. They moan like hell when they come, they take the house when they leave."
  --,"[\f2GIRL-TIP\f7] Women don't realize that the silent treatment is a gift rather than a punishment."
  ,"[\f2GIRL-TIP\f7] My girlfriend wanted to serve me a home-cooked spaghetti dinner, but she didn't have the balls for it."
  ,"[\f2CREEP-TIP\f7] My new girlfriends a screamer, she hasn't stopped since I put her in the trunk."
  ,"[\f5FOOD-FOR-THOUGHT\f7] People say I talk too much... well I have something to say about that. (a_theory)"
  ,"[\f5FOOD-FOR-THOUGHT\f7] I hope actress Jessica Biel names her first born child Batmo."
  ,"[\f5FOOD-FOR-THOUGHT\f7] I'd kill for a Nobel Peace Prize."  
  ,"[\f5FOOD-FOR-THOUGHT\f7] There is no 'me' in team. No, wait, yes there is!"
  ,"[\f5FOOD-FOR-THOUGHT\f7] I think it's wrong that only one company makes the game Monopoly."
  ,"[\f5FOOD-FOR-THOUGHT\f7] Iron Man and Iron Woman? One's a superhero and the other is an instruction."
  ,"[\f5FOOD-FOR-THOUGHT\f7] Dwarfs laugh when playing soccer, because grass tickles their balls."
  ,"[\f5FOOD-FOR-THOUGHT\f7] Have you ever tried to eat a clock? It's really time consuming."
  ,"[\f5FOOD-FOR-THOUGHT\f7] What kind of bees produce money? Showbiz!  (IdonRedcat)"
  ,"[\f5FOOD-FOR-THOUGHT\f7] Birthdays are good for your health, studies show that people who have more birthdays live longer. (RedWolfe)"
  ,"[\f5FOOD-FOR-THOUGHT\f7] If you try to fail, and succeed, which have you done?  (RedWolfe)"
  ,"[\f5FOOD-FOR-THOUGHT\f7] I didn't know why the ball was growing bigger... then it hit me. (a_theory)" 
  ,"[\f5FOOD-FOR-THOUGHT\f7] Confucius say: balloon factory will go out of business if it can't keep up with inflation. (FritzFokker)"
  ,"[\f5FOOD-FOR-THOUGHT\f7] Which kind of bees produce horrible jokes? Newbies. (Star)"
  ,"[\f5FOOD-FOR-THOUGHT\f7] Toilet paper and copy paper are not interchangeable. Just ask my proctologist. (FritzFokker)"
  ,"[\f5FOOD-FOR-THOUGHT\f7] Yo moma so fat, when she connects to Pastaland everyone else is kicked. (Mikey)"
  --,"[\f5FOOD-FOR-THOUGHT\f7] How is a server and a dick alike? They both have an up-time."
  ,"[\f4MOTIVATION\f7] 100,000 sperm and you were the fastest?"
  ,"[\f4MOTIVATION\f7] Your birth certificate is an apology letter from the condom factory."
  ,"[\f4MOTIVATION\f7] Wow, I did it, I finallyfixedthismotherfuckingspacebar"
  --,"[\f4MOTIVATION\f7] The proper way to use a stress ball is to throw it at the last person to piss you off."
  --,"[\f4MOTIVATION\f7] Female cop:'Anything you say can and will be held against you'. I yelled: 'Boobs!'"
  ,"[\f5ADVERT.\f7] Boycott shampoo! Demand the REAL poo!"
  ,"[\f5CIT.\f7] Talk to a god, and it's called praying. Gods talk to you and its called schizophrenia. (by Atheist)" 
  ,"[\f3PRO-TIP\f7] Badass players use /texreduce 12"
  ,"[\f3PRO-TIP\f7] Badass players use /forceplayermodels 1"
  ,"[\f3PRO-TIP\f7] Badass players use /fullbrightmodels 200"
  ,"[\f3PRO-TIP\f7] Smart players use /showclientnum 1"
  ,"[\f3PRO-TIP\f7] So I ran out of toilet paper today... Goodbye socks! (RedWolfe)"
  ,"[\f6INFO\f7] Suggest your nasty jokes on \f6www.pastaland.ovh"
  ,"[\f6INFO\f7] Complain about sexist jokes on \f6www.pastaland.ovh\f7 and suggest your ones."
  ,"[\f6INFO\f7] Send your feedback at \f6www.pastaland.ovh\f7 but only if it's good."
  ,"[\f6INFO\f7] Confirm your celibacy at \f6www.pastaland.ovh"
  ,"[\f6INFO\f7] Visit us at \f6www.pastaland.ovh\f7, bring your girlfriend too."
  ,"[\f6INFO\f7] Free porn at \f6www.pastaland.ovh\f7. Just kidding, no porn there. Keep your pants on."
  ,"[\f6INFO\f7] Complain about your life here: \f6www.pastaland.ovh\f7. We really care. Sometimes."
  ,"[\f6INFO\f7] I don't always spam a forum, but when I do, it's on \f6www.pastaland.ovh\f7."
  ,"[\f6INFO\f7] ... bla bla bla bla bla \f6www.pastaland.ovh\f7 bla bla bla bla bla... "
  ,"[\f6INFO\f7] Ask for new features at \f6www.pastaland.ovh\f7. We do anything for money. Well, almost anything."
  ,"[\f6INFO\f7] Come to \f6www.pastaland.ovh\f7. We have cookies!"
  ,"[\f6INFO\f7] If you are a real Sauerbraten aficionado, go visit \f6www.sauerworld.org"
  ,"[\f6INFO\f7] Don't forget to give a try to \f6Tesseract\f7, the Sauerbraten evolution!"
  ,"[\f6INFO\f7] Did you know that Pastaland runs on \f6Tessearct\f7, too?"
  ,"[\f6INFO\f7] Did you know that Pastaland.ovh forum has a new section on \f6Tesseract\f7??"
  ,"[\f6INFO\f7] Fancy some new graphics? Go try the latest \f6Tesseract\f7 nightly build, we have Pastaland there, too!"
  ,"[\f6INFO\f7] Make your pc happy, try the latest \f6Tesseract\f7. We have a Pastaland server there, too!"
}

local function randomFact()
    --math.randomseed(os.time())
    return funFacts[math.random(#funFacts)]
end

spaghetti.later(21000, function()
  return server.sendservmsg(randomFact());
end, true)
