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
BZh91AY&SY�cO �_�`P����9�^����� @g�  P9���`IBOI���Ё�CM4 bi� z� 4�2i��� �h�& 4�d�T4F� �M   h  4�2i��� �h�& 4($O��=S�T�S'��44zjd�C'�3(�~���GWIM2�=_��dt�tN��G � ��t:3�	Zۯ5=)cX����?�F�^�p��+Z�RR�c�F+�$3_�K��J	��E��y$�J�˚�Y��Y�M��Z"�Se28�őgb]xk[�صF�)�[�ө�V����:L/2͆��+!X�|&��y���'8��y�)��O�ͫQR��R����R-���L0-b�*���c��&����kh���O�Hȇ���̲��w�r)���in�T\�jD�JY0�MgJf�l'Gq��I������v�M�ܴ&b�i��04�;���a��Ȝ�Aa��xQmZ���i�Q�IwR|��sK����Ӽ�v�!�/� ``�2N��ґ�w��1J�h�{�D��.��ɥ	��梌-0��"$�E�d&T����"B�Q��� 0M܆��8ʷ-���q�lM���$b��ʥ��D���X C�cւ#��lH��N��i�����"���W�t��x&K�b�^�T���TF"���"\��Z@"R�#B% w'e��R�^ҋ�JD�(��� LfJ2L�KA�(*P����R�i��E#:��a.$H�X�f@�l2@MEK����)F��H�
i� 