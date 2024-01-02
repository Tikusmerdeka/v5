#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SYQqj- �_�r|{��?�߮?���`    P��hk.��IH�I���11��F��I��F�@4���z�=L��4   �   q�&F�A�M��&�� 0��'��   �44@   �@�I�OT�Jf����SG�� ��=M��mHg�>��r���2g�PC����>�@�Z�Do�R���!}*$�JD)ZZ�ʢR�G�I	���l2�(���>XD;�$�Ld�RJ��/��D�q�'�.I�=���˃�q점�򜃟���z�`e�=P�ح�4�Q�4f\IG7=��x���Nb!��XO ���	,Bj��-�զ;#�x����g�۔O��ןD砉�]f��!�3$LeE!
Ӟ���"����t���;���,Wo3)>�Bx66zT�y���aJ�Q��V�O�I�R���T�a
ҩr�N��۱f��\R�|�\��o�Kg7j�=u���1��^�^Pv��{�	���Z��o�;��K���8]�I� J�D}Q��i�qߦ�%�p`�j��/�@���^93᝭Z�&ݺ�T��3K� u��$���)0󴑙��k��Ňw���	�
(�A�_l~Hs�!��&�:}5��zЯf�v
v����J5���0�R0�U"$"�.H�)Tº�a�2�S����A�l8�)��g�Mf���&�<�`}U�DD@��� �uIew�ޗv�]��4�N$�QGC�_E��2-��\B���<�Ե*�yP��zؑ�)$3Nn4=D�@4�U5	����Om2)yx��R�)!"܊xԝp���1\k�QNQ-[��1�-�2��5�����������}ړ��T� �
 !
 !�@μ8y��0#�@P! ��ܑN$\Z�@