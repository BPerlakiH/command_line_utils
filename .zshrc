export PS1="%7F%n%f %6Fin%f %5F%~:%f%4F$%f "
 
alias kill_camera="sudo killall VDCAssistant"
 
#xcode
alias clean_derived='rm -rf ~/Library/Developer/Xcode/DerivedData'
 
#live reload rspec
alias rspec_live='fswatch -0 lib/ spec/ | xargs -0 -n 1 -I {} rspec'
 
#git shortcuts:
source "$HOME/.gitcut"

#swift aliases:
alias stest='swift test 2>&1 | xcpretty'
 
#application (vscode) shortcuts
source "$HOME/.applications"

#custom paths
#source "$HOME/.paths"
