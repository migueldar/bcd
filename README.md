# bcd (Better cd)

This is a proyect to make cd better. Bcd works exactly as cd, but when can translate ... to ../.., .... to ../../.. etc. To start using it in bash, clone the repo and run 

````
echo "alias bcd='source $PWD/bcd/bcd.sh'" >> .bashrc
````
or, if you are a zsh user:
````
echo "alias bcd='source $PWD/bcd/bcd.sh'" >> .zshrc
````
and restart your terminal
