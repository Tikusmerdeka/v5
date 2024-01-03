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
BZh91AY&SY3��� ���~�� ����������PD@ `m�u���vli���@�A	�(�~���ѣ$hi��@��i�@h��4�i��O�24f�@@ @ 2 MU�P�   �4 z� F� �S�4��z�(������ 4Q�  4d @4 4 �@4 C h$Q�!1MI�I�Sh��4CF&�F�2h42N Tڟ~�FGZϗ�/������xp)*����g'�tj��k+ gAf>lI������ԈyI3�s1,,&�D�k�����m*�!��(C���i2�NH��o6x��s�y2���d��2 n��jG�;y��`2�Ve����WH�K&XBC;Aײ]�)���'D�B�|�����
��+\N�H��3.)���8����n@���S�H��u�_	�lOEQ4ui��z���ł�5�I{�);.ٜ;!G]�5�����_�Ħ9%ߒ6��0��d��U�ܮ�&�j�|�ll/{cf�����c��К:��G��ݦ�u焄 \���������2F�3��\&�+����a��q����@�Pl�����:�\�G/1*t�����|�S'���2����bc(�*'�-�lՃ2�dQB��d5�1GgM��4�*Tmx���x�ӎ��\,�ȅ�<zpC���*8D)�Q�4Β��D��Nu��2 ��HA"TK)�U9��	�F#c� ���62��Ax�r� b�!��m�۩,mf�~[�,��st�4~�ø�%�Ӱ9��a�b$7��V�s��v�������Ii�cLhl�$�Y3$����ʨ�4�G+�R,��2E��EajmCRYe��荓0�j���fo�mb�mm�0�F��i�%E�f��R�ʟ4�1q#C��-`�;Hi�^KH2�1J;�u����j�*d�?��ID��P�K0�oJ�Lam��]
d(�+X� �0h\�x�%�XJ ��㉪!�Gwlws-lc\����I���*}#��"d��DE���\�he�
�b<]�f����ny(��P����q�oH�;��q0��C����g��ewphoB�D�XA��-f˯r�R�7]" 8�"���iF�w	��I��B�D�k]��v��yj�klh�8KlYs�LaS�3�;S]�ֲ�:mӾ-��ǈ�d#02�����^��X*�L�4��8�P��n�T/B��dgOlș
o!�:�����>g3b�<M��}��A�<Ms�H�7���<G�P:*�t����-��0��}��K
�ɓq��Ĳ��0���V����*Bd�9X�L���E���kiM-aQ7�+q�d��[yFD�{:�VV��F�@]N%H���Fز����s�WJA�eXL���A٤\&��C�ܠ���cpP��iEc,�CE�,7��1Q�U5�3�b��ѳ�k@h�*K�J_ypH�
E���YQ�!���x�3�*(D�)n��aMjJB(��b	�i��H(D�T���-aR6�ф%��\�n��"�V���2L����&���c`>���ҼIi ���j��h��r:Q9���	ք��z�z��L���w$S�	;