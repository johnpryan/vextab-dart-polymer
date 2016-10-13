const String vextabExample = r"""options space=20 tab-stems=true stave-distance=40 tab-stem-direction=down
tabstave notation=true key=A time=4/4
notes :q =|: (5/2.5/3.7/4) :8 7-5h6/3 ^3^ 5h6-7/5 ^3^ :q 7V/4 |
notes :8 t12p7/4 s5s3/4 :8 3s:16:5-7/5 :h p5/4
text :w, |#segno, ,|, :hd, , #tr


options space=65
tabstave notation=true
notes :q (5/4.5/5) (7/4.7/5)s(5/4.5/5) ^3^
notes :8 7-5/4 $.a./b.$ (5/4.5/5)h(7/5) =:|
notes :8 (12/5.12/4)ds(5/5.5/4)u 3b4/5
notes :h (5V/6.5/4.6/3.7/2) $.italic.let ring$ =|=
text :h, ,.font=Times-12-italic, D.S. al coda, |#coda
text :h, ,.-1, .font=Arial-14-bold,A13
text ++, .30, #f

options space=70""";