## Student Name: Brian Giovinazzo

# Assignment 5: Read, understand, and modify parameters in Assembly code

We are playing an RPG game. Due to insufficient preparation, the character is facing the final dragon with a meager amount of hit points, flimsy armor, 
and non-existent shield. The values for the character's hit points (`100`), armor (`20`), and shield (`10`) as well as the dragon's attack (`1000`) are used to 
calculate the final attack. The equation for this calculation is: `remain = hp + armor * 2 + shield * 3 - dragon_hit`. If `remain` is greater than `0`, 
the character will survive and win the game. Otherwise, the character dies. 

Since it is too late to replay the lengthy game, we decide to *adjust* the object file **dungeon.o** stored inside the `test` directory to our advantage.
Your task is to write a program called **mod.c** that can modify **dungeon.o** such that we can win the game. As a head start, you are provided 
with a **read_binary.c** that can read **dungeon.o** and write (currently unmodified) the resulting bytes to another binary file called **dungeon_mod.o**. 

## Hint

- Actually run the program by compile **dungeon.o** to an executable named `dungeon`: `gcc -o dungeon .test/dungeon.o`
- Observe **dungeon.o** using `objdump` to figure out what which codes/hex values correspond to which parameters and then using `hexdump`to know *exactly* where these values are in the binary stream. 
  - Review **https://youtu.be/f4Ppd-qNYTk** for more details. 
- Create a **mod.c** that is based on **read_binary.c** such that **mod.c** can modify **dungeon.o** to create **dungeon_mod.o**. The 
new **dungeon_mod.o** will generate an executable that allows you to win the game. 

## Submission

- Edit the README.md to add your name to the top of the file
- Submit the URL of your assignment git repository to D2L. 
- Besides the newly created **mod.c**, you must not make any changes to the existing test files or test script. 
- The last commit to your git repository must be made prior to the deadline of the assignment. Any subsequent commit will not 
be considered. 
