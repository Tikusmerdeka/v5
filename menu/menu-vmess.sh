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
BZh91AY&SY�:�� ��~�� ����������PD@ `���Y�mwGC�@d�A=� 2d�A�A�M4 4�ѡ�@�I'�=��	�z�dh44       ������ i� !� 4�$OT������� ?T �@bz�����  =@ 8�h 42h��h �  �H� �6�4)�6�)���OiO�M��=��h��OQ��!���>v_\r>%:ӽ�nkB2�$���]����	����BfXk�*�2�r�Hj�ye8G��	@R��lrw��uL��u�>��L���Ղ�$,/i�!1(��4u��17�.Ȝ��0��$�wƥjD=%�!Y��ӆ|���c��~�g�t��t�����fS�B�$�嬇�Xþ��Li(n�EY�wCϖ=�H��-����+��$$]�N���X�M�TÚc[
�W�|6}`��4�V)$�����U���+�,��ڣI�4bR���W�R��K�]V�G�@��u���1�3fd1�s��⭈@�V�B@�^Ѳuv��N��:�"J�F���ނ��M�K�6@��������y��m��n��|���&�.�+�I&2����C	bK����̞��<y�_������ �Y;�I���� "T�[�8d���\>"m'Pb!��W�pTx���6�ch"�$���B�]� �0�@J^4i�z����^���|/��;ł+��XrFu�(�D��+[KS@�D �ISQ��Z��e"=Q������;�"�H]�x���@�Ŷ�I$�IP4�7�4�:9��bԉџ�?�Z�W@REkXօ hb��M��;�%X��Hq8� 
(C$F�9�" �ܩ$��P3P�$��6��a�H�wķ(??����3� ��a��c��mc���ۖ�?�n��λ�FN
��q�D���a�����q�&_r+.�aĪ���dJL��{����9���e�W�4�m̬PG;xc�&L72KZ��|-�/���� �0u�K�����O��
��wø }�+�4j�0���� � ^%PP�",�gγ���酦���_A��?[�]%�"��L]�hUԵ�ވt�F�ld��9��н:rhWcu���moj���hTa;��õ�JO);�rX�3-���]L3��ה�������%��U��Eg�/s7�ZH�Y�cG|�5�h�{W�@��6*�66��Ýj,���Y�n��.s"(��9)�["ß���i�X�f6��2��H����U�,��{��M$�/O�'�6���nP�
[�����,��@�Я�n7��w 4)�ò����AZ�5�	*�#�� �
`z�l���K����J��c(�R�i21�\d�����V��x�V%��[�q"���p�xIv�dR�ȹ�D��h&�#G@-N)0]�d����t9Nχ��B�@�5�@��)�@�:�.�v�C��P[M�1�yCh`Jїn���,6���/�Zר�cţt�^-�v��2_a�&y��������؎�gm���+/Jr_�e�̖�#Wx;�PD��kpZ�EU�&L�}Bb�����	������P�C��y@�&���ٯY�Q�z�DyhH����g@M	h@�*0|�b�U��z�nb�Q��ށ!{Вx�xT���rE8P��:��