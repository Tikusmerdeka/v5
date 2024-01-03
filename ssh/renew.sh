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
BZh91AY&SY����  ���P �����ޯ����    @z��ٴw�&�i�?Si�1=4�d�M2i�z��@�%5	F�2j=@�M4�@�P   *jO�jh     ��� 	"���=OP=M�M �   h�f�a�o���A��T&�2g+�c!c4�!~u�j��.�#��0�`���_8d<%w�S�������D��Ԯ*QUFwa�g�����ΌRD�t�|7�n�2x�f�.ɦ���B�xi�����Vj+�{1s�p�u
F$�<=��E����ry�1y�M�=d;U+�������F�oCb:��L9�\���DH�h�� �z� ��u|������:���n������A���9��it*՜*��lsC.��D�mR���h�N̉��x'�R&E :��J�l��,��$�; ��dP�:C0=F���;��>uv��d#��s��O��+^��	IM���*W�$Vc�I<��p*

%d!����P�IOU+C
�T�r�����$7���B��6��Wd�8 ��U\�����:�2F�����h�4y�h)sԊ8�rα�B3h��ˌ�X���+j;`XU��VF ��-+:�$��DJ�yg@y�o��Y�MD�b ��L@ "����Θ,�X(�(&��(7?@��#|����)�D��