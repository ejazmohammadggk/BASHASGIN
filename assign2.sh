uname=$(sed '1!d' inputs2);
gname=$(sed '3!d' inputs2);
(
sed '2!d' inputs2;
sed '2!d' inputs2;
echo;
echo;
echo;
echo;
echo;
echo;
echo y;
)|adduser $uname;
groupadd $gname
usermod -aG sudo $uname
