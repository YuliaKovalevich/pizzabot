# pizzabot

This is a **command line** application.

## Execution
To execute this project from the command line do the following:

- open project
- select `pizzabot` scheme 
- go to the products folder
- click on `pizzabot`
- open an inspector on the right side
- open `Identity and Type` tab
- copy full path except `pizzabot` name
*example: `/Users/yuliakov/Library/Developer/Xcode/DerivedData/pizabot-gzrbnkfnfvnezkgxnkmwcaifxwye/Build/Products/Debug/pizzabot`
copy: `/Users/yuliakov/Library/Developer/Xcode/DerivedData/pizabot-gzrbnkfnfvnezkgxnkmwcaifxwye/Build/Products/Debug/`*
- cd in terminal to the copied path
- type `./pizzabot "5x5 (0, 0) (1, 3) (4,4) (4, 2) (4, 2) (0, 1) (3, 2) (2, 3) (4, 1)"`
- full algorithm:
```
cd /Users/yuliakov/Library/Developer/Xcode/DerivedData/pizabot-gzrbnkfnfvnezkgxnkmwcaifxwye/Build/Products/Debug/
./pizzabot "5x5 (0, 0) (1, 3) (4,4) (4, 2) (4, 2) (0, 1) (3, 2) (2, 3) (4, 1)"
```
## Simpler way execution
You can just:
- open project
- go to the products folder
- drag to the terminal window `pizzabot`
- add parameters string
- execute

If you want to test it by running it in xcode:
- set `pizzabot` scheme
- go to `pizzabot` scheme
- set arguments

---
# Tests
To run tests, you should change the scheme in the project to `pizzabotTests`.
