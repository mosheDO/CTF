<p align="center">
<img src="images/logo.png"/>
</p>

# EasyCTF_V Writeup
This repository serves as a writeup for EasyCTF_V solved by TheEmperors's team

## Intro: Hello, world!

**Category:** Intro
**Points:** 10
**Description:**

>Using your favorite language of choice, print Hello, world! to the output.
> * For Python, consider the print function.
> * For Java, consider System.out.println.
> * For CXX, consider including stdio.h and using the printf function.

**Hint:**

>If you're not sure how to do this, try searching Google for how to make "Hello world!" programs in your language of choice.

### Write-up
Using Python2

```python
print "Hello world!"
```
___

## Intro: Linux

**Category:** Intro
**Points:** 10
**Description:**

>Log into the shell server! You can do this in your browser by clicking on the Shell server link in the dropdown in the top right corner, or using an SSH client by following the directions on that page.
>Once you've logged in, you'll be in your home directory. We've hidden something there! Try to find it. :)

**Hint:**

>(no hint)

### Write-up
We should visit the [Shell Server](https://www.easyctf.com/chals/shell) section and connect to the remote server using our credentials or we just need to execute this command in a linux terminal:

```
ssh user44595@s.easyctf.com
```

Then, we execute this command to list all the files located on our home directory:

```
ls -lA
```

Output:
```
user666@shell:~$ ls -lA
total 1
-rw-r--r-- 1 user666 ctfuser    41 Feb  7 13:41 .flag
```

We found the flag file. So we show its content using this command:

```
cat .flag
```

Output:
```
user666@shell:~$ cat .flag
easyctf{i_know_how_2_find_hidden_files!}
```

So the flag is : easyctf{i_know_how_2_find_hidden_files!}

___

## The Oldest Trick in the Book

**Category:** Intro
**Points:** 10
**Description:**

>This is literally one of oldest tricks in the book. To be precise, from the year AD 56.
>Crack me. lhzfjam{d3sj0t3_70_345fj7m_799h21}

**Hint:**

>Et tu, Brute?

### Write-up
The flag format is easyctf{...} and we can see lhzfjam{...}. So it may be a caesar cipher.
We try to brute force it 26 times and we can easily find the flag in 19th rotation.

So the flag is: easyctf{w3lc0m3_70_345yc7f_799a21}
___

## Intro: Web

**Category:** Intro
**Points:** 10
**Description:**

>The web goes well beyond the surface of the browser! Warm up your web-sleuthing skills with this challenge by finding the hidden flag on [this page](https://cdn.easyctf.com/328f49c7ab7b65a75c9e274f066435c6fe7fb0f207172a82da971348a7f05aec_index.html)!

**Hint:**

>Not sure where to look? Try looking up 'source code', specifically related to web pages.

### Write-up
In this task the flag is not visible in the page:
<p align="center">
<img src="images/intro-web_1.PNG"/>
</p>
So we inspect the source code :
<p align="center">
<img src="images/intro-web_2.PNG"/>
</p>
And there we find the flag : easyctf{hidden_from_the_masses_11a8b2}
___

## Soupreme Encoder

**Category:** Cryptography
**Points:** 20
**Description:**

>Decode this ```68657869745f6d6174655f3432386533653538623765623463636232633436```

**Hint:**

>It's encoded!

<p align="center">
<img src="resources/cryptography-20-soupreme_encoder/_description.PNG"/>
</p>

### Write-up
It looks like a hex code.
Decoding it from hex to ascii, the plain text is: hexit_mate_428e3e58b7eb4ccb2c46
So the flag is: easyctf{hexit_mate_428e3e58b7eb4ccb2c46}
___

## Intro: Netcat

**Category:** Intro
**Points:** 20
**Description:**

>I've got a little flag for you! Connect to ```c1.easyctf.com:12481``` to get it, but you can't use your browser!
>(Don't know how to connect? Look up TCP clients like Netcat. Hint: the Shell server has Netcat installed already!)
>Here's your player key: ```3770529```. Several challenges might ask you for one, so you can get a unique flag!

**Hint:**

>(No hint)

<p align="center">
<img src="resources/intro-20-netcat/_description.PNG"/>
</p>

### Write-up
Task no solved
___

## Intro: Hashing

**Category:** Miscellaneous
**Points:** 20
**Description:**

>Cryptographic hashes are pretty cool! Take the SHA-512 hash of [this file](resources/intro-20-hashing/image.png), and submit it as your flag.

**Hint:**

>Try searching the web to find out what SHA-512 is.

<p align="center">
<img src="resources/intro-20-netcat/_description.PNG"/>
</p>

### Write-up
Task no solved
___

## Programming: Exclusive

**Category:** Programming
**Points:** 20
**Description:**

>Given two integers a and b, return a xor b. Remember, the xor operator is a bitwise operator that's usually represented by the ^ character.
>For example, if your input was 5 7, then you should print 2.

**Hint:**

>(No hint)

<p align="center">
<img src="resources/intro-20-netcat/_description.PNG"/>
</p>

### Write-up
Task no solved
___



## Haystack

**Category:** Forensics
**Points:** 30
**Description:**

>There's a flag hidden in this [haystack](resources/forensics-30-haystack/haystack.txt).

**Hint:**

>(No hint)

<p align="center">
<img src="resources/forensics-30-haystack/_description.PNG"/>
</p>

### Write-up
Task no solved
___



## Look At Flag

**Category:** Forensics
**Points:** 30
**Description:**

>What is the flag? [flag](resources/forensics-30-look_at_flag/flag.txt)

**Hint:**

>What is this file?

<p align="center">
<img src="resources/intro-20-netcat/_description.PNG"/>
</p>

### Write-up
Task no solved
___



## EzSteg

**Category:** Forensics
**Points:** 30
**Description:**

>There appears to be a message beyond what you can see in [soupculents.jpg](resources/forensics-30-ezsteg/soupculents.jpg).

**Hint:**

>The description is a hint.

<p align="center">
<img src="resources/forensics-30-ezsteg/_description.PNG"/>
</p>

### Write-up
Task no solved
___



## Intro: Reverse Engineering

**Category:** Intro
**Points:** 30
**Description:**

>What does this [Python program](resources/intro-30-reverse_engineering/mystery.py) do? And more specifically, what input would give this output?
>```6513c2b1c2bac3835f0cc28a5b6ac2abc2b9c2bfc381c39b7613c3bac2b3c2a17f7ac29f00c3aa46c2b9c2a6```

**Hint:**

>(No hint)

<p align="center">
<img src="resources/intro-20-netcat/_description.PNG"/>
</p>

### Write-up
Task no solved
___



## Programming: Taking Input

**Category:** Programming
**Points:** 30
**Description:**

>OK, OK, you got Hello, world down, but can you greet specific people?
>You'll be given the input of a certain name. Please greet that person using the same format. For example, if the given input is Michael, print Hello, Michael!.
> * For Python, consider the input() function.
> * For Java, consider System.in.
> * For C, consider including stdio.h and reading input using read.
> * For C++, consider including iostream and reading input using cin.

**Hint:**

>(No hint)

<p align="center">
<img src="resources/programming-30-taking-input/_description.PNG"/>
</p>

### Write-up
Task no solved
___



## Programming: Over and Over

**Category:** Programming
**Points:** 40
**Description:**

>You can decode a Caesar cipher, but can you write a program to decode a Caesar cipher?
>Your program will be given 2 lines of input, and your program needs to output the original message.
> * First line contains N, an integer representing how much the key was shifted by. 1 <= N <= 26
> * Second line contains the ciphertext, a string consisting of lowercase letters and spaces.
>For example:
> * ```6```
> * ```o rubk kgyeizl```
>You should print
> * ```i love easyctf```

**Hint:**

>(No hint)

<p align="center">
<img src="resources/intro-20-netcat/_description.PNG"/>
</p>

### Write-up
Task no solved
___



## hexedit

**Category:** Reverse Engineering
**Points:** 50
**Description:**

> Can you find the flag in this [file](resources/reverse_engineering-50-hexedit/hexedit)?

**Hint:**

>(No hint)

<p align="center">
<img src="resources/reverse_engineering-50-hexedit/_description.PNG"/>
</p>

### Write-up
Task no solved
___



## Substitute

**Category:** Cryptography
**Points:** 50
**Description:**

>Nobody can guess this flag! [msg.txt](resources/cryptography-50-substitute/msg.txt)

**Hint:**

>Look at the title.

<p align="center">
<img src="resources/cryptography-50-substitute/_description.PNG"/>
</p>

### Write-up
Task no solved
___



## Markov's Bees

**Category:** Linux
**Points:** 50
**Description:**

>Head over to the shell and see if you can find the flag at ```/problems/markovs_bees/``` !

**Hint:**

>Don't do this by hand!

<p align="center">
<img src="resources/linux-50-markovs_bees/_description.PNG"/>
</p>

### Write-up
Task no solved
___



## xor

**Category:** Cryptography
**Points:** 50
**Description:**

>A flag has been encrypted using single-byte xor. Can you decrypt it? [File](resources/cryptography-50-xor/xor.txt).

**Hint:**

>(No hint)

<p align="center">
<img src="resources/cryptography-50-xor/_description.PNG"/>
</p>

### Write-up
Task no solved
___



## Programming: Subset Counting

**Category:** Programming
**Points:** 55
**Description:**

>Given a set of numbers, print out how many non-empty subsets sum to a given integer.
>**Input Format**
>The first line contains two integers N and S. The second line contains N space-separated integers a_1, a_2, ..., a_N.
>1 <= N <= 20
>-100 <= S <= 100
>-1000 <= a_i <= 1000
>**Output Format**
>A single integer, the number of non-empty subsets which sum to S. Two subsets are different if an element appears in one and does not appear in the other. Note that a_1 is distinct from a_2, even if their values are identical.
>**Sample Input**
> * ```6 5```
> * ```2 4 1 1 1 2```
>**Sample Ouput**
> * ```8```

**Hint:**

>(No hint)

<p align="center">
<img src="resources/intro-20-netcat/_description.PNG"/>
</p>

### Write-up
Task no solved
___



## Liar

**Category:** Reverse Engineering
**Points:** 70
**Description:**

>Sometimes, developers put their source into their code with -g. Sometimes, they put another source into their code with -g.
>[executable](resources/reverse_engineering-70-liar/getflag)
>[source](resources/reverse_engineering-70-liar/getflag.c)

**Hint:**

>(No hint)

<p align="center">
<img src="resources/reverse_engineering-70-liar/_description.PNG"/>
</p>

### Write-up
Task no solved
___



## In Plain Sight

**Category:** Web
**Points:** 70
**Description:**

>I've hidden a flag somewhere at [this](blockingthesky.com) site... can you find it?
>Note: There is not supposed to be a website. Nothing is "down". The YouTube link that some of you are finding is unintentional, please ignore it.

**Hint:**

>Dig around and see what you can find

<p align="center">
<img src="resources/intro-20-netcat/_description.PNG"/>
</p>

### Write-up
Task no solved
___



## Adder

**Category:** Reverse Engineering
**Points:** 80
**Description:**

>This program adds numbers. Find the flag! [adder](resources/reverse_engineering-80-adder/adder)

**Hint:**

>(No hint)

<p align="center">
<img src="resources/reverse_engineering-80-adder/_description.PNG"/>
</p>

### Write-up
Task no solved
___



## My Letter

**Category:** 
**Points:** 80
**Description:**

>I got a letter in my email the other day... It makes me feel sad, but maybe it'll make you glad. :( [file](resources/forensics-80-my_letter/myletter.docx)

**Hint:**

>the flag is not a rickroll

<p align="center">
<img src="resources/forensics-80-my_letter/_description.PNG"/>
</p>

### Write-up
Task no solved
___



## Nosource, Jr.

**Category:** Web
**Points:** 80
**Description:**

>I don't like it when people try to view source on my page. Especially when I put all this effort to put my flag verbatim into the source code, but then people just look at the source to find the flag! How annoying.
>This time, when I write my wonderful website, I'll have to hide my beautiful flag to prevent you CTFers from stealing it, dagnabbit. We'll see what you're [able to find](http://c1.easyctf.com:12486/jr/)...

**Hint:**

>Did you know that Chrome Developer Tools has a Network tab?

<p align="center">
<img src="resources/intro-20-netcat/_description.PNG"/>
</p>

### Write-up
Task no solved
___



## Zippity

**Category:** Miscellaneous
**Points:** 80
**Description:**

>I heard you liked zip codes! Connect via ```nc c1.easyctf.com 12483``` to prove your zip code knowledge.

**Hint:**

>I wonder if you could write a program...

<p align="center">
<img src="resources/intro-20-netcat/_description.PNG"/>
</p>

### Write-up
Task no solved
___



## Starman 1

**Category:** Programming
**Points:** 80
**Description:**

>Starman has taken off in search of a team to help him win EasyCTF! He's reached the asteroid belt, which everyone knows is the best place in the galaxy to find cybersecurity talent. Each asteroid is home to one superstar hacker. Starman wants to take all of the hackers back to Earth to help him with the competition, but unfortunately this isn't practical - all of the hackers are very attached to their asteroid homes, and won't go back to Earth unless Starman agrees to take the asteroids with him. Furthermore, each hacker has a skill rating r. To ensure a win in EasyCTF, Starman wants to maximize the sum of the rating values of his team members.
>There are N hackers, and Starman's Roadster can carry up to W pounds of additional weight. Help him decide which hackers to bring home.
>**Input Format**
>The first line contains two integers N and W. The following N lines each contain two integers r_i and w_i, representing the skill and weight of the ith hacker. (w_i is the sum of a hacker and their asteroid's weight).
>```1 <= N, W <= 2000```
>```1 <= r_i, w_i <= 10000```
>**Output Format**
>A single integer, the best sum-of-ratings Starman can achieve while keeping the total weight added to his Roadster less than or equal to W.
>**Sample Input**
> * ```5 15```
> * ```6 7```
> * ```3 4```
> * ```3 5```
> * ```10 11```
> * ```8 8```
>**Sample Ouput**
> * ```14```

**Hint:**

>If you run into issues with the time limit, try reading up on Dynamic Programming.

<p align="center">
<img src="resources/intro-20-netcat/_description.PNG"/>
</p>

### Write-up
Task no solved
___



## Keyed Xor

**Category:** Cryptography
**Points:** 100
**Description:**

>A flag has been encrypted using keyed xor. Can you decrypt it? [File](resources/cryptography-100-keyed_xor/keyed_xor.txt).
>The key was created by taking two words from [this](resources/cryptography-100-keyed_xor/words.txt) wordlist.

**Hint:**

>(No hint)

<p align="center">
<img src="resources/cryptography-100-keyed_xor/_description.PNG"/>
</p>

### Write-up
Task no solved
___



## Not OTP

**Category:** Cryptography
**Points:** 100
**Description:**

>It seems we've intercepted 2 strings that were both encrypted with what looks like OTP! Is it possible to decrypt them? file

**Hint:**

>I think there's something about cribs in there...

<p align="center">
<img src="resources/intro-20-netcat/_description.PNG"/>
</p>

### Write-up
Task no solved
___



## Diff

**Category:** Forensics
**Points:** 100
**Description:**

>Sometimes, the differences matter. Especially between the files in [this archive](resources/forensics-100-diff/file.tar).
>Hint: This is a [TAR](https://en.wikipedia.org/wiki/Tar_(computing)) archive file. You can extract the files inside this tar by navigating to the directory where you downloaded it and running tar xf file.tar! If you don't have tar on your personal computer, you could try doing it from the Shell server. Once you extract the files, try comparing the hex encodings of the files against the first file.

**Hint:**

>Check the man page for diff by typing "man diff".

<p align="center">
<img src="resources/forensics-100-diff/_description.PNG"/>
</p>

### Write-up
Task no solved
___



## rop1

**Category:** Binary Exploitation
**Points:** 120
**Description:**

>Go to ```/problems/rop1``` on the shell server and tell me whats in flag.txt.

**Hint:**

>(No hint)

<p align="center">
<img src="resources/binary_exploitation-120-rop1/_description.PNG"/>
</p>

### Write-up
Task no solved
___



## Remember Me

**Category:** Forensics
**Points:** 130
**Description:**

>I'm such a klutz! I know I hid a flag in [this file](resources/forensics-130-remember_me/scarboroughfair.mp3) somewhere, but I can't remember where I put it!
>Song is from sukasuka.

**Hint:**

>Sometimes I can't tell my left from my right, either.

<p align="center">
<img src="resources/forensics-130-remember_me/_description.PNG"/>
</p>

### Write-up
Task no solved
___



##

**Category:** Intro
**Points:** 0
**Description:**

>

**Hint:**

>(No hint)

<p align="center">
<img src="resources/intro-20-netcat/_description.PNG"/>
</p>

### Write-up
Task no solved
___



##

**Category:** Intro
**Points:** 0
**Description:**

>

**Hint:**

>(No hint)

<p align="center">
<img src="resources/intro-20-netcat/_description.PNG"/>
</p>

### Write-up
Task no solved
___



##

**Category:** Intro
**Points:** 0
**Description:**

>

**Hint:**

>(No hint)

<p align="center">
<img src="resources/intro-20-netcat/_description.PNG"/>
</p>

### Write-up
Task no solved
___



##

**Category:** Intro
**Points:** 0
**Description:**

>

**Hint:**

>(No hint)

<p align="center">
<img src="resources/intro-20-netcat/_description.PNG"/>
</p>

### Write-up
Task no solved
___



##

**Category:** Intro
**Points:** 0
**Description:**

>

**Hint:**

>(No hint)

<p align="center">
<img src="resources/intro-20-netcat/_description.PNG"/>
</p>

### Write-up
Task no solved
___



##

**Category:** Intro
**Points:** 0
**Description:**

>

**Hint:**

>(No hint)

<p align="center">
<img src="resources/intro-20-netcat/_description.PNG"/>
</p>

### Write-up
Task no solved
___



##

**Category:** Intro
**Points:** 0
**Description:**

>

**Hint:**

>(No hint)

<p align="center">
<img src="resources/intro-20-netcat/_description.PNG"/>
</p>

### Write-up
Task no solved
___



##

**Category:** Intro
**Points:** 0
**Description:**

>

**Hint:**

>(No hint)

<p align="center">
<img src="resources/intro-20-netcat/_description.PNG"/>
</p>

### Write-up
Task no solved
___



##

**Category:** Intro
**Points:** 0
**Description:**

>

**Hint:**

>(No hint)

<p align="center">
<img src="resources/intro-20-netcat/_description.PNG"/>
</p>

### Write-up
Task no solved
___



















##

**Category:** Intro
**Points:** 0
**Description:**

>

**Hint:**

>(No hint)

<p align="center">
<img src="resources/intro-20-netcat/_description.PNG"/>
</p>

### Write-up
Task no solved
___

