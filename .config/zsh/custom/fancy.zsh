# fancy startup text
export ARCH= 

echo ""
echo ""
echo ""

COLUMNS=$(tput cols)
title1="████████╗███████╗██████╗ ███╗   ███╗██╗███╗  ██╗ █████╗ ██╗     "
title2="╚══██╔══╝██╔════╝██╔══██╗████╗ ████║██║████╗ ██║██╔══██╗██║     "
title3="   ██║   █████╗  ██████╔╝██╔████╔██║██║██╔██╗██║███████║██║     "
title4="   ██║   ██╔══╝  ██╔══██╗██║╚██╔╝██║██║██║╚████║██╔══██║██║     "
title5="   ██║   ███████╗██║  ██║██║ ╚═╝ ██║██║██║ ╚███║██║  ██║███████╗"
title6="   ╚═╝   ╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝╚═╝╚═╝  ╚══╝╚═╝  ╚═╝╚══════╝"

#Lolcat version
# printf "%*s\n" $(((${#title1}+$COLUMNS)/2)) "$title1" $(((${#title2}+$COLUMNS)/2)) "$title2" $(((${#title3}+$COLUMNS)/2)) "$title3" $(((${#title4}+$COLUMNS)/2)) "$title4" $(((${#title5}+$COLUMNS)/2)) "$title5" $(((${#title6}+$COLUMNS)/2)) "$title6" | lolcat

# printf "\033[38;5;159m%*s\n" $(((${#title1}+$COLUMNS)/2)) "$title1" 
# printf "\033[38;5;195m%*s\n" $(((${#title2}+$COLUMNS)/2)) "$title2" 
# printf "\033[38;5;231m%*s\n" $(((${#title3}+$COLUMNS)/2)) "$title3" 
# printf "\033[38;5;231m%*s\n" $(((${#title4}+$COLUMNS)/2)) "$title4"
# printf "\033[38;5;225m%*s\n" $(((${#title5}+$COLUMNS)/2)) "$title5" 
# printf "\033[38;5;218m%*s\n" $(((${#title6}+$COLUMNS)/2)) "$title6"

printf "%*s\n" $(((${#title1}+$COLUMNS)/2)) "$title1" 
printf "%*s\n" $(((${#title2}+$COLUMNS)/2)) "$title2" 
printf "%*s\n" $(((${#title3}+$COLUMNS)/2)) "$title3" 
printf "%*s\n" $(((${#title4}+$COLUMNS)/2)) "$title4"
printf "%*s\n" $(((${#title5}+$COLUMNS)/2)) "$title5" 
printf "%*s\n" $(((${#title6}+$COLUMNS)/2)) "$title6"


