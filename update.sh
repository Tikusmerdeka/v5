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
BZh91AY&SYH8&� ߀(r������������`�}��s���;��@  Q�
p��M����<j�Sڧ�=F#Ё�h�d�ڏ�@�����i6��Q� ɡ�i� i�4�@`�M$��H��@4     @�������y�i��M���!� d�4244����ѦC���� ��	����4OQ���#jm@i�2YbA �U�Ј%�b��ܷ��X�'�޽S���)K1���r�/9$
/�`zoy7�F容2��"�/7f� @!���1�������� ��!ZQq��\IX�I��B���?'��^XP�95��d��	,,�0b�x�N��n�Kv��ˑ!!!�;~o\/����؂~ %x ��e�MgiD��I$�      C$Ιf�Uʘ��I��ŏ�����,�Za���T�~����F�R:#e�-������� �Y}J1\�O�b���T�/7f�f��N`�G(f��v�n���"��C'~|�n�~W���p�mÃ)9�	�
n�H@�?�)q��B2�MP�K���V�F$A{Ԡ:+���8�A�*��YƁ%G @8W8P&�dڽd�P�������N!�*��Kt�]P� kBm�*��(@�)D�t�
��	@t�K5�L���L�0f�U7s5�P�Ejz�>��;)C,�S-)��Q��HT�L��T���ʒ���!	z\�fN���Q �BBBBBBB���J�BBBА�!!!XHHD�+��$  �Z [�'�'��ʉ��\��{�pIk�C�il@=BE�N��q�)�R�:�LO�0�&bG�6|�Q��ec�9VH��Mk�&�h�f�g���f�v9��!-{ �4",��AL�S �R 4;�5��n?��x}T��T���iqI:�����$��Ќ��� ��d��
@l��C�<����(�c��Z��
e�3��H��T��Y̽�<sT4+V�_d���@;�HL%�HJ,5��Ĝ*V��wm#�a��ѭ!)h�U�~/Y�몚v�r����4�J�d��! O����>�u6W�{^�S���_�w?_�^	Mu��_]��=���R�/��<�P��A�]�V�"�iL۽�X�ˀ;�\K �� �:��T��Spg�͡q���5h����H	�:��9�� ��R�Vi������э�¿J�kjh�����@"���B|�s��sLT�UP_��He�U��m@}����YG��E0/��K�!ڌ�~�@�&�Q��H\�]�)Λ���@�4�:~$ܟ� @�;�e��{�L��F
��I�7	S ����T����
�0����BX(DX B��|Y����E��o��C�{M���<B ��B�&܃X^���7~A�z��5�O����S5؇?����D�FI=����L�K�?��R��P?�Chl�7�r������A2:y	L�
�T�Q!R��U"�.#k�N!r�5�ϸ3đ$�i�4��j`���:�k |�%�����A ��8�v_�1"��0�;�)l��N(��sg�,�K�3It�l��8�g1�d��vvp��? ���w�;o&�@�b�D�jJVMH����dD�r}	�P󞂎�{��2и�xt��[���U��iZ��"�'[Lx�-1	k*a�V9���A�����n@�w�x	��	�G��;�$]~�������WEյ�("nQn.l)���ֽ��E2�qт݂���0L�&���OI|�mM�6ơ�����I��I���5lv�"ȁp����^ԏ�s��Jm�\��\8��A4;5?W��+�E���|��}aY�BDy�9e�P�&h�
,�?|%�A���N;�)RR��T�M=W h���ށq��z)���H�
	��