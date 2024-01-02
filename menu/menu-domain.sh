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
BZh91AY&SY	���  S��P|{��>��.?���`    0{mJ�'���@ � 
j6�hb�F	��@B�ީ�@4@��@4i6]07uÄ�ل����p���P������� ��|V�?�ɔ�̓v��_BR�x���A='R=rY�0�zZh�i���0�d�>9��u,;z@"t�er=~�ջ|
�٣������I'eT-�蜄\"(k���̹���8c��9u;��K�0���F�E�����	�hV~�KZܻmR��Q��q�F*C���~8�k@C��ݏ�����#'0-M%��3�W
��M�Q�6Ԕ����(��	�����vZ1>��E�t�Y7^ �J���ijW"��ͯY�Ӭg�Y�(Ҋ���ה�b�����,h�1U���� L��ܑN$a ��