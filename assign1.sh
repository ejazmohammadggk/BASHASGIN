dname=sed '1dd!d' inputs;
num=sed '4!d' inputs;
num2=sed '9!d' inputs;
vgname=sed '13!d' inputs;
(
sed '2!d' inputs;
sed '3!d' inputs;
sed '4!d' inputs;
sed '5!d' inputs;
sed '6!d' inputs;
sed '7!d' inputs;
sed '8!d' inputs;
sed '9!d' inputs;
sed '10!d' inputs;
sed '11!d' inputs;
sed '12!d' inputs;
 )|
fdisk  $dname;
pvcreate $dname$num $dname$num2;
vgcreate $vgname  $dname$num $dname$num2;
lvcreate 

