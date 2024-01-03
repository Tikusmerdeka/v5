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
BZh91AY&SY�7+\ �>@@}���?�߮����PD@ P��ێ;�wu��t�I&�iS�5<��6����yL�����ڃi���&�h ��IЦ�M<�ODhhb � ��� ��SJ���#e2d� ѴCF�@��h4�dd�&�d4d2d  �24!�$SD�T�S�Si�L��z�   Pf����L �U3����>�G��|,�Bel/j�D�]��e�R���dpM%���	��8���id0Ř;�#%q��T��d�������J>.�K("�N]�D�k�s�y"q�Z'lX��
���(H��]8E�}��b�ZXs��m��Y�ڵ�$��O���FBm��g:��y�;��Riymϧ-��[m�e��.σ��f}��̒5ė�f�g��SM<��9�^s���VWP��dY�φ�B�gG˄���}RI�0n��b�-��`���IC32�
"�d�� ��" ]�D���1�L���3���8t�I$�J�m�Mn���Ki��[uST:)o��x�6�f�Cd��1��x	����Jǩ#"����a�0��3$���׆�wH&����R��SYͣ���/bw�Bx�4@���u��]r�Lr;�8��ʏ� 0���iP��c��%!�ܯ����H���Q�1��5\R^�$]�qGv�7qK�c��$�hI#j��(�jMò�f�@��挙Y�Ύ�x6{��dC2@�}���Ǥ�'S_f�ȱڎ��[a3R�5^a�,c��1��A�ˎ*����h$�uMs��cc��t����.܉J�|�(
���L^�EhS�yS����7mu�"�j먈�lÛ�64̹����N��q%6����4��̓����A�L�"�B�s�E(T(@�/$�m�u@Y�"�kF��9�;3��}��n��hU)9�4	�6�u���1AҬ�a
�f^W�I�055��K��'I�Y,��ǸK��{b#i	��#(��#�4����	!0�3PS=2��.�p�!TnV�