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
BZh91AY&SYR�� ���L4��f��n���P��n�4� IF�Hڏ@�bh�144i���	��iSj=F������F  �@4����4F���  �d �&MF&�04ѦF�a�hɦ�BhG��COQ�����MI��� ��%�yĻH��	~�6$@�M�C���� �Ȥ�"	_|��W�2"�@ @�y�0O�\��١X�2J���GA���w\c�,?qU�J��h�a������$�s'W���q^�JFR�l��ά�C?P�'8��'�� L���`�3:2��
�ɐ�6��)ڊ�.���X :a�Cw!~��V�A��7@�i`M�3@��BB��pj��
�6*`0�U��.��$(�+TC�;V��P!/�%�p� ݀}GmeW�a(4��vP�W����Ye-��:j	;����$-S!4�u5�ZD�%q��Mt絶���	�2���w�\�uk`�{!4u������l�2���9N�Ȳ	�ۊeg�H),)&x�!�)<���"�(��1,u�q�;�8������#���_$��>f)7ȣ�R =�gLa�{��@;�w��$�	��w�},�ϟH�#\�\�ӒD�d���hKZ?	�	`1j	FS\�9�F�S�w��p;9�!��so]���K�Rc���Ѝ\��#N��h�`B����X	#���A\K[~3&"�@�II�"+�?��p�����Q3�6joY��Z��4 t��U��fp*��;OnU	�4ʹ�k����T&p84�_�ۮ]'%��pg2L������jH�3:R�F��� ulߔE���}So����5�sBr�!�3"�ѾAU����Z���*�5j��+ƙz��7��2��*���SX�ډ�����Ώ�]��BAHB�