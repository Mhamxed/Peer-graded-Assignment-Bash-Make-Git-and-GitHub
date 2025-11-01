# guess the number of files in the current directory
right_answer=$(find . -maxdepth 1 -type f | wc -l)
guessed=-1
guess () {
    echo -n "Guess how many files are in the current directory? "
    read guessed

    if [[ $guessed -eq $right_answer ]]
    then
        echo "Congrats, you guessed right!"
    elif [[ $guessed -lt $right_answer ]]
    then
        echo "Too low!"
    else
        echo "Too high!"
    fi
}

while [[ $guessed -ne $right_answer ]]
do
    guess
done 
