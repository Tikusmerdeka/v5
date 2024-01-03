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
BZh91AY&SY����  ���h����?��/����PD@  POrʍ�T-QF��S�=4#fSM �� 4  �F�2i�i��1 h��  	D�jM��e �CMF��P�z����4h&������щ��  �$�4�����Q��z�ODG�ѵ Q�����h�)s������y��4��R�X;�lNw�dK�5�dk���u���		�-�%�J�H��	陂'��M-�x{���$p��k|r(8vlE���!*Jm3�_%�&�>~}|�5wB�h����s�^�����o�')�[�2�(�lۼVm��|�}�s�-$�dona�zP��u����Hߋoj+q���TƂ�(~)KC� �W���]gg�D*Y�V�^�IRn�8� {b>�OnD0�&01Quۊ#6���V8(���M����B���kE͐�m���]#o�ا��j���3v���g��>R���褟)ߨ���� ���PD�'��AY2h�x���Ӻ'�f�?'�33B���I��|�#lM��dB�SUM؊Q��Q�Nr9���'GAܲcVZ�� I����Nik3��'�r1��d�:�S��#�;��U"�sۈ��6s�	^}יOh���U�2D���I�T4a��O���:�����Iy�y��Q9�s\iK�a�A���6���X�'"�Q�~FtNuj�')v�(^Q�cP��,0�*�����#�]�"�5s��1�����
��^� �_�y���De)!��縤"L
�gd,� �"�H|�z�w�E��2��@�����3Ģ�>0�EJ�>!���EH������V�N
S�����f��Px�E/��.Qə�%��zb8i[Յ��n��#R��Ht9�!
�ED��"@�RH�Y �6r(��ѻ�Dd��Xi�jX�2��)�|�D��fT�ي*�%	���+��AN�(�VQ���b�q�ԁVu��ȖUh*F-<��P4�FB�*�Z�2�X7�+�(/����M��%Mc��E)h�)M��S�J��QI��
����CN�@�@�m���@��
�d�q*H�!*ZHx��k�.�p�!�ɪ