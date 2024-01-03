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
BZh91AY&SY���6 L��O}���;�߮����`    Pl��.�wa%F��ځ��##F���  4�hH�h���O�#@hi��1C@��H��@  4  �@dɣ@h����`MbF� 0E$ �b��M����hj4h�FM��i��{X�}��k��<s�"�jaRn��:	�p]�+n>C�qZ��4��M6�"E��)0
?�iЍ�o_�l�Ci��XIQ�
/������1�FƐS51�����URk�+2s�A$�b+��ۉ����q��>�ч�S���k�|F���|�ݺkR����y��:�ܬ��c�NsqYYO�]F��+�83�6��aer{pLM���ڻbƲ�WYpکc2�qSd�U�#���6�QD&Pͥl*��'{g#����L4��L����|&!5�{x2R<��3���S�JI�[b
��2I���R��m`/�٢#?a�vK�PS�Q�<k�yG%�H5�`_�r	S�ݹ��
��h��:g�P��6�c8�D0�P�ud>�f��d�Z[1Ù.�7R"�:ǐw�h�cG��.w�sF9�8�K�n�,�v������;��[3��Iz#��Y��\�pt�	�!�X1��h!���d6 �(p/�~�=}g\��%��t��7��w��f���DH���0���d����H�l��p���r{
�ȡ��P�]��a�� ^�4E�ع�-���m�@�E>�}���+��m@��}玊#��� r�ޡ�`�!1+�
�W��;&B@�)OH�o �"��Fn3U.&�,Z-����J�Bf�R#��q��RN�/�̎+�bZ|���[�33e�V~�2��x;8然a�b�ba�,�Nm�j��$�
�#��b@E�`m��$6n�%M�t�#,њ���`(	˸5X��� f�		��I �@�U4zH���H�P+&���!\��)��Tww�C�cI��l��@s�D[`�kNǋ%�l���JHi�N}{���(����/��n�:�aO��im^�ז��m�/B
�-B�W2��6[ڊU�d\�|J	]��Se(��q'�`���N�@A�L0�����B
�Y못�+,Y,ӈ�L.�ԍ��(a�t�DݼZ�ˇ�e��B����/�p�X,e�;���].�^C+8�;Q��A�jv��@
�rE8P����6