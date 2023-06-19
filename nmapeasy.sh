#!usr/bin/bash


echo""
echo "******************************"
echo "╔═╗┌─┐┌─┐┬ ┬   ╔╗╔╔╦╗╔═╗╔═╗"
echo "║╣ ├─┤└─┐└┬┘───║║║║║║╠═╣╠═╝"
echo "╚═╝┴ ┴└─┘ ┴    ╝╚╝╩ ╩╩ ╩╩  "
echo "******************************"
echo "Version 1.0-By Yash.B"
echo""
echo""
echo "𝓗𝓸𝔀 𝓽𝓸 𝓾𝓼𝓮?"
echo "𝘜𝘴𝘦 𝘵𝘩𝘦 𝘨𝘪𝘷𝘦𝘯 𝘰𝘱𝘵𝘪𝘰𝘯𝘴 𝘣𝘶𝘵 𝘪𝘯 𝘤𝘢𝘴𝘦 𝘰𝘧 𝘢 𝘭𝘪𝘴𝘵 𝘰𝘧 𝘪𝘱,"
echo "𝘥𝘰𝘶𝘣𝘭𝘦 𝘵𝘩𝘦 𝘰𝘱𝘵𝘪𝘰𝘯 𝘪.𝘦 𝘰𝘱𝘵𝘪𝘰𝘯 1 𝘣𝘦𝘤𝘰𝘮𝘦𝘴 11"
echo""

echo "1.Normal Scan"                   
echo "2.Stealth Scan"
echo "3.Connect Scan"
echo "4.UDP Scan"
echo "5.Aggresive UDP Scan"
echo "6.Service Version Scan"
echo "7.Intense Service Version Scan"
echo "8.OS Scan"
echo "9.Aggresive OS Scan"
echo "10.Common Port Scan"
echo "11.All Port Scan"
echo "12.CSRF Scan"
echo "13.Http Methods Scan "
echo "14.Http Errors Scan"
echo "15.Ip/Email Crawl"
echo "16.Subdomains Scan"
echo "17.SMB Scan"
echo "18.SMB Message Sign Scan"
echo "19.SSL Certificate Scan"
echo "20.SSL Certificate Strength Scan"
echo "21.Vulnerability Scan"
echo "22.Spoof Mac"
echo "23.Decoy Scan"
echo "24.Firewall Bypass"
echo "25.XSS Scan"
echo "26.SQL Injection Scan"
echo""
read -p "Enter the IP/List of IP : " name
read -p "Select an option : " name1

if [ $name1 -eq 1 ]
then
    search1= nmap $name
read -p "Select an option or press ctrl c to exit : " name1

fi

if [ $name1 -eq 2 ]
then
    search2= nmap -sS $name
read -p "Select an option or press ctrl c to exit : " name1

fi

if [ $name1 -eq 3 ]
then
    search3= nmap -sT $name
read -p "Select an option or press ctrl c to exit : " name1

fi

if [ $name1 -eq 4 ]
then
    search4= nmap -sU $name
read -p "Select an option or press ctrl c to exit : " name1

fi

if [ $name1 -eq 5 ]
then
    search5= nmap -sU --min-rate 10000 $name
read -p "Select an option or press ctrl c to exit : " name1

fi

if [ $name1 -eq 6 ]
then
    search6= nmap -sV $name
read -p "Select an option or press ctrl c to exit : " name1

fi

if [ $name1 -eq 7 ]
then
    search7= nmap -sV -version-intensity 8 $name
read -p "Select an option or press ctrl c to exit : " name1

fi

if [ $name1 -eq 8 ]
then
    search8= nmap -O $name 
read -p "Select an option or press ctrl c to exit : " name1

fi

if [ $name1 -eq 9 ]
then
    search9= nmap -O --osscan-guess $name
read -p "Select an option or press ctrl c to exit : " name1

fi

if [ $name1 -eq 10 ]
then
    search10= nmap -p20,21,22,23,25,53,80,110,119,123,143,161,194,443,137,139 $name
read -p "Select an option or press ctrl c to exit : " name1

fi

if [ $name1 -eq 11 ]
then
    search11= nmap -p- $name
read -p "Select an option or press ctrl c to exit : " name1

fi


if [ $name1 -eq 12 ]
then
    search12= nmap -sV --script http-csrf  $name
read -p "Select an option or press ctrl c to exit : " name1

fi


if [ $name1 -eq 13 ]
then
    search13= nmap -p80,443 --script http-methods $name
read -p "Select an option or press ctrl c to exit : " name1

fi

if [ $name1 -eq 14 ]
then
    search14= nmap -p80,443  --script http-errors $name
read -p "Select an option or press ctrl c to exit : " name1

fi

if [ $name1 -eq 15 ]
then
    search15= nmap -p80,443  --script http-grep.nse $name
read -p "Select an option or press ctrl c to exit : " name1

fi

if [ $name1 -eq 16 ]
then
    search16= nmap -p80,443  --script dns-brute $name
read -p "Select an option or press ctrl c to exit : " name1

fi

if [ $name1 -eq 17 ]
then
    search17= nmap -sT -p 445 --script smb-protocols $name
read -p "Select an option or press ctrl c to exit : " name1

fi

if [ $name1 -eq 18 ]
then
    search18= nmap -n -sT -p 445 --script smb-security-mode $name
read -p "Select an option or press ctrl c to exit : " name1

fi

if [ $name1 -eq 20 ]
then
    search20= nmap -p80,443 --script ssl-enum-ciphers $name
read -p "Select an option or press ctrl c to exit : " name1

fi

if [ $name1 -eq 19 ]
then
    search19= nmap -p80,443 --script ssl-cert $name
read -p "Select an option or press ctrl c to exit : " name1

fi

if [ $name1 -eq 21 ]
then
    search21= nmap -sV --script vulners $name
read -p "Select an option or press ctrl c to exit : " name1

fi

if [ $name1 -eq 22 ]
then
    search22= nmap --spoof-mac 0 $name
read -p "Select an option or press ctrl c to exit : " name1

fi

if [ $name1 -eq 23 ]
then
    search23= nmap -sS -D RND:40 $name
read -p "Select an option or press ctrl c to exit : " name1

fi

if [ $name1 -eq 24 ]
then
    search24= nmap -Pn $name
    search25= nmap -f $name
read -p "Select an option or press ctrl c to exit : " name1

fi

if [ $name1 -eq 25 ]
then
    search26= nmap -p80,443 --script http-unsafe-output-escaping $name
read -p "Select an option or press ctrl c to exit : " name1

fi

if [ $name1 -eq 26 ]
then
    search27= nmap -p80,443 --script http-sql-injection.nse $name
read -p "Select an option or press ctrl c to exit : " name1

fi


if [ $name1 -eq 11 ]
then
    search11= nmap -iL $name
read -p "Select an option or press ctrl c to exit : " name1

fi

if [ $name1 -eq 22 ]
then
    search22= nmap -sS -iL $name
read -p "Select an option or press ctrl c to exit : " name1

fi

if [ $name1 -eq 33 ]
then
    search33= nmap -sT -iL $name
read -p "Select an option or press ctrl c to exit : " name1

fi

if [ $name1 -eq 44 ]
then
    search44= nmap -sU -iL $name
read -p "Select an option or press ctrl c to exit : " name1

fi

if [ $name1 -eq 55 ]
then
    search55= nmap -sU --min-rate 10000 -iL $name
read -p "Select an option or press ctrl c to exit : " name1

fi

if [ $name1 -eq 66 ]
then
    search66= nmap -sV -iL $name
read -p "Select an option or press ctrl c to exit : " name1

fi

if [ $name1 -eq 77 ]
then
    search77= nmap -sV -version-intensity 8 -iL $name
read -p "Select an option or press ctrl c to exit : " name1

fi

if [ $name1 -eq 88 ]
then
    search88= nmap -O -iL $name 
read -p "Select an option or press ctrl c to exit : " name1

fi

if [ $name1 -eq 99 ]
then
    search99= nmap -O --osscan-guess -iL $name
read -p "Select an option or press ctrl c to exit : " name1

fi

if [ $name1 -eq 1010 ]
then
    search1010= nmap -p20,21,22,23,25,53,80,110,119,123,143,161,194,443,137,139 -iL $name
read -p "Select an option or press ctrl c to exit : " name1

fi

if [ $name1 -eq 1111 ]
then
    search1111= nmap -p- -iL $name
read -p "Select an option or press ctrl c to exit : " name1

fi


if [ $name1 -eq 1212 ]
then
    search1212= nmap -sV --script http-csrf -iL $name
read -p "Select an option or press ctrl c to exit : " name1

fi


if [ $name1 -eq 1313 ]
then
    search1313= nmap -p80,443 --script http-methods -iL $name
read -p "Select an option or press ctrl c to exit : " name1

fi

if [ $name1 -eq 1414 ]
then
    search1414= nmap -p80,443  --script http-errors -iL $name
read -p "Select an option or press ctrl c to exit : " name1

fi

if [ $name1 -eq 1515 ]
then
    search1515= nmap -p80,443  --script http-grep.nse -iL $name
read -p "Select an option or press ctrl c to exit : " name1

fi

if [ $name1 -eq 1616 ]
then
    search1616= nmap -p80,443  --script dns-brute -iL $name
read -p "Select an option or press ctrl c to exit : " name1

fi

if [ $name1 -eq 1717 ]
then
    search1717= nmap -sT -p 445 --script smb-protocols -iL $name
read -p "Select an option or press ctrl c to exit : " name1

fi

if [ $name1 -eq 1818 ]
then
    search1818= nmap -n -sT -p 445 --script smb-security-mode -iL $name
read -p "Select an option or press ctrl c to exit : " name1

fi

if [ $name1 -eq 2020 ]
then
    search2020= nmap -p80,443 --script ssl-enum-ciphers -iL $name
read -p "Select an option or press ctrl c to exit : " name1

fi

if [ $name1 -eq 1919 ]
then
    search1919= nmap -p80,443 --script ssl-cert -iL $name
read -p "Select an option or press ctrl c to exit : " name1

fi

if [ $name1 -eq 2121 ]
then
    search2121= nmap -sV --script vulners -iL $name
read -p "Select an option or press ctrl c to exit : " name1

fi

if [ $name1 -eq 2222 ]
then
    search2222= nmap --spoof-mac 0 -iL $name
read -p "Select an option or press ctrl c to exit : " name1

fi

if [ $name1 -eq 2323 ]
then
    search2323= nmap -sS -D RND:40 -iL $name
read -p "Select an option or press ctrl c to exit : " name1

fi

if [ $name1 -eq 2424 ]
then
    search2424= nmap -Pn -iL $name
    search000= nmap -f -iL $name
read -p "Select an option or press ctrl c to exit : " name1

fi

if [ $name1 -eq 2525 ]
then
    search2525= nmap -p80,443 --script http-unsafe-output-escaping -iL $name
read -p "Select an option or press ctrl c to exit : " name1

fi

if [ $name1 -eq 2626 ]
then
    search2727= nmap -p80,443 --script http-sql-injection.nse -iL $name
read -p "Select an option or press ctrl c to exit : " name1

fi



