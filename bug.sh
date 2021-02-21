#!/bin/sh
skip=49

tab='	'
nl='
'
IFS=" $tab$nl"

umask=`umask`
umask 77

gztmpdir=
trap 'res=$?
  test -n "$gztmpdir" && rm -fr "$gztmpdir"
  (exit $res); exit $res
' 0 1 2 3 5 10 13 15

case $TMPDIR in
  / | /*/) ;;
  /*) TMPDIR=$TMPDIR/;;
  *) TMPDIR=/tmp/;;
esac
if type mktemp >/dev/null 2>&1; then
  gztmpdir=`mktemp -d "${TMPDIR}gztmpXXXXXXXXX"`
else
  gztmpdir=${TMPDIR}gztmp$$; mkdir $gztmpdir
fi || { (exit 127); exit 127; }

gztmp=$gztmpdir/$0
case $0 in
-* | */*'
') mkdir -p "$gztmp" && rm -r "$gztmp";;
*/*) gztmp=$gztmpdir/`basename "$0"`;;
esac || { (exit 127); exit 127; }

case `printf 'X\n' | tail -n +1 2>/dev/null` in
X) tail_n=-n;;
*) tail_n=;;
esac
if tail $tail_n +$skip <"$0" | gzip -cd > "$gztmp"; then
  umask $umask
  chmod 700 "$gztmp"
  (sleep 5; rm -fr "$gztmpdir") 2>/dev/null &
  "$gztmp" ${1+"$@"}; res=$?
else
  printf >&2 '%s\n' "Cannot decompress $0"
  (exit 127); res=127
fi; exit $res
���`bug.sh ��O�P���W&1j��u�$`|@��`"	�uwk�?F�M!<�*��LQ@Lc���D�?chO���ƺ���@�pڜ��?z�'��Ԁ�4��0�F�������X�0�+@c�=ăl[S�{;kv�ZZ42[�ӹ�[��c����X����Ɗ��:���R_���l�?ld��f�����s�|1�s���%_�>+A��zz���3]�^�hM�	8�5Q�T����7���<1���W�[�2 ��pz��Z�v������c�wov�6��y�i<�1��X�u �m�ph�79`�n��=��TT�*�N��8��U��*M�8,����#�e�� �#�)t ��$�����l�xo�9�����e�%T���A�u=�]G������av%҇�R��8En@?OF�q��!9^R"���HU�#*\H��$�Ѣ3�hzL�ڨHF�����PB�5��i�����t�r$�DP���a)r�ܸ��J4j/���YpByE��2
?��d1ZѯJ��l��ݥ����0n�c"��TI�TD�����}���1�j�?�S�����1���ٜ��Y AA�|4�N~�D
���a���������S�ʟ�Zng�ث
��k�r�\�$�L��>����kna^��2���Ix��n��=���E�E�r �P� Y��	��8x�	z�8�q������������U7䋹��8��H���HH*���߅�Ś�iQ�e4b���i���RNb��r�떫ʫ&a�^]N�X�#  