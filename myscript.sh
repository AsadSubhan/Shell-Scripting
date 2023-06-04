#! /usr/bin/bash
# This is called Shebang, we can find it using "which bash" command

# ECHO COMMAND
<<code
echo Hello World
code

# VARIABLES
# Uppercase by convention
# Letters, numbers & underscores
<<code
NAME="Asad"
echo "My name is $NAME"
echo "My name is ${NAME}"
code

# USER INPUT
<<code
read -p "Enter your name: " NAME
echo "Hello $NAME, nice to meet you"
code

# SIMPLE IF STATEMENT   
# "fi" is used to close IF statement
<<code
NAME="Asad"
if [ "$NAME" == "Asad" ] 
then
    echo "Your name is Asad"
fi
code

# IF-ELSE
<<code
read -p "Enter your name: " NAME
if [ "$NAME" == "Asad" ]
then
    echo "Your name is Asad"
else
    echo "Your name is not Asad"
fi
code

# ELSE-IF (elif)
<<code
read -p "Enter your name: " NAME
if [ "$NAME" == "Asad" ]
then
    echo "Your name is Asad"
elif [ "$NAME" == "Ali" ]
then
    echo "Your name is Ali"
else    
    echo "Your name is not Asad or Ali"
fi
code

# COMPARISON
########
# val1 -eq val2 Returns true if the values are equal
# val1 -ne val2 Returns true if the values are not equal
# val1 -gt val2 Returns true if val1 is greater than val2
# val1 -ge val2 Returns true if val1 is greater than or equal to val2
# val1 -lt val2 Returns true if val1 is less than val2
# val1 -le val2 Returns true if val1 is less than or equal to val2
########
<<code
NUM1=45
NUM2=23
if [ "$NUM1" -gt "$NUM2" ]
then
    echo "$NUM1 is greater than $NUM2"
elif [ "$NUM1" -lt "$NUM2" ]
then
    echo "$NUM1 is less than $NUM2"
elif [ "$NUM1" -eq "$NUM2" ]
then
    echo "Both numbers are equal"
fi
code

# FILE CONDITIONS
########
# -d file   True if the file is a directory
# -e file   True if the file exists (note that this is not particularly portable, thus -f is generally used)
# -f file   True if the provided string is a file
# -g file   True if the group id is set on a file
# -r file   True if the file is readable
# -s file   True if the file has a non-zero size
# -u    True if the user id is set on a file
# -w    True if the file is writable
# -x    True if the file is an executable
########
<<code
FILE="test.txt"
if [ -f "$FILE" ]
then
    echo "$FILE is a file"
else
    echo "$FILE is not a file"
fi
code
<<code
FILE="Learn"
if [ -d "$FILE" ]
then
    echo "$FILE is a folder"
else
    echo "$FILE is not a folder"
fi
code

# CASE STATEMENT
<<code
read -p "Are you 21 or over? Y/N: " ANSWER
case "$ANSWER" in
    [yY] | [yY][eE][sS])
        echo "You can have beer :)"
        ;;
    [nN] | [nN][oO])
        echo "Sorry, no drinking"
        ;;
    *)
    echo "Please enter y/yes or n/no"
esac
code

# SIMPLE FOR LOOP
<<code
NAMES="Asad Raheel Ali Sufyan"
for NAME in $NAMES
do
    echo "Hello $NAME!"
done
code

# CREATE FILES USING FOR LOOP
<<code
for file in {1..5}
do 
    echo "File no. $file created!"
    touch "File-$file.txt"
done
code

# RENAME FILES USING FOR LOOP
# Not able to comment out this line through <<code FILES=$(ls File-*.txt)
# The $() syntax performs command substitution. It allows the output of a command (ls File-*.txt) 
# to be captured and assigned to a variable.

#FILES=$(ls File-*.txt)
<<code
NEW="ForLoop"

for edit in $FILES
do  
    echo "File name changed to: $NEW-$edit"
    mv "$edit" "$NEW-$edit"
done
code

# WHILE LOOP
i=5
while [ $i -gt 0 ] 
do 
    echo "Countdown ends in: $i"
    ((i--))
    sleep 1
done
echo "Countdown is Over"