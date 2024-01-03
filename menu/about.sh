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
BZh91AY&SYz�)j _�D0}o��?�ߪ����@wU�kA#  �@ $<���z�&#G��M  @ �FLC �d �4ɓ�CA�	6�jD��)�A�yOH���أ������㳏��ܪ��
�0-9����%��Ȥ:^=�t�$-���WoZ� ���8�Y�D��Iy�Va2�f�?'��'gk�p� ʄ�N�P�CT��6����x;�� �ʰ30I �I$�	�0�=R�}M(Z�Db�4h�yV	�vPgk%y�t�N/j�Q�%�H>�/Wy# �0��x�G9�Y�d����\���GD��ZhE�2V�ZX�7wJR�S����tje���g$ZR��u��c~�:Z���]�M�v��U)e�6&����%�= 7�E���0o;���~�]^�����GN ����Q](Zf�-$DA�5J��;X�PF�;jO}z��[��b���T�Eh�J���_.AERl��-}`�Z݊%�@�t/����R�6��`1���΢�\�8MVi֬rķkM�L�$��۰(*�T"��H- \DF� I�lh���X ��a~�$Ȳ�$R]�lBF�,��9�U"�O�pL��,��&������ y!mG��� �� ��[QT���}2e �s,��"w��St���`
�J��.�p� �R�