dname=$(sed '1!d' inputs);
num=$(sed '4!d' inputs);
num2=$(sed '9!d' inputs);
vgname=$(sed '13!d' inputs);
sizeofLV1=$(sed '14!d' inputs);
lv1=$(sed '15!d' inputs);
sizeofLV1=$(sed '16!d' inputs);
lv2=$(sed '17!d' inputs);
mpoint=$(sed '18!d' inputs);
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
sed '13!d' inputs;
 )|
fdisk  $dname;
pvcreate $dname$num $dname$num2;  
vgcreate $vgname  $dname$num $dname$num2;
lvcreate -L $sizeofLV1 -n $lv1 $vgname ;
lvcreate -L $sizeofLV2 -n $lv2 $vgname ;
mkfs.ext3 /dev/$vgname/$lv1;
mkfs.ext3 /dev/$vgname/$lv2;
(echo /dev/$vgname/$lv1 $mpoint ext4 defaults 0 0 )|cat >> /etc/fstab;
mount -a;
