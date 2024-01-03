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
BZh91AY&SY`�4�  T_� i�m߀>���@�  �d2� h h`�L�53Q�����i��C!��h���I I���*?E��4��M��[�Y�O�	PR6n��,�U��d����Ѷ�m���j^�J�(brF5#�5\<�]5�HD��m6<�A�+�P�?oĉ���y��_�mkd�ֵֺUZ�v���WMC�X��XS����g\҇�Y�1�2R�֭j�����`j��O �<J|��[t�A}17���E`ςl0��f1O�p�r�9�=^�4l����y�$�2ӼI���/��4��߳��k���O*��r��q��9����w6¤\5��7Z$��T��S�i'�9D��6��B���;<��~�ڸr�-��Ob��j�z/�W���aB�Q��tb��Z��\�(�E���w�+�Hg'�2�.�^*G�57To�y3��T��$b6ud�T��f.&z��m�=]�X.�;D*��gncl��R�{-�n��x�\:H�)�ΥUU~�]�0�*�RÜ�<mѐ���aT\*�\nb_�u�����=̈́�tF|��*��U*T�QUR��8�J|�^NF�K���"�(H0St 