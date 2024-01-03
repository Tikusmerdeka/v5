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
BZh91AY&SY���  ���T� ���g$�n���    P;��Y�� ���H�5O'�z���$oT���`��M2�����H���S�#
��OQ�@���� ����)��@2h4 �C@  �@9�ё����42h��ɐ �6�J{J26��jd�F��� mFM vx �(qdH��kɀ��qt�")P1���h�:$2��g�tجbHi��Y��LH4�\�>08ّ�ʲ�4M;�C:>�D�Y��W:��
&���Ƌ�����ȗk�P�e�4��7������7��[��L<̿D��UŭX�|��r`�#�4N��p�.�L%�Y��'��E��a=F���4C
�آ�gyj��6)����Kl��{{|�w�7��{*Tk.����]P"�@UǺ�l�ʻ�ev��}i��d��p/0v1�8ՙo ����{��>��R��)h�I2�%/��y�Q�ㅭd��ؖ�14����}b�3�d����%��̃b�b��L�T��P�qh��W���#V�q�G���@�%H����lg�d�t�p�o��������/\��l"���El� _����k3nE��k,.Y[�A4�����k�?�0�������Qj��!%!��Q3O8��^+�t�ʆAfa���z���i ���X��Z�$��~QɋT�Fr"H������xLv�PTN��I�������oB3��X7���u�į�(�ALSb���,�\2[�2ɕ*���'9Qo�#'M����6���A�a+�R�(�q2/�g���6}!ia���#&� c�h3�J��C!9r���S�����Z�jUM���2|
w<�XH��Q���x��+.�P�d�yz61�U+��%�0���|:���F�@����"�(HNCB 