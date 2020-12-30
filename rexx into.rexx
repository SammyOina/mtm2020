/* REXX */
say "I'm thinking of a number between 1 and 10."
secret = RANDOM(1,10)
tries = 1

do while (guess \= secret)
    say "What is your guess?"
    pull guess
    if (guess < '0') then
    do
        say "Number is less than zero!"
    end
    if (guess > '10') then
    do
        say "Number is greater than 10!"
    end
    if (DATATYPE(guess,'W') = '0') then
    do
        say "Number is non-integer"
    end
    if (guess \= secret) then
    do
        say "That's not it. Try again, someone"
        tries = tries + 1
    end
end
say "You got it! And it only took you" tries "tries!"
exit
