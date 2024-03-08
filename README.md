# Music and Mental Health in College

**Ananya Chandrasekhar**

I am a sophomore at Rutgers with a major in Computer Science and Mathematics and a Data Science and Quantitative Economics minor. As someone with challenging coursework and long assignments, I listen to a great amount of music to keep myself focused and level-headed. In fact, during the week of midterms, I listened to 1856 minutes of music on Spotify! I am also never seen without headphones on at all times, and I always have a song playing. I listen to almost every genre of music, and the music I listen to often reflects or even contributes to my mental state. This led me to be curious about other college students - how does their headspace relate to the music they listen to? Furthermore, according to studies, levels of depression and anxiety are at a historic high, and counseling services are often overwhelmed by demand.

To find data related to this, I went to Kaggle and searched up music and mental health, which led me to stumble upon a database created by user Catherine Rasgaitis. She collected data through a Google Form unrestricted by age or location.

## Using the Dataset

The dataset chosen had responses from participants between the ages of 10 and 73. This was a problem for me as I only wanted to focus on people with similar mindsets and environments as me. Therefore, I subsetted the table to only include ages between 18 and 24, the normal range of ages for college students. I wanted to take an overall glance at the favorite genre distribution of the college aged participants of this study. [FAVGENRE.PNG under images folder]

It's a little hard to fit all bar titles on the data representation as they are so many, but the order is Classical, Country, EDM, Folk, Gospel, Hip-Hop, Jazz, K-Pop, Latin, Lofi, Metal, Pop, R&B, Rap, Rock, and Video Game Music. There are clear favorites here, and trust me, I enjoy many of these genres, but I decided to focus on the big three: Metal, Rock, and Pop (shoutout to Jazz, Hip-Hop, and R&B though).
I did another graphical representation of the data, just to be able to visualize it before analyzing it.

Anxiety:
[ANXIETYBOXPLOT.PNG under images folder]
Depression:
[DEPRESSIONBOXPLOT.PNG under images folder]
Insomnia:
[INSOMNIABOXPLOT.PNG under images folder]

Regardless of the age of the college-aged participants, the median level of anxiety that the person had was between 6 and 8 out of a 10 point scale (0 being not anxious, and 10 being very anxious). It seems like 20 year olds are more anxious than 19 year olds.... Hmm.... I should watch out for that next year. The median level of depression that the person had was between 4 and 6.5 out of a 10 point scale (0 being not depressed, and 10 being very depressed). The median level of insomnia that the person had was between 2 and 4 out of a 10 point scale (0 being not anxious, and 10 being very anxious). The median for anxiety, depression, and insomnia levels by genre are all over the place though. This is very interesting... seems like there is a loose relationship.

## Hypothesis testing

Anxiety:
I first took a look at the mean anxiety levels among the favorite genres.
[MEANANXIETY.PNG under images folder]
An alternate hypothesis I was interested in testing was college-aged participants who listen to rock music are more anxious than those who listen to metal music. With a p-value of 0 (shocking!), and an alpha value of 0.05, the null
hypothesis is rejected, and it can be assumed thatcollege-aged participants who listen to rock music are more anxious than those who listen to metal. This is interesting as rock is usually associated with being energetic and happy.
[ANXIETYHISTOGRAM.PNG under images folder]

Depression:
I next took a look at the mean depression levels among the favorite genres.
[MEANDEPRESSION.PNG under images folder]
An alternate hypothesis I was interested in testing was college-aged participants who listen to rock music are more depressed than those who listen to metal music. With a p-value of 0.002, and an alpha value of 0.05, the null hypothesis is rejected,and it can be assumed that college-aged participants who listen to rock music are more depressed than those who listen to metal.
[DEPRESSIONHISTOGRAM.PNG under images folder]

Insomnia:
I next took a look at the mean insomnia levels among the favorite genres.
[MEANINSOMNIA.PNG under images folder]
An alternate hypothesis I was first interested in testing was college-aged participants who listen to metal music are more insomniac than those who listen to rock music. This flip flop was interesting, but then I looked at the staggering 8.0 of Lofi, and thought about testing Lofi against Metal! Let's try both!
(1) With a p-value of 0.2648, and an alpha value of 0.05, we fail to reject the null hypothesis, and it can be assumed that college-aged participants who listen to rock music have the same level of anxiety as those who listen to metal.
[INSOMNIAHISTOGRAM1.PNG under images folder]
(2) With a p-value of 0.0073, and an alpha value of 0.05, the null hypothesis is rejected, and it can be assumed that college-aged participants who listen to lofi music are more anxious than those who listen to metal. Is this because they have to resort to trying to use calming music to put them to sleep, or they stay awake because of it.
[INSOMNIAHISTOGRAM2.PNG under images folder]

## Baynesian Odds Task
Now I know that you're not supposed to extrapolate findings from a subset to a broader dataset, but the fact that Lofi had such a high insomnia number really shocked me, which led me to want to compute the odds that a person with a high level of insomnia (between 8 to 10) would have a favorite genre being lofi.
The True Positive is equal to: 0.2 The False Positive is equal to: 0.1 The Likelihood Ratio is equal to: 2 The Posterior Odds are equal to: 0.02
Well, I guess this is why you always need to mathematically analyze the trends you think you perceive...

## Conclusion
Music can really help as a mode of therapy and mental wellness, but it’s important to see what genres/type of music work for you. Although the correlations in my datablog can be due to a multitude of factors, it still holds that something that might seem good ends up not being good for mental health.

Links:
https://www.nea.org/nea-today/all-news-articles/mental-health-crisis-college-campuses https://www.kaggle.com/datasets/catherinerasgaitis/mxmh-survey-results/data

