
$uname=$(sed '1!d' inputs);
$gname=$(sed '3!d' inputs);
(
sed '2!d' inputs;
sed '2!d' inputs;
echo;
echo;
echo;
echo;
echo;
echo y
)
|
adduser $uname;
groupadd $gname
usermod -aG sudo $uname
