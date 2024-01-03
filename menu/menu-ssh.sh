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
BZh91AY&SYeasq ���~�� ����������PD@ `�󖻶���]Q��:4IH��M���=	����ɡ���Bi�A�� d��jM��&������ F �2`�I�` �LdS"TƄ`F &LF �&L&�&�F8b4�A�   A���F�1��� h   h24 4�h�
=��D6�Ljm!���j2yOS&�����Jj,?+�9w���H�4p��sEq�j9�qc� �	�c�Nu�K+#@1r�55aY���U|����;�_�-��Z§T�f���q(���Ē�1$���="����ޗ�ک�#��il�{��L�e�A�� � �ţ����]��EoWc��o8ЋF�D�n�-�%������`��!��Bp �8��ˍw����4�M�o��-seY��ˤ^��s)�i��X�G�c�������T�)/aLD�`V��O0�`*}C��{�3�|A�$"�B.�'��d�S�V�ZtQ�9�%֦�C��ktj���Dm-��V"��e8�h̩%��&�A�ы1o  \B�A0lŜ�w�󕸍x��2StR/I� �6m����Ë �1⽋<~�	l-��]������T�]�&�.�}��Le(��%�q�&���g��=�lK4�f�N��_�iQ����[k����W�6蘸a&+���l�̻�d�q��a��nCY��5xԃ)8>ʢ��N�ͣZ�P@Ør]cǱt]o1�+TH(��fTUA9XH���(8�+֑�`��xpvS�'9H{�d�\�h G��A!30Ve8H b�!��m�۠��^�z�/�|GM�ʺ>�(�
�:u�4ЄP�� D��-+��ùh":��9W !�1�l��(?bR�#@u��n��H�2M���)�[\�"�F�^f3�%�y��xDK�����#�(1��E�JR�D$6�a��_K�~�	T����\Q�Y������h��(J�H���P*e�d��*O��Y�LAcT+�e����0a��\3dH��Ja�Q�D���U�2a��{�eA� �h`иg�+i.Ph�= ����@4fyP�W���dr^\GA�o
~���$=��J��ȓ8�Y��0�?��S�-�(��#l
R��
��5H�`��O��������tZ����e�z�-e�����̥3P��kX4z�[�Љ�%c�DU�!�1;��/픐���(Q;�J�(�9T`S�С,��0� B+�"���W���4�̛���ڭq%#�X�2�5����H�3�J�#p6�ACuW&��c������V �/�\BvR^����ԃ����H�(�Fɾ����
�ڦ�@p
�K|�<�
.�R)���m 2-�A�H|@F�)R��l��!�N�l�MW_A!e./���]7�����Ͼ� ��^�e�s�5ae�((�5�rX6�ܪ[�QKԈ+r���%m��--��J��4d��Z�5U ���ڼ�ݹ٥�X�MNFX��W#��Y�`�
��h������S4%�Nf0!@.@���h�J&�lM90�Ɋ}��k��c��]�}��LT1�2 K ��h�Z���#W`0�uO�@>7d�V&�Q"��0 �0CE
𨐪P�m�&PP`�Ү�AAq�酁��D���F��v�ǱC\J;K���Z�)�IR���m6�@}c/K6�T0|�g5���O��"��y����$/rBa�� B�3���H�
�.n 