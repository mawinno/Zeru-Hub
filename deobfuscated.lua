-- loadstring() of 483064 bytes: "if _G.FVLV2Cleanup then\n\t_G.__FVLReloading = true\n\tpcall(_G.FVLV2Cleanup)\n\t_G.__FVLReloading = nil\nend\n\ndo\n\tlocal ok, text = pcall(function()\n\t\treturn identifyexecutor()\n\tend)\n\n\tok = ok and type(text)"
-- identifyexecutor() -> "Wave"
_G.FVLV2Cleanup = nil
local CoreGui = game:GetService("CoreGui")
local children = CoreGui:GetChildren()
for i, v in ipairs(children) do
	v.Name:match("^FVL.+Button$")
	v:Destroy()
end
local hui = gethui()
local children2 = hui:GetChildren()
for i2, v2 in ipairs(children2) do
	v2.Name:match("^WindUI/")
	v2:Destroy()
end
-- isfile("FVLV2/windui.lua") -> false
local response = game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua")
-- isfolder("FVLV2") -> false
makefolder("FVLV2")
writefile("FVLV2/windui.lua", response)
-- isfile("FVLV2/icons-main.lua") -> false
local response2 = game:HttpGet("https://raw.githubusercontent.com/Footagesus/Icons/main/Main-v2.lua")
response2:gsub("return game:HttpGet%(url%)", function(arg, arg2)
end)
-- isfile("FVLV2/icons-main.lua") -> false
local result = loadstring(response)()
-- isfolder("FVLV2") -> false
makefolder("FVLV2")
writefile("FVLV2/tiedev.png", " PNG\r\n\26\n\0\0\0\rIHDR\0\0\1\0\0\0\1\0\8\6\0\0\0\\r f\0\0 fIDATx  w eWY  ~      g  I T&\4\8eB\rHU\t \n\8\" \5\21   ~   b *V\20D\16E (  L\2!  2% {   m   z~\127 }ʽ3\tA     r    Z z   | g= Y zֳ   g= Y zֳ   g= Y zֳ   g= Y zֳ   g= Y zֳ   g= Y zֳ   g= Y zֳ   g= Y zֳ   g= Y zֳ   g= Y zֳ   Ϥ \21  g= Y zֳ   g= Y zֳ   g= Y zֳ   ^; g \19  u\2ۊk~r  _   7)ܠ       ڮ3 % k \127  י Aы\0z Cc*p     \20߼ \r   ~uә5ޱ, ~\8 \" 7`\19+ )z̪;<6V:v     ? \0  p  } =\7г   &p \3\16   7nl$ S f    \16 Z   \n  *\8 \8 \1 z_W 8 61   _'+ \r\127 v ̵\6n  4  \0zv m  \21oY <U{ s U >\17  s\25h\29H\0 @=H y\21 R,\5\3  2b\2\16PMU m   Z Q   N絯    Y \1    ]kZ\270\30zùY _P  0\18 p.C  B3   ˇe  Ųj RY j   >ʥ\8 ٙ\n' Os  \4G\15N \33ڨ \21\2Eb+&  \6! ܌  9g Fv E3O9  ^j s\0= o   ;< s +  -  kDJC. \1 \20\2οp       p\30睿 %KG\8#K Zgbj   \25  T\27M & z  lʉ \21N\28    \t& M K= \30  Hh@P  X   \31   = ҂ \3  \127ǩ z        ; 6$\28 Y\21 '\3    k\30+ y e\\  52:ܧ yNMͱ  1v\318  \19    I \20/\6#  ADP H\16A\16 0q| # Ǚ 7E2U\1ĉ\t 0 \29  ,V~  } tR ^4 s\0=    6~ 5  \31  e ST   P }ޏm \23  \t ߰\41H  qb| \29{\15 C{\15qjf\14U\8    /   \8R,\5\5D 4S  b %    t ĞIf\30<D  \12`  H 8     \28\23 \3   w\12 f k s\0= >  \3+ް >  흼V0xWI\16    'ʫ^ TV \29#M2 SN   { ?  \3  5  6Rk-  \127n\6_,\1  \12P\16#   \\B \r W bc u ܁)N޳   \28\169 b Qһ   d\31   \4z   \3 \25  \n\127    \r M2 WBx w \12j<  s    s t \6I M \26      og   d. 8\12A z_ \6\17T   \24P+H \15To  # O\r\16js\t J   4 2iT\"m8&\31< ɻ  \26  \t    7    }  z   \3  \1271 WU\tJo C   F\12. M 8\12_  gr O= 0\18\\   { ? \29 o Rk\16G!   yT\15    V  \t      h   E\2\" 14\27\25  \20  Q*ӌJ ( >]  w1  8\16z 1    \127g     x  \18 \28@Ͼ' 7    ϯ  ߨ πf   E o0o~ۋ䂋VQ ԉ 'N  o Ñ\19  q \21  V  j ˼ˮh  ɑ yZ o~\17T   7   %K  T\19 )I\20   \16  1L <±o   :\21\279 &B \14\12?M  o  @ \1 G\3 }  \27]   \31m$  p w \4  \21      ga #K<   {   m{TQ 0ĩ > \8* F ;  %W \2   \1\24T  `   FT\rb\12Y 9  '\14 B  \1 0 D  T #7=@  $b \12   ֱ M    ^   3  \nΦ|  * M  u    ψ  \14/*\5     e   F Ah\3 MN ٯ ® \7$ \"  ũ\15bT  H~   v\r  \3  s \2\14 g\0 \3: A \4DT X!*\7$M ' M2T!\19  \"  _     S\6 @\"|𣘋      [{N \23\1  ; _vɯ Ol; 7  W q wU. |   w\\ ʵ#T  Q \29 o \27w܋ \18 !^5 ᷱ    S ں҂  \30oG\0*t\n\127&  FU \2 j^\11 \24 \"`\16#x\7S' $    tx\0\23\261 ez Q=  \1|SUL `\2\21 ^V _  \7\27  ` \1  + /     b>  >^h  W 5/y      g \14 i W y;;v \\*cL 饨ګ  b  @\127 <\5 n  O\7TZ AE-\0)R\1ک j Y  \"b0 \20 8V%iz,   tt 4\14 A@}b  _   T\21  S B  \27Zj 8 \15  9 ^\n   l͢  nJ*   b   j3  _x   ׮  H\8m   q> 9| $} r\7 ӎ ;\30] 8   w t   F.   6x E\24D &a+=h;\6   b \30D   c굌 \23  4Pcp \18  \24z *  fH f  MU \rd\\C   d\31 ʿ \3= ` \1    q k      Y }5  \18  ;_ K\127 \t  T) 1    g ~+ $ T  P   \23 s I \8 1P \3  ;-\0A*]  \2\14   \6[      :\6  {#\18\4D  \\ \29P\17L  x  1\18\5\12=f5Y Ac|҈1 h \18o_Dp   < s\2=\7 s    g  |DD\6  KG \6     x 󙝮\18 \17  q\157\127 \30 0 \8Z y׉    * \t  y o `\3!\8 0 \4 !\8\12& +  Z  Xk\16k06  @  b P \rŘ\0 ❈ \16 E H@0 ! \3j M  i\5 & ) b@\248g\25^\29 #\19FD20 Qy9 ŷ }j\31\\\23 ֞\19  \0 L\17 G  \12\127 \30 \30    p}q a    w   }__t Now ^  \5    k  k$     \27     ױ 1  & 9>w˷ٽ \16 R ?Q   v\127Uy .F\8BC\16\"`5i8   F% : ҨdҬ9m R đ&\14 \4 \5 #\26\16lh\t   `\31 2     DX\141 E A\17   !\6 s\25SǪy\n!  |T -\25F\3 \tC     o \15\18:!\12Ut\22#?B  o N   \17   r\r     w_\11 \127 ׸ a s\3g-$Z   o\16~ O VK}  ʯ\127{Z7 gL :7e. h y  \12 c\17  V\26u> 96>A T&\15ǵ\0 H  W w  '<\2ͦ 6 2s &S  L lhm&!m8 3\5\14 \23%  ϭ  k   wX \12 *&\16 >K h   >\6 \122 x x  \4\22c\3 O֙9^ie\11y !\2 G 8ĔCf \31  W A \14 C` (y1 \15 |\26`H  \15=r` Z 9    \20λ   d$Y Ģ%\21!)  h⌳a , f\"\27\25gTTD  TT   \12\25_\2|\18\25 \64 D kS \18h  (k \2׈ \2z   v Q ^   (  = @T ^\75 \0 yQ \25   ]\27 =   \5 5\"7         Ϙ4u٤   \11  ?y đ\1  ON /\127  j 8  ޷z \29    g \1\3Y \26 st \12\19\7k N%dY\11  \22   QL)2\12Ɔ \24  b QUG 4 $     \20\26  *Y 8\12`\17  \20S\30\27`x \8  -bx \8s Mf'* /*    Z \8 \31c\3   #      zL\24\0\21Jɵ >  3 \6 \28ظ2  \1@ܧ \19gL  $  z~ 0Ȭ J\19(  :h֍ KPϧ\28 \\<_  \2u$ Ӓ 8 L\17I\t@R7ކ S  ]\18 , ,1HCTbQ\26  7* 1Q h   \0Po   7jt {\15 \"    _     \0 G C   t \19\17 c բ\5 \21 *m  ו *& J   mԋG S\12  `\12   5    @   \25 [ ټ   \4  `  \n_     q u  o ¾    \17 \127 d K  S q   \31   ebŲ  a  W  b  \8 ]   \\0 \24 )T  80   \rf  񙗂 O  \26 nq M   h   \24`  \1V  2\16+   R\20` '( 0q Y#  H d J s      ;>ˎ s \26 e Ɇ  K 5mi9\4k-\3KJ,ڰ\4\t  R9 \14 R4  ` b\24(c\"Km 8G t7 Y/\18\4\n5  4  \226]\27    {׮   \15 r  Xi!& \29\3   t!  | I @=  \15  4d +*\"\"  \n H_  WU\159  h  | u5N\20#\"  / \29\3J\17  XD  |f_~d  #m$v \1<|       \19m7 _FB&bL mj\27 ^ w _\21T 6 ⋅  U\12   n     筈S  mm     d \29Lq7Q@ ]\26\6  |h  m %   k ϒ   K   ϹD \127 +H T  \7    _ I L\tL  X-\0  \16  F rd \12G MS9 Ql  \27ġ  s x E+ i\23.  \r \12\12EP  ?/ DP 7\6 bmH  1 F\29\19  ZK\24 D}} R$\4\6  0     9   򝽓|} I } \12\19 L;5  \8 G \24^    >0J :p ] \4\25  P \127  _ \15 x \22aZ\7  R     ̊=  p \127- >\21g     \26 Hg Y[\14  ;V |   \15] \20:   ;   Q bm  \15y\4  \30 EР )PUZ \29\17\4  X  ?    ڃ   \tx:g LDpV % E \5No]       5 ^l\20\3 \26 k{\4 \2 \31\28 Ӵ    \n\20  A3 _w\r՘ ض o h\7^+&_ *hf\7\0\31    '  \r1 ԥ ` 5  ; z).s  '?~/     ` \26 -; 3   90 Ư5Sf'+\28   ľ:xP @  ,\27 W  ǯX  kF  P 2ud\31' ;F 9  \8Rp9\11     O' 퓇> \25M M \5G@ ;\16 \26  \18\15\14\18 \15hy   E <e \" l<  ^s\30'&  y  ' 9  \318ơSU ,!\27ϨOT   \12 \24   Cj#Cv 8 /  A\6֯` 5±/ i { \15F b?k׽  پ\27n\15  ~ d4UM~   ]:[Y 󎝋b } ;˥} [[  \2 r\17JgjR  z \8>     :.  {Y  C1jP 9   ^\n R u\7  i \127H \3x \29 ]  U  \n\31Z(  \31 s       I \t\21UcZ;YZ T   \25 VHiZ 8)N\4՜Z\23\8 \24cp     ^|  s^ 6  \19 L   W]}9       j  \r  Q   @Y!    O[  \rc T\t,8\21\26I  }U  9Es U          \21O @ H ;| #;w1~ ֧   :\"   ǰ \11(  b \17MS    :  \19 ݟ;#\27Ў]\21  b \20 mq\25 \17L\16\18 ˔  \24[   \27 QZ      \31  \15 z   w F \2!\6%\24 \25Y3 \3  Qo e 1  Hh { (ǿr\23`\29\26 \18ɸ\147 ڸm      4Wg. \" 3  xsJ{ ! T\n QmA T  CU} \0LQO \23E;   v   \8 :\7@k~ =d) H\n *j xm a   m  \30  \21  \28>Z,< s\0 \"\21 ` \5   Yd J h\17̕  5  \30 M 8n   ϕ\20 ѦJ z\\3   *  EE\19\26/ s +\16\2 1> \27ђ\26orW    V  x D \1 x\20  \27\15\5 ͯp4?   w   r \\ G Q cl  ?\127 g  \127  \16 \17J  S \14\27x | jF \15Ш: I \19 j쿳\n   p  ;/ @~ \11 \2  =\28~p\27 c H\27M \8 \26 A\30  f\19A\8 el)\22 fڬ  iJ\16  ,@k\127t/ .  H'\3   3  \14 <\24C  /c˗  \r\12 Z ;  \127  I>  \3L V \18\6 x,bt \8  \16 ,GF  Q  \3{9  >0 \14\31 \18 ; ٸr \27    o_ \55 }^ qƥ m \t \19 .    F3      \27 |  ( G\12Q  ֿDҕyu   k 6\26 4;Ef L ^g   g H  7M D \29X  @ \8   \rhG_ #   )Q >   \31    _ \22UO`\3  }   _ \20 ٦   čo~ ~  \15 G7  Z   <      rl \4  k`m sU  8 {\127 \t   ON>   w M  \t z ( X B\11j+\1nU9 \30  \8* \201   \" \22S@  @W   H \31 m^A *޷  ' c ,[̲u 8iFy \33   I*\21 WV\12\12 \25`dM\31  u  \1l\202s \30ƿ \3l\127 \15# \277   e \23  6   \12g/D \23\1 y  ǰ]  \15s n   ݮ#G \\ )B`` +      2  \28k Y&   Wi\28 \3 X |`;   V \18 w   7pѺ!    <mh\n a p  =\21  Mr  ) Q   O] W  g ! s G?΃_ \18Չql)&( P 9\7ޫz    <|o D b  \"   <_ L[ nmC [   DW v_ \12 8\". \17c8q \4w  \r o 2 0x \127\127 \0/ 4 \6\22 \3f\15 9~ Զ \18ỉ = \\Y| y  @$Mh   ë \21Ųysȵg n =    Ӻ  7{Ƶs݂[  9;7   i@]  ۾  \14   \rk   6u  f j         YJ     ;  g  of   \3ԫ)o        | o  \7     \218\31 7\26Ь6 S     r    9~ u 7 A & 8 \15 V9J;\7 tU i\234; =/pu   \n\27 ]C\6 ǜ\t   \30 \18 vA E e $i2\24Z\29\29\27 k   k  x /Oōg  !F |!\26 \tL ǿ|\23 ;\15\"f S #)5 D\27  V {d\22 GX  ٵ   臞   ?\15ܬ \11  v T \6]  E  D  >\11V`4\55 \23\15 o t3          _  r_\14 \r \28ewρ\t  $&  D. ϑ-  \20 \8  rÏ]  _y\5{  Uv} + J\16 yH =  ) .  v5   ֗,X E   _X    \5 IWQ\21U_\0  T Il  S < \30 }\27  ѓ(  Z&v 1  \29 ,Ź %[6ѷr\4  @$M Y 53  7 u  e |?\14\27  >D  \26  3  -y+ Ί y@ i \25   ?   b i  <X\17   \3   3 oA fKq   \21      \28  W\5  ;\23 d \24\19x \1s@J\14   \31\25c  \18 .   \3s\28 >M_  ]  Ҽ k$      x  eD    랾^   Ky 3_   w  +w     ]M   )] }7\29x\27CѦ\2<S \28 \2> c\n: \23  t\19:ݖN @\ndE \16 R\18 O 󗇗 5\184c`  ˯ \8  j ɡO N2 \21\tT, \146  M}   s -     \22 X\37- V7m ⺲\25    n\30Pnܪ \12 h  \22 H Ίܹ N s   o\30Pn: zi   zn8 jZ ? ` h   X \t˯|g   - $ f\0)ˆG\24\30\25dj    l\14 #\2  \12 \6\" 3\r   w\127 ry  \nۿ U NG    \16U \256| eˤ~   \14\29R\27GE n  n  ۀ y\14  L\239=2  N   B  N  \12 N\n \21Z / J 9   M y   F   Se  7Fŗ 7       R Dڜ   \127܉O H\24` ìl^  \127> CX    \27 g  _q`ͳ    ̀ \23 {O \17 Q\0XūQoPq> ̊HF oٷf }    P G  d >\29  ū \t5    * '\127EO^P3ƈ   z$n tv    n\\ 6L x / ȟ  f^ čLm   w Ů \n  \t7 \14  >T \6\28V\20 g     \27\24  gu\"\txŶ\21 %)\127  ) T 2 B\20  oa`uާ; pn \rw   9>\22& ҝ.șWE  КGX z ˍH;ƖN\25  F   \14N   sǌ m{  uC   ]   W_ w  #r \11 Ul  Kh\6g   {>^\306d. > \nL\20 b A\r> \0 x\16c \17 W (\30LY 4 ={    #:  o \28;  \26 \58  *)^ dx\16+  *\5h5\"ƨ\24 S 0 ~   \3 g[7@κ _p \15 \127 \14 { 5  \2 \22    ]w I\1T\1H Kj ݻb g \24  0/o1 ' } \19   ̠\0  \14  ;\30.( h \17s \12 \1  @  眏?\25  \6d   W o g\11 ? y\14 v+ \\\"\20!\18h8ឹ\18 2\30  X LhcR  go  \\  # \14po   Dy P   . Jg  \25\15   >W  { @ 7 : iO ]M,P \29\7  \22bW 1\15Bd^0a4oGz A  \0  \2  \20\292  g m V0 D}  od   8`   9u \30  xua0  GX  ]$s \6  + \199 mڔ 6M a \22  &   ]  \3  7 {( ι' }     rR \22 S C  /L  [ \16\"H' [k  s'/ Y9 \n g\23\20  V h^a 8_uU/> \23\\.ZQ\12j\20 \20i Sm ģ \12ʈx R ,9  m i    \12 y / n O\27Ѱ  n   6zk    󚉷 \282 \19\23 \15\t& Y \t\8\21\31hrj } <    \8   \16 ( G\26\\>T    \29[  Z \21   z + d   %\35    \15 Ne^\238 N  }   B .\12  C  \2Gם\t v \23 C 1  y\17  \11\4    ~%  \25F Yo  a \r\27 y \1 \24N  \16 ee   , b=  T\15 2b l w  p \t  \28 N\12:\27\26\21  \20|; )H\18鬓 \30U 3\250\3  \12 @{ u۵\20 C  }3 hJ\r      \20 u8 ٗ|! $j  U   I  |\12[ g \28  /<7g?o  t \12at\30\3 t -dZ+ U   }  d ٢\24s   zu <c ר   A3\"]\11     V[K t\22~ \25\127 \n |    0 dx$d x [v   \7\141\28{N5   \12 ܷ   icN 42)\318   Gb $   s\\ J J%  k     \23 \1邍 \n u>  v&!\n\20  !m     bE \15  *  <  _y \26 0  3:   \24\22400   -j 3    \24 \25Nܴ u?v\t   \25\27e   & f\6    u, d   & fT  ( \3 f8 d\31Rx\0  7 \21       \31H\6pb   \15\31G C\18  Q # \"* \260k;E\15\18\11n<  * \15\21ŗ\30\20   I \31>  A ^D s / !r +\24#fAn\14ꌐ q C \31zT ݹ νZ  \22<   0   V  )rը  (b Ȇ 3w  Ʈ>  + l\2 \\6# ~Ӌe c  o  \0 E+\2      9*>  J ҙ$T\4+0d\28_;\21r0 x  \41\30ﻇ ZE    b  6  v { V   *\\: 0 \0 _ o   + Ϗ\n \12   [+C\22 ~_ k ~ ú+\48     \28   \18Paٕ+\25 r-\30C  \4 >s\31b\2ԉ  :=  {  'æ\11S   \19o  59>\31Po@ \6\30/   ;Iݽ{V   #  vC    ?a\2   \28Ie:3  r   u \26\n2j  i\20W͒ #{W =ث\1 M      \0^\127 1f     \11W ?~    `  \127 ܶ n  \11 =\127t 1V \r& \28\16fL (q  C  xB T m\31\15 FW  \14   ;o`q \14 \n \31 \14} p \19\3 i y8\7 \25  \"   )     a  z 6Jl! Pu9m  J / ZK      E  ._I\24Z  t?  9 \4 ^ \8\8^\n\127  \30\28 \127 8pwߕ \30     [٪ \21t\30\14\12 1 k\31  \28     _hھ       'Y \127   o \18\19\24 ͌    { )ј\t >\23  \15. W  Y#\r xj v oI{t   c Jw /]  v 񝡕 B aN    \20    3\23 \11  .    \18 y\tm\23\4 =[  G  [ ^ Fy \18 ՙ  J\t  \25    W8yMe  \31\25ĥ ̃ Y2 H=\3,{ \14 I T]$0\"     \23> Ŀ  ?~Ӹ v \18  a a\115    a \0|}K   / \30  հ   \1 ҋ\0 Fxf.b\17-yݏ   \127\19 Ի } [\127T^  3;    v  o~  \18w| \16 '      \26 Y9  C) B \11 /Bv  \15ݮ2  g.i\127  i*\11Bz]X  .\26 i  g^\5 m< H    \5  ]o|~ \"  HW  \1#F  = |c \12  \5\1\27  KG\18   |  \0  ) \6 ~ \" k7b   \t \127 \30\17B \26\4\18U? ɇ    F _I\11~Cq \7  _ إ\23  \31q  i  \n\23m>Ǽ 7_ O2  T ė \14\n很% cj :  \12\88  㳧F  \22 z\24 \25 \17 ( o\21㤽s  c'M\23 .  3   \12-  *y\15   *H>$  jv  ; _A    iP[o t2 yML+    \0Fc  0 \8 \127&䮹P D \22 \3\6FR @ 4Hi \31 : \29 2\8\25>  \\t a_  ;sg   =  \5 ~ R   O . S߰O\17 ga   w  ,Zԇ\17 s[o   \t (\" 2 @X ~   \17 jF  \0    [ B>7] J\31k   QF6o \26Z   »H\23 \127w  as  6炍yF' 5\15X \27sz q _    L\25 YВl}   c\72* r \\\31VDĨ\4a& | [  3 *\22  ! ~\8c W 2 o\2W  ~' W    C   U Zz\2 ? 5\0  -       >\15 \29nY .Tn d  ƴ  uW4    d ws  ? \\  ؕd  {w e  \\ Ϲ h \25 \8+6\121     *G d x  F 5\r 5\19 8 ϥ\3M N \23 կn  \15Ӓ Й=l! C sFp ¼^ U DŊ6 ?s\17Q  ^   \11 \14 0/i    3+f }   JN$:  LܧZ= $   GJ }  < 8  \r\18 bV< 1   \29F e   Ԏ  \147 2  ܘ  q\19  5#    \31y]m L    \n7 \30- \15q  į \6Y d I |Ͱ} \7 $Qd  \27 ˿\127 Z   \4xu]  J z    \26;o\30' x2 d    x \\  k \27   \11U֢/>=D  3  \30nbONk\16 \17< 5  Q\20 6  |ߑ    P[ : \30TZPsU\22  D .ȐU z<  \7W \16\18 +k6 *E+  E}\30   \8   ,^ \t<G   3; !& \24    ى   w  0F\0-   s. > b\28  F\17k  b   y.  hN ^  WQ    .0  *bū \6\21ĉ\17U F1 L\5  {Ɍ .  !v} > ڍ O\127  d\tԩ\19  7^# C1i s =\150S h T { 0 `p \17   \7 <  \25p\17^gx \5#    Ǣ\19{   i 8 l .$ ,  + \16 w  \30  \1277 q\26 q\7 4 !t\"\6  Aʇ T    m\12C\27] R4nU\6 *\\PV.\n\18\30p   9 2   Os\26 \22 BŒM\28 pp\4O   k  \127\n   \11\"    =     \4  00J` \"a _  *Ƃ xL i\2ƨZ5bիX N g Ƽ\nbTr\16 Q y     P x\28 ś  y 5 \127=  @ l \17\8 :\260 \1\29\31d[ lF  a\23- O[$  \27\22  B(C[,X*̓   hj.0 A˚ \4 w  U \30tq \\# z\127\t ; V     g  I= c \19ܿ}'q\20漥Ŝ@K  \8\3f kl :  \16  7< B   + ۿ [? )   \2 t1΋<\\   \7= >  ؂<ʓ^ \8v \5\8  { \5BB]Oi  ~ YA]QD4\29\16P \rPU \0   L,l)  Q dD:w 3 Z  \20|\7 5   %  #\4+7\16     e  G \4 s   3߉ x EU l\12V\11*  bJK tAT \11\24 \17AM Ũ\11}  Y    s : H T]\30\29\21,L\12\t $ODxck  \28 å$ \15   tȎ S \28\"\1 k   \245]  ]\28  fo+ j ߮ A   \23  \nk\1  g ] &    <8$&hX \25?   [ <  ;   \25q\\ʉ/\nG \23 \4 f<x \4.\17 *ox cx  ?  Ç    & 父n*ʮ \127  ZN\7   MX k(\20  Q j \30 Xi ڵ p]\16d  \" =H \16H   \8\19T  \21 {  \31\24      %. FLRW Nz W\254-  E A \0?3  -   1v j  >AR \8 l淖  ' D f^  |  \11  Z\8 uЖ \3     J  % ; l >/ \22  W-֒o\7N.gk)  gv1\2 5c g \3 ( {  @ } 2ʹ h-,Y ֌t   cO \7_ s\"w:l \29\0\nVM' \\LBC ?\26Q  ޘ  l  < q\\  \r 52v ?  CG(      a  d   \25*\19\25  ǎ W   Ʃ\25v| 3 F\r\27 \29   \127 ɸ h p^    Y & X u\0 y _ m=_  6\11 .@   \11^ ] {x .\"  @ @ \15 u \r\ndŀ SK\t 4=^\r  3\6   \23#]q : \19G0k  F! .Y  o<  Ȥ\15,6 O 0  \19! B  +  R ]   \0  }k=\203\12 \19\22S 4\21  b;z\3 s\26_\8\20iח# {  !\7 =j\18  u\14 8      \19   H '\24   K } \22\2\21  u9s   O  L \5 Eh\0 \24 b3\4,Y뉝\21+* T Z\20  \26  [־:9Zz\t ea o_ ڧ :    { c )   \1\17\8\2  x C W\17\17\22\rZ  Տ'\8  7 L  \17  > s  |\26   \12771  ? ;  \7 u   ݡ   ?  \6B  _    \")\r\ra    S|  \\ ;4 x  , %\25   '\tb \8   +xK   б>  mZ 3) \25Ci( gچP \19\21c$ N\19 N  \24 \23, Ԏ 4'     ﮟ\24}  /   g8Ĉw   \19 X ,     F\3  \4 ,   \26  Ί7  >t֧Ɗz/V<N1Ƹ\12Q# : \245΢ \1FՉ @   ڰ  \" p \" p\2 d[\5   K D  w  xW -    M+i6\18v = ѓ') 1^} Y    I  @  /    \231 }\23G \27[*  ( * 7\2 # \11&w\11 {c   ۇ[7     \12-Å \127g@\11 J  \6,z  R^ \41\6uN4˴=  -   >    9Gsf     ,[@@ҁ\127 \28&m 粨  $ 7 L$    u\155\n^  I  \8A)b e\278 \7\5!K\15\12 n_q ) ˯ h \127 p\0 D ?OZz\19r Q`\30v 3   <\23\\  /d Z  צ'  4kfA\24 \23\\ x\26͌j  ߺ \1\2kP  DQ M  0s  ɽs \8 V\r 3W &  8z w Y  \1  t\12\4( C&rF6   \n  y!I iB \4F\t E \r \27/   G  H\11  ] = \11$Q[aD Q\30[$ K   k*6 1\"  = w \r #\27 bm Њ  \2 v  \4A   Ŭ y   \4\25  \27V MHӕ ~*Q] E -]s  \t \26 R!\11F\25X;F4Z&  + \6R  } l  M\3  K t \t~  \22׶{[  \6  Y[ \15 y t \r~  ubǏ ,jQM  ɛ p r $    01y  r)? e~ . pt , \18\\ v\1    ; 2w \16a+j   \26 MG,* \12 \25  Ȼ 7\200F92\23r|. 9 \3  8 \12 \25#% ` l   T z\6\16\17\11ǀ   hеA@- [c-  Y\263 ă\3   = ȼzE \16Ph  { b\r #  2o 8 TXQ ꖹ ` $\30\22YϚ  ݾ     E \1\17  *A\29\18\4  \19\4 C  2 i)'  Ǣ ӆ   \5Od  oi s     i   \14     >ç  ꛙ  \23  \n\2kHӄ\7 ?$Ah  o bhA !i L\28 \1   \18/ t942Ʒo y \25 i\23  ٦pp& `%.\4{ . * \7+ x- ɘzfIUq@ \r3\rˡو  e ;1   > k!  @ P ]<,\6 t $   º:\2\29   ,M9    \289 z \tCL\24\"& s \22C 1\241   \r a\8\8S  P=~\20lP   ߯ \\ T,    g'\20   /\"\11h   ÝICm\234 \24|}\14 ͢ 3| 2  ~   C z   \11m A \127h\"  ' I1  { \16  \21 t \6  s þCG       {\n \25\4/Ad ; R v\n  <f\25 W 1s 8Ӈ @\24v   \11\27 f S e\tܰw  .   b0 d   +    \28H\30\26E\2\22G\3   j  , 4 c Pc \24 \29#%'å r 1 N  |  g    q\nt+\4 }   صK #G(\15 P\26\24 (  a.G    2| H  $s ڜ    P\19t\21\23\21 Bd=  ,\19     M \12em   S  )h\8 \23\21_[ \22:}(~f\28     \12    ;\15Z   xa  ڍ  \27v \4\\zk  a\22\0 ֛` w qw Y8  ݸد l ~ \25 q l[r \31|  \30S= [   >  W\18 ,  & < P\14\16  m:)      ͢  𜋖@\127   'H UL  n uNWhf\6 0 \n N\r ԘON   UsLy OlIޮlA!\3 OWb\18< /Չ T\4\17E !* p j5 x\5b   R ʙ\12 NK   \rZ< ]    \23\19    [ P F   Q  X  \1& \29Q\16 q. \21 9 \21   \23 i \20 \2e n =Y e\n19 \8% 0f=\3 0GHZ\3 \22 \28   4  \12 р   s s c S  a9 \t~\2 \29\\\127S  d    \1  GD =\2GEk  { dk y l    \14 /\11  \5  V >  m ?Qi \1    m'  ;   8 .Y \"  ) !I\28 \15\31   \19 qļ\12][|Ԩ `v  {/\27  \rc e \29=\2\11 e e .G0 9  \20 # cb  ,m o \28  \18Ym\17 2 \tߨ  \\  ī  \24\17OEu\30 -4 ONa \223Y    \20z   RF_ \8L \15z |w  r\21A F)X4 ՙ\227fN| \18ׁ^\20/\30\4V $ ]td  \\ \19  \29 % PP i {/ ?   X \0\\  R D9 N \11(  XD   Mc \6     \25dn x ɚ !\\\15[\27    +H = Z   _ =\7p:_   m _BJl \21\4Q F  ք/  r\20z\27& (\1732 \31yh C  8\\T  {/^m\23 WHj  Y \7 Zy\21 \1  < \25 \24\25 VMx` Ӻj <`\11 +  \12 ,\25. ~ \16 Zcnr\28\tl  mLK ! f  yCB  0^\15  c    \19Lh~ Ja  \16 JS!  K   ! 3\21q  )6   \26  &H\11 # @  PiZf\26 ó1q 苕  1\16f #% \30S 9-\6\1 U  n \2mx i 6O ]Y ֥\21  \tGfc  EE\25  M \18\29P2 \18 9  K   )Ŧ-Z  \23\19ĉb ds ر   \24ܰ   ' \24Uu cG\127 i 0 ƃ u \26)k&\18  7 X\2{ 8  \3     _ {  /\"b  |   W  V\3ň  \31  ; \21  ߿o;\1279\27 \4  P\18\\  [w\1 \127] ͠d  . \30 a\7 - \14ZM OH\19  M  ) ؖ.  \19 s l\30NK3    (v4 :    Mo\3'W]}>.S&OMs  q 0D  XmC ]1 dq)$ \20 X5j\25\27  65A 2W `t^\1\\\4R'̥` S % \24@\2  x  ӆB6\15   @\7 \12đ P\18!  \6 ! Tbxߩ\18  \19yz\127 / T! b\n \"   1\5} \7 P ,\19 \8y[ \20(   ?  \11\28q DF \22LA k I Ϡ1Ђ,;\7 \19  e \300Q $ \16J~  \" 7 S  j[ | i  \29Y È Byv  Z       ! \" ֌H0 OV @U   keL  @>\8 H^Е\1ş \\ r킵b\17  \19  Fc I\tA \14`´Уmyu\15 \1i  0\22   9      3 \15 \28 |N  \6\230b\6   {ԪQ\4#- {\21< ӀR 1 \5 DPT\26&Dec8] c it \20* \15 e-C  d      c    2- ]  s7.U 9 w \8 FCsد/r V~l  䬞 %\14P \6 \8 b  * f\19\19\4]\30m \r ;CË \n  \16Ԡ    H ;\14l  .8  & Z- \25s  \17+,\n\2 \17!\1\18   L ́, \3U \4\25uo c\21[ s \5\1n qM\1Qע&Q \12  \64\20+  \15-D \19[%6J` Dƫ5 \0 \170bp o ĉ 3   6 !  \30z   :\69e  :#\6 \12\27 ދ. 3  Eݠ    ED\3}\12 \27c  <\5K mQʯ   k \12qd  \17o\26>\6 r󝛃;  3m= \22  V   ?^  l\" 9 A[f@ ϝ x4   ։fR\19Ӈ \19   m#  l \5 \\v\19   X   \16U O\21  h\" CH1 ` \16T  1x  J@\"\1\21   {G\15L \"    Q  m `V > 7 Ķ   @h\88  r\t}}  \27Mv ;  \8z\26lN  ҦC \0  (\0 $ \n 9\22jn N z  \26\2,S* \t G\19 yl W ǚ  杫 W\15\24\nR   y: ʆ )hF`\27    !\15N ?\25 =Ӌ  ^Ɗ  G j Y \28  \294  (\0  +  \2\3 U @1&\31rid L r \18ph6d t  S1 'J ( } ̶ \18;'J >\21 o& D%ԹԒ\21    y B>  6   \12\16\6 \7    T c e\1m  !  QEӆ W  \14 NcH  l  R` \8 &o\127 GD\515q     ^/[   QDb  n ݋!4F2#⬑T\4    \17    R OĒ   \30@ ? Ĭ \20 \17\17 \76\28 \6 \127  \11\30㌳ *A 2 Af  3 \26 |\11\25k  \0 f> A F  l س  # \r\127 ׺ ;S \r\23   ' { K   w  ]\24Xs U !  Ĥ    \12   \233\31 _\20!  \20 \t \17J T\ti с    z  z\26\17b0\nS\30  R\12  +kxٟOr \35 5\r  s\5   $ ^  5\18  ! Y0 f&   m7, ' f o>䨸   \27  z    yl)  P   6  }E\8  ՗\22J[\21C   mL ۓb: 5 $Ef 50` )DT۠ vgA;  y#  p mI X@py 1kQ k\7 إ  **\6 Y   !qHi \0v   x )\7 ׭   kj +'C  ՚ x 2k  ٽ n;x z \1 \r \16\15 [ o \19\7\6\76\0       7]a    Q \5 ^ \t\18c  ?   ] ]Ӏ=\7 (`  \29\15 \0    o \28 Xz CV  H \21  ~ ƕf  1ISǞ Gɲ (\12N 䒎Co `  1`\r.MQ  u6  7SK JCa  \20\24\25 Y2   7   \31   ] S  o\29    s<\127x  u\\h`}ݱ?\29 _n   G\"   \21     \7  f n   y 듋 u Z  A\6  \28)h\22 \5t \1\22b e 䛪`r  \14 wG\11   k!\r }a;T\7  Vͱ\12-\30R   L\4b\3 \8) t` 7i4g+W !2 rM RA F\8 \" K\7 TN \4dۆV=4  }\15 \18~ض \"\7 @\3   Z   ܽ\20 \12N h 箿 }   \127  u\11   { ;  6}  H ʳ \3    %. TkM\14\299I\24 ] \27     F  v\16\26.\0cP O\27 k ] 7 \19  3 \283.  W  x  ^> k#  3c  3 S'   }K   > l  (\n\11QS M ;Eu6 7\127  7 > ˮ Q\3>  W  of    \1 O#\12B\31\30[̰   _ d\23  \22 \1 B XZh 3 +K  X   \1J\ne   \15  O \22I `%G\22 S  \127{ 5\25 \"Ƌ䳸yN^  s \r [1\4  T l^\22_~ y \26 \18 [/  A \29   r; z  q  H \31x t  \r  [ |M &4 \16 E  \22\3   bjfF 0    V\170\31\0W5  ް X  RI\\ \0\23Rx   F 7 \22 \17ό3T%\0, .\151  Q\t) c  _\24  ON ?\31  ]U\26  =\25   R    Px`\127    ?|Y  + | WG  !x׿O  {k ̰   =\25 ն    ƨ +CO$\"\25JR \16 T   E \20g   ze \0 | !\29Ɯ6 H\t aɖ\\    dG r\127* \83~l  Eգ   < Ѯ l \" \22 z \271\6M  ͦ W  |0Gm ,S\23  C  \16v   mc @ Sz\14    d\0_ \n/C @}=\29\26\29 k /E r  $i P* \24 b 1* +  Kت^  `l\0dLUj x  \" Q    \\ R׼ 5 !  \0 󗋐 9l @u6 g_$l  A  \29 \127 V­ \3N (\r  Z \t\127   _  \21,\26\14 ה m   m / \31 _| Η K%͔Ù p: MI  \r2ΏR6\4\25K   B    ֬ \18 ݹ TX7  t \23\27\20[T M $ռr  1   ,b\127j8 \58o TRSA\55 !\31 \26+:-  v  w v \tx 6\27 \31&\26*\17\12D  & \6h- \18 \24 \20 A 9  ~~PvEE \3 Rty.R5 +׮   \18I rbb v> f\12R 7Z_4& z\rB! \2  \n jB ߷@I \3Ιj\6(y {\"\11 \12D  \0ͼ %qL\24 T  \16   '\r cO \28 \17 ڟ jl? 91[  \6   ! \12[2\21\2\11  SP    k.-s۶*\31   g K9tJ4  i  fD`\29  X\178V\6   1  /^ $ 4 迚   \23  H.  (T=ԝa \7\28 B {8 \t\19 % Q.  \3 ,\n Kc \19  s  \18s % \2N]  \33 4M  ,d    o ԧNl\20\16  Ig \"\24  \24 w  \\ U      \0 :\2 ;S\44  a\28x   k\20[   0>9    Z   ز `L \16<  \18\15\4T   ل  \6  \6A\12  ) R\153 < u\30   #`ɰ  \21  \5 ] \4\19[  \0~ Je   ) K  K\r/  \31R K x\19\16Ɩz# eō`m$\24  D\r +7\4<  QN   \159>yw   j\28 Hɼ2 a<  \15\3\22   , \3V \19O,   ɮ  @  \20CS   T}@C\r 7 tp y њ:\23  1L9/\16F\3C   I4\16  ׺\n   &4  `7 % [ Hݪ 9(H   \18  Q=0U4,d# W  pC \7 & #\4 /   \28  \127:  d    \16\14  S \24 \25/f8 \2 ~\7c sMc \3u3 |  9/2h  @   )_\\v\7~;^t ݍ\11E @h֟   ZN  1W b  _  Z0 \t    \127SU1F(\r o ) \127    } \t@\21  Gb 2Ӱ SKhaN \28 Bm    ,i#U)ǘ(D]  1 \20S\26\29 7\18 Z\3W 㓴  1 :\26 # & ExE]J n\20;\24 MU V\194QF ,/}  O \24    ;\27ܲ  \29   8 rtƂ 4  Dd:  \20KF:   XB  aL oF\6J\25 X 8w \7\15 |g \18\7\25/\24HdD  W Է ~mn \22 g \27 !\06    E  M׫   k  w \4D }E\23#CT \r?  U_ܴ zS\24   ގ.U \4 M9\1  V (> bp dޚk}  w~ \11   ܌\19F@eH\14  \5 ȍ a  ! 7뎞 \73  2      1d  f ()h \21 \"  \25\22\1 1A\th*A \22a  x  FUUE Q  27) 3$  _4  \30DV \26\18k   Y 4 \\  \19 \22 j &  N  o  $\3 \29   uK  \4    x-\20 h\31  Tu `  x !  Fͷ[ \29μ o \12\12 \29\28 pN 2|  I\ni  x #\19q\30 C0\22;<@02 k$  \nY A2 \n8\29\14E^ \23< \15  Ĝ } 2v\30M {,e Ɍ#ӎJ#   $Np E  D 3X\14\24*\5,\25 \21c! .\rX?f8oyĊѐ  \17o{ )   N \1S.Ё  bĴ\27 t\4EԫW Df \16 0    m  y _ \3\0p\25d  \1 `    T3\23     f  0 [2  u\\\11 #n\24QU\21       9\nB \24 t7> H % P Dh\22  R 4Q      N ?; g\14  s  \22\t m \0\22  {d tH  朣(> \21`): \29zY \16Zu 쵠 \21D dU P>\127.Q Xc J \23 &E\12\12 \r gf     @ 'b n@ L \8 )\3 B     S  D >   |\30\30%̈́  Uk \0eob b  )\23\4 6\127 2  7iM\16y' \2I\24` \16 ˧ \28Z\27 { 9m )E   4E\27\t ސ ڤQOQ 8\22  , \16     \14I   B WWT  \11A`( BdU  y  \3M  B y T   \1d8o  @L C \29  V  # GOy &0\n˦  P; \t]\14   H5w\2* R X  ' i X  j W   \14JG P\r-  n y W ~ \20 t \123lW   \0?z A     \7$q3ԅ  X i  ڌ   B[   `    ;z 2 B\\ Oԁ `j\0 \15|Fy0 o \15 J   x   @'  e  w E  c`4\"(\25 Z ]   ̓\24Z4   \4.\12 ♮  2 5  ){ \24 0P\22 p^IH   `˥\2eH\27 ޒ\5 \2` -\" y ! EEL T$ * AK _ \12  N\t \12 L $%M2 4 534sy \"\30\3D\"D\6\17 󸧐 r Rm \26# \1&   ` Kj \20[      'T|  J.  B  <JVO(\19.\4u \16    C   X-   \7 \4 {   | ' H\16 bX \18  \30[6X+Җh/F   V\28>9 _  z   L{]vS)\11\6\28  \2  a | 7 \28    \21 - o;    \16   7Fh\5 9 z^ U   v  \5  W'     Ƶ` *N\15o {o|C    \7  G  \21  _    z    \"    z  Rm   \1 <a) o8  % 8<  \6 V/g⡝y\27K X5 +D \28s¡,@p\\ \14 Y&Z gH)  @ k 5 @ P  uE)2oR*?  \rڑ +* Q  #     S   7 $|Ka      \20NŚ\28\5i  >c j\19 5]  O $x` \5\24M . CS \30;\21\t\4j>`  \29\3\27[LXH.\21N0\7\\\22d&\5ECkZL ş h \22D\20  \16 lO !  M M$   E  \r  =7  \"\0jA=\"  w  1K  \23\20T  E\\  6^0  `_i: >\127 7    \2l   \15}\20  \15 7 D '  H NU  \0\27\4B3M 7   g  ˗  . %ґ 0 `c   #  5if  \19 t RR\17 \12  \12 5 1J\0 HJ4 \44x  C   QU     \12]R E  gl* ·Ê.  mu3 Cک 2  󩷭E -:\31  b v0\29> VT b\5      9eͨ `)c \30p \tiQK- u i \0  \1'T5 ' AA  Sm;    r   2/Uh\127!^\29\6[       _~7=Rг \r    g =\26  u\23F( G  \15K= \14 J f$i +  A[ Ud FĈ  \20\tb ; 2 I\16 \" \n ɗ >.   8F   \\@  z   >   R,?v     b K9\0 KK    <ʮ 1 \14?GWn ~   \127ۤ\26\11\8 [ I ǋ\22YHW\4 Σޡ G k    ] b*   \24H gY)a `\14  p\"\21 \22z  P\16Fr   Ԁϻ*A_> k  2Jw  *\20tq ̏ : - _\6S b vS =  G^[ = c  T > ۀ? ɒ /p \22 \30 z    zAU; \127~A \\4\6D% \12S' \28x   1  \4 : \8 \23   \1N% \25\29\29   \nǫa^ S  r \th*ϸ(   Be& pl\16\t\3 ;\17ӚΓ d{r \39\29m  6  \23\23 \2J{rj  \22L?w  \14,  ٘G= u\2+ 1 $ \24\26L pu  ' L  Y\21]    \14- w\18\15{ < \11  zX  tR\26U\29\\e1 ) U\12 \n ݎ+OOL $ [ \4 ͼ  \127߫ 7 \" \31\30\19_ \23 %I\12iꋓ   R j^ ^    \26al9 c  ?y c;  VI Ӛ s e\215F9rj o\31 fђ  : Asf_ = l  \21p     Qf\3  `   U n\r  <ݹ <'gT Y c 3hS \2 P 9\15   ҵSE  \22a f tW \r  \15        \7\28 U -  L\17\11 ;8 \t   ' 6\274  \28L8~O  \\   Eg <\7 ~?6\127 >sh j\23:ЬF z\14  ~\28M\1# ٔ陆  Z ;Ӛ Ѯ  ^\t〉Cu   q e@  _>  x U 延 S [Y\20 C> }\26Vn Ĭ!\16  ʡ$fW6 x q       <  a$\14 \5\6i   v\1]A}  O72^ 0\\ @ W  [a  M<\15e/ %K.  \14  {mm    Vؾ>   uE\29M  JL   \8^ x \24ؙ H Uq ĳ  [\127z5k +    \7R  Ec M   \31*8    kf9Y X |6   ,  ,     } \5  _rP[\31  y   ` ;  P D&M\18 :5˲5 b  W Ѯ   2     <^, D\127 W     S  \14  A~ \t\27  wj\28  |  * t z\25\29 #U \16+7 \7  \127 /?  R੖˄#   0  5 =c ]\n  N .\16  S  Y:/\29   .    ENK-:   ക\5݊  wbK\1Iا    f pp\2   ̹f \7 ͓ \r &\3   R  a) .  7~j   \29;   s  L KY )\0  Q  7\21\27! ્ @20\24G HOd & &\12 CA    @ pxD  k qa  -  ߅r \127 \3  ?-  \31\\ $ ~t\t\23 ' `&\24 4u ؔDW C\20    \22FU \19 \1'  P H\20</  \2 u  Ȏ\30 q ><B H  X       \25 9< ؒA&   6    W  \28õWX\26M!Z9r : B  nZم!w7 X7LF yH 6  \11?/m o ߎ  KW     \29  V\17 #2\"  4Ɛ\r   4  l    TN   Y ŦI \24\2*  H\rG}\8Z   ˬ[.Z;ZeQ\127  ~g=   \7 {ēLAV \4}y  \24#*Dμ\26\27`l\8 Ӝ  ` \22鱗\3 \31  \31  F   z  Hd\30E]  3     \1 W\22 uG\31s   E \17aL\1  :f   c0\30 H޷-  \nb  u  _     i ot+\14\\ lS  \23\30\127꥙N \30\28 3A`\rq\20  #A }  \15   &y#/  _ \t\26uq  \t \0     k\22 ϝ  \25 㞃   \17v ; '5  e\22   Q \3\17   B\\C     v R\11U  \20 \23p ǵ  M׉ߖ\18\22\22   ;\1 ]  6Ş S  t\14Z   9   \20~|\11 ,\24  \2E:3ù       /?~Y    D pg2  q \14m + l\24 O H~   \n & F]\25\30 x s     Pu!I\5  M J  \17\27\22 ,  z\14\0 F R   \31 3 m \4 (  \18 :   v  \31 \22   \27_) >S\19 \24u 3Ķ #\171j\2 \14㽊1 \6 S 7  {v. Y  2{\14  \19S k\15< \28  &3 K  `\15 ݓo1   yW  >    +~        ; 3  u\6   \127 -i_ % 6! p 7 ٯ`8 {\28Tup  }  \3R  \12 B}6\3\18F \3. 8\6Պ  \1bŨ' +W]: e )s CM  s  | \24  #: \5W  ? ̏<q d`  \nP s  \22 O:Zx \16 \27\8,ss  d ь壖 h\t \25I a p =<+ X@ ٞv LB E!OUqN K&  \18\3  e[ M j9a   \30 v }\n  \8O 4   M =\4\15  \28 j \t 8\12    Y  : =f k <F H Z \27 h \21\23 \0'P 9Ux+ i7'    %l\24  \25 S |!yс-  pu :7g\11G*\16)  o8  9   ރ-  k?v  Qnt 9z H?   ! bWn &  T\11 ,Z\20(\290j  7W\3o Ƽ\6 s\0\15    \3  :(Kݤ ` J[  k\6G[z  4P e. SE#\15 Ǘ$\3\8S\29   V   *\r\26| ̅    ߬[D   qf  ,Z4\\\20 ,  \0  / O   O    3<6\4 # R$\8\21\17 \19 > k \25⮝ 2S   \3\25w a$S    \127 (~l8g * C {n ؔah \n  7N /N ; ɩi a ~y C   +y e d    ;  ' 7  W W3 r - VJ\17  \288  ɭ    *SsB\28e    go\30  Kc  P  bmk O@L^G\r# W     \31 p | Z g  \24\18  ( )\1s   E \3Bs\6    H_ \29s K  C S|l\29\23 \1$ 4 ͒U\19 * \19\r6  uq2mȬ+\6DDe .v  9 A G \1N. IC2 \56\0?  \6-G \11   #     HQ \21)  \"  \t |7Z p{zs3  ڲ  L!h         \22   k=4 \3   ? =     \30  \18\127\"  Ϧ  \r )  \127\\ ؒ  ̱  #,]?ܚ2 \5#֮ <'Ĉ@ R;kvQUX Q  \\      Y f  5  P   ̆+\29  \12k N  A y\21 8`    w  \15\127 X \6 6 ~j Ƀ   Чgx˫\22 7 B > & U~ G  U <mn`a\18,     C 䃓    9yj k4 \tL  \15 x !\127 sx e $S \"\18hE19S \\  = ,   \28w i  \7l  ,1  Y\8γ  %\\  \21d \4kM\11 \4@ t \26 N  P\156@  (P94\t   `\7  ^< |]R+FU xQ4@tF? t ۭ\26\20 ֫ :\20\t\14 G \25}  \\$*I  9[$MF  ֹ z 5U% \3  w\20E  0 w#^ܱ  uw  :Z\21\\b 1d   _\n\22/j   :  &Ίzg    u    y i\5 \27r' K ޾ S  ,= \\\22  2\tJ\127\1ш   ݴC^  O!\12 \" ͕i(ȱ \8Q)\22N  1;[e(\12 T  Ũ4 ʊ5\3  g.    \24qli6g   > W  B ;   жy1x> '  2[ x /o \7g  i)  r W# z^ h$Ӽ  G  N   ^G: me?  [5\29r \5   J \22 NA\16 w  \3 \26/  \1 k\21 8\0\2 yo g     ?  \23l\25$ N  \20( \28  \4 P\127 '  E\127p\28 \6  c$B   oXC\\\22 \21rR\22-Z  pbR \8    \19ˡ͒  \14\27 +q  ڠr \20\168 \3\21\127Ki  |  ? \27q.\r\t)y  d   \30  g   bב \30: i H ֛ \n<\n%m -  \0PT   e\21 \46\6      w \2𲳋S \5? \7   \127  qL \0 \2` .} 6 \11A ] n /    x ( \19\19\4A    I \4 \0 LϜb  YV_6 U ( l\17pʫ 3 \7>u $ir      W N\30 ViC    5,  \29    i  y9O 8  ˬY9  R>I8  \28:^     v 4   C\\ !  \127b% l o \5 \1]  t \28Ok=  \127 \1 o  \30> ݬZ: e\27  tn  Zb  P zENL  qİc_ m{N  _ \22    p  R^ h \24\5c-Ӊ V\127 %%   \19 }   g\25 } ( ~rL2  \8!  oF  ]  \32BP    5\12 ^1  H\20 8<I2]AL\12\18\8      x {  χԚ  \30# \127 6  W   Bny  ~c  ; r~w  7 \23  ݙ}  H  \23\26#L  b  GY ~9G \30'\8lW.  9'}æ 98n  \4W_uA7DGڑv 1\16\11 *i    Q\t\6\"m  vSy^[ ؍a(\28: d  2    b \16 \12 4\31|   \12 Ҙ xN\25꫸kW =G\29Yݳp  \27# ]   0   E a|2  ) ?  2 yY?˖ + R  C P\\C0\17   ] | \19    N \117  \6 Z `ab.    \24 / 8K3\19 \7\28o\127 Rp p    \7   %| S\5G  }  Ŵ C\19   AD  ޼  !  &Kk gj\15b  Z  \27 Q PwQ\17> L\127 \\ \23   {X =\7    YP؝ \23hzɱOɃ   h=D k  ߼  W\22\26  M  Ͼg\12. \8\"C     7޸\t#\8>CM\11\127 G\r FJ.m\31b%      C;;Q   e   B  -  AV   >4/;\25 B 4 1  \nQ   \11Gx E\6WI\n0 \22  ҎJ:ȹ\2?  \nv) \20 \3 <CeÇ\127  <\5 e  \18l5%*E8\15 f  jM\"\3  K\6   MT <n.m \rk1E  /4\2\rӉ m?   v'ܲ#!\nC 8 \03 \22o  U%\26    Y w_\3\8\t \1Q_    S\16  \12\15#\3%  9* gA\" j   Gj   8r   \4EW  {\23<B\127  \1z \0 p  /W1 êVD   w    )\22-\26 9  vy \7 Ѿ   \17`   #| I\tGG  u  E  d  * Fq\25  `\21:\3 R _  lFR  \2 ɫ   D}e sҳo Q귔  :\rH\27JZ Pc M\11* I7 [ D \5Z -   \11a m8 \21G⌖ c4\12 u<e & Ŕ#\3b \20 JJ2  \5\17S ~H  V  M+\2 Ґ   A   z &+  v\11    ^  G p F\18\"@<j\11 \5i  \16 \25\30 \4   N \201 ER q   \3o  x\r Y  \1 I\1 \23  0 Y1\4ޥz 緳r 22    \160VXvn\t Y {> \19\22 lQ \20ȸ d\18\27 ȥ\16\27 \t \r t  [2ފ\19$/  {  \18\14\24  \r   }\\ Sws    E  O \29h\18\r m \18U/ ^  R A -\28  \5# \11\2 B[\24\tB  P  \11 < \r\15 W  %   7  nN    #  '\0 v4;:    !-\8|   \0\27D Q%  x  x\21c  \121QLVO ~ q  \8\22\t  $ \8l \27U1}\3j\6\7Hg   <\6 LU \t  1w =p  \27|o͟    ?\r/>s\30    ӞS \6   A }7\30 ҏ\127X\27 \23\25J   =  k  I )  d\\ x  3ġ + g  ~j'   M<a \24  \25 Ƀn\20 ( \6!Y\6Y&    Sk  \r   \t\20%{ x  ˷   \30  lB \21}z ~n     {\25\23 \rH i^  \5 } \5xدV O\5\22   ) p  ~ \20o| > :P R     ޹     |   g g7B  T   l  w \1- =լ   \4\1 '\26 9 4 / D); _\127 Α \20 R^j \7,.  )8\12 `F !a   \7Ȫu\21\19\25l\r3R = s\24 }   \5kcᚸ {h ]  ֨)؅  \0 ; \0nxT +.ʝ\30       Jl0ದ  \11  q?    I\2cE \t\1U  \28   Qv < i   w  -\31 $ \29i  S -A G   Z \19U  Ы  tu 4\30\29:\16  05\r?   ԛ)QdH \6K .  (  ܭ  ?       t i \2ڕ w v- .\\\8  JT l Y W t'ccKyk   \16\18\4%  \3S   \15 'o]Cs yZ ,G { fY  𚳆  Y\19H1\18`K}Hl  %273  `  G\28   :F,j   q\14 j\17 e\25f`\123<Fs|  \7   \14\31  \31͎߸5  wz  Ѯ     E\0  ,  \3\27    J   J\17 s  L   B\29VL\27L 6W  \7\6r * j Y a\14 ׺U  \6bE\18k    ɷ  ٿ\\ \t };\15 v \24}   k\r Z0V (i  r 0  T >   wv \127\22  _\24 ~|6 \tS  \20\18 > T955  \25 F \19 ^ \26`U yL \2d\30⡈\127  8   \"\8  2PM  ?~)? SO  ~  \31  \n ?  '>v    \28 \11G  H    \12 ~] Z\16\8   \17 i  ݯ⍿ L^   \15݄ \16# ?~ \24oy RV Y  #  5 W    \15Y Rm   \24 ТF \" ViT    &  sz ᵡƃ\1.u  Ř\0 x% \24N q@}  -\25\t ~ ' _ wņ  j F Pӂ \209\t  l     _\n    T Es  \\ , M \28\27   {͟\5Q#&\16 n   y`Á\19\\wv\t \6g \26й /x \11  \18x\17O!  j#w\22  i\3 rɊn  Bܮ;  \26  .YoZ\n  @\18  -G   > \28\26\5\19q MG  uԴ 8   h\3 䂧-   8 K ?z \29,ﻈ  j  T& W  VK \2Mj  \\ K\4 \0 L \t v l f Q <_  Dk \30 0\28  ǝ   S z\1      \3s   \6 Z 76\127\26    #Ntk^  ꞛ U 2   <q  \\ȇ>tK  qj ʷ\30    , 'I  \20 C:\28 di fx % \29  \23\8  \11)Gh  \18\24 M   ; }{3\12  #  u%| \29i  ! +\8FG  9Ae 8\18   0  u YՍ:[ڨCn\30ޡ\rS .R B  [dH[s'\11 \18m b   ۩\15\26 \1#<E'l\31  \22ĸW\4< ]+\0  % P  a<\t \27\14_ кzjꩫ  SW \27    jC 6  P  ߴ  M   ֽj\29 \1 E     \27 l  7e ]   Z1  N  зN280H  \28  s   \25 C\17\27 6  \30kB~     x   ` p)   \26   l F a\3\11A    <6߅\23I      C5 c1AD 6  =\24\3   (   IN   \15<_DS\232 / \1  \14 @ m\4:> Pmp }     on\3\26\54  \4 :  Z  3   [y\"  <Y ڎ \8 R   \27k \20S E K   &   #| \4k\2%r,  o    a p 2|    w x4S  f  o  L+  JS u  { \27x    5   W p  ]~ ד/   Ӡ  hⵉw\r  4  @} 2M<   \0 5 ѡ } ~ )韛  \\   `tq    )   U     \14%v!Π \11\29 \\ [ \24\21  \17 F *Ƌj \24<  c _0  s   }~m \4 =t qYy Rʣe  \6&   @   t}? ]5  [Ob  \27 { ۷   O- \27\18 \14' \r   J ˖\r \18 t.   M =oW $ % s% )  y\27 W\127  y   )     \16 z Í   ϣ\12  j ^! \2\tu \5\r4\27 $ \1F    7>  [  W\31\0 d.# 9 e  \n\18% B \18#9  9-  0B  T \6 X6 a  \27o  O>>  \19) \05\25K/\30 *\27|V 7\5˩] Jm_ \19_ N  \28bˠ Y  #\19Q  L J W  \17 \nZ  [ \5\14 7  ~oEE$G\22 ɳ k͋    5/  \"\221  \5  \303\21  =\7 (   ؖ\0 r ݗ^ \\\28 \3  3  ^ E \7H  u  \0 i L hf3\3    Rנ\20x/^|݋ F   ll \11  F $2A\26 8t. L ox ͒\12  |  . \6 )  : ew~i y 6 l   b   ' ;Vm\26    ߚ D  7O  o\30  5M g\1)3> 9: ,[W  \\`ܻ   6mk z   et  F\t\6 \25\1601Qc Mw\18\4  \30F K\29r   \22  nZ \5  B `\23\" ;e0N / JA   |  GA\6\11x o; Ń\5dw\30 A; !id m \21 \0 N  T\5   \15 t o     p\\1 ϱdS?  eY  S4ː Q eK  q   G ę 0 R    \15 :  5e6f \14 ޙ ɲ*}Ƌ7e *Q\20 \n W  \2 lf|q \245j |- Z^w   zS >  M  \26 Qx ~̬U W \29 vL \11 g\25\" V\7 W  \127 .N\6#?  l }U :;=  | \\  \21\289q 8(   \t 5a   \12.\30b m' 92  g !\21  A   < oZ.\127 \n    \11Hq   \29~K \nO \\  r \29)\"AA ! \"2 j>\n   ᜢ  {׮\r \296\31Յ\26 m \127m\19z ?g c`  cϋ w|\18k-  8ߊPl `\2.? ,d^M7Y v\8; \20m\17 ( 6 #s꽊\r\2&f\2 i Z & oy E疱  e M;  #Q p zҩ:'  \3D<j\"1 =   ꝫ N  R   \4\4*T \30 s  \15 ys M  Vc  PoCcC o A\14 ~J ,\26%I   O> nH\27    K Y΅ Zʲ \3\12/   p *'s ] s ɠ w\21 \23\27  }   xHS^~ X1\n\\ q\20$\29  ް|I 3\317 o B$    ! h 枡 5  \11-  N %O\29ȝ\146GG  W \17T \\tnȕ\23 p D j \70j Ѵ h4҂  Ct  H\n   \26  <\261 &d ee \\\16a  e   #]D  ] \26 p k\15 ՚9  h      2Ŗ- \15t}|/  t\22  F\2~    \2\\  yg\6[\2    J ~ k\24\25\27 ;n C axd hiI\17 擂Y  R  Cl| \26.{ 9< Y \17 P  z a l    \28 Phig  \27 g   \29[ \28   \30!  \4V F\8 b    \\  E 4 ΅ծy`-f嵻\n -. `\6   X  k  g/ ҍäYB\20*֒\19z \12 \6  u ( \252  |, (    i   X \\-  }y:  XrqĲ \6Yt \16  g g @0\rd\14 t9vt       \t D\14 \2\2 v\26\31 \21 \4lݚ % _{P`~X \4  \8 ` \26 l j\20 1 7>   t  @  \8 ]\14 m   Dq #K<} % c%\0 ~ ({  \19 #|i y\7 .  k   %    sx   I i K 2G檼 ڥ   H \18  3  \116z > \28` \1\14 3\28  \2  w  5J V   3<\t |㹼  c$ \12k \23\22s @ ̦\24  \4( r\24  hʞcU@\8 C \16\\.\1 3   \1  aG\22\19 Y   Gu  # )g\16G   H? G %    |    W  lk>,   zX  .ӟ\18l ̟ ?#\27/[C# 㽶     4    F 3s N   E\23.e \19֑5\28R  j I  N' \231 \n\3e ˟  s   h8 \11\7  \r y ˗ i[   +  *!\"  \127]  =    X!K e \3^  %,\30 Y<\20  +G  _Z O=o,   ~  g1\"I L  ۸\11 a d   3|  9\4   \18}c\1 k  P4B \1 ! A sϧ~pV } AT C \8 ;X\26   \238     T \156 }\5 \26 ` Fg ? B׌ CĠ  ҕ\3r  r :    \3 +  ET\t    \26\15| ( ' g   > R j\3 އ4g\17k\11  .6^ n  pGc  G X  J:  Ѧ1\11\t~ GɆy\r .I < v \19\5\2 \2li\5\18% fy- %d*  2\8\12Ǐ    *6 EO<B,ʵ   ] 31     )\rٜ  U \20  \17 | *x & Y    N z ń\22    U4?  7  K\1~@v   \2W  O\27 _  \24[ғG   \25\25\24BP1\5 7  o+{ &\25}#!  P  ׿u \7\318I8Џ /\6 u\8; # . ^ | ū  $4g\18 3) \\ + \26  \n\20=] O a  x  u\1  \24!uJc& 9 hN $u )\6  < b ڿ\17\26 2;U  \t # r\8 \29hr  L $\28 ă- ߖ\195 o   a o k \30   d  \23\19\8h  \127i       K\1~ 逇7    ^c/  > \171&     Tƪ c$YZ  \22 s+ V\8  4q2s4%˔  \18Ϲf\29YC1  \28 cL[WO \29  Cy1y= H \24o\23    ?y S  \4 K7  \26B z \8 H7daدRУ \4 0y    f>\n ⽡?6  '  o_& 2 6 <jQ ]  b  +     #    TMņ  5   &   <  \\/  9 \31  Y8   *ᅃ ç\24c  d 4 U  ?D & t \30  B  <d\25 W\19 \2\30 7 O>\127\29Ë s Kc\61 @      _ U`;]  )إ+ ݳ .  \5 ۭ\4 |Y   e _c ՀD Me X5 \\E\29 \20\25 \29mp G I3 HY  R    pFD )  uP\30 c    ɪ \rQ  X \11>   õ\17|.  ͞\3 \1 u  0   4  /     ƈ     c y 8 \22 \2 A$U!\30\8I  쉌Zm\22   m  bLc*  kӃ      \\ f\8  r O] hl  ˞ !, \25 \3Yp   t  0 P \8 Ɂ    #\21M )bs    '  cG {O  \12  \24\\\22 [-B\4\17#d\25v Z5  9    \29?  P  0 { O   毻   f  m e s\0?     _{8 E  {   e 6\18\\  s\17/6 23ޤ:  h}\31*      % U \31 c|   S  v \23?}=+ -!K\21 N  i' ½    \28 B  ۧظ   B 􈵝b  g i \n- @  \17 \127   ý\29      9   29 d d\211     `9   \21~   AC$4,    Y  zp^̊    8  \7 \29  \4\17 / { 2   ^:Fx \20 ϧ` v\n  J   Y \11 _; i\21   _^  4{) \21\"  ΣZ 8  v\20u\25# #οz16\22| Sd婶',\5\28 k  w \2 <     \27_F6W \19\15Be\2    3?\18XP\15(Bn h  \127  )  WO 7      P H\26>\31 i  &\31cU s@Q\127 3\29՚ ;\t\11IE S   r[\70 \293V U\29   tx sd= Px   ㎇\26 2rN  \r}  \23mS s n h0  ?w\15  \26\18 h ( \17\2 l   z d\14 V  c~ }  \127     Z  \8 ? \24 \4 A' U   x     Kҿ  \23    먟M!  W  '< R.ڼ   \14\"\2  & G\27  \25  \31  N8  \17S *dM+  N1:8 UO_C ZL}\28)\8.\23  vz  2   \16D\12YS   \1 w ,? {  \7lX\251:\26\18     d\tJ\22 \31\19  \24   :w   au)o\r  \30qt \15   PHs\24!˔#\7gQO      ~  ?9  }c\22 !\24\20\22o  '\5M LtJp 9d\12ʱ  WL Y 7Yt z\6 ,ω Қ iա GmY$<\31 G  _      ]e   \29cι  { ޒ  ^\t% $\8!\8Ҽ\8\n @(\2 Z  >% ~?    HD\4\20 \15\20 j PCH!  ^vo  5 \24  c 9 k \3    zN x  s ^{    \29o \21! \28/ ? H   z\30\8\30 \8\2\27\25   Է'  \27 LB mN e   I\7@/\2<q y[ Ӯ \8O  < q VDI G\15\30 G  E<  Y\81\6 \25 Q\31 >k3Ʒ  t\19{j*H P o  /   \n<   \127x\1 y .   !W\30\7\t N Qh 9  d-  양 \n  x ǖ 3  \24 I\\w ( ~ \8  5 j@ \29\28[  ؑ\8 \28Lp iU  Oo   }  L\23\24     \72v!盟\0   cM :   \0 1Q& ۽kx㻗 , 9  + Q \16Њ! \8 xg  nS` s Q܎@\18̪  \23 aӥ{ Ol (U\17uc    8    UN ]\rH ʾ\16\30\24Q\29   G\27          \28\0  6\2\0  }N     \23 \30  /\18 I z\26 & \19# Ϲ       +΀ =<  0} އy     bLl   \19u< %     # y &l9   \27[6\27 U\8     :\0i  .  \127|) :w; c !W \1^  \7$ \2     \14 Z3  2\14\31j \127\127\12   E .R&$\ntQ h\\s \22  eg Ǯ \4 \14  ` - 7\19  \25 .b Rk1&a6  \6:mc\7  H40^\18x X\3   E  \18 \26 g 0}z\25*Q  @2 w   \28 `  G R\26\25E䝗O`bg\0\29 \16  Ke  )`|\n*(!jv >  ڣ\11h\30Y \6I\20\4D\1 d?I [:  \15     \19`#\0<96   \27/  6V S {`] G   \11_ \12<  \\   ފn  ; }\20w  0 V\rc9    \2P  X>   _XD \19V Sa %c u d\nރ  ,\tz   X9\24\2\8q  1| ?  { \16\30x\24 ~\12$ \\ + AϚ\127  ~ %E b\4%\t \8  ± \4 +!z\tcۤ = % 7\7 g L  ,j  \30rx\t    {\28 \ns \27 v\"H \73#V     \22^ ' 8 h \nխ%l  \2 $@\28 \31\27\5oۋ \7\22P  0H\6`  W =Wo ؖ\n H   60) \26    )  \4\4\17: V | \1 =  ` Hx %k\127     y߼ \n$\27  F\0   \22\2ݪ  \27^  x' \28 I'\2   \31  ~   q    c  \30; /} 8> \0OJ\4A p 5 ښ \4V  x k  \11㢥b  (c 5[02^B܋!<\1 1=  y  c04 ?g\6   \23  s \16 \127\8 v ȇ\21 99 '   \25\19 %\3k#  K  \0x  ti \1\" \r  >\21\2d A  W  F\2  q \25a P  X  G   \n  B\7   e\28\\ \16\18     & XA \17 ͛ F c k  9 h  4* >N{ \12J   \25O  \22]  X \1!$ T\5F ፍAHB  \18 } 1 g 5 3D \7 1  f    F& \17\0 ͏[  _ \7Zy LB Nj  ]   ~  x   \1 XXZ W \31 <q\16Zk ~\0&͚s Z \11 v =!h}   ߮ 1 LM \25   ާ `  1 H $S\28&x ss y`(  J  _ \0 z و =\n^ \15 Ip6\",\2}  | \6   Mm  \6 皞d& \14     ٔ\t$  \26  B \16x\4Y1       ´\127\25  \2\2\4o\28 ~ ( b\16\4 ] ЬyX  cP \30H\4`\29bb (v_ \t #h \11   ` -\28  \17t   P \0 M J>T\24b C   \1p  D\16\0P  :   nd\2O )@v   ?c\21 \2 $֪   p x \31 \ng_ \3:N о   羂# \23\16\4%H!   })7;8~ ր R   \12H  Z\2 \2:\6V\15v\16uc m  f \0Mﭢ \18#n\17  \16\31  C\24\rʸ +  # ז X\27  A  Aw\317# d\6\26B  d   |   ,e6 9 H\8    * \31m   1 @J(E  \4 > ?    m\1  \4\1\20LIl t\20 C r\25ز\11k  X  \19Б I R z $v\\2  \22t M    \18&\19H $ @R  \16\20 F.  1 w\11& ؄ 욈 ME \19t ¿   \19 0A   \8\0O   2A n-   %+ -Da u[   Ϧ   \11  \2q  \31 g  \r( P.\5Ф8  \19 \" \\  \234 \8(\5\21*OJT % v   @䡵   \14 \17 * \30| æ3G k   P  翴\31w 3 K <\11;.>\11  Bܪ  0   \12 \\  \2jpЄ H\17f' @vʲ U$a  I\12 . xi c G @ \24 \8\19#\18  {  \15   _h@Y\29   e z~\5RhȩM  ),| \8Z\7\22@ \7X 4N s &L \25\3+ MH)@ Y\29\16\1\18 ȷ\27\rx#\t+\t$\24$\5     N@a\11  DK '  t vt \27 [k  Ԭ  wQ     d\14\2O \0p \7          \21\20EZ     \11 o \1 N\15̌ | N|   Q) !H\24'\27**g ' vQ   F\16J~     f\15$\8  \4` \n  \14u m  L \\\30/abw  \21 K! \3<q`\5\31  C \21.  r m  l #=\17   \15 ͸\4 9p L  \6ԁ=i҇8 X[\t 8 F  \24 U1\28\31\17  \18   \21  mKx hb7    ql: \12\25H  4 \14 X   T;1dTV 9k\20{ ڌ \7V\12 \tH! {#  ۀ \r P   \26 Bاc& 0   \3 \n\t      v WkSw \14\18P    .9\14 O <Y \2        7 Z% \31I \"   k\127   ʛ C  \6\t  _ *\30|t?     ˥      f   N    h\12 0 2\6\31O \31 \8(M\0 )  \19# @\2 u   ! QB 1  g bts   \29$]  \5}      \30GD  {љ  \\ L  8 ֹ}y  '   B 0\4 oY~R\nHAP  j*,/t 4 A  @ `!\5*\1a ,  2>  :~   ԷۈbS   \26[.\26   *\18\n ^\17X w\21 ckf B 4&     z DF=    \2D  OS\127a)  6 ;\21I \4\6嘂 $Q҃ \t W\2\t   = J  :\17y\26 =\31 +   CG\12V  \5\31 '#  \31  ¤  \16B    /~ \r⭿r\19  Z\8| ?  /  G0R1  \5[m!,  Yٹ\25\19 Z0 Fq\25 N ) `\"A\18 n\15 V\7 n   \24  cJ \4@2 P0\nl9w   7\r \2K  b &% Ĩ\16  } \24^    ?    \29\3h\1qH )Ċ2U\127A 8' \0 O \22 0\27>\n5z]  v V#   \0\16<O  \3Ւ ^  ?\31 \11ww  o5ph>N\5 I   =\21L V\6\19q{E q,D ְ \0 \43{G   \25 %2: RdZ\2f ;\17  H   +V{\17No  \5r\7d\16Aha  ZA F   \24=Q    ݉ lC \24      hnZ f\127z#\0  M ]Ok    & ]  z| 5     נ  Q \20 _n :   c\24 V  2[\29l<  \4      R( & f/ yM * \50*wZ\1a   \23 ׊ z0B} 8   ? a  \n6 @H  }5 \29  jy` \0\"  \24_} &< ic  l   \3l  V D R HMkMZ\27  V $ P\n \"F I  )  f \18  @   \27g vO  b o=   [ {  \8#  \27d 0 #  =%\8᡹\24 9\27!jXou\24 ߉ # z $ S~ \31@ د 6;  Ϥm \21 #-   ڞ  _\20 Җ    \15\t@+  8  \4 /  zx   D L\20  C  \14 \7^ d\27\15ғNҫt󭜔   \25M \4ޟ~ ͘  \30}  \7   ޅJ \4 S9\15 , H3 \16< )   `M b 3Y/  F\15\3  \4\17 bD \16Q\20      .ZK\tX  \r\t ǘ 5J\19  \8F\8 5 ڑ\30  6 (f \22 \0$ ό⊳\3\\tF\t\23 ` \03 \2\21\31  0l L\30<7!  X +&N @  `n5ơ% G    \3]<6   S  \17 \0d Q \\   * A  \24 \21@u \1  \\   \2[Ι   q   \1276 \16  \" d6i Ȥ\nI\11sQ%3  @v ;  A  \17 9BZ# LC\5U e  } x \31 \3Q \24\23?\31  |  \20\4 I  s0 ֳ v ^\"Y֪ _    \rϽ\8q/  c   \127 2\2σ    lBM P Nb A \r\2l2\2 >x  Ϯ =   ,\17  \"U  J# c  ] \23;X?\22   @ ʦΒ\0 _e\30 R Ҹ   C   \5舡\21  p\16;\26##\2  <l\30#l \20 \28\21 \28 1R \17 \2Z  \4  #^m Xmh 4\8K \8k \30XK Hx \0y 7\"\16Lx\16  t\21  \4Q+1 ? L #\21F7    QLl @H    E q  k\18is$  0t `7 O\17   JbN T \28 \t  h  C\181!  D \4      \16/ wD\17 xL #  y\n \127<\28 5:5  'O  I  \7D  V   \31 D>      \" c|  wA\22 3(  & '3wbc2hjM cώ >9G} qצ\127   nl\6@6i \2\31#   x\213{b Vz ͵ XR\8 `V   ` p j 2˲\7 \0,\1V\n$\1a   Lh \t v #\11   K \12 ){e I\3 \4)u h2\6\t / \"  q\r\21&   X8\24\21\24 R Į\18 6  y\18*  L\16 s    6ؿ  ԕ \\7>\6 S4e \7  \20   J \19  \1e\4&F WG : $b  ,Z߿ ŭ(\1 \23 \5z \6  d \2 ɒ  ՛ LB \11ZqPV  \31~\27v >E` ?\127  | \3 bdt\20 \20  &\21\18B Q\6 ͐2\"C \25 \29 \24    `\2 , \116 y   \22& \4 ҈z=t !Z 1ګ=t #D-  \7ұb v \n*   5 Hq \14l 7  \27 A +SQ\16  g\2 .\26|  5+ \28\2 'Ȓ@y\" ȌDu   t\25A \7i\3E6'  \r; \8  \" (\rM0\8ʯ9 | g\29  w@ά3\r\26  q0   ( L! F \5  <  _zD \24   q \29 \12  \21}_  F\6p $Ro!            \21a' ѹE    Q\14\2 $1\22n$ \5\2J1  \8  B\18 5 Q9\29W\8  \247\5 B\25 \7\31 #Dק\15 Xo    * \16\4 5 =Ȋ  J\24  :\3$] \19# (萡   >m \t\11 1c5!\0 \17 /  ԣ \4:C!\22  t u  bSR  p@\14 wx>!\24 \16UA~ C \18@H I\15h ' J  \3(  f 7 \\\23\"Ay0D  c֦4c;xu g*!  2\8=x DiT <-  % \303+ * Y  m\"\25 \" \23\23   ݇D \8\21D <\28j<\15 ?=\25 \0 IP   ěN   3  /U K^ \12   4 ;  nN a W  z1f\31o` @\7  \8:&G [\21t x T$ǎ H \25  K 8 \2~^7  \23M ,   c  4 \20 )  Ț{\4s   B m  \5[ >NA֦ 9 \1 MdLcT3 \2:=\5,+h\29\3\28 gȟ d\16\12 . 9* \r  Q  }}\25 9 i |    -  f\"\6y  d   G  IT&JHz\t \8 \21   0 @0ZƦKwb kO0 \4   [>  \38  #\4\0Q+~\29 `T'   ^ { \14Da }     <J \0J1d  t  \3w Э   .  ވ Ի  g  Y   \5 \0QaV u\14 \3\30N =l\30 \28 [  \28  U \3   p b\31    tɈN {tp\19i \17 E <hS  ws   \16 Olp   ǥ D Y\2 @g\25h//    8  ;   i a\2\5@D-H \2\21\5  p\23\22 >*U7V\16޵   F  ;O , ;  \27\31W۷    \24 \18\283\16      \t J  {\31  M +)\28 {\5G kA   \12]ڱk / p/ o   6=\2 \12\11    f\rϺ  f d3 Kw  u  \5: \14 \12     \"  e    \19    Zۯ\112 1 ֆ6+  V\26Zk\"\"\22s(cd* B f  oH! \15pJ /  <wZ   \29D   (\5 \1 3\4) T ޳/ R6\183i Yo u >   \27$   |  @ Ҝ R\257 5MI C \12 \19`\228rl\21 > \4 g \12   $ \127 8 +\t >c\19T   \4 k )M 4Y      \3   , {?\5 ΍\12 ] I  de%|!  պ\27  3#/ j/ \48pl\14  \30 r \12     M\28  \1 \t d\r\23^|\30~ ?\15Ϲ b  4 T  ; \27 4    5\15   4 \127oc.   R\19        gq  \15Bz# \127p\17D 3  \5QOA \29P0\n \5f. N \15 I \1z9   mt> p*ۍ  \1 z\r \3\nx    x捗arz  P G ! 5 (aa\127\3\7 Ӏ W ī  Wހ?\127 \27ij<@    $\0\24Q \17 \26  \17\0    \24 Ag v   \23Y  \15d \27)E    \5 n P \12\11 \20\28N M \21\31T  3c0   _Y  'p\23 ؇   9~ 4\124 .Vʜ  o79 .\7 \20\18 \t   A1 D  Ҁ K  \11  ӯ \16oy _ _> eHo\28s\15, 2-   \t (  =$   \29 (o\25\19  FB :CQ  \26 S + T \7{ 2 4~ \25Q3z\6sȞ_  x E $\n  u\28:2ϕj\t v  w.B\8   ů| s \31z3 [\n+ ! %\t\r  F F;A (f 7nZ  \6  ZK7r D L ǅ\113\rn\16r7J. KlSar7S>/w  3@  O   5 \25  S  #0 қ lNX8D:Vgvu\3\24 1 ӘQ.   (x\26  < B   e kv\5 9\154n' 22  \29O c -4 !^  \27  \22 _ \7D\30  =   \21x \7 k\3~\25T\t0y \22t\23릤b \n  w\1 n \0N e\"v V7\17     9\23    ݌(L  Chu{\24\31      k  \nq \5; w 4 H  F  ގ   El]k2 kI  փ\0 \22 \24m  d  O \31œ 6  l\0 a\4  \1 $\4\30 qP ѳ B  A \rdMKR[n  O\29\14S  <ȀM\16\18y\162 > N|   Y\09 d T}  *穋EZ\25L E \21 \21v  NS    l * F v  W  F\28x \24\22 \16 $ =l=o\26*   \16*\18\24?m \23<)9 5\4  \127 \" x T-\3ĩk \tb   & t  .  H\t n\15\15>~\0 \20 LX9\28\2\8   /     X  P R\18  \"\28[  р\20 b9'#R\4     \n  n\6?`  ̹pH \30 }M   \12 o iv4  ] ^  N13    s  O    \23  k  B O\28\n 9 H    _f x  \12  b T P ק 6A  e  G\3  Ǭ  \14 k 6'  \4Rzf \30 D \23* \24  \18nx \21\0w\1x \29 3\23&\17G c   q l \4\16'\4σ /t\14\21l\4    G\7c7 \rȧj\21rP*ɧ< lxB`iu\29 s \28\4\2 z     ;vlǳ s) \29\5ϓhw\21 V  \17  P \17 p    (ۨC;hT\28 1\15Q\18 |gg Js 98 5 \7\29q J \29͹M\11    < 0    \3   Y\16\23  \25  Oڼ\16 \n  \29    )I\n\18l hԽ      J\20 @\" \"\\r ٨ N\1  u\16u\" \11 C &^  [\1( H \23Z \0 \17\0N  \31:  (  (9    y &@1\31:6 ql   6T \0\16|   b  Qıf    ] E- #\4 \3  \r< \28 B       f7| \t S 9 \26yp|    N  ~K \27 =^\11 \2Ώ  \19     \rN4C@n\22 Ķ& ,\22 g\29N\18 \7\1  u k,\22 w\127\0  +\8A B\5\21\27^ R\26[ Na   \00 ^\23Q c@V*  \tX\1  MC  d 4 . \127 B󔷈 \0pRt \1 ՏX <<  \23 R  nwq  <JA\0\6  \n ڐYv  \2O\0R \26 \8 n h Qa j  xCs1 w\2 F\17   ә  ,'\26p   > NǙ'?\25S, F! 00p\26  Cv| rgb\26b#  O3\27\8\15\28z  .Y%% \28H \14' 0r \22  p4 6  ki   vbx\26d&\3BH OT C B   wy \7 ( &  l\27\3 $    ~ T-\3N 7 \4ܪ+So \t W+\21Ax\21y  τ``~y\r\11K \8|\31    a\r   K!\5 Ս\11 ;  \11 悅v \28  ;    Me     \24C u ,  \19v \8 S  {   e  7 \22    ν{D х \127L \4\7 \29 3    :MÌ   5T( r\11C\30( @   n \20 \4A\nB (tZ \12  \t \8\1  \0 @ \18 m\2 \5 \6  \127  \1 X\0 ^\2@، '*     3     \1\r w \24za  v j \17IV   9\24% 0  SM \15 \15  \18 Am;3 2ƚ l\25w \1 g\7 \11aР+w^  7z  \27,-ȵ\15\1 2F \15& 1皐    +  \1<   Q  \24  \16) 5s% \29\25r]\16T   ֗  \191 P( @\24jt q \20  @؋   \6@Cx\2^ɷ \7\1 c $46 {6 d@ c\6 \18\4 眊e 8  \127s\31  l \16W>m/& *  D8pt\14   \6*   \11L8v|  K     P  >\19\21  \11 - f\239i7 u   \28g \29r yC   [\15x &I irz\119Z i\3  \30   ݟ0C9 2 \"P ?\28       `AE 4   C\0D< T\\ i٠Q\8t:1 ҆  \25 \4: .: \22\0\r \t\0H\3   t c   \24 3U\2'1!\8  Sr\26 N  \127d뛷\0| V\17\0_\\ C 2   Z   \n\2  x ^YZK,`ii\5 Vh    ^ }   \7    \29 \21\2Űv! 9~Q )w\26oٷ \26\127  \127> L  4 \7 C  9\11^E]\1J \30  w  \3 \7\21 b  \t\15ɏ\8C\3  P   %\n\21 M` \26        ZI    \29 Z\r  \7$\n\" 0 g& h  y S \128 \2  \11\0 \27  \0o 9N   L瞿\19I p  <  \30 \20\25  \15$ o EKKm  u  VC  \17{ i^l \r     ζD \28s&\2yJl  B09A_ \6c\31\232   xX \29ȵ\0 jyf\20^';   Cp_Yc\0A    Ø\0b1\20    =GF r-\127\127}םr d\20* [!\4 ٙ \18 z\19*I\0H\4\21\31R2؀\16 瓄\16*     \1\18 9\6       Z\25p u5U  mTgb} \21{19YE؋   q  KSc\r K e ( l X[i   ~ \\L     f VU Q<  дʻb\14 > \3p\127F '\26\n\12  S'\31\30r  0 }X\3w e  h  \25 6:\25\2\21 \15\3   \12Ky   e\14s\17C  \289  l '\5Z \16q \11   P   \6`0 e\nN\6 ŀV I\15*V(͌\" ,\198 \t $z  \21|e#\0 ?!   +  k g ў    @  Vobny\21A) G^ZCH 4\"\1Hh\21aia\r @ \6\6 D  F\16 I3 f ₣\14\t#D \17s x   KNcmp \rN y\24  \6\21 Q N  7\18侉\"  #\24  s ^\12   aCì !\12N:  \15 @\3 eT(A\\ 3 \11DZ\19j 0 \28  9 c}  =m0 C JB  \25 ] 8\1\7\30*;   \18\0 \23 _  7\2 \127 u\11\1 \3\15 \11\1:G  \30\29\31\21\23]v\26    hu: n   \19i\4\21  J\tf  \0\0  | ~ c* {R  K  = \28 1=\22`f    \0 \19e V<ʙ, \"\224\12\0 g\14ȧ\14\12\12\2\12\n { I \16 B \127      \0  UG   \15\30 '\0@ \25 k  T  \t   ܎ \190 \31kY\8j` f@\n n'B \29AH Nv   X_kf -A  33m\26 \26\4V=P\18 Ybd V\24  \6    W [ \16 \8\0 υ S n$ %\16 \11/; v$V wl  n LԲT  Mv   \t\0R\12 v 8\14\4     Q\31 #\30 *\30 %\1 3 v cF > %\15\3  l  E~ kq   G} ; \25 _ק \24(  FY1 . / \"  \11  b  OĊ  b A}X B  }a     {( \26 !\0I\16 ׺PIz  t,\0 5   M U \\\31\7  \21   ,P 6\1Y \5 X\1 \14  \25  /\19\27\1 ? 2 Y x~ʽ    G       %   R T  5 /Sf 1 P7  /HJQP\2v3]͌ \19 \4\" a\21\3Z3 hZw; \30 D\23  %. ʙ    \148; cÚh  \24V \193 ֚ D q\tbb I+MJ)RZ   }yv ` )\3j y C2\20|\15  \"\27 \25 : \09\0%  *   \16 \n  ] *Ilg\24 \8Q    4 \31  J    \21, J  PI\21⣴m\20 V\4\15  F    \12 ?\17     \r \21JE      ӡ\19  s˨ \27𤟙I \1 \24{ R \3 \6 0; \n\r   Q  \14[ o &\5 }-% 2\21$  HX\15 \7- ԋ\21u > #\29\21q\0C  \28 R 43<Obl    Q O bl    \17LL `jz\12 \19U\n >43  A< \t^   \n\26\5 M t  \3d \"ҏOdb   s24!\4 ׻\8 ت\15\27\7\7!@R\18  !  &\0@ \4Y v ƍ\\ f \\_\1w\26\0k  IM\12\0\187\2o ; S \12 N\21 \127 : $ F \27 \25g ;O F\20%8pt ጧ \25\12V\12\21) _/\58\1 \22   $\8  \20@ ]M |\14 \1$ o  }  \\\24#  \18\\   Ƴ+\21Jy7݁  ~ @Z \27  ,kQJC\n  D   Ņ\26?  q<  qZ [A  \1Xbd  -ۦp \25 q \5  猭 }\15 v\15I  %9*\4.O  5  \28  0  \20  ʠ\22  }  \19q\19R=   \14  \275j  @  E  \1  \3\tϗ\25 3\19\\\18\30T \11\21   :t  ʶ\t\8 \23:N4\t:   Hp )\3Nn P  @  \1f b#9  eW   \17  \2786 \12 O =  \3#I\20 -\28ԗ \18   \22 \30& F \t 5  x  t@i\6\15E տ 6&\11A \t|n??  p O%  &   ]  4      W  F   }\23      \30  R *\27'\0B \4T     X\t ]t\6     97]   Q4\26 \1\12 ;z  \r  1\11EM`   \28 o   \127 ȝ  MY\r '\5  \8 Nl \306 H\27 B\16\26 .  \"  W\4K_@'   fBԋ\1!  \22(Q ' \86Uћ % j\0 \127\20 ݧB\25    [   [gZ  u c\0   igC      u  Wď\t /  ^  \12\24hu    \226m1\1\0  8   v ㄂v\31k  n E \n.\17;  ! {  K  = );   \12  A0  \0~    }\23\127  \127 #\15\28  6 \1 06>  [GQ \26F\\     C   V    U   z\20\127w    7܄\23  iH4  \rM6 \26 \14  g bi  \"\22(/\15 \30\0\15 \14m A\5 #\\P\18 * 9vqy էc   '%\26 M2\16h\t d @: [4 % BĽ\8 yĽ\14S @    s { +\2 \1 &  [q  /\21v \7\0   *|:!جu/ٲc 8 ݈È \31 E D   \4 ZRA\18t \18B\04 n  Օ:.<\127\27<O\20\7N} u  p ,+`\23    K\16 \206< C +h\22\"\2\15\0y G) 16^   :  w \31     M\31b  mx \11  M7] K/9  l\25 R \7kF \19bq  { 9 ۿ  } \11\15   2 \30Z   ڇp    /  \127  Ӷ     d1 q_K 9   lޱ.sDJi8   \4 a \29\22 6  Z  F  =  \30 1\8e $  Z f?\30   \14L3IqA@ \4 ¸ t; j GvM   \30   H\\ʿ p& }' T I\30\0L\n b \1\20\0h \11/>MLMU j p  <<  u e  \16v\18   _ LJ ]  ]\5\0 =Q   \20Wk& \12 lD  \2 \127  b!\8 \12  9#ոw~  G a @W\298k 1 &G螻  ;~ 6, -\2 453 ?     7<\19;wM; MC[   H\t 6   \11w կ \22s 5   ܁w  \23yia\25   }xӫ     M     l != +\1\15   \127  J;#@  M /\26  `   N43 \22 Y  X\rp =J)>   L \n WDQ  \8q\28#l   9m{   j\26  \8     {\tS  $  \4  [1X  㿗I  \rưR + z&|O`    Z  \127\11\26  g \2Z)xAjA%p  \1\3 Rd*   \7r Mf@)\20\26U\5i/rZ \4c Q  2 &5 o$Ґ\25y $d O \24c\19U ڗ\31 \127{ݟ  \\ \0 ~ ٗ [ x\7 r닱s 4 ( ( \17ǉ\17°YL $  \24Q\24! \"  > _  \23  wފ\27 {1\0`e         }\24\27\311  NG \nY\12 \6'}c      >\r\16\26\2  \1   \2  \30   \16{ ^  \164 k  z+ P  _\8 \4      \26 H\t  q\8*   \24\7   ɛ\n\12ԍ\0 \127f \23\4 Y\0] UO  e     \12:   N \11)e޾w   $H\16 (\1 |    bX8p  f K M\29 J 0A  c\1\22D(\22\8\\\24 e *  = \\ Pm1  { f     C   \127 }\28wC\0m  Ͽ\16  ܯ  s   \11)N\18 \20 9   }a\29y  H \4a\24   f賟 u   7\2\\C \29  \127 C =  J%0} ~pR {f\12 |   \15   \4hP     \27 *\1\22 [\16 ΂  Ea  Z# L\4U?\11&$\4 (B܋  \169c 8\4 \290\4*;'m\7)\6 O\7^7f \127 \8\0   \127  \127  \11 D { \14 s \12 \" }Gg]{  }    \3 \14    !0; N\0 y  /]lEY Z a2}    J@B @G  b \5 o D >\6P~ A3Ó\18 f\23    A   Y \23  \"  _\1 \4q\20    \15   \5; \31 Z I 8J uB y    7<\15   r\19    E\18 ^\n 0 4a ȍB 3\5 \1Vd32\21.dn  H     GX^ Ӊ!H ֹ H6\5 \23  \11Q   \n G >\\lv  fY^   \25   Q :\tY-\17 D1 6H~ Ɏ\n\20'  \7  棊銧  r5 Z  cs\6 7H Mo\16 R \3\19ȫ D '    \18b\5     ͦ \0 5_KT>\24 6{V +O\1   \2  m1\11rYN  E*π\12v  (Ũ   ? \20\14 {\2@ \31\127   ?  '\17E \1,   \1 ]1j\17\28\29?{  4\1,I\18  }o Mϻ\18@   \7\127   119jJ\1*j\22d i l \17 t Q d \11i\127\1\n \n fHN#   $XZlC\n     \19:  \5\8u !:-S\2 @ +  \7\1@ \r\17   \17;\20&  \17q \"(\r\127   1  O\0Z  Ɏ\n\20'  G   m  S  A\"\16 ^y\6 5 /.  lBJ\31'\" 1\19  O~`D! i ce  f;\" \19 Y\3 \1  t䦴3  #\11  셠\19`  _ %   \5>  \26 j \7 ; \127   @ q  \tz {^e F Ȑ  \127QѢ M m  vॐً   x%  \tBx  \15 A GWP* ` \3 D \4\29\30   !\5 U a pdg  b XC0a~  8Q iG . vՑͤ  \t  vM   ~\1' *A   slq L\4\1a\23 B  P c \2 \4 z \30|G \17\0 Oh % \6\20L  x i q Y[ D1\14\31   \14   eG  P\29  \15\4 4w  J\27 z\23 / I\".t    S ]z3 \0  3 =  I \t\2E m m ] \26\7S  \2  \27 !=    E$ \2k    W`z  $V  \24Bۥ\\? \6%\4     ) &\12# =c\19   \23Ak  Z ? ᯢZ)Ai=\0 - \29\6 A  \30# ~ sQ ד\2k ]  u͸  \29R  E!\4Z \14 ؠw  \7\18F\19  hA q 7 TJ\18   n\11ZkTwLA  ` h  \0~ \" ' \17\0 c  ck \27\5I\0\t_v ^LOW lup  \2{ D  OE\17  / (U\2  ˀ4   Z W   \3 >3\17 U\3J hR\11*\r J   \12=2 Nfc g ^\6e g̈́\1ձ\1  !  5* 2\30{ (    Hᇞ \20  ˞ 8 \"  \31A  .  \12 Kn`H y\29 _!\4 Rx [n i  \14\"  }  X\\h:H \"@  ą\2 \11\27 h $  _ O&\16D b  l3 u 2\19 b p \6k 5   \25\1\nF \r   c? D qD $ m c\59VA0=\n@%  Ay?r2k\5  U \3\23 ,\0 3\r K   ~\6\1\2\11+5^    ~ W#G \19\0 \19 O  Ǭ5F \2 %\3  \24KK   L* \127\8 ΈS  ~`\14\214\7 - \41  $ 7 (P rv\ri T.\7    \17 j`   \0 \t{ s! W  \18 h } y\3ڡ  ZCi\r t\6   OҚ199    j0   =    \31 J   \7\20 EQ\0\4  ܛ ؄} *}?B\18f  \17  , \"0\41  \2  {\12; \0 ֛ \27 *\1\1 Z @\16c\12qPdk  m\3a   P 1\t@  { ɬ\21(NN \31 \31  \24 gk ѓ   9\23 F\24%84  X \145\17!\14#4 \26X[ ama\29k 5ԗ  4:H \24*R\28x̕    #      a q ȥ5\t p\42\295]G 7\rD  \t t ]Y \192 8 f\8,  ^7½ y\28   m\19   \8\0 ' \28 \8J Ny\16 \8J\1  w0 \6%\7\"\8۳3 \17? #,  `4\14   so ئ \t\30 {  Z\20 wL0A  3   U0() \127 \23F   Iz V ;XYi dx V \1   \16\19\t&! F6JM  z+ \12   n \3\21   \5c Q  &\td'#L\4 !S \r0  }ڰ X1@W    OV @ dE i ^L IF+:  s m  8\12#\289     f\7  \14k P +W  \24 Vhib\nՉ\18  ga \t  Ra \"    k d  \4\22} \30  3  Y .\4} C \31\29 \3 Z\6   \18+ 5\289 \6 BW\\~\30 l\29G\28 \16B H@k   V  [ z\2 km } V< igY @   \12  = a  \127 Q>z| v   מ R G \20H   \5 mǶm       E q + \8@  r   '\7\27 \14\7    \nWQ; \4Ǐ52     .Г\8\5  $QX_k\1 A # \"t\271  Y 2lܛ1\21 ̤[\7' (m\30 ?^   K@ \17Ľ \0   \17\21蝌 ?f&   s\r1  ʫ D $1     5\4 D  Fc \5\18\18Bx  \31I  \4    P_ ! |  K [ S*\rF8    9U &1\27^k&       \168\1  \06f , p   \12     n m  W f   \16$ l\12No  Q  ϼ\31  \29  C    \26   ?   \17V*\1k            CVޤ           w \6\26\17 0Ɩ- ػ 4  5  XC \29\26y \1 P* \21P  \1 Ө  >8\21W \268z  Ji\8 U/.Ά m\" 1_\18'h   v\23\18 N Z: \11:  rFg\22  \1 \4 RBy \24 z  \20 \27M\08  \2  o G\\  f'3  Z  GŅ  F\28)\28 ]B  E \11 nt \18 & \12M \24a=As%Dg=A J  \30\0\15 ?\2\29W1{ f  $\19 \tW\20  H; +S:?s @ \127 \81\8 u WE\14 \16   a=O`e  $ \0\8q  MY  Z \15|  ݣx ߉V \7 M `\"  O|\5Q\20    T6ay  \23  ]|` aH\127\2 \n\12\15w  (   ĝ z\7MO ؾ\0 \23\2 vM\3\16  [h6z  \26 R\nb  \t\15\22 <    \5G } #  h B   e y@ \8\26   l#\"$I v;4 *\19\4 2  |XM@r$ 4 L߼x\1 CP \3  (m @  9\1\24 \1  \4 +\28\18 7z\0  Y ?R J\"\127\20\28%  5E wO Վ   \28H\16z \8   \31C  \nZY  XB(\31cS%l?{\4g\\1 = m   z    n    \1  ay; \tQ \30JĎ &  a & \21.xQ\11 NX\18 # \0B  \6 \5 155fon a\t   O  ZBP*Ci b2R r\4    pϽ  \7>    \127  |`  \8 \17( H  R\12߯        M\22R  *+c  \0  I\27Z)  V\28]  e\14 !\7I\rb\20(WI4榾/     R\27^  D !  < (8\26\25  \16 N |\62  8 \19k  B G( TP \30   I\26 :   \24e \15 zԽ\6) P <\14 \3a\24U 4` LW v#\3 \1  `   <\0m}ޅ;  h\5 +u / B @ ݶ \29\2   \t*U\3  es  \4 $  &)ѩwq ?-A+ ťu4\26=*U $ \16Cg   \0 IMuV  W   \27 O -    P\4 \20  .N \31a  O B D  t \31z ( $ $v C 9'u   𔧜\1\0x  C \11A' \23 YA\8 \7\30<  m M  8\2`FhBJ I \4M\14  ˒  (U\16J \6 \23h4\"\28;Z T 2 \21W  \7 d  \t C  E  5J@ o  \21y \15 \28 _. +  < ک+\8  H  m B\16   &xRÛ\28E05 p    >( \2\26  l}  ,\0|E  ڥ \21\0M \\~\6J  z  f \7h  \23   \19\24 \26Ae \n \4 4  \r    Zk\8  { /  \tV \27X]o   *|)  \t U  ]x M\27sO)   \tt \24l\87\2   A nr\"   c*: j͘ \26\3P\5`d Rd  @x\2  \8 \2+\18 8PH\tf  'F WX    \2      N\20@ \186o \0 4 fg \0$F FQ    ^\31\r\24'* \6\\˨  f? 0T8t \14   Or V\30ޔ\1\17\235\7\4  քNz\0\2H?@il\4A Gi \n\"\tV 'B+\5\1\1)=\14 ]tVk )\150  \23 \16I\2     \"\\Ze@\2 \116ƀ?  ?   o 2 \28 1 `  8{' 5 - \" cx De Ge,  1T + RvVd\19 $ \16 -  n \7 \18  F\27k M\14 M\24    \17ffV  \6  Q`\6  \\\3v  \28 \319 X J ¶  \8*U\01\30{l  \27t 3 \23<   :  2 B0|_@ \8 w   ל  \" n  R0\27΀  - y\18 #\8Qŋ^tu6      ġ K\0* ټ\21ՑRF\15>a [ :> \7   \6\14\29 !N \17]\25 \3\rڔ  O T  P{\r\11Ќy+ \30&vnE0V5 8    f7 z\19  5hֹ   \31\"  a  : %\7  ρ\3R \8\0   \127  vw  6 ᩙQ  TE \23 ȱ\5  w\27  blj  8:    g{\12\11 U A%\12?H  \24 \11k Y  |  6 )c % \7 P q  d\22 D)  9  g& nV      \tB\28+l >A33 \4(|  \15  \19  \7ϓ Zӛ |=n|   %h\21C \8q \2 g   ~ f6   Lq\20 G_p\t^  \31F\28 B%5h  IzP     W  +NGlǆ\16\2 >:   %\0 Y  @P 2j0   \3\7\21  C,\0  3Ĕ !\30ܿF Vl\\ RDU \289\17  +D    \7Z  z   ? J\3    굁5  ꠾  v \14B \rr5\124X+ [' \20 Z1 2 bN2 Г \4xĎ h\27 (3 dj ,FF h :X^]  >. NZ\21`\3\15\27@ K  z\27Q/ ,\t  O2\23\23\27\12  L` X˻ TJ    A  e \4\17<! :1 \r <  e\0hU -d/ \19LLO  \11 b  A<  q<  <. t7  4  % O~ \23  w~\22    h \20.8\1273   \23  k F\18'  \0\24      u   ]  \127 \3 K\17 y V  \r  K^|\5 ( \03\0  ?\n (\0\26 \\y i \t g3 H\8 B\4r \17NG      \35 j!  \21e E\4\7Ԑ  r  s  Ɇ  hԚV ԃ_\r\0b\18  Hs  \"\14C$Qd@OD$ dc\24:\12  L  \14\20 =C\25\0& \\   i\18p  \0X`\18 \3\0\30\29  \\ 1   V \3! \16 Ls3 8Of@H ^' N+ \25畄 @%   \1 = CZ      %J; l.  h q\nDʅF\66z  Pcʚ  ~ͼ\6A  Ϲ   {\16 \24      ? \r (H 4\26 U\15  k/¯ ڋ   (  \12 ,,& ȥ3A)  gn [~ F  =\26\25) r#I`&\0\6  l   \127 \27D% l\25ťW  ^7 \16 lO } {   9   -\4 ȡ\6V  (  \19 \7 %\24\6  \1 $ ( Z  =0 #j, AE\n:  \t\6IA \24  t\16  ynڋ!\2 \8P 4\r E\16  i  e \27% \15p\2 Lc \18   = Z   2 \24C,  V   $$  h  Yd\26\127 h\3Z!  Y \5 }\tA \20W &T p sM\r  r ~*< < A   \31  \8\r\17\155x n   > \18 9s/\17   ۾   w\24 r` 2=$ F\20FPI  \16   !\11   \20 \28 1 8A  g\18a \4  ĚIz\18 { \23 \127 >0K< y `  I qb/ H 3\5 \31 ; p *\n    #M,-      BE CG\17(W`A 9 b  8A n&\0B\n Ј =$q\4&  $ \20v g{  \31\1\26 A(\4\16   \8,%@: |\18  h \t  ^ \3W\29^\16  j 9 ;W';\20 \24  \17\2 Z\7J); 7  WJ \2\11sk\20i  IsZ {d:  f\12 \29ȩ da \4  K   \2\16Ȝ  J \21  , %   D\21?  g 9B ] [ v\27 PAJ $1 u  e R = )S  t F  ߀Vl\26  g (AP q  *~  >\6!\20F G c?q\29zݞ\t  \31$\r\19 tΨ e_x3 \208r    \22< R B  p\0 ?  <  \0g +\4H)\17 \17Z-c\6B  Y\18C<  D \11\26 $\11I* MRǖ e.[\12 x#\0 \7K\1  $ P (\1kF\24F \15  2S  4 \25   \30z 0 \7g [/H B   \18z \4 ' \8 u d ȩ J\3q   \30\25 y [2 Tq \17F\n \24 H\23K\t.  i ) \te[+ہ\0g #!\t z\27 \127 U    \1(|   ׿  B Zk' Ω  '    &wI  `y\0    7}\0k \26Z+  57`    E <  \\ ˤg > >WcdA   \26 g V (O  +e  48 2L  ;w\29q C \20h { ͘Tx  ` Ҝ  Ҡ )   \20{   R,   2\27ESp\29 `  P=6\2   Y  z )   i ٍH$ \19ձ  Un$ \t F ţe ] \19H y  u\t <A2m 2 h\12 g  b4;1  B \27c \17a \22ae= J# j#F  l91  ] \t;  ~E`ͦ   V \127 ֟  m[\1  }\127 \5  -\31 /=  \15 \21\6lw 8 Ϙ \\ 0T \8\2\31\12 O  / o_    .\127     o f \3\18  /\24\16  B  O&  fL dE\7\15԰ Ё \23 J\118\1m2 !d  \25\" r \21\2   H y\12) 0! > \18\15m] 2\tCf \4 :=˛ \0| d\20\69 \2\0 9Յ      ىP \149 \30, \31\0 i\25e  <2 | \1 \8\19\0  \30c} c B    ~P~  \3  1 \26\17  \4 P!Nt\n\21F:q\26\14` Aa a  b\12BP  `ǎ)  ?{3  \7\0<  {nǋ_ \23   [   \8 >%    l \15ڞ Z3$ ^ȋ^ N  G \6 a \25  \15~\nD\26\nL  ӎ G   ]\127*\8\127HaN    cu \11/\16E?UW ' )8\23[ \19 () ,L W Qk ,  \3  x   r  b Ņ   1t\28  Q\30T f  \0 c8\t AN \23{\1\3@ a Y \1)   hԻ\24  \110P  \127 \26 i  \19 N ]  OkKm   $     z  2P J     /Pؚ:+\1 }\3 D    G\1277 5ՠ>\20,<) n p e ᝷ \5  MB \0      W I. Fd \rV?\15 \2 Y 4\"2 ߓ\6 \"\8 P / 3| 3 fP   m \31  Mشe\20Q \24P  V i \3r  Έsd  \8q    \26j \16ҧ \3s\127=T \18  tR\4\30\12\6\4!\4j u \\% e/ z\20 \28 Oɉ \15 MR\21G&BJ\t\8 x \t KS G \r$ \15p j> \11+ \0  (  V<? JccUK   ׆ \09$\4z \8:  MƝJe = J \24ba~\29 U\6 'B|\2i >I,\30 D:  \30  ] ]8 h 67 Y\6\25m Z M \\v: y [0= CJ   9      8xp # \rb \8 +M j ,\17 #\28?  5 VV x| !\8A8m 8    a  3 {\22 O   g-\n\7\t 0 \16 \23h b<  *Z  6     h(  # IX)M  v  LZ3q  H VϦ+^I\20 8G Р t ~\6* `   ? J\24j ɀ \1q\4   $4\n9  \21\6^&q  b\16 \19\"\0  #\15̢Z)\23 2\6;g !   * 贻 \16 \6>[\19\t  & t \23   e\18 0\810 \r6 \24L  6 \5\4\30Bb/ - آO3   \14 @/  |_    ={  37A \30  J i07_ g^ ;x  9\8!     ğ 7\127듦>! /  0_\127 - jGP =  r     wa  Mh4 \16g QJ,   ݠ   \11,/w   \26 H   s#    Bϲ\24@ p\11\n\20j  9)\31 Y[?@ 3\8\n]Wr \23 _L NJA\2*  Ĉ\0 A *  .T ˠ   1  DjV \17\0~ X\0\"  Ԭ w\127{\31\2  q\23\1$   g   mw     \11 8 \26\tx՜ u   \6\11 < b.6 R| (  :A  N}*\8_  \127  \1\17  i E\3!\5T  \4\"@\20 \\\29\t  @\28),/-\22\\ \14 [   5\8۟P 1{|\r`b)\5   8  򡓄 (a)\4 A7g   =ik~ -  \12   Z \26T  X  rꎴ S \23\3 ; % (  A\20 X   4 9i \1嚉 X P@[\20<\14  J  \23b\16 \17 \24\\*I\0 \5\3\1 Nn \0    HJ  : \1_ \127 Qn w03=\14  \4  % Y   e R ]qʄ   ̰\0ss5N,\24 \\uϡ < FQ\25   \" \12   \15' \16  \12\24 5p \27 \25   =g d *\31;  o  )  '  ~ #  :  / \rG   o? \r,,  \27 x    ~\28:  \15| \14DQ\29   \31Ʒ y oyǧ   \3  9\23   \19 Rp>B  J\12\r[3Cx\2a    5 ϵ =    =\21KeGd \7\0\16  \1  ' A    \0 (B a @\4 +I  t3\76N  \3  Z% { \2Q\11B V\30z V\0  \17   w' O I \\J9 $^ M  S j' }  ߥp w\15 Z-   Y i\4 Q   zQ\25  {   fk   w  uD \\{\1  o   V    ,  ]  \1 eif^Ӳ \21w    >  \n!v pv F   \28x8x` o~    B \0\16Z<    4 \30 \6\" f Z)s V /&\1\16 Ǉ    \7? t=\7\28 q8D] \r\5WJ  j\7G\157( uQ #  }  E[Q\12 \"\11A< \"    6h ֚   x7  \4^ Ǯ N  4  \n\12 >W 5 Y# َ\127:.a (\5h4g x \2 }  \28 # ;Ym  Ij\n RЇM~  K }\20\19 *4\12[ lrm \127  \23\21OMr\1 N 5 '  \20X^  َ\16X8   !3\23 dg  CCm_ !\7@ } 3\19 Nv>u 豽0ƹ  ­\127 \26Lo \14\1t \7\19شe\6    \n - lٌ  8 p\t  q\0\1v  \t`\4@\7@\r w     ض} \24  \16T$r   \11h 8r  C ס    !  c  p > \8\127 Ph p \11 AJ \22i  E؍\12\12 'd&G \24 \20[ f\\   O; Feِ~\18\14 > n \4\r\8 38d5lh\2 ? \18\28 V  o  _'\17l9r >  ib  8 6   v9kFԋ  ] \31\5\21 3, O \t@\17 V;  {غuܘ  \nD - |~M   yrQ\6 \28\4 H m  \81 `\28v   $+Ɂ f   \287\27=  ٗ  \23 :\30 g\31ڍ\16 \\ \27    o>  \7 033  o \2 F\7   w   8  3q U{  {\15   y  4 + r\306o\25E م d+\30 _X     v17 D  @\8\7 D<DY \t\8E š\2  y\7    L\ne) `\8) jtH\27 7H A Y   ̙8  \18dz(*\14   H  E C}. j  ( \25ѝPg\127ޞ j#\0 \7N\3\26   D S\127 * #@$w|n   ' R  -\8̨$   i /   {C \27N !< \12$T X u  \\Ǯ] $  6 :9  \29 \25\25 \" 5K) L   \21       S \27\t Ӿ`+   @R   ҖMU~   \nA 0  $\n/x   \18P\t   bff\4 ] \2\63 (A \19 ӯ=\23 |օP\t  \r n  S   h   | n7   & ׺   6\19`>A   = C\27:e \\;!\7\t  Y;MEsp\11 \6l r\25  J+{     t  Ĺ̹   \8a[ s\\Y 7+0~Ѥ / 8I wr  k \22 g y\15\22 f\18 s\23 jꡯ- - U  & & J[  l3\17H2X\23fƜ! \8 $ \22  .  W ?e7<O E\3s\127   zg#0 w 9Qۀ\25\20A % \19 1U   v \11\8HG\23[H ( \20  Ƙ  mNm ]h:& F \19:   V3\4 g   , 0g f8~ |}~    &  ȑ\23\14q\26 w` \8; \127\15z   uE eN:\4'm\127 \25\1Z\12@Y ^   \29dF\18  Ͼ  J\2013 \14\2  @ \2p 6  a6  \216 A    G\8  @ gf\"!  o    W\1   \25 \25\127 N  H\0^   e   u \1\3  \19   ל T8   㺍*\26  տ 7: Ʉ #    ;̞ \tB \8id Rg\31)\r-VX $Ӱ  4 # \20d /D ] - Uz My}   \30]   uCA e  4  \" \22 G  Xev\28  f'    >N   y\11&  \24\20 Y~E\14E\14r \17  L5 \11=\28\27    C  \5\r\18>\16͂ _5   \25' \18' K  \2^& > 9 |/  \28     눓\24D b     \24ō  HD       \0 Ev\3 :\r  ± v \3)P   ?  h Y  E \\  k   \7H, \3\26\8Y   d  \30\4)E   \17 =\19 \19\16\18X    c+ؿo\r   atє \20 X 0 ^*(&f\27   V,  ԟ\11$ 4\0\11 I R  Ҩ   $ &} \1(\24PQ $ \28# b`6 ? ~\12 ,\11;Xb\6ů\1> l\27\127 d\14\0\30N  qS\127  /@ੌ eH    -)%0>\29 \11|H  D+ \15ߜ F  \20 K\2@d  r  L\23 Ѧ\5! փOԻ >Ol\26(%( \8H \0 \16 + Q [  =P \26 \0 I 0 6f n󰨻Z  \"kD ̨ {XXh V7&\27 Gi\33O SRN\26  ) 2 $'    \\| ]4A6\26\29*. \14 8\23\t  L 8  8'y  C\27\25/ AG \17De]P\19bWV\28\4\17\0 Y 9KLB+F\16   \8  ہ <  \tN %N  φ$  \14|~\25 ,   t :vO\19͕\14  \14 ^\12\21+ \29 \2|\209 >     \29\3\18 Ku(\11e%*b  @   ʖ\3 \18 tJ  \\ \2 N   \22 \3 b \t \14\22\tl\24`\27p  HNv    \25   !8 5\26\5   .\30\127|\rO<  F= 'M6@\5\31 ʚ   \\~ \169   5  q$ ϧ  gdj C ؉\16E1   \29\53 \7 0B  \"  ! Q \2 \12/A0 G\t  `\8   \0  C \15 O   8 7 ) \1\0Y\236  ~ ? \2   Ar&l&  ﴽ]   4N Ժ \18d       Ek\r 0 \19 ` \18X^^E    \4 \0b\5 \2 'oh `Q \20p\150&'x \19 (  ܑ 3 bW]7-(  \28 '  r    Y  \17\19 H  \26bm  vۤ R\26 \0 ۠.  E y[ ͥ\"  f*L\0RS\17 a iO 2  `  ]B S \4     \0 \16 `\0    { myY\5\2 G {  \17 ޺ \16`p)\0  \4\127  N   )\24\0 ~@ w  \127 H \127\1\5; n\18\29 v  |n\t  \4T @'\12 غV \1 -\17AH\6 \6  \11\11\rZ u1:V   ќ* \20 d Ļ   x\25T  YOE N \20v\\   \r P kr     \6 \14j/ A8 3\24B\nx   F \21 V و\16 \t \r \14.     \n =\26J  އ\0 4\8d  \11$ r  ' a\20:1  p  B؋M\0 L\22`l ظz \nC\2 `\8bh\5  \8  T $   >@ - \31 -   ɤ  $\t\0n\16 Ƚ\8^~\3% (ÿ u ,= F}\\  m\30 S\30 \15\16 \"\18)8   e\t \7 1cu    \22M͌ \20  u\r F ި\12A   nÅ 0L 'ǧS @ܼ\15Ad  \\>\127@ < \28  \20º\201! ) \27!j ]  1\24 \20 z\12 :o @e F3v \22 \3i;  \3i×\18 Z\23,Wr p K   : \26  Y  :)\2  6 \19c \26\0 \3 \186+q \26Hz  : YU ;P \16$ >#^\5  @   N  \127 \5\0'\8D  \4o}յX ?\2 7 \5 F\18  \4 \8duZ <\14 e \3   8f(\r(%\1 \0R u\26XZX  \23n  b O N  / \7  9-c.     \118 A\r\12J v֜*\21-!\30\20 M IS} (Rh b k!  \16Q     K  Zs\1 ?0 cc\"F\4 \15~   i\28ӶmJ      A I q\3  V H\16\15 Upt\14I\16\26   n\4\16 \24ˏs z  L\26:\1    ̊  \24z  C|\2^ +  ~ߩ    \1 \r\2 \8,  \6 3   \20X \22D *\0Hډn 9i I L O\12څ\t \20t  \19\tX M Ę ]G  0 v kt^  #\30 C RY P ]/ ĳG\\ .   *+  I 9\7\15  BG س  *a z\26 v F#D \29#  % \t\4   m 3\19\31n\\B k    O 3!  inv u 9UDή!q  '    9\127 N     ZJ\3\6T   \\  B  F.N \1728 <  cV\31 \2\" T   h\0H\27   \22     u_\4  \19\4  \5 \1 \0\12 XC * \0 \12\24FJ\5\16CH\15*  S  \16^  א\20 s) \"  % \126  d ] \12 x   2\5 :   \11B VsТ  !\6 \17  \t ٌ j% beǡ\4I   \7F  8  mP\1p nd t{ \19  Z 4\rd:EYt \\ R '  L.  }   a{-R\18: \16  \127\16@\0\"az:V A3@, `   ^\7 c     \4   \11\n  =o=e7 IJ\7  ]}\17 \127 eB g3 g Ĺ  a GHH;   c \7P  F u\7 ~ߛ _^y\r\127     \5V\\_]Ϝ J  \24\2\15藿*\n *7 \20 A YM> \12 \25q   it:1Z z \4 J 5 A    /W B D A   \29 Q\t<D  \14ɩы   l    \7C  sF  \12y 0u &s \3 ##\21  oǗ> e\81\2 c   }  \12 \2  C  \"I\14\2\31 /~*/\19   $\11\0 \15     ƪ\\      V\tν 4  Ǯ   \26 \"<  \28  \7    b  ~ ո   Q*\25 m  v b  NX 3۱Ϧ  ;    \\ p eь$шc 0T  \18 = (VHb\5V     M^l \24#\15vt\17 q?2/Fg&~EW l f  fMG\0Z l\7g\30 \3  T \16\20  \20\8A S\31\0k     b \27  Oߍ | [\16\"  1 8 , MLaj  V  {   \2    E迾1\127\t I# q q 7\2  ֺE\24  -\12|\\MM q  \12 餷   w /} \15) 5 Dce  7     = Az  \18 =gm  \23m  T l6!M h ǚ  \4  D f7 {X  \16 % \28t \17 \0 xx Y ֌86\6\29q I%\12m\30 9 ?U   J)# ǜ\r H؞\4 1K!aԂ] .s Q ̈  p9\19 , rg +  \1\18   \\\19\23\t 0 3\25\r '9  )f \15\"H   S  ̿   \19 & ?v\28  6L6W  Ͽ\30 < \26\8(LN   _}\16\31  \31\19!&}   X  \14L\tk   \\ '  E\0 2 W}\t, \3u \127 ̭r  ;pl   H\25 V\23\127  \15⮯=a˂\30   t   GE 0  #  v  Ѡ\17\09~U  l Tꢿ 6  O a    \29 \5 w\25-+  | \26  I !, ~ǎ 1 \31 G  \127}  ! bv  q B   \31 x K  S  \4 V\23Ji    ѿ \28 =  \22  \17 )u 'N &  [  \29\0  #Z K \4 nҺ  \28\17Ϻ R  :\0\3      S e f     Z7cB      v D \t\12 ۰ ^z z q ̸Q揃\7 U%ɾ  k `\"  #(  \2녳A  Q \rX   ? ki }ʅ7% $   $({   u X MF  \0\n\8$-\28OR  y\25:  m \12     z 4o ' p   \5 x6.  L  .\24@P*   \5   oj  @4 '    =! ȓz\3< 3\0s<   jK +\31a      > s { 64 ]ئ:   h4B\28;  v \3  Lx\"W L\24$ӫ urj]  \6\t 7 \28.  \22^BH\3GO b >3  H\127  e)(   Tk 枰\19\1 r\19O \18 Q   ,s^\n  2 z 1 Q  J f+  |۸\1;e?\t  ɘ3d !  s (\8\18    \12 mYBږ%V 9\3\24 \6\2\21 H W4  \03[&0:6 0J    c E\18\31       Dȱ\0  o: ໞ  F\0p \4\"x o@U~K ft    w~   y\2 n\4O\nh[ Jχ \1h   \5c҂  ;\"t  iK;\29+ TX \11\24  4 lY    t:\20  +S l  \"9\19  \27 D\12 \t\22D ub ,    A\20k g  ϧ  .S i'   `hM   G  P\nM@rp\16&\88r^} S (  ĺ4\1   j ?  _ w z \"1 \3 {v   \17D l 7\2  >\11   o //,  $\n.ժ\25]  ˽[  U T h7:  >  e  3 r   q`  w   b\8 \31-H\5\22p [Iɂ  S\4 \15\8op6Ns\3\0; |Y\0`a\29{\25 V+  b\11+  ~  \5 \6 \29\25\22 y.( \17.%\30 \" 8\23 ݧ,SPh\19\25 \16 \5\"P\260 rI6i\3D L\6R \4     ~\r   }ZH_0s(Kt}ҽ    \127#\0 7\3u\16   8I  \n jՍ    {민 .}ʙ   ۋ\r &   \29S\21   } x׻8 \\O    \t'  \5Pp q M\\PRZ|   yQ\6 Q? ŉ @ =A J ݎ     9  \29 \1  lPА ]1n  \23\24\2'$  )  ^  \21 蒋*AZ \t\"3L l  IB\8`  \18  ɯ   G\18\18e\31 Y  KU  \127   \27\1    Wy Su  +(  I;& g> 2q s/  gn   ( % Hdi    \6 ~ a  \1 Ra  \14\23%ƈ  o I E5 >\22   \19\3*  QQ  \17Dc3K  pÚ   h wQ        v @! \26 RQ C 3  ]+ tʥ \28^@ +   \12 \16Ҳ) (5 \5 \21Z 6 .   \30   \29P*i  \15V-  z\29\127 c\27 \127#\0|  02    \r~\31 \127 f\rp'\1H M   I\26\25\29 \5@ f3 } x \0 p  \\ \15m: \3  \" P8'x  H\127 2\11^\1 \21  \" \"% 0 \12]q  \20 t\t   T \23  G} ^ \16 ]WkM\25 QsjT¹;\18e |6E  C  F\229  \16dg , $r B  (\nTD \5F z\28 Y q \211 $ȗ$\24` % ,~! |   Ϳ\17\0    u   } \27 n Lo%!/bm   v q  ,  \0      ǹ,\1\26 ==d /   C  o   \\ =     $\23 \5} \8\30^\23\12 \12\3  8 8\20$  \1J : \26 ߭  ?:\20\18  6\2  \11\2\0p \5 \4\7\14 _   M  R\18r+\17|@YI9 !$rAn\64 \\- -   Q@ 1\31ԬͱJ   \3 )kc 1\6 \16\5d ə5  \" ͥ5   Z `zΜ8   U J  \83 B  ~J\14 9  i\26l=     #  @! 8 l\14\1\tb \12MH߫  \7 v \n    l \14\19f\1 \29\1 =I \127  scm\4  ]  rq W\\ ^\127ee.  }\127 \1     \127     geO\22\4 qQ4m  ~\4 t   \21 k  e >\127       왦 W  \26 t\0  < y\r\19\19\23i\0 v  |o  Z 1_O  (Z   G \26   ] ? A ƕ <w  \11 o  F  5v ϼ    S  (  { }Sܗ\28< H=\27 \7\27\8 \17  \8   3 뼜ʻ 62  k dY q\t6   X\27kcm    6   X\27kcm    6   X\27kcm    6   X\27kcm    6   X\27kcm    6   X\27kcm    6   X\27kcm    6   X   _\"   c5\12 \0\0\0\0IEND B` ")
local result2 = result:Gradient({ ["0"] = { Color = Color3.fromHex("#0b1120"), Transparency = 0.12 }, ["100"] = { Color = Color3.fromHex("#0b1120"), Transparency = 0.12 } }, { Rotation = 90 })
local result3 = result:Gradient({ ["0"] = { Color = Color3.fromHex("#0c1a3a"), Transparency = 0 }, ["100"] = { Color = Color3.fromHex("#1e3a8a"), Transparency = 0 } }, { Rotation = 90 })
result:AddTheme({
	Name = "TieDev",
	Text = Color3.fromHex("#ffffff"),
	Accent = result3,
	Background = result2,
	Button = Color3.fromHex("#1d4ed8"),
	Checkbox = Color3.fromHex("#3b82f6"),
	Dialog = Color3.fromHex("#0f172a"),
	ElementBackground = Color3.fromHex("#111b33"),
	ElementBackgroundTransparency = 0.3,
	Icon = Color3.fromHex("#60a5fa"),
	LabelBackground = Color3.fromHex("#0c1a3d"),
	LabelBackgroundTransparency = 0.8,
	Outline = Color3.fromHex("#3b82f6"),
	PanelBackground = Color3.fromHex("#3b82f6"),
	PanelBackgroundTransparency = 0.94,
	Placeholder = Color3.fromHex("#94a3b8"),
	Primary = Color3.fromHex("#3b82f6"),
	Slider = Color3.fromHex("#3b82f6"),
	SliderIcon = Color3.fromHex("#1e3a8a"),
	Toggle = Color3.fromHex("#3b82f6")
})
result:SetTheme("TieDev")
local Window = result:CreateWindow({
	Title = "TieDev",
	Acrylic = false,
	Author = "Murder Mystery 2",
	Background = "rbxasset://FVLV2/tiedev.png",
	BackgroundImageTransparency = 0.7,
	Folder = "FVLV2",
	HideSearchBar = false,
	Icon = "rbxasset://FVLV2/tiedev.png",
	IconRadius = 1,
	IconSize = 27,
	MaxSize = Vector2.new(850, 560),
	MinSize = Vector2.new(320, 240),
	Radius = 18,
	Resizable = true,
	ShadowTransparency = 0.3,
	SideBarWidth = 185,
	Size = UDim2.fromOffset(320, 240),
	Theme = "TieDev",
	Topbar = { ButtonsType = "Default", Height = 56 },
	Transparent = true,
	User = { Anonymous = false, Enabled = false }
})
Window:Tag({ Title = "@dunnooneking", Color = Color3.fromHex("#ffffff"), Icon = "youtube", Radius = 6 })
Window:Tag({ Title = "Mobile & PC", Color = Color3.fromHex("#ffffff"), Icon = "smartphone", Radius = 6 })
task.spawn(function(...)
	local descendants = Window.UIElements.Main:GetDescendants()
	for i3, v3 in ipairs(descendants) do
	end
	-- [envlog] error: protected:527: attempt to index function with 'Wait'
end)
Window:SetBackgroundTransparency(0.25)
task.spawn(function(...)
	local RunService = game:GetService("RunService")
	local Background = Window.UIElements.Main:FindFirstChild("Background")
	local children3 = Background:GetChildren()
	for i4, v4 in ipairs(children3) do
	end
	RunService.RenderStepped:Wait()
	local Background2 = Window.UIElements.Main:FindFirstChild("Background")
	local children4 = Background2:GetChildren()
	for i5, v5 in ipairs(children4) do
	end
	RunService.RenderStepped:Wait()
	-- [envlog] the statements above repeat forever (loop)
end)
task.spawn(function(...)
	local TweenService = game:GetService("TweenService")
	local Topbar = Window.UIElements.Main:FindFirstChild("Topbar", true)
	local Left = Topbar:FindFirstChild("Left")
	local Title = Left:FindFirstChild("Title")
	local Title2 = Title:FindFirstChild("Title")
	Title2:FindFirstChild("FVLTitleSheen")
end)
Window:EditOpenButton({
	Title = "TieDev",
	Color = ColorSequence.new(Color3.fromHex("#1e3a8a"), Color3.fromHex("#60a5fa")),
	CornerRadius = UDim.new(0, 16),
	Draggable = true,
	Enabled = true,
	Icon = "rbxasset://FVLV2/tiedev.png",
	OnlyMobile = false,
	StrokeThickness = 2
})
_G.FVLV2 = Window
-- isfolder("WindUI/FVLV2/hud") -> false
makefolder("WindUI/FVLV2/hud")
Window.Tab = function(arg3, arg4)
	Window.Tab(arg3, arg4)
end
result.Notify = function(arg5, arg6)
end
task.delay(4, function(...)
end)
task.delay(20, function(...)
end)
task.spawn(function(...)
	local WindUINotifications = CoreGui:FindFirstChild("WindUI/Notifications", true)
	local Frame = WindUINotifications:FindFirstChildWhichIsA("Frame")
	local children5 = Frame:GetChildren()
	for i7, v7 in ipairs(children5) do
		task.spawn(function(...)
			local ImageLabel = v7:FindFirstChildWhichIsA("ImageLabel")
			ImageLabel:FindFirstChild("FVLToastRamp")
		end)
	end
	Frame.ChildAdded:Connect(function(child)
		task.spawn(function(...)
			local ImageLabel47 = child:FindFirstChildWhichIsA("ImageLabel")
			ImageLabel47:FindFirstChild("FVLToastRamp")
		end)
	end)
end)
task.spawn(function(...)
	local Background3 = Window.UIElements.Main:FindFirstChild("Background")
	local children6 = Background3:GetChildren()
	for i8, v8 in ipairs(children6) do
	end
	local Topbar2 = Window.UIElements.Main:FindFirstChild("Topbar", true)
	local descendants2 = Topbar2:GetDescendants()
	for i9, v9 in ipairs(descendants2) do
	end
	RunService.RenderStepped:Wait()
	local Background4 = Window.UIElements.Main:FindFirstChild("Background")
	local children7 = Background4:GetChildren()
	for i10, v10 in ipairs(children7) do
	end
	local Topbar3 = Window.UIElements.Main:FindFirstChild("Topbar", true)
	local descendants3 = Topbar3:GetDescendants()
	for i11, v11 in ipairs(descendants3) do
	end
	RunService.RenderStepped:Wait()
	-- [envlog] the statements above repeat forever (loop)
end)
-- isfile("WindUI/FVLV2/config/fvl_hud.json") -> false
-- isfile("WindUI/FVLV2/hud/autosave.json") -> false
local Config = Window.ConfigManager:CreateConfig("autosave")
Config:SetAsCurrent()
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local HttpService = game:GetService("HttpService")
local CollectionService = game:GetService("CollectionService")
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "FVLESP"
ScreenGui.IgnoreGuiInset = true
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = CoreGui
local players = Players:GetPlayers()
for i14, v14 in ipairs(players) do
	local descendants4 = v14.Character:GetDescendants()
	for i15, v15 in ipairs(descendants4) do
		v15.Visible = false
		local changedSignal = v15:GetPropertyChangedSignal("Visible")
		local connection = changedSignal:Connect(function(arg7)
		end)
	end
	local connection2 = v14.Character.DescendantAdded:Connect(function(descendant)
		descendant.Visible = false
		local changedSignal3 = descendant:GetPropertyChangedSignal("Visible")
		changedSignal3:Connect(function(arg292)
		end)
	end)
	local connection3 = v14.CharacterAdded:Connect(function(character)
		local descendants41 = character:GetDescendants()
		for i102, v102 in ipairs(descendants41) do
			v102.Visible = false
			local changedSignal4 = v102:GetPropertyChangedSignal("Visible")
			changedSignal4:Connect(function(arg293)
			end)
		end
		character.DescendantAdded:Connect(function(descendant4)
			descendant4.Visible = false
			local changedSignal5 = descendant4:GetPropertyChangedSignal("Visible")
			changedSignal5:Connect(function(arg296)
			end)
		end)
	end)
end
local connection4 = Players.PlayerAdded:Connect(function(player)
	player.CharacterAdded:Connect(function(character9)
		local descendants45 = character9:GetDescendants()
		for i117, v117 in ipairs(descendants45) do
			v117.Visible = false
			local changedSignal6 = v117:GetPropertyChangedSignal("Visible")
			changedSignal6:Connect(function(arg297)
			end)
		end
		character9.DescendantAdded:Connect(function(descendant5)
			descendant5.Visible = false
			local changedSignal7 = descendant5:GetPropertyChangedSignal("Visible")
			changedSignal7:Connect(function(arg298)
			end)
		end)
	end)
end)
local connection5 = workspace.DescendantAdded:Connect(function(descendant2)
end)
local connection6 = workspace.DescendantRemoving:Connect(function(descendant3)
end)
local Remotes = ReplicatedStorage:FindFirstChild("Remotes")
local Gameplay = Remotes:FindFirstChild("Gameplay")
local PlayerDataChanged = Gameplay:FindFirstChild("PlayerDataChanged")
local connection7 = PlayerDataChanged.OnClientEvent:Connect(function(arg8)
end)
local TeleportService = game:GetService("TeleportService")
local UserInputService = game:GetService("UserInputService")
local connection8 = UserInputService.InputBegan:Connect(function(input, gameProcessed)
end)
task.spawn(function(...)
	task.wait(0.25)
	local mouseButtonsPressed = UserInputService:GetMouseButtonsPressed()
	for i16, v16 in ipairs(mouseButtonsPressed) do
	end
	result.CurrentInput = nil
	task.wait(0.25)
	local mouseButtonsPressed2 = UserInputService:GetMouseButtonsPressed()
	for i17, v17 in ipairs(mouseButtonsPressed2) do
	end
	result.CurrentInput = nil
	task.wait(0.25)
	-- [envlog] the statements above repeat forever (loop)
end)
local connection9 = Players.LocalPlayer.CharacterAdded:Connect(function(character2)
	character2:WaitForChild("Humanoid")
	task.wait(0.5)
	character2:FindFirstChildOfClass("Humanoid")
end)
local VirtualUser = game:GetService("VirtualUser")
_G.__FVLBuild = "gatestyle-38"
_G.__FVLGen = 1
task.spawn(function(...)
	task.wait(15)
	task.wait(3)
	-- [envlog] the statements above repeat forever (loop)
end)
task.spawn(function(...)
	local response3 = game:HttpGet("https://thumbnails.roblox.com/v1/users/avatar-headshot?userIds=0&size=150x150&format=Png&isCircular=false")
	response3:match("\"imageUrl\"%s*:%s*\"([^\"]+)\"")
	task.wait(4)
	-- [envlog] error: protected:4389: attempt to call a nil value
end)
task.spawn(function(...)
	local RoundTimerPart = workspace:WaitForChild("RoundTimerPart", 30)
	RoundTimerPart:GetAttribute("Time")
	RoundTimerPart:GetAttribute("RoundLength")
	-- [envlog] error: protected:4800: attempt to compare number < userdata
end)
local connection10 = Players.LocalPlayer.CharacterAdded:Connect(function(character3)
	local Humanoid24 = character3:WaitForChild("Humanoid", 5)
	Humanoid24.Died:Connect(function()
		local players47 = Players:GetPlayers()
		for i118, v118 in ipairs(players47) do
			local Backpack31 = v118:FindFirstChildOfClass("Backpack")
			Backpack31:FindFirstChild("Knife")
		end
	end)
end)
local connection11 = RunService.Heartbeat:Connect(function(deltaTime)
	local players36 = Players:GetPlayers()
	for i103, v103 in ipairs(players36) do
		v103.Character:FindFirstChild("HumanoidRootPart")
	end
end)
local ClientServices = ReplicatedStorage:WaitForChild("ClientServices")
local WeaponService = ClientServices:WaitForChild("WeaponService")
require(WeaponService)
local Humanoid = Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
local Animator = Humanoid:FindFirstChildOfClass("Animator")
local connection12 = Animator.AnimationPlayed:Connect(function(arg9)
end)
local connection13 = Players.LocalPlayer.CharacterAdded:Connect(function(character4)
	character4:WaitForChild("Humanoid")
	task.wait(0.3)
	local Humanoid25 = Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
	local Animator2 = Humanoid25:FindFirstChildOfClass("Animator")
	Animator2.AnimationPlayed:Connect(function(arg294)
	end)
end)
local Humanoid2 = Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
local connection14 = Humanoid2.Died:Connect(function()
end)
local connection15 = Players.LocalPlayer.CharacterAdded:Connect(function(character5)
	character5:WaitForChild("Humanoid")
	local Humanoid26 = character5:FindFirstChildOfClass("Humanoid")
	Humanoid26.Died:Connect(function()
	end)
end)
local mouse = Players.LocalPlayer:GetMouse()
local Tab = Window:Tab({ Title = "Combat", Border = true, Icon = "lucide:shield", IconColor = Color3.fromHex("#6E6E7B"), IconShape = "Square" })
local Tab2 = Window:Tab({
	Title = "Crosshair",
	Border = true,
	Icon = "lucide:crosshair",
	IconColor = Color3.fromHex("#6E6E7B"),
	IconShape = "Square"
})
local Tab3 = Window:Tab({
	Title = "Skin Changer",
	Border = true,
	Icon = "lucide:sword",
	IconColor = Color3.fromHex("#6E6E7B"),
	IconShape = "Square"
})
local descendants5 = Window.UIElements.Main:GetDescendants()
for i19, v19 in ipairs(descendants5) do
end
task.spawn(function(...)
	RunService.RenderStepped:Wait()
	local descendants6 = Window.UIElements.Main:GetDescendants()
	for i20, v20 in ipairs(descendants6) do
	end
	RunService.RenderStepped:Wait()
	-- [envlog] the statements above repeat forever (loop)
end)
local Tab4 = Window:Tab({
	Title = "Buttons",
	Border = true,
	Icon = "lucide:gamepad-directional",
	IconColor = Color3.fromHex("#6E6E7B"),
	IconShape = "Square"
})
local Tab5 = Window:Tab({ Title = "ESP", Border = true, Icon = "solar:eye-bold", IconColor = Color3.fromHex("#6E6E7B"), IconShape = "Square" })
local Tab6 = Window:Tab({
	Title = "Fling & Teleport",
	Border = true,
	Icon = "solar:bolt-bold",
	IconColor = Color3.fromHex("#6E6E7B"),
	IconShape = "Square"
})
local Tab7 = Window:Tab({
	Title = "Autofarm",
	Border = true,
	Icon = "solar:dollar-minimalistic-bold",
	IconColor = Color3.fromHex("#6E6E7B"),
	IconShape = "Square"
})
local Tab8 = Window:Tab({
	Title = "Player",
	Border = true,
	Icon = "solar:user-bold",
	IconColor = Color3.fromHex("#6E6E7B"),
	IconShape = "Square"
})
local Tab9 = Window:Tab({
	Title = "Visuals",
	Border = true,
	Icon = "lucide:sparkles",
	IconColor = Color3.fromHex("#6E6E7B"),
	IconShape = "Square"
})
Tab9:Section({ Title = "Sound Changer" })
Tab9:Toggle({
	Title = "Error Sound",
	Desc = "A cue when something fails or gets refused.",
	Flag = "Toggle_Sound_Errors",
	Type = "Toggle",
	Value = true,
	Callback = function(state, arg11)
	end
})
Tab9:Toggle({
	Title = "Gun Drop Sound",
	Desc = "A cue when the sheriff dies and the gun drops. Useful with the window closed.",
	Flag = "Toggle_Sound_Gun_Drop",
	Type = "Toggle",
	Value = true,
	Callback = function(state, arg13)
	end
})
Tab9:Toggle({
	Title = "Button Click Sound",
	Desc = "A click when you press an on-screen button.",
	Flag = "Toggle_Sound_Button_Click",
	Type = "Toggle",
	Value = true,
	Callback = function(state, arg15)
	end
})
Tab9:Toggle({
	Title = "Toggle Sound",
	Desc = "A click when you flip a switch in the menu.",
	Flag = "Toggle_Sound_Switches",
	Type = "Toggle",
	Value = true,
	Callback = function(state, arg17)
	end
})
local Tab10 = Window:Tab({
	Title = "Keybinds",
	Border = true,
	Icon = "lucide:keyboard",
	IconColor = Color3.fromHex("#6E6E7B"),
	IconShape = "Square"
})
local Tab11 = Window:Tab({
	Title = "Settings & Configs",
	Border = true,
	Icon = "solar:settings-bold",
	IconColor = Color3.fromHex("#6E6E7B"),
	IconShape = "Square"
})
task.spawn(function(...)
	local descendants7 = Window.UIElements.Main:GetDescendants()
	for i22, v22 in ipairs(descendants7) do
	end
	RunService.RenderStepped:Wait()
	local descendants8 = Window.UIElements.Main:GetDescendants()
	for i23, v23 in ipairs(descendants8) do
	end
	RunService.RenderStepped:Wait()
	-- [envlog] the statements above repeat forever (loop)
end)
Tab5:Section({ Title = "ESP — See Through Walls" })
Tab5:Toggle({
	Title = "ESP Outline",
	Desc = "Glowing outline on every player through walls.",
	Flag = "Toggle_ESP_Outline",
	Type = "Toggle",
	Value = false,
	Callback = function(arg18, arg19)
		local players2 = Players:GetPlayers()
		for i25, v25 in ipairs(players2) do
			local Backpack = v25:FindFirstChildOfClass("Backpack")
			Backpack:FindFirstChild("Knife")
			local players3 = Players:GetPlayers()
			for i26, v26 in ipairs(players3) do
				local Backpack2 = v26:FindFirstChildOfClass("Backpack")
				Backpack2:FindFirstChild("Gun")
				local players4 = Players:GetPlayers()
				for i27, v27 in ipairs(players4) do
					local descendants9 = v27.Character:GetDescendants()
					for i28, v28 in ipairs(descendants9) do
					end
				end
			end
		end
		-- [envlog] error: protected:1700: attempt to compare number <= userdata
	end
})
Tab5:Toggle({
	Title = "Full Body ESP",
	Desc = "Fills the whole body in the role colour.",
	Flag = "Toggle_Full_Body_ESP",
	Type = "Toggle",
	Value = false,
	Callback = function(arg20, arg21)
		local players5 = Players:GetPlayers()
		for i29, v29 in ipairs(players5) do
			local Backpack3 = v29:FindFirstChildOfClass("Backpack")
			Backpack3:FindFirstChild("Knife")
			local players6 = Players:GetPlayers()
			for i30, v30 in ipairs(players6) do
				local Backpack4 = v30:FindFirstChildOfClass("Backpack")
				Backpack4:FindFirstChild("Gun")
				local players7 = Players:GetPlayers()
				for i31, v31 in ipairs(players7) do
					local descendants10 = v31.Character:GetDescendants()
					for i32, v32 in ipairs(descendants10) do
					end
				end
			end
		end
		-- [envlog] error: protected:1700: attempt to compare number <= userdata
	end
})
Tab5:Toggle({
	Title = "Display Name ESP",
	Desc = "Their display name above their head, in the role colour.",
	Flag = "Toggle_Display_Name_ESP",
	Type = "Toggle",
	Value = false,
	Callback = function(arg22, arg23)
		local players8 = Players:GetPlayers()
		for i33, v33 in ipairs(players8) do
			local Backpack5 = v33:FindFirstChildOfClass("Backpack")
			Backpack5:FindFirstChild("Knife")
			local players9 = Players:GetPlayers()
			for i34, v34 in ipairs(players9) do
				local Backpack6 = v34:FindFirstChildOfClass("Backpack")
				Backpack6:FindFirstChild("Gun")
				local players10 = Players:GetPlayers()
				for i35, v35 in ipairs(players10) do
					local descendants11 = v35.Character:GetDescendants()
					for i36, v36 in ipairs(descendants11) do
					end
				end
			end
		end
		-- [envlog] error: protected:1700: attempt to compare number <= userdata
	end
})
Tab5:Toggle({
	Title = "Dropped Gun ESP",
	Desc = "Shows the gun on the floor after the sheriff dies.",
	Flag = "Toggle_Dropped_Gun_ESP",
	Type = "Toggle",
	Value = false,
	Callback = function(state, arg25)
		if state then
			local descendants12 = workspace:GetDescendants()
			for i37, v37 in ipairs(descendants12) do
			end
		end
	end
})
Tab5:Toggle({
	Title = "Trap ESP",
	Desc = "Shows traps other players hid around the map.",
	Flag = "Toggle_Trap_ESP",
	Type = "Toggle",
	Value = false,
	Callback = function(state, arg27)
		if state then
			local descendants13 = workspace:GetDescendants()
			for i38, v38 in ipairs(descendants13) do
			end
		end
	end
})
Tab5:Section({ Title = "Tracers & Distance" })
Tab5:Toggle({
	Title = "Tracers",
	Desc = "Draws a line from the bottom of your screen to every player, in their role colour.",
	Flag = "Toggle_ESP_Tracers",
	Type = "Toggle",
	Value = false,
	Callback = function(state, arg29)
		if state then
			local connection16 = RunService.RenderStepped:Connect(function(deltaTime2)
			end)
		else
			connection16:Disconnect()
		end
	end
})
Tab5:Toggle({
	Title = "Distance",
	Desc = "How many studs away each player is, written under their feet.",
	Flag = "Toggle_ESP_Distance",
	Type = "Toggle",
	Value = false,
	Callback = function(state, arg31)
		if state then
			local connection17 = RunService.RenderStepped:Connect(function(deltaTime3)
			end)
		else
			connection17:Disconnect()
		end
	end
})
Tab5:Toggle({
	Title = "Off-Screen Arrows",
	Desc = "Arrows around your crosshair pointing at the players you cannot see - including the ones behind you.",
	Flag = "Toggle_ESP_Arrows",
	Type = "Toggle",
	Value = false,
	Callback = function(state, arg33)
		if state then
			local connection18 = RunService.RenderStepped:Connect(function(deltaTime4)
			end)
		else
			connection18:Disconnect()
		end
	end
})
Tab5:Section({ Title = "ESP Colours" })
Tab5:Colorpicker({
	Title = "Innocent",
	Desc = "Outline colour for everyone else",
	Default = Color3.fromRGB(0, 255, 8),
	Flag = "Colorpicker_Innocent",
	Callback = function(arg34, arg35)
		local players11 = Players:GetPlayers()
		for i39, v39 in ipairs(players11) do
			local Backpack7 = v39:FindFirstChildOfClass("Backpack")
			Backpack7:FindFirstChild("Knife")
			local players12 = Players:GetPlayers()
			for i40, v40 in ipairs(players12) do
				local Backpack8 = v40:FindFirstChildOfClass("Backpack")
				Backpack8:FindFirstChild("Gun")
				local players13 = Players:GetPlayers()
				for i41, v41 in ipairs(players13) do
					local descendants14 = v41.Character:GetDescendants()
					for i42, v42 in ipairs(descendants14) do
					end
				end
			end
		end
		-- [envlog] error: protected:1700: attempt to compare number <= userdata
	end
})
Tab5:Colorpicker({
	Title = "Sheriff",
	Desc = "Outline colour for the sheriff",
	Default = Color3.fromRGB(0, 153, 255),
	Flag = "Colorpicker_Sheriff",
	Callback = function(arg36, arg37)
		local players14 = Players:GetPlayers()
		for i43, v43 in ipairs(players14) do
			local Backpack9 = v43:FindFirstChildOfClass("Backpack")
			Backpack9:FindFirstChild("Knife")
			local players15 = Players:GetPlayers()
			for i44, v44 in ipairs(players15) do
				local Backpack10 = v44:FindFirstChildOfClass("Backpack")
				Backpack10:FindFirstChild("Gun")
				local players16 = Players:GetPlayers()
				for i45, v45 in ipairs(players16) do
					local descendants15 = v45.Character:GetDescendants()
					for i46, v46 in ipairs(descendants15) do
					end
				end
			end
		end
		-- [envlog] error: protected:1700: attempt to compare number <= userdata
	end
})
Tab5:Colorpicker({
	Title = "Murderer",
	Desc = "Outline colour for the murderer",
	Default = Color3.fromRGB(255, 0, 4),
	Flag = "Colorpicker_Murderer",
	Callback = function(arg38, arg39)
		local players17 = Players:GetPlayers()
		for i47, v47 in ipairs(players17) do
			local Backpack11 = v47:FindFirstChildOfClass("Backpack")
			Backpack11:FindFirstChild("Knife")
			local players18 = Players:GetPlayers()
			for i48, v48 in ipairs(players18) do
				local Backpack12 = v48:FindFirstChildOfClass("Backpack")
				Backpack12:FindFirstChild("Gun")
				local players19 = Players:GetPlayers()
				for i49, v49 in ipairs(players19) do
					local descendants16 = v49.Character:GetDescendants()
					for i50, v50 in ipairs(descendants16) do
					end
				end
			end
		end
		-- [envlog] error: protected:1700: attempt to compare number <= userdata
	end
})
Tab5:Colorpicker({
	Title = "Dropped Gun",
	Desc = "Highlight colour for the dropped gun",
	Default = Color3.fromRGB(0, 153, 255),
	Flag = "Colorpicker_Dropped_Gun_Blue",
	Callback = function(state, arg41)
	end
})
Tab5:Colorpicker({
	Title = "Traps",
	Desc = "Highlight colour for traps",
	Default = Color3.fromHex("#A855F7"),
	Flag = "Colorpicker_Traps",
	Callback = function(state, arg43)
	end
})
local descendants17 = Window.UIElements.Main:GetDescendants()
for i51, v51 in ipairs(descendants17) do
end
Tab6:Section({ Title = "Quick Actions" })
Tab6:Button({
	Title = "Fling Murderer",
	Desc = "Yeet whoever has the knife",
	Icon = "lucide:flame",
	Callback = function(state, arg45)
		if state then
			local players20 = Players:GetPlayers()
			for i52, v52 in ipairs(players20) do
				local Backpack13 = v52:FindFirstChildOfClass("Backpack")
				Backpack13:FindFirstChild("Knife")
				v52.Character:FindFirstChildOfClass("Humanoid")
				Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
				v52.Character:FindFirstChildOfClass("Humanoid")
				v52.Character:FindFirstChild("Head")
				local Accessory = v52.Character:FindFirstChildOfClass("Accessory")
				Accessory:FindFirstChild("Handle")
			end
		else
			local players21 = Players:GetPlayers()
			for i53, v53 in ipairs(players21) do
				local Backpack14 = v53:FindFirstChildOfClass("Backpack")
				Backpack14:FindFirstChild("Knife")
				v53.Character:FindFirstChildOfClass("Humanoid")
				Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
				v53.Character:FindFirstChildOfClass("Humanoid")
				v53.Character:FindFirstChild("Head")
				local Accessory2 = v53.Character:FindFirstChildOfClass("Accessory")
				Accessory2:FindFirstChild("Handle")
			end
		end
	end
})
Tab6:Button({
	Title = "Fling Sheriff",
	Desc = "Yeet whoever has the gun",
	Icon = "lucide:flame",
	Callback = function(state, arg47)
		if state then
			local players22 = Players:GetPlayers()
			for i54, v54 in ipairs(players22) do
				local Backpack15 = v54:FindFirstChildOfClass("Backpack")
				Backpack15:FindFirstChild("Gun")
				v54.Character:FindFirstChildOfClass("Humanoid")
				Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
				v54.Character:FindFirstChildOfClass("Humanoid")
				v54.Character:FindFirstChild("Head")
				local Accessory3 = v54.Character:FindFirstChildOfClass("Accessory")
				Accessory3:FindFirstChild("Handle")
			end
		else
			local players23 = Players:GetPlayers()
			for i55, v55 in ipairs(players23) do
				local Backpack16 = v55:FindFirstChildOfClass("Backpack")
				Backpack16:FindFirstChild("Gun")
				v55.Character:FindFirstChildOfClass("Humanoid")
				Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
				v55.Character:FindFirstChildOfClass("Humanoid")
				v55.Character:FindFirstChild("Head")
				local Accessory4 = v55.Character:FindFirstChildOfClass("Accessory")
				Accessory4:FindFirstChild("Handle")
			end
		end
	end
})
Tab6:Button({
	Title = "Fling All",
	Desc = "Yeet everyone in the server, one after another. Press again to stop",
	Icon = "lucide:flame",
	Callback = function(state, arg49)
		if state then
			local players24 = Players:GetPlayers()
			for i56, v56 in ipairs(players24) do
			end
			task.spawn(function(...)
				v56.Character:FindFirstChildOfClass("Humanoid")
				Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
				v56.Character:FindFirstChildOfClass("Humanoid")
				v56.Character:FindFirstChild("Head")
				local Accessory5 = v56.Character:FindFirstChildOfClass("Accessory")
				Accessory5:FindFirstChild("Handle")
			end)
		else
			local players25 = Players:GetPlayers()
			for i57, v57 in ipairs(players25) do
			end
			task.spawn(function(...)
				v57.Character:FindFirstChildOfClass("Humanoid")
				Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
				v57.Character:FindFirstChildOfClass("Humanoid")
				v57.Character:FindFirstChild("Head")
				local Accessory6 = v57.Character:FindFirstChildOfClass("Accessory")
				Accessory6:FindFirstChild("Handle")
			end)
		end
	end
})
local descendants18 = Window.UIElements.Main:GetDescendants()
for i58, v58 in ipairs(descendants18) do
end
local descendants19 = Window.UIElements.Main:GetDescendants()
for i59, v59 in ipairs(descendants19) do
end
local descendants20 = Window.UIElements.Main:GetDescendants()
for i60, v60 in ipairs(descendants20) do
end
Tab6:Button({
	Title = "Teleport to Murderer",
	Desc = "Instantly go to whoever has the knife",
	Icon = "lucide:crosshair",
	Callback = function(state, arg51)
		if state then
			local players26 = Players:GetPlayers()
			for i61, v61 in ipairs(players26) do
				local Backpack17 = v61:FindFirstChildOfClass("Backpack")
				Backpack17:FindFirstChild("Knife")
				v61.Character:FindFirstChild("HumanoidRootPart")
				Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
				Players.LocalPlayer.Character.HumanoidRootPart.CFrame = (v61.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 3))
			end
		else
			local players27 = Players:GetPlayers()
			for i62, v62 in ipairs(players27) do
				local Backpack18 = v62:FindFirstChildOfClass("Backpack")
				Backpack18:FindFirstChild("Knife")
				v62.Character:FindFirstChild("HumanoidRootPart")
				Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
				Players.LocalPlayer.Character.HumanoidRootPart.CFrame = (v62.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 3))
			end
		end
	end
})
Tab6:Button({
	Title = "Teleport to Sheriff",
	Desc = "Instantly go to whoever has the gun",
	Icon = "lucide:shield",
	Callback = function(state, arg53)
		if state then
			local players28 = Players:GetPlayers()
			for i63, v63 in ipairs(players28) do
				local Backpack19 = v63:FindFirstChildOfClass("Backpack")
				Backpack19:FindFirstChild("Gun")
				v63.Character:FindFirstChild("HumanoidRootPart")
				Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
				Players.LocalPlayer.Character.HumanoidRootPart.CFrame = (v63.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 3))
			end
		else
			local players29 = Players:GetPlayers()
			for i64, v64 in ipairs(players29) do
				local Backpack20 = v64:FindFirstChildOfClass("Backpack")
				Backpack20:FindFirstChild("Gun")
				v64.Character:FindFirstChild("HumanoidRootPart")
				Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
				Players.LocalPlayer.Character.HumanoidRootPart.CFrame = (v64.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 3))
			end
		end
	end
})
Tab6:Section({ Title = "Target Player" })
local players30 = Players:GetPlayers()
for i65, v65 in ipairs(players30) do
end
local Dropdown = Tab6:Dropdown({
	Title = "Target",
	Desc = "Pick a player for the buttons below",
	Multi = false,
	Values = { v65.Name },
	Callback = function(state, arg55)
	end
})
local connection19 = Players.PlayerAdded:Connect(function(player2)
	local players37 = Players:GetPlayers()
	for i104, v104 in ipairs(players37) do
	end
	Dropdown:Refresh({ v104.Name })
	local players38 = Players:GetPlayers()
	for i105, v105 in ipairs(players38) do
	end
	Dropdown2:Refresh({ v105.Name })
end)
local connection20 = Players.PlayerRemoving:Connect(function(player3)
	local players39 = Players:GetPlayers()
	for i106, v106 in ipairs(players39) do
	end
	Dropdown:Refresh({ v106.Name })
	local players40 = Players:GetPlayers()
	for i107, v107 in ipairs(players40) do
	end
	Dropdown2:Refresh({ v107.Name })
end)
Tab6:Button({
	Title = "Fling Player",
	Desc = "Fling whoever you picked above",
	Color = Color3.fromHex("#d6d6d6"),
	Icon = "lucide:zap",
	Callback = function(state, arg57)
	end
})
Tab6:Button({
	Title = "Teleport",
	Desc = "Teleport to the selected player",
	Color = Color3.fromHex("#d6d6d6"),
	Icon = "lucide:navigation",
	Callback = function(state, arg59)
	end
})
Tab6:Toggle({
	Title = "Spam Fling",
	Desc = "Keeps flinging the player picked above until you turn it off",
	Flag = "Toggle_Spam_Fling",
	Type = "Toggle",
	Value = false,
	Callback = function(state, arg61)
	end
})
task.spawn(function(...)
	task.wait(0.5)
	task.wait(0.5)
	-- [envlog] the statements above repeat forever (loop)
end)
local descendants21 = Window.UIElements.Main:GetDescendants()
for i66, v66 in ipairs(descendants21) do
end
Tab7:Section({ Title = "Coin Autofarm" })
Tab7:Toggle({
	Title = "Coin Autofarm",
	Desc = "Walks you around picking up coins.",
	Flag = "Toggle_Coin_Autofarm",
	Type = "Toggle",
	Value = false,
	Callback = function(state, arg63)
		if state then
			local PlayerGui = Players.LocalPlayer:FindFirstChild("PlayerGui")
			local MainGUI = PlayerGui:FindFirstChild("MainGUI")
			local Game = MainGUI:FindFirstChild("Game")
			Game:FindFirstChild("Inventory")
			workspace:GetChildren()
			task.spawn(function(...)
				task.wait(0.1)
				local Remotes2 = ReplicatedStorage:FindFirstChild("Remotes")
				local Extras = Remotes2:FindFirstChild("Extras")
				local GetPlayerData = Extras:FindFirstChild("GetPlayerData")
				GetPlayerData:InvokeServer()
				workspace:GetChildren()
				Players.LocalPlayer.Character:GetChildren()
				Players.LocalPlayer.Character:GetChildren()
				local RoundTimerPart2 = workspace:FindFirstChild("RoundTimerPart")
				RoundTimerPart2:GetAttribute("Time")
				task.wait(0.1)
				local Remotes3 = ReplicatedStorage:FindFirstChild("Remotes")
				local Extras2 = Remotes3:FindFirstChild("Extras")
				local GetPlayerData2 = Extras2:FindFirstChild("GetPlayerData")
				GetPlayerData2:InvokeServer()
				workspace:GetChildren()
				Players.LocalPlayer.Character:GetChildren()
				Players.LocalPlayer.Character:GetChildren()
				local RoundTimerPart3 = workspace:FindFirstChild("RoundTimerPart")
				RoundTimerPart3:GetAttribute("Time")
				task.wait(0.1)
				-- [envlog] the statements above repeat forever (loop)
			end)
			local thread = task.spawn(function(...)
				task.wait(3)
				task.wait(3)
				-- [envlog] the statements above repeat forever (loop)
			end)
		else
			local UpperTorso = Players.LocalPlayer.Character:FindFirstChild("UpperTorso")
			local ODHAutoFarmBodyGyro = UpperTorso:FindFirstChild("ODH Auto Farm BodyGyro")
			local ODHAutoFarmBodyVelocity = UpperTorso:FindFirstChild("ODH Auto Farm BodyVelocity")
			local Humanoid3 = Players.LocalPlayer.Character:FindFirstChild("Humanoid")
			ODHAutoFarmBodyGyro:Destroy()
			ODHAutoFarmBodyVelocity:Destroy()
			Humanoid3.PlatformStand = false
			Players.LocalPlayer.Character:GetChildren()
			Players.LocalPlayer.Character:GetChildren()
			task.spawn(function(...)
				task.wait(0.35)
				local UpperTorso2 = Players.LocalPlayer.Character:FindFirstChild("UpperTorso")
				local ODHAutoFarmBodyGyro2 = UpperTorso2:FindFirstChild("ODH Auto Farm BodyGyro")
				local ODHAutoFarmBodyVelocity2 = UpperTorso2:FindFirstChild("ODH Auto Farm BodyVelocity")
				local Humanoid4 = Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				ODHAutoFarmBodyGyro2:Destroy()
				ODHAutoFarmBodyVelocity2:Destroy()
				Humanoid4.PlatformStand = false
				Players.LocalPlayer.Character:GetDescendants()
				local Humanoid5 = Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
				Humanoid5.PlatformStand = false
				Humanoid5:ChangeState(Enum.HumanoidStateType.GettingUp)
			end)
			task.cancel(thread)
		end
	end
})
Tab7:Slider({
	Title = "Farm Speed",
	Desc = "Meters per second",
	Flag = "Slider_Farm_Speed",
	Step = 1,
	Value = { Default = 25, Max = 25, Min = 5 },
	Callback = function(arg64, arg65)
		-- [envlog] error: protected:9192: attempt to compare number <= userdata
	end
})
Tab7:Section({ Title = "Settings" })
Tab7:Toggle({
	Title = "Performance Mode",
	Desc = "Strips textures, shadows, particles and effects for framerate. Same switch as the one on the Visuals tab.",
	Flag = "Toggle_Farm_Perf_Master",
	Type = "Toggle",
	Value = false,
	Callback = function(state, arg67)
	end
})
Tab7:Toggle({
	Title = "Hop When Server Dies",
	Desc = "Hops to a fresh server when this one empties out mid-farm.",
	Flag = "Toggle_Farm_Dead_Hop",
	Type = "Toggle",
	Value = true,
	Callback = function(state, arg69)
	end
})
Tab7:Toggle({
	Title = "Anti-AFK",
	Desc = "Prevents you from getting AFK kicked.",
	Flag = "Toggle_Anti_AFK",
	Type = "Toggle",
	Value = true,
	Callback = function(state, arg71)
		if state then
			local connection21 = Players.LocalPlayer.Idled:Connect(function(idleTime)
				VirtualUser:CaptureController()
				VirtualUser:ClickButton2(Vector2.new())
			end)
		else
			connection21:Disconnect()
		end
	end
})
Tab7:Toggle({
	Title = "Auto-Reset When Bag Full",
	Desc = "Resets you once your coin bag is full",
	Flag = "Toggle_Auto_Reset_When_Bag_Full",
	Type = "Toggle",
	Value = true,
	Callback = function(state, arg73)
		if state then
			task.spawn(function(...)
				task.wait(1)
				local PlayerGui2 = Players.LocalPlayer:FindFirstChild("PlayerGui")
				local MainGUI2 = PlayerGui2:FindFirstChild("MainGUI")
				local Game2 = MainGUI2:FindFirstChild("Game")
				Game2:FindFirstChild("Inventory")
				Players.LocalPlayer.PlayerGui.MainGUI.Game.CoinBags.Container:GetChildren()
				task.wait(1)
				local PlayerGui3 = Players.LocalPlayer:FindFirstChild("PlayerGui")
				local MainGUI3 = PlayerGui3:FindFirstChild("MainGUI")
				local Game3 = MainGUI3:FindFirstChild("Game")
				Game3:FindFirstChild("Inventory")
				Players.LocalPlayer.PlayerGui.MainGUI.Game.CoinBags.Container:GetChildren()
				task.wait(1)
				-- [envlog] the statements above repeat forever (loop)
			end)
		end
	end
})
Tab7:Toggle({
	Title = "Auto Claim Shells",
	Desc = "Claims the end-of-round reward popup for you",
	Flag = "Toggle_Auto_Claim_Shells",
	Type = "Toggle",
	Value = false,
	Callback = function(state, arg75)
		if state then
			task.spawn(function(...)
				task.wait(0.5)
				local PlayerGui4 = Players.LocalPlayer:FindFirstChild("PlayerGui")
				local CrossPlatform = PlayerGui4:FindFirstChild("CrossPlatform")
				CrossPlatform:FindFirstChild("NewItem")
				local Medium = CrossPlatform.NewItem:FindFirstChild("Medium")
				Medium:FindFirstChild("Container")
				local Claim = Medium.Container:FindFirstChild("Claim")
				Medium:FindFirstChild("Amount", true)
				Medium:FindFirstChild("Label", true)
				local Icon = Medium:FindFirstChild("Icon", true)
				tostring(Icon.Image):match("%d+")
				task.spawn(function(...)
				end)
				local VirtualInputManager = game:GetService("VirtualInputManager")
				VirtualInputManager:SendMouseButtonEvent((Claim.AbsolutePosition.X + (Claim.AbsoluteSize.X / 2)), ((Claim.AbsolutePosition.Y + (Claim.AbsoluteSize.Y / 2)) + 36), 0, true, game, 1)
				task.wait(0.05)
				VirtualInputManager:SendMouseButtonEvent((Claim.AbsolutePosition.X + (Claim.AbsoluteSize.X / 2)), ((Claim.AbsolutePosition.Y + (Claim.AbsoluteSize.Y / 2)) + 36), 0, false, game, 1)
				task.wait(0.5)
				local PlayerGui5 = Players.LocalPlayer:FindFirstChild("PlayerGui")
				local CrossPlatform2 = PlayerGui5:FindFirstChild("CrossPlatform")
				CrossPlatform2:FindFirstChild("NewItem")
				local Medium2 = CrossPlatform2.NewItem:FindFirstChild("Medium")
				Medium2:FindFirstChild("Container")
				local Claim2 = Medium2.Container:FindFirstChild("Claim")
				Medium2:FindFirstChild("Amount", true)
				Medium2:FindFirstChild("Label", true)
				local Icon2 = Medium2:FindFirstChild("Icon", true)
				tostring(Icon2.Image):match("%d+")
				task.spawn(function(...)
				end)
				VirtualInputManager:SendMouseButtonEvent((Claim2.AbsolutePosition.X + (Claim2.AbsoluteSize.X / 2)), ((Claim2.AbsolutePosition.Y + (Claim2.AbsoluteSize.Y / 2)) + 36), 0, true, game, 1)
				task.wait(0.05)
				VirtualInputManager:SendMouseButtonEvent((Claim2.AbsolutePosition.X + (Claim2.AbsoluteSize.X / 2)), ((Claim2.AbsolutePosition.Y + (Claim2.AbsoluteSize.Y / 2)) + 36), 0, false, game, 1)
				task.wait(0.5)
				local PlayerGui6 = Players.LocalPlayer:FindFirstChild("PlayerGui")
				local CrossPlatform3 = PlayerGui6:FindFirstChild("CrossPlatform")
				CrossPlatform3:FindFirstChild("NewItem")
				local Medium3 = CrossPlatform3.NewItem:FindFirstChild("Medium")
				Medium3:FindFirstChild("Container")
				local Claim3 = Medium3.Container:FindFirstChild("Claim")
				Medium3:FindFirstChild("Amount", true)
				Medium3:FindFirstChild("Label", true)
				local Icon3 = Medium3:FindFirstChild("Icon", true)
				tostring(Icon3.Image):match("%d+")
				task.spawn(function(...)
				end)
				VirtualInputManager:SendMouseButtonEvent((Claim3.AbsolutePosition.X + (Claim3.AbsoluteSize.X / 2)), ((Claim3.AbsolutePosition.Y + (Claim3.AbsoluteSize.Y / 2)) + 36), 0, true, game, 1)
				task.wait(0.05)
				VirtualInputManager:SendMouseButtonEvent((Claim3.AbsolutePosition.X + (Claim3.AbsoluteSize.X / 2)), ((Claim3.AbsolutePosition.Y + (Claim3.AbsoluteSize.Y / 2)) + 36), 0, false, game, 1)
				task.wait(0.5)
				local PlayerGui7 = Players.LocalPlayer:FindFirstChild("PlayerGui")
				local CrossPlatform4 = PlayerGui7:FindFirstChild("CrossPlatform")
				CrossPlatform4:FindFirstChild("NewItem")
				local Medium4 = CrossPlatform4.NewItem:FindFirstChild("Medium")
				Medium4:FindFirstChild("Container")
				local Claim4 = Medium4.Container:FindFirstChild("Claim")
				Medium4:FindFirstChild("Amount", true)
				Medium4:FindFirstChild("Label", true)
				local Icon4 = Medium4:FindFirstChild("Icon", true)
				tostring(Icon4.Image):match("%d+")
				task.spawn(function(...)
				end)
				VirtualInputManager:SendMouseButtonEvent((Claim4.AbsolutePosition.X + (Claim4.AbsoluteSize.X / 2)), ((Claim4.AbsolutePosition.Y + (Claim4.AbsoluteSize.Y / 2)) + 36), 0, true, game, 1)
				task.wait(0.05)
				VirtualInputManager:SendMouseButtonEvent((Claim4.AbsolutePosition.X + (Claim4.AbsoluteSize.X / 2)), ((Claim4.AbsolutePosition.Y + (Claim4.AbsoluteSize.Y / 2)) + 36), 0, false, game, 1)
				task.wait(0.5)
				local PlayerGui8 = Players.LocalPlayer:FindFirstChild("PlayerGui")
				local CrossPlatform5 = PlayerGui8:FindFirstChild("CrossPlatform")
				CrossPlatform5:FindFirstChild("NewItem")
				local Medium5 = CrossPlatform5.NewItem:FindFirstChild("Medium")
				Medium5:FindFirstChild("Container")
				local Claim5 = Medium5.Container:FindFirstChild("Claim")
				Medium5:FindFirstChild("Amount", true)
				Medium5:FindFirstChild("Label", true)
				local Icon5 = Medium5:FindFirstChild("Icon", true)
				tostring(Icon5.Image):match("%d+")
				task.spawn(function(...)
				end)
				VirtualInputManager:SendMouseButtonEvent((Claim5.AbsolutePosition.X + (Claim5.AbsoluteSize.X / 2)), ((Claim5.AbsolutePosition.Y + (Claim5.AbsoluteSize.Y / 2)) + 36), 0, true, game, 1)
				task.wait(0.05)
				VirtualInputManager:SendMouseButtonEvent((Claim5.AbsolutePosition.X + (Claim5.AbsoluteSize.X / 2)), ((Claim5.AbsolutePosition.Y + (Claim5.AbsoluteSize.Y / 2)) + 36), 0, false, game, 1)
				task.wait(0.5)
				local PlayerGui9 = Players.LocalPlayer:FindFirstChild("PlayerGui")
				local CrossPlatform6 = PlayerGui9:FindFirstChild("CrossPlatform")
				CrossPlatform6:FindFirstChild("NewItem")
				local Medium6 = CrossPlatform6.NewItem:FindFirstChild("Medium")
				Medium6:FindFirstChild("Container")
				local Claim6 = Medium6.Container:FindFirstChild("Claim")
				Medium6:FindFirstChild("Amount", true)
				Medium6:FindFirstChild("Label", true)
				local Icon6 = Medium6:FindFirstChild("Icon", true)
				tostring(Icon6.Image):match("%d+")
				task.spawn(function(...)
				end)
				VirtualInputManager:SendMouseButtonEvent((Claim6.AbsolutePosition.X + (Claim6.AbsoluteSize.X / 2)), ((Claim6.AbsolutePosition.Y + (Claim6.AbsoluteSize.Y / 2)) + 36), 0, true, game, 1)
				task.wait(0.05)
				VirtualInputManager:SendMouseButtonEvent((Claim6.AbsolutePosition.X + (Claim6.AbsoluteSize.X / 2)), ((Claim6.AbsolutePosition.Y + (Claim6.AbsoluteSize.Y / 2)) + 36), 0, false, game, 1)
				task.wait(0.5)
				local PlayerGui10 = Players.LocalPlayer:FindFirstChild("PlayerGui")
				local CrossPlatform7 = PlayerGui10:FindFirstChild("CrossPlatform")
				CrossPlatform7:FindFirstChild("NewItem")
				local Medium7 = CrossPlatform7.NewItem:FindFirstChild("Medium")
				Medium7:FindFirstChild("Container")
				local Claim7 = Medium7.Container:FindFirstChild("Claim")
				Medium7:FindFirstChild("Amount", true)
				Medium7:FindFirstChild("Label", true)
				local Icon7 = Medium7:FindFirstChild("Icon", true)
				tostring(Icon7.Image):match("%d+")
				task.spawn(function(...)
				end)
				VirtualInputManager:SendMouseButtonEvent((Claim7.AbsolutePosition.X + (Claim7.AbsoluteSize.X / 2)), ((Claim7.AbsolutePosition.Y + (Claim7.AbsoluteSize.Y / 2)) + 36), 0, true, game, 1)
				task.wait(0.05)
				VirtualInputManager:SendMouseButtonEvent((Claim7.AbsolutePosition.X + (Claim7.AbsoluteSize.X / 2)), ((Claim7.AbsolutePosition.Y + (Claim7.AbsoluteSize.Y / 2)) + 36), 0, false, game, 1)
				task.wait(0.5)
				local PlayerGui11 = Players.LocalPlayer:FindFirstChild("PlayerGui")
				local CrossPlatform8 = PlayerGui11:FindFirstChild("CrossPlatform")
				CrossPlatform8:FindFirstChild("NewItem")
				local Medium8 = CrossPlatform8.NewItem:FindFirstChild("Medium")
				Medium8:FindFirstChild("Container")
				local Claim8 = Medium8.Container:FindFirstChild("Claim")
				Medium8:FindFirstChild("Amount", true)
				Medium8:FindFirstChild("Label", true)
				local Icon8 = Medium8:FindFirstChild("Icon", true)
				tostring(Icon8.Image):match("%d+")
				task.spawn(function(...)
				end)
				VirtualInputManager:SendMouseButtonEvent((Claim8.AbsolutePosition.X + (Claim8.AbsoluteSize.X / 2)), ((Claim8.AbsolutePosition.Y + (Claim8.AbsoluteSize.Y / 2)) + 36), 0, true, game, 1)
				task.wait(0.05)
				VirtualInputManager:SendMouseButtonEvent((Claim8.AbsolutePosition.X + (Claim8.AbsoluteSize.X / 2)), ((Claim8.AbsolutePosition.Y + (Claim8.AbsoluteSize.Y / 2)) + 36), 0, false, game, 1)
				task.wait(0.5)
				local PlayerGui12 = Players.LocalPlayer:FindFirstChild("PlayerGui")
				local CrossPlatform9 = PlayerGui12:FindFirstChild("CrossPlatform")
				CrossPlatform9:FindFirstChild("NewItem")
				local Medium9 = CrossPlatform9.NewItem:FindFirstChild("Medium")
				Medium9:FindFirstChild("Container")
				local Claim9 = Medium9.Container:FindFirstChild("Claim")
				Medium9:FindFirstChild("Amount", true)
				Medium9:FindFirstChild("Label", true)
				local Icon9 = Medium9:FindFirstChild("Icon", true)
				tostring(Icon9.Image):match("%d+")
				task.spawn(function(...)
				end)
				VirtualInputManager:SendMouseButtonEvent((Claim9.AbsolutePosition.X + (Claim9.AbsoluteSize.X / 2)), ((Claim9.AbsolutePosition.Y + (Claim9.AbsoluteSize.Y / 2)) + 36), 0, true, game, 1)
				task.wait(0.05)
				VirtualInputManager:SendMouseButtonEvent((Claim9.AbsolutePosition.X + (Claim9.AbsoluteSize.X / 2)), ((Claim9.AbsolutePosition.Y + (Claim9.AbsoluteSize.Y / 2)) + 36), 0, false, game, 1)
				task.wait(0.5)
				local PlayerGui13 = Players.LocalPlayer:FindFirstChild("PlayerGui")
				local CrossPlatform10 = PlayerGui13:FindFirstChild("CrossPlatform")
				CrossPlatform10:FindFirstChild("NewItem")
				local Medium10 = CrossPlatform10.NewItem:FindFirstChild("Medium")
				Medium10:FindFirstChild("Container")
				local Claim10 = Medium10.Container:FindFirstChild("Claim")
				Medium10:FindFirstChild("Amount", true)
				Medium10:FindFirstChild("Label", true)
				local Icon10 = Medium10:FindFirstChild("Icon", true)
				tostring(Icon10.Image):match("%d+")
				task.spawn(function(...)
				end)
				VirtualInputManager:SendMouseButtonEvent((Claim10.AbsolutePosition.X + (Claim10.AbsoluteSize.X / 2)), ((Claim10.AbsolutePosition.Y + (Claim10.AbsoluteSize.Y / 2)) + 36), 0, true, game, 1)
				task.wait(0.05)
				VirtualInputManager:SendMouseButtonEvent((Claim10.AbsolutePosition.X + (Claim10.AbsoluteSize.X / 2)), ((Claim10.AbsolutePosition.Y + (Claim10.AbsoluteSize.Y / 2)) + 36), 0, false, game, 1)
				task.wait(0.5)
				local PlayerGui14 = Players.LocalPlayer:FindFirstChild("PlayerGui")
				local CrossPlatform11 = PlayerGui14:FindFirstChild("CrossPlatform")
				CrossPlatform11:FindFirstChild("NewItem")
				local Medium11 = CrossPlatform11.NewItem:FindFirstChild("Medium")
				Medium11:FindFirstChild("Container")
				local Claim11 = Medium11.Container:FindFirstChild("Claim")
				Medium11:FindFirstChild("Amount", true)
				Medium11:FindFirstChild("Label", true)
				local Icon11 = Medium11:FindFirstChild("Icon", true)
				tostring(Icon11.Image):match("%d+")
				task.spawn(function(...)
				end)
				VirtualInputManager:SendMouseButtonEvent((Claim11.AbsolutePosition.X + (Claim11.AbsoluteSize.X / 2)), ((Claim11.AbsolutePosition.Y + (Claim11.AbsoluteSize.Y / 2)) + 36), 0, true, game, 1)
				task.wait(0.05)
				VirtualInputManager:SendMouseButtonEvent((Claim11.AbsolutePosition.X + (Claim11.AbsoluteSize.X / 2)), ((Claim11.AbsolutePosition.Y + (Claim11.AbsoluteSize.Y / 2)) + 36), 0, false, game, 1)
				task.wait(0.5)
				local PlayerGui15 = Players.LocalPlayer:FindFirstChild("PlayerGui")
				local CrossPlatform12 = PlayerGui15:FindFirstChild("CrossPlatform")
				CrossPlatform12:FindFirstChild("NewItem")
				local Medium12 = CrossPlatform12.NewItem:FindFirstChild("Medium")
				Medium12:FindFirstChild("Container")
				local Claim12 = Medium12.Container:FindFirstChild("Claim")
				Medium12:FindFirstChild("Amount", true)
				Medium12:FindFirstChild("Label", true)
				local Icon12 = Medium12:FindFirstChild("Icon", true)
				tostring(Icon12.Image):match("%d+")
				task.spawn(function(...)
				end)
				VirtualInputManager:SendMouseButtonEvent((Claim12.AbsolutePosition.X + (Claim12.AbsoluteSize.X / 2)), ((Claim12.AbsolutePosition.Y + (Claim12.AbsoluteSize.Y / 2)) + 36), 0, true, game, 1)
				task.wait(0.05)
				VirtualInputManager:SendMouseButtonEvent((Claim12.AbsolutePosition.X + (Claim12.AbsoluteSize.X / 2)), ((Claim12.AbsolutePosition.Y + (Claim12.AbsoluteSize.Y / 2)) + 36), 0, false, game, 1)
				task.wait(0.5)
				local PlayerGui16 = Players.LocalPlayer:FindFirstChild("PlayerGui")
				local CrossPlatform13 = PlayerGui16:FindFirstChild("CrossPlatform")
				CrossPlatform13:FindFirstChild("NewItem")
				local Medium13 = CrossPlatform13.NewItem:FindFirstChild("Medium")
				Medium13:FindFirstChild("Container")
				local Claim13 = Medium13.Container:FindFirstChild("Claim")
				Medium13:FindFirstChild("Amount", true)
				Medium13:FindFirstChild("Label", true)
				local Icon13 = Medium13:FindFirstChild("Icon", true)
				tostring(Icon13.Image):match("%d+")
				task.spawn(function(...)
				end)
				VirtualInputManager:SendMouseButtonEvent((Claim13.AbsolutePosition.X + (Claim13.AbsoluteSize.X / 2)), ((Claim13.AbsolutePosition.Y + (Claim13.AbsoluteSize.Y / 2)) + 36), 0, true, game, 1)
				task.wait(0.05)
				VirtualInputManager:SendMouseButtonEvent((Claim13.AbsolutePosition.X + (Claim13.AbsoluteSize.X / 2)), ((Claim13.AbsolutePosition.Y + (Claim13.AbsoluteSize.Y / 2)) + 36), 0, false, game, 1)
				task.wait(0.5)
				local PlayerGui17 = Players.LocalPlayer:FindFirstChild("PlayerGui")
				local CrossPlatform14 = PlayerGui17:FindFirstChild("CrossPlatform")
				CrossPlatform14:FindFirstChild("NewItem")
				local Medium14 = CrossPlatform14.NewItem:FindFirstChild("Medium")
				Medium14:FindFirstChild("Container")
				local Claim14 = Medium14.Container:FindFirstChild("Claim")
				Medium14:FindFirstChild("Amount", true)
				Medium14:FindFirstChild("Label", true)
				local Icon14 = Medium14:FindFirstChild("Icon", true)
				tostring(Icon14.Image):match("%d+")
				task.spawn(function(...)
				end)
				VirtualInputManager:SendMouseButtonEvent((Claim14.AbsolutePosition.X + (Claim14.AbsoluteSize.X / 2)), ((Claim14.AbsolutePosition.Y + (Claim14.AbsoluteSize.Y / 2)) + 36), 0, true, game, 1)
				task.wait(0.05)
				VirtualInputManager:SendMouseButtonEvent((Claim14.AbsolutePosition.X + (Claim14.AbsoluteSize.X / 2)), ((Claim14.AbsolutePosition.Y + (Claim14.AbsoluteSize.Y / 2)) + 36), 0, false, game, 1)
				task.wait(0.5)
				local PlayerGui18 = Players.LocalPlayer:FindFirstChild("PlayerGui")
				local CrossPlatform15 = PlayerGui18:FindFirstChild("CrossPlatform")
				CrossPlatform15:FindFirstChild("NewItem")
				local Medium15 = CrossPlatform15.NewItem:FindFirstChild("Medium")
				Medium15:FindFirstChild("Container")
				local Claim15 = Medium15.Container:FindFirstChild("Claim")
				Medium15:FindFirstChild("Amount", true)
				Medium15:FindFirstChild("Label", true)
				local Icon15 = Medium15:FindFirstChild("Icon", true)
				tostring(Icon15.Image):match("%d+")
				task.spawn(function(...)
				end)
				VirtualInputManager:SendMouseButtonEvent((Claim15.AbsolutePosition.X + (Claim15.AbsoluteSize.X / 2)), ((Claim15.AbsolutePosition.Y + (Claim15.AbsoluteSize.Y / 2)) + 36), 0, true, game, 1)
				task.wait(0.05)
				VirtualInputManager:SendMouseButtonEvent((Claim15.AbsolutePosition.X + (Claim15.AbsoluteSize.X / 2)), ((Claim15.AbsolutePosition.Y + (Claim15.AbsoluteSize.Y / 2)) + 36), 0, false, game, 1)
				task.wait(0.5)
				local PlayerGui19 = Players.LocalPlayer:FindFirstChild("PlayerGui")
				local CrossPlatform16 = PlayerGui19:FindFirstChild("CrossPlatform")
				CrossPlatform16:FindFirstChild("NewItem")
				local Medium16 = CrossPlatform16.NewItem:FindFirstChild("Medium")
				Medium16:FindFirstChild("Container")
				local Claim16 = Medium16.Container:FindFirstChild("Claim")
				Medium16:FindFirstChild("Amount", true)
				Medium16:FindFirstChild("Label", true)
				local Icon16 = Medium16:FindFirstChild("Icon", true)
				tostring(Icon16.Image):match("%d+")
				task.spawn(function(...)
				end)
				VirtualInputManager:SendMouseButtonEvent((Claim16.AbsolutePosition.X + (Claim16.AbsoluteSize.X / 2)), ((Claim16.AbsolutePosition.Y + (Claim16.AbsoluteSize.Y / 2)) + 36), 0, true, game, 1)
				task.wait(0.05)
				VirtualInputManager:SendMouseButtonEvent((Claim16.AbsolutePosition.X + (Claim16.AbsoluteSize.X / 2)), ((Claim16.AbsolutePosition.Y + (Claim16.AbsoluteSize.Y / 2)) + 36), 0, false, game, 1)
				task.wait(0.5)
				local PlayerGui20 = Players.LocalPlayer:FindFirstChild("PlayerGui")
				local CrossPlatform17 = PlayerGui20:FindFirstChild("CrossPlatform")
				CrossPlatform17:FindFirstChild("NewItem")
				local Medium17 = CrossPlatform17.NewItem:FindFirstChild("Medium")
				Medium17:FindFirstChild("Container")
				local Claim17 = Medium17.Container:FindFirstChild("Claim")
				Medium17:FindFirstChild("Amount", true)
				Medium17:FindFirstChild("Label", true)
				local Icon17 = Medium17:FindFirstChild("Icon", true)
				tostring(Icon17.Image):match("%d+")
				task.spawn(function(...)
				end)
				VirtualInputManager:SendMouseButtonEvent((Claim17.AbsolutePosition.X + (Claim17.AbsoluteSize.X / 2)), ((Claim17.AbsolutePosition.Y + (Claim17.AbsoluteSize.Y / 2)) + 36), 0, true, game, 1)
				task.wait(0.05)
				VirtualInputManager:SendMouseButtonEvent((Claim17.AbsolutePosition.X + (Claim17.AbsoluteSize.X / 2)), ((Claim17.AbsolutePosition.Y + (Claim17.AbsoluteSize.Y / 2)) + 36), 0, false, game, 1)
				task.wait(0.5)
				local PlayerGui21 = Players.LocalPlayer:FindFirstChild("PlayerGui")
				local CrossPlatform18 = PlayerGui21:FindFirstChild("CrossPlatform")
				CrossPlatform18:FindFirstChild("NewItem")
				local Medium18 = CrossPlatform18.NewItem:FindFirstChild("Medium")
				Medium18:FindFirstChild("Container")
				local Claim18 = Medium18.Container:FindFirstChild("Claim")
				Medium18:FindFirstChild("Amount", true)
				Medium18:FindFirstChild("Label", true)
				local Icon18 = Medium18:FindFirstChild("Icon", true)
				tostring(Icon18.Image):match("%d+")
				task.spawn(function(...)
				end)
				VirtualInputManager:SendMouseButtonEvent((Claim18.AbsolutePosition.X + (Claim18.AbsoluteSize.X / 2)), ((Claim18.AbsolutePosition.Y + (Claim18.AbsoluteSize.Y / 2)) + 36), 0, true, game, 1)
				task.wait(0.05)
				VirtualInputManager:SendMouseButtonEvent((Claim18.AbsolutePosition.X + (Claim18.AbsoluteSize.X / 2)), ((Claim18.AbsolutePosition.Y + (Claim18.AbsoluteSize.Y / 2)) + 36), 0, false, game, 1)
				task.wait(0.5)
				local PlayerGui22 = Players.LocalPlayer:FindFirstChild("PlayerGui")
				local CrossPlatform19 = PlayerGui22:FindFirstChild("CrossPlatform")
				CrossPlatform19:FindFirstChild("NewItem")
				local Medium19 = CrossPlatform19.NewItem:FindFirstChild("Medium")
				Medium19:FindFirstChild("Container")
				local Claim19 = Medium19.Container:FindFirstChild("Claim")
				Medium19:FindFirstChild("Amount", true)
				Medium19:FindFirstChild("Label", true)
				local Icon19 = Medium19:FindFirstChild("Icon", true)
				tostring(Icon19.Image):match("%d+")
				task.spawn(function(...)
				end)
				VirtualInputManager:SendMouseButtonEvent((Claim19.AbsolutePosition.X + (Claim19.AbsoluteSize.X / 2)), ((Claim19.AbsolutePosition.Y + (Claim19.AbsoluteSize.Y / 2)) + 36), 0, true, game, 1)
				task.wait(0.05)
				VirtualInputManager:SendMouseButtonEvent((Claim19.AbsolutePosition.X + (Claim19.AbsoluteSize.X / 2)), ((Claim19.AbsolutePosition.Y + (Claim19.AbsoluteSize.Y / 2)) + 36), 0, false, game, 1)
				task.wait(0.5)
				local PlayerGui23 = Players.LocalPlayer:FindFirstChild("PlayerGui")
				local CrossPlatform20 = PlayerGui23:FindFirstChild("CrossPlatform")
				CrossPlatform20:FindFirstChild("NewItem")
				local Medium20 = CrossPlatform20.NewItem:FindFirstChild("Medium")
				Medium20:FindFirstChild("Container")
				local Claim20 = Medium20.Container:FindFirstChild("Claim")
				Medium20:FindFirstChild("Amount", true)
				Medium20:FindFirstChild("Label", true)
				local Icon20 = Medium20:FindFirstChild("Icon", true)
				tostring(Icon20.Image):match("%d+")
				task.spawn(function(...)
				end)
				VirtualInputManager:SendMouseButtonEvent((Claim20.AbsolutePosition.X + (Claim20.AbsoluteSize.X / 2)), ((Claim20.AbsolutePosition.Y + (Claim20.AbsoluteSize.Y / 2)) + 36), 0, true, game, 1)
				task.wait(0.05)
				VirtualInputManager:SendMouseButtonEvent((Claim20.AbsolutePosition.X + (Claim20.AbsoluteSize.X / 2)), ((Claim20.AbsolutePosition.Y + (Claim20.AbsoluteSize.Y / 2)) + 36), 0, false, game, 1)
				task.wait(0.5)
				local PlayerGui24 = Players.LocalPlayer:FindFirstChild("PlayerGui")
				local CrossPlatform21 = PlayerGui24:FindFirstChild("CrossPlatform")
				CrossPlatform21:FindFirstChild("NewItem")
				local Medium21 = CrossPlatform21.NewItem:FindFirstChild("Medium")
				Medium21:FindFirstChild("Container")
				local Claim21 = Medium21.Container:FindFirstChild("Claim")
				Medium21:FindFirstChild("Amount", true)
				Medium21:FindFirstChild("Label", true)
				local Icon21 = Medium21:FindFirstChild("Icon", true)
				tostring(Icon21.Image):match("%d+")
				task.spawn(function(...)
				end)
				VirtualInputManager:SendMouseButtonEvent((Claim21.AbsolutePosition.X + (Claim21.AbsoluteSize.X / 2)), ((Claim21.AbsolutePosition.Y + (Claim21.AbsoluteSize.Y / 2)) + 36), 0, true, game, 1)
				task.wait(0.05)
				VirtualInputManager:SendMouseButtonEvent((Claim21.AbsolutePosition.X + (Claim21.AbsoluteSize.X / 2)), ((Claim21.AbsolutePosition.Y + (Claim21.AbsoluteSize.Y / 2)) + 36), 0, false, game, 1)
				task.wait(0.5)
				local PlayerGui25 = Players.LocalPlayer:FindFirstChild("PlayerGui")
				local CrossPlatform22 = PlayerGui25:FindFirstChild("CrossPlatform")
				CrossPlatform22:FindFirstChild("NewItem")
				local Medium22 = CrossPlatform22.NewItem:FindFirstChild("Medium")
				Medium22:FindFirstChild("Container")
				local Claim22 = Medium22.Container:FindFirstChild("Claim")
				Medium22:FindFirstChild("Amount", true)
				Medium22:FindFirstChild("Label", true)
				local Icon22 = Medium22:FindFirstChild("Icon", true)
				tostring(Icon22.Image):match("%d+")
				task.spawn(function(...)
				end)
				VirtualInputManager:SendMouseButtonEvent((Claim22.AbsolutePosition.X + (Claim22.AbsoluteSize.X / 2)), ((Claim22.AbsolutePosition.Y + (Claim22.AbsoluteSize.Y / 2)) + 36), 0, true, game, 1)
				task.wait(0.05)
				VirtualInputManager:SendMouseButtonEvent((Claim22.AbsolutePosition.X + (Claim22.AbsoluteSize.X / 2)), ((Claim22.AbsolutePosition.Y + (Claim22.AbsoluteSize.Y / 2)) + 36), 0, false, game, 1)
				task.wait(0.5)
				local PlayerGui26 = Players.LocalPlayer:FindFirstChild("PlayerGui")
				local CrossPlatform23 = PlayerGui26:FindFirstChild("CrossPlatform")
				CrossPlatform23:FindFirstChild("NewItem")
				local Medium23 = CrossPlatform23.NewItem:FindFirstChild("Medium")
				Medium23:FindFirstChild("Container")
				local Claim23 = Medium23.Container:FindFirstChild("Claim")
				Medium23:FindFirstChild("Amount", true)
				Medium23:FindFirstChild("Label", true)
				local Icon23 = Medium23:FindFirstChild("Icon", true)
				tostring(Icon23.Image):match("%d+")
				task.spawn(function(...)
				end)
				VirtualInputManager:SendMouseButtonEvent((Claim23.AbsolutePosition.X + (Claim23.AbsoluteSize.X / 2)), ((Claim23.AbsolutePosition.Y + (Claim23.AbsoluteSize.Y / 2)) + 36), 0, true, game, 1)
				task.wait(0.05)
				VirtualInputManager:SendMouseButtonEvent((Claim23.AbsolutePosition.X + (Claim23.AbsoluteSize.X / 2)), ((Claim23.AbsolutePosition.Y + (Claim23.AbsoluteSize.Y / 2)) + 36), 0, false, game, 1)
				task.wait(0.5)
				local PlayerGui27 = Players.LocalPlayer:FindFirstChild("PlayerGui")
				local CrossPlatform24 = PlayerGui27:FindFirstChild("CrossPlatform")
				CrossPlatform24:FindFirstChild("NewItem")
				local Medium24 = CrossPlatform24.NewItem:FindFirstChild("Medium")
				Medium24:FindFirstChild("Container")
				local Claim24 = Medium24.Container:FindFirstChild("Claim")
				Medium24:FindFirstChild("Amount", true)
				Medium24:FindFirstChild("Label", true)
				local Icon24 = Medium24:FindFirstChild("Icon", true)
				tostring(Icon24.Image):match("%d+")
				task.spawn(function(...)
				end)
				VirtualInputManager:SendMouseButtonEvent((Claim24.AbsolutePosition.X + (Claim24.AbsoluteSize.X / 2)), ((Claim24.AbsolutePosition.Y + (Claim24.AbsoluteSize.Y / 2)) + 36), 0, true, game, 1)
				task.wait(0.05)
				VirtualInputManager:SendMouseButtonEvent((Claim24.AbsolutePosition.X + (Claim24.AbsoluteSize.X / 2)), ((Claim24.AbsolutePosition.Y + (Claim24.AbsoluteSize.Y / 2)) + 36), 0, false, game, 1)
				task.wait(0.5)
				local PlayerGui28 = Players.LocalPlayer:FindFirstChild("PlayerGui")
				local CrossPlatform25 = PlayerGui28:FindFirstChild("CrossPlatform")
				CrossPlatform25:FindFirstChild("NewItem")
				local Medium25 = CrossPlatform25.NewItem:FindFirstChild("Medium")
				Medium25:FindFirstChild("Container")
				local Claim25 = Medium25.Container:FindFirstChild("Claim")
				Medium25:FindFirstChild("Amount", true)
				Medium25:FindFirstChild("Label", true)
				local Icon25 = Medium25:FindFirstChild("Icon", true)
				tostring(Icon25.Image):match("%d+")
				task.spawn(function(...)
				end)
				VirtualInputManager:SendMouseButtonEvent((Claim25.AbsolutePosition.X + (Claim25.AbsoluteSize.X / 2)), ((Claim25.AbsolutePosition.Y + (Claim25.AbsoluteSize.Y / 2)) + 36), 0, true, game, 1)
				task.wait(0.05)
				VirtualInputManager:SendMouseButtonEvent((Claim25.AbsolutePosition.X + (Claim25.AbsoluteSize.X / 2)), ((Claim25.AbsolutePosition.Y + (Claim25.AbsoluteSize.Y / 2)) + 36), 0, false, game, 1)
				task.wait(0.5)
				-- [envlog] stopped after 50 waits
			end)
		end
	end
})
Tab7:Toggle({
	Title = "Fling Murderer When Done",
	Desc = "Yeets the murderer once your bag is full or the coins run out",
	Flag = "Toggle_Fling_Murderer_When_Done",
	Type = "Toggle",
	Value = false,
	Callback = function(state, arg77)
	end
})
Tab7:Toggle({
	Title = "Kill All When Bag Full",
	Desc = "Stabs everyone once your bag fills up. Murderer only.",
	Flag = "Toggle_Kill_All_When_Bag_Full",
	Type = "Toggle",
	Value = false,
	Callback = function(state, arg79)
	end
})
local connection22 = Players.LocalPlayer.Idled:Connect(function(idleTime2)
	VirtualUser:CaptureController()
	VirtualUser:ClickButton2(Vector2.new())
end)
Tab7:Section({ Title = "Discord Webhook" })
Tab7:Input({
	Title = "Webhook URL",
	Desc = "Paste a Discord webhook and logging starts. Logs box opens, shell claims and round coins. Empty the box to stop.",
	Flag = "Input_Discord_Webhook",
	Placeholder = "https://discord.com/api/webhooks/...",
	Callback = function(state, arg81)
	end
})
Tab7:Toggle({
	Title = "Start Sender",
	Desc = "Starts posting to the webhook above. Logs box opens, shell claims and the coins each round paid out.",
	Flag = "Toggle_Discord_Sender",
	Type = "Toggle",
	Value = false,
	Callback = function(state, arg83)
		if state then
			task.spawn(function(...)
				require(ReplicatedStorage.Modules.ProfileData)
				require(ReplicatedStorage.Modules.ProfileData)
			end)
		end
	end
})
Tab7:Section({ Title = "Auto Open Boxes" })
require(ReplicatedStorage.Database.Sync.NewShop)
local Toggle = Tab7:Toggle({
	Title = "Auto Open Summer Box '26",
	Desc = "Waits until you get ? Shells, then auto-opens the box for you!",
	Flag = "Toggle_Box_Summer2026Box",
	Type = "Toggle",
	Value = false,
	Callback = function(state, arg85)
		if state then
			task.spawn(function(...)
				require(ReplicatedStorage.Database.Sync.NewShop)
				require(ReplicatedStorage.Modules.ProfileData)
				local Remotes4 = ReplicatedStorage:FindFirstChild("Remotes")
				local Shop = Remotes4:FindFirstChild("Shop")
				local OpenCrate = Shop:FindFirstChild("OpenCrate")
				OpenCrate:InvokeServer("Summer2026Box", "MysteryBox", "SummerKey2026")
				task.spawn(function(...)
				end)
				task.wait(1)
				require(ReplicatedStorage.Database.Sync.NewShop)
				require(ReplicatedStorage.Modules.ProfileData)
				local Remotes5 = ReplicatedStorage:FindFirstChild("Remotes")
				local Shop2 = Remotes5:FindFirstChild("Shop")
				local OpenCrate2 = Shop2:FindFirstChild("OpenCrate")
				OpenCrate2:InvokeServer("Summer2026Box", "MysteryBox", "SummerKey2026")
				task.spawn(function(...)
				end)
				task.wait(1)
				-- [envlog] the statements above repeat forever (loop)
			end)
		end
	end
})
require(ReplicatedStorage.Database.Sync.MysteryBox)
local UIGradient = Toggle.ElementFrame:FindFirstChildWhichIsA("UIGradient")
UIGradient:Destroy()
local UIGradient2 = Instance.new("UIGradient")
UIGradient2.Color = ColorSequence.new(Color3.fromHex("#F59E0B"), Color3.fromHex("#14B8A6"))
UIGradient2.Parent = Toggle.ElementFrame
require(ReplicatedStorage.Database.Sync.NewShop)
Tab7:Toggle({
	Title = "Auto Open Mystery Box #1",
	Desc = "Waits until you get ? Coins, then auto-opens the box for you!",
	Flag = "Toggle_Box_MysteryBox1",
	Type = "Toggle",
	Value = false,
	Callback = function(state, arg87)
		if state then
			task.spawn(function(...)
				require(ReplicatedStorage.Database.Sync.NewShop)
				require(ReplicatedStorage.Modules.ProfileData)
				local Remotes6 = ReplicatedStorage:FindFirstChild("Remotes")
				local Shop3 = Remotes6:FindFirstChild("Shop")
				local OpenCrate3 = Shop3:FindFirstChild("OpenCrate")
				OpenCrate3:InvokeServer("MysteryBox1", "MysteryBox", "Coins")
				task.spawn(function(...)
				end)
				task.wait(1)
				require(ReplicatedStorage.Database.Sync.NewShop)
				require(ReplicatedStorage.Modules.ProfileData)
				local Remotes7 = ReplicatedStorage:FindFirstChild("Remotes")
				local Shop4 = Remotes7:FindFirstChild("Shop")
				local OpenCrate4 = Shop4:FindFirstChild("OpenCrate")
				OpenCrate4:InvokeServer("MysteryBox1", "MysteryBox", "Coins")
				task.spawn(function(...)
				end)
				task.wait(1)
				-- [envlog] the statements above repeat forever (loop)
			end)
		end
	end
})
require(ReplicatedStorage.Database.Sync.MysteryBox)
require(ReplicatedStorage.Database.Sync.NewShop)
Tab7:Toggle({
	Title = "Auto Open Mystery Box #2",
	Desc = "Waits until you get ? Coins, then auto-opens the box for you!",
	Flag = "Toggle_Box_MysteryBox2",
	Type = "Toggle",
	Value = false,
	Callback = function(state, arg89)
		if state then
			task.spawn(function(...)
				require(ReplicatedStorage.Database.Sync.NewShop)
				require(ReplicatedStorage.Modules.ProfileData)
				local Remotes8 = ReplicatedStorage:FindFirstChild("Remotes")
				local Shop5 = Remotes8:FindFirstChild("Shop")
				local OpenCrate5 = Shop5:FindFirstChild("OpenCrate")
				OpenCrate5:InvokeServer("MysteryBox2", "MysteryBox", "Coins")
				task.spawn(function(...)
				end)
				task.wait(1)
				require(ReplicatedStorage.Database.Sync.NewShop)
				require(ReplicatedStorage.Modules.ProfileData)
				local Remotes9 = ReplicatedStorage:FindFirstChild("Remotes")
				local Shop6 = Remotes9:FindFirstChild("Shop")
				local OpenCrate6 = Shop6:FindFirstChild("OpenCrate")
				OpenCrate6:InvokeServer("MysteryBox2", "MysteryBox", "Coins")
				task.spawn(function(...)
				end)
				task.wait(1)
				-- [envlog] the statements above repeat forever (loop)
			end)
		end
	end
})
require(ReplicatedStorage.Database.Sync.MysteryBox)
require(ReplicatedStorage.Database.Sync.NewShop)
Tab7:Toggle({
	Title = "Auto Open Knife Box #1",
	Desc = "Waits until you get ? Coins, then auto-opens the box for you!",
	Flag = "Toggle_Box_KnifeBox1",
	Type = "Toggle",
	Value = false,
	Callback = function(state, arg91)
		if state then
			task.spawn(function(...)
				require(ReplicatedStorage.Database.Sync.NewShop)
				require(ReplicatedStorage.Modules.ProfileData)
				local Remotes10 = ReplicatedStorage:FindFirstChild("Remotes")
				local Shop7 = Remotes10:FindFirstChild("Shop")
				local OpenCrate7 = Shop7:FindFirstChild("OpenCrate")
				OpenCrate7:InvokeServer("KnifeBox1", "MysteryBox", "Coins")
				task.spawn(function(...)
				end)
				task.wait(1)
				require(ReplicatedStorage.Database.Sync.NewShop)
				require(ReplicatedStorage.Modules.ProfileData)
				local Remotes11 = ReplicatedStorage:FindFirstChild("Remotes")
				local Shop8 = Remotes11:FindFirstChild("Shop")
				local OpenCrate8 = Shop8:FindFirstChild("OpenCrate")
				OpenCrate8:InvokeServer("KnifeBox1", "MysteryBox", "Coins")
				task.spawn(function(...)
				end)
				task.wait(1)
				-- [envlog] the statements above repeat forever (loop)
			end)
		end
	end
})
require(ReplicatedStorage.Database.Sync.MysteryBox)
require(ReplicatedStorage.Database.Sync.NewShop)
Tab7:Toggle({
	Title = "Auto Open Knife Box #2",
	Desc = "Waits until you get ? Coins, then auto-opens the box for you!",
	Flag = "Toggle_Box_KnifeBox2",
	Type = "Toggle",
	Value = false,
	Callback = function(state, arg93)
		if state then
			task.spawn(function(...)
				require(ReplicatedStorage.Database.Sync.NewShop)
				require(ReplicatedStorage.Modules.ProfileData)
				local Remotes12 = ReplicatedStorage:FindFirstChild("Remotes")
				local Shop9 = Remotes12:FindFirstChild("Shop")
				local OpenCrate9 = Shop9:FindFirstChild("OpenCrate")
				OpenCrate9:InvokeServer("KnifeBox2", "MysteryBox", "Coins")
				task.spawn(function(...)
				end)
				task.wait(1)
				require(ReplicatedStorage.Database.Sync.NewShop)
				require(ReplicatedStorage.Modules.ProfileData)
				local Remotes13 = ReplicatedStorage:FindFirstChild("Remotes")
				local Shop10 = Remotes13:FindFirstChild("Shop")
				local OpenCrate10 = Shop10:FindFirstChild("OpenCrate")
				OpenCrate10:InvokeServer("KnifeBox2", "MysteryBox", "Coins")
				task.spawn(function(...)
				end)
				task.wait(1)
				-- [envlog] the statements above repeat forever (loop)
			end)
		end
	end
})
require(ReplicatedStorage.Database.Sync.MysteryBox)
require(ReplicatedStorage.Database.Sync.NewShop)
Tab7:Toggle({
	Title = "Auto Open Knife Box #3",
	Desc = "Waits until you get ? Coins, then auto-opens the box for you!",
	Flag = "Toggle_Box_KnifeBox3",
	Type = "Toggle",
	Value = false,
	Callback = function(state, arg95)
		if state then
			task.spawn(function(...)
				require(ReplicatedStorage.Database.Sync.NewShop)
				require(ReplicatedStorage.Modules.ProfileData)
				local Remotes14 = ReplicatedStorage:FindFirstChild("Remotes")
				local Shop11 = Remotes14:FindFirstChild("Shop")
				local OpenCrate11 = Shop11:FindFirstChild("OpenCrate")
				OpenCrate11:InvokeServer("KnifeBox3", "MysteryBox", "Coins")
				task.spawn(function(...)
				end)
				task.wait(1)
				require(ReplicatedStorage.Database.Sync.NewShop)
				require(ReplicatedStorage.Modules.ProfileData)
				local Remotes15 = ReplicatedStorage:FindFirstChild("Remotes")
				local Shop12 = Remotes15:FindFirstChild("Shop")
				local OpenCrate12 = Shop12:FindFirstChild("OpenCrate")
				OpenCrate12:InvokeServer("KnifeBox3", "MysteryBox", "Coins")
				task.spawn(function(...)
				end)
				task.wait(1)
				-- [envlog] the statements above repeat forever (loop)
			end)
		end
	end
})
require(ReplicatedStorage.Database.Sync.MysteryBox)
require(ReplicatedStorage.Database.Sync.NewShop)
Tab7:Toggle({
	Title = "Auto Open Knife Box #4",
	Desc = "Waits until you get ? Coins, then auto-opens the box for you!",
	Flag = "Toggle_Box_KnifeBox4",
	Type = "Toggle",
	Value = false,
	Callback = function(state, arg97)
		if state then
			task.spawn(function(...)
				require(ReplicatedStorage.Database.Sync.NewShop)
				require(ReplicatedStorage.Modules.ProfileData)
				local Remotes16 = ReplicatedStorage:FindFirstChild("Remotes")
				local Shop13 = Remotes16:FindFirstChild("Shop")
				local OpenCrate13 = Shop13:FindFirstChild("OpenCrate")
				OpenCrate13:InvokeServer("KnifeBox4", "MysteryBox", "Coins")
				task.spawn(function(...)
				end)
				task.wait(1)
				require(ReplicatedStorage.Database.Sync.NewShop)
				require(ReplicatedStorage.Modules.ProfileData)
				local Remotes17 = ReplicatedStorage:FindFirstChild("Remotes")
				local Shop14 = Remotes17:FindFirstChild("Shop")
				local OpenCrate14 = Shop14:FindFirstChild("OpenCrate")
				OpenCrate14:InvokeServer("KnifeBox4", "MysteryBox", "Coins")
				task.spawn(function(...)
				end)
				task.wait(1)
				-- [envlog] the statements above repeat forever (loop)
			end)
		end
	end
})
require(ReplicatedStorage.Database.Sync.MysteryBox)
require(ReplicatedStorage.Database.Sync.NewShop)
Tab7:Toggle({
	Title = "Auto Open Knife Box #5",
	Desc = "Waits until you get ? Coins, then auto-opens the box for you!",
	Flag = "Toggle_Box_KnifeBox5",
	Type = "Toggle",
	Value = false,
	Callback = function(state, arg99)
		if state then
			task.spawn(function(...)
				require(ReplicatedStorage.Database.Sync.NewShop)
				require(ReplicatedStorage.Modules.ProfileData)
				local Remotes18 = ReplicatedStorage:FindFirstChild("Remotes")
				local Shop15 = Remotes18:FindFirstChild("Shop")
				local OpenCrate15 = Shop15:FindFirstChild("OpenCrate")
				OpenCrate15:InvokeServer("KnifeBox5", "MysteryBox", "Coins")
				task.spawn(function(...)
				end)
				task.wait(1)
				require(ReplicatedStorage.Database.Sync.NewShop)
				require(ReplicatedStorage.Modules.ProfileData)
				local Remotes19 = ReplicatedStorage:FindFirstChild("Remotes")
				local Shop16 = Remotes19:FindFirstChild("Shop")
				local OpenCrate16 = Shop16:FindFirstChild("OpenCrate")
				OpenCrate16:InvokeServer("KnifeBox5", "MysteryBox", "Coins")
				task.spawn(function(...)
				end)
				task.wait(1)
				-- [envlog] the statements above repeat forever (loop)
			end)
		end
	end
})
require(ReplicatedStorage.Database.Sync.MysteryBox)
require(ReplicatedStorage.Database.Sync.NewShop)
Tab7:Toggle({
	Title = "Auto Open Gun Box #1",
	Desc = "Waits until you get ? Coins, then auto-opens the box for you!",
	Flag = "Toggle_Box_GunBox1",
	Type = "Toggle",
	Value = false,
	Callback = function(state, arg101)
		if state then
			task.spawn(function(...)
				require(ReplicatedStorage.Database.Sync.NewShop)
				require(ReplicatedStorage.Modules.ProfileData)
				local Remotes20 = ReplicatedStorage:FindFirstChild("Remotes")
				local Shop17 = Remotes20:FindFirstChild("Shop")
				local OpenCrate17 = Shop17:FindFirstChild("OpenCrate")
				OpenCrate17:InvokeServer("GunBox1", "MysteryBox", "Coins")
				task.spawn(function(...)
				end)
				task.wait(1)
				require(ReplicatedStorage.Database.Sync.NewShop)
				require(ReplicatedStorage.Modules.ProfileData)
				local Remotes21 = ReplicatedStorage:FindFirstChild("Remotes")
				local Shop18 = Remotes21:FindFirstChild("Shop")
				local OpenCrate18 = Shop18:FindFirstChild("OpenCrate")
				OpenCrate18:InvokeServer("GunBox1", "MysteryBox", "Coins")
				task.spawn(function(...)
				end)
				task.wait(1)
				-- [envlog] the statements above repeat forever (loop)
			end)
		end
	end
})
require(ReplicatedStorage.Database.Sync.MysteryBox)
require(ReplicatedStorage.Database.Sync.NewShop)
Tab7:Toggle({
	Title = "Auto Open Gun Box #2",
	Desc = "Waits until you get ? Coins, then auto-opens the box for you!",
	Flag = "Toggle_Box_GunBox2",
	Type = "Toggle",
	Value = false,
	Callback = function(state, arg103)
		if state then
			task.spawn(function(...)
				require(ReplicatedStorage.Database.Sync.NewShop)
				require(ReplicatedStorage.Modules.ProfileData)
				local Remotes22 = ReplicatedStorage:FindFirstChild("Remotes")
				local Shop19 = Remotes22:FindFirstChild("Shop")
				local OpenCrate19 = Shop19:FindFirstChild("OpenCrate")
				OpenCrate19:InvokeServer("GunBox2", "MysteryBox", "Coins")
				task.spawn(function(...)
				end)
				task.wait(1)
				require(ReplicatedStorage.Database.Sync.NewShop)
				require(ReplicatedStorage.Modules.ProfileData)
				local Remotes23 = ReplicatedStorage:FindFirstChild("Remotes")
				local Shop20 = Remotes23:FindFirstChild("Shop")
				local OpenCrate20 = Shop20:FindFirstChild("OpenCrate")
				OpenCrate20:InvokeServer("GunBox2", "MysteryBox", "Coins")
				task.spawn(function(...)
				end)
				task.wait(1)
				-- [envlog] the statements above repeat forever (loop)
			end)
		end
	end
})
require(ReplicatedStorage.Database.Sync.MysteryBox)
require(ReplicatedStorage.Database.Sync.NewShop)
Tab7:Toggle({
	Title = "Auto Open Gun Box #3",
	Desc = "Waits until you get ? Coins, then auto-opens the box for you!",
	Flag = "Toggle_Box_GunBox3",
	Type = "Toggle",
	Value = false,
	Callback = function(state, arg105)
		if state then
			task.spawn(function(...)
				require(ReplicatedStorage.Database.Sync.NewShop)
				require(ReplicatedStorage.Modules.ProfileData)
				local Remotes24 = ReplicatedStorage:FindFirstChild("Remotes")
				local Shop21 = Remotes24:FindFirstChild("Shop")
				local OpenCrate21 = Shop21:FindFirstChild("OpenCrate")
				OpenCrate21:InvokeServer("GunBox3", "MysteryBox", "Coins")
				task.spawn(function(...)
				end)
				task.wait(1)
				require(ReplicatedStorage.Database.Sync.NewShop)
				require(ReplicatedStorage.Modules.ProfileData)
				local Remotes25 = ReplicatedStorage:FindFirstChild("Remotes")
				local Shop22 = Remotes25:FindFirstChild("Shop")
				local OpenCrate22 = Shop22:FindFirstChild("OpenCrate")
				OpenCrate22:InvokeServer("GunBox3", "MysteryBox", "Coins")
				task.spawn(function(...)
				end)
				task.wait(1)
				-- [envlog] the statements above repeat forever (loop)
			end)
		end
	end
})
require(ReplicatedStorage.Database.Sync.MysteryBox)
require(ReplicatedStorage.Database.Sync.NewShop)
Tab7:Toggle({
	Title = "Auto Open Rainbow Box",
	Desc = "Waits until you get ? Coins, then auto-opens the box for you!",
	Flag = "Toggle_Box_MLG_Box",
	Type = "Toggle",
	Value = false,
	Callback = function(state, arg107)
		if state then
			task.spawn(function(...)
				require(ReplicatedStorage.Database.Sync.NewShop)
				require(ReplicatedStorage.Modules.ProfileData)
				local Remotes26 = ReplicatedStorage:FindFirstChild("Remotes")
				local Shop23 = Remotes26:FindFirstChild("Shop")
				local OpenCrate23 = Shop23:FindFirstChild("OpenCrate")
				OpenCrate23:InvokeServer("MLG Box", "MysteryBox", "Coins")
				task.spawn(function(...)
				end)
				task.wait(1)
				require(ReplicatedStorage.Database.Sync.NewShop)
				require(ReplicatedStorage.Modules.ProfileData)
				local Remotes27 = ReplicatedStorage:FindFirstChild("Remotes")
				local Shop24 = Remotes27:FindFirstChild("Shop")
				local OpenCrate24 = Shop24:FindFirstChild("OpenCrate")
				OpenCrate24:InvokeServer("MLG Box", "MysteryBox", "Coins")
				task.spawn(function(...)
				end)
				task.wait(1)
				-- [envlog] the statements above repeat forever (loop)
			end)
		end
	end
})
require(ReplicatedStorage.Database.Sync.MysteryBox)
local descendants22 = Window.UIElements.Main:GetDescendants()
for i67, v67 in ipairs(descendants22) do
end
Tab4:Toggle({
	Title = "Lock Buttons In Place",
	Desc = "Stops the on-screen buttons moving when you tap them.",
	Flag = "Toggle_Lock_Buttons_In_Place",
	Type = "Toggle",
	Value = false,
	Callback = function(state, arg109)
	end
})
Tab4:Dropdown({
	Title = "Button Design",
	Desc = "Round Design is a circle with a ring that fills as the cooldown runs. Default Design puts a gauge along the bottom.",
	Flag = "Dropdown_Button_Design",
	Multi = false,
	Value = "Default Design",
	Values = { "Round Design", "Default Design" },
	Callback = function(state, arg111)
	end
})
Tab4:Slider({
	Title = "Button Size",
	Desc = "Scales the on-screen buttons. 100 is normal.",
	Flag = "Slider_Button_Size",
	Step = 1,
	Value = { Default = 70, Max = 200, Min = 50 },
	Callback = function(state, arg113)
	end
})
Tab4:Section({ Title = "On-Screen Buttons" })
Tab4:Toggle({
	Title = "Shoot Murderer",
	Desc = "Draggable on-screen button that shoots the murderer",
	Flag = "Toggle_Shoot_Murderer",
	Type = "Toggle",
	Value = false,
	Callback = function(state, arg115)
		if state then
			local ScreenGui2 = Instance.new("ScreenGui")
			ScreenGui2.Name = "FVLShootButton"
			ScreenGui2.ResetOnSpawn = false
			ScreenGui2.IgnoreGuiInset = true
			ScreenGui2.Parent = CoreGui
			local TextButton = Instance.new("TextButton")
			TextButton.Size = UDim2.new(0, 72, 0, 72)
			TextButton.Position = UDim2.new(0.5, -143.5, 0.25, 0)
			TextButton.AnchorPoint = Vector2.new(0.5, 0.5)
			TextButton.Text = ""
			TextButton.BackgroundColor3 = Color3.fromRGB(10, 10, 13)
			TextButton.BackgroundTransparency = 0.18
			TextButton.BorderSizePixel = 0
			TextButton.AutoButtonColor = false
			TextButton.ZIndex = 2
			TextButton.Name = "ShootBtn"
			TextButton.Parent = ScreenGui2
			local UICorner = Instance.new("UICorner", TextButton)
			UICorner.CornerRadius = UDim.new(0, 16)
			local UIScale = Instance.new("UIScale")
			UIScale.Scale = 0.7
			UIScale.Parent = TextButton
			local UIStroke = Instance.new("UIStroke")
			UIStroke.Thickness = 1.5
			UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			UIStroke.Color = Color3.fromHex("#257AF7")
			UIStroke.Transparency = 0.15
			UIStroke.Parent = TextButton
			local Frame2 = Instance.new("Frame")
			Frame2.Name = "Plate"
			Frame2.Size = UDim2.new(0, 30, 0, 30)
			Frame2.Position = UDim2.new(0.5, 0, 0, 25)
			Frame2.AnchorPoint = Vector2.new(0.5, 0.5)
			Frame2.BackgroundColor3 = Color3.fromHex("#257AF7")
			Frame2.BackgroundTransparency = 0.82
			Frame2.BorderSizePixel = 0
			Frame2.ZIndex = 3
			Frame2.Parent = TextButton
			local UICorner2 = Instance.new("UICorner", Frame2)
			UICorner2.CornerRadius = UDim.new(0, 11)
			local UIStroke2 = Instance.new("UIStroke")
			UIStroke2.Thickness = 1
			UIStroke2.Color = Color3.fromHex("#257AF7")
			UIStroke2.Transparency = 0.55
			UIStroke2.Parent = Frame2
			local ImageLabel2 = Instance.new("ImageLabel")
			ImageLabel2.Name = "Icon"
			ImageLabel2.Size = UDim2.new(0, 23, 0, 23)
			ImageLabel2.Position = UDim2.new(0.5, 0, 0.5, 0)
			ImageLabel2.AnchorPoint = Vector2.new(0.5, 0.5)
			ImageLabel2.BackgroundTransparency = 1
			ImageLabel2.Image = "rbxassetid://134242818164054"
			ImageLabel2.ImageColor3 = Color3.new(0.61529412046074872, 0.76529411822557458, 0.98588235378265376)
			ImageLabel2.ZIndex = 5
			ImageLabel2.Parent = Frame2
			local TextLabel = Instance.new("TextLabel")
			TextLabel.Name = "Label"
			TextLabel.Size = UDim2.new(1, -10, 0, 24)
			TextLabel.Position = UDim2.new(0.5, 0, 1, -7)
			TextLabel.AnchorPoint = Vector2.new(0.5, 1)
			TextLabel.BackgroundTransparency = 1
			TextLabel.Text = "SHOOT\nMURDERER"
			TextLabel.TextSize = 9
			TextLabel.Font = Enum.Font.GothamBold
			TextLabel.TextColor3 = Color3.fromRGB(146, 146, 158)
			TextLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
			TextLabel.TextStrokeTransparency = 1
			TextLabel.TextWrapped = true
			TextLabel.LineHeight = 1.1
			TextLabel.ZIndex = 6
			TextLabel.Parent = TextButton
			Frame2.Position = UDim2.new(0.5, 0, 0, 22)
			TextLabel.AnchorPoint = Vector2.new(0.5, 0)
			TextLabel.TextYAlignment = Enum.TextYAlignment.Center
			TextLabel.Size = UDim2.new(1, -6, 0, 24)
			TextLabel.Position = UDim2.new(0.5, 0, 0, 39)
			ImageLabel2.Size = UDim2.fromOffset(22, 22)
			local UICorner3 = TextButton:FindFirstChildOfClass("UICorner")
			local UICorner4 = TextButton:FindFirstChildOfClass("UICorner")
			UICorner4.CornerRadius = UICorner3.CornerRadius
			TextButton.BackgroundColor3 = Color3.fromRGB(10, 10, 13)
			TextButton.ClipsDescendants = false
			UIStroke.Thickness = 1.5
			Frame2.Size = UDim2.new(0, 30, 0, 30)
			Frame2.Position = UDim2.new(0.5, 0, 0, 22)
			Frame2.BackgroundColor3 = Color3.fromHex("#257AF7")
			ImageLabel2.Size = UDim2.fromOffset(22, 22)
			TextLabel.Visible = true
			TextLabel.Position = UDim2.new(0.5, 0, 0, 39)
			TextLabel.Size = UDim2.new(1, -6, 0, 24)
			local tween = TweenService:Create(TextButton, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.18 })
			tween:Play()
			local tween2 = TweenService:Create(UIStroke, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Color = Color3.fromHex("#257AF7"), Transparency = 0.15 })
			tween2:Play()
			local tween3 = TweenService:Create(Frame2, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.82 })
			tween3:Play()
			local tween4 = TweenService:Create(UIStroke2, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Transparency = 0.55 })
			tween4:Play()
			local tween5 = TweenService:Create(ImageLabel2, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { ImageColor3 = Color3.new(0.61529412046074872, 0.76529411822557458, 0.98588235378265376) })
			tween5:Play()
			local tween6 = TweenService:Create(TextLabel, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(146, 146, 158) })
			tween6:Play()
			local UICorner5 = TextButton:FindFirstChildOfClass("UICorner")
			UICorner5.CornerRadius = UDim.new(0, 20)
			UIStroke.Thickness = 1
			ImageLabel2.Size = UDim2.fromOffset(22, 22)
			local tween7 = TweenService:Create(TextButton, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.1 })
			tween7:Play()
			local tween8 = TweenService:Create(UIStroke, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Color = Color3.fromRGB(255, 255, 255), Transparency = 0.88 })
			tween8:Play()
			local tween9 = TweenService:Create(Frame2, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 1 })
			tween9:Play()
			local tween10 = TweenService:Create(UIStroke2, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Transparency = 1 })
			tween10:Play()
			local tween11 = TweenService:Create(ImageLabel2, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { ImageColor3 = Color3.new(0.35882353410124779, 0.60882353037595749, 0.97647058963775635) })
			tween11:Play()
			local Frame3 = Instance.new("Frame")
			Frame3.Name = "Track"
			Frame3.AnchorPoint = Vector2.new(0.5, 1)
			Frame3.Position = UDim2.new(0.5, 0, 1, -6)
			Frame3.Size = UDim2.new(1, -26, 0, 4)
			Frame3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Frame3.BackgroundTransparency = 0.86
			Frame3.BorderSizePixel = 0
			Frame3.ZIndex = 4
			Frame3.Parent = TextButton
			local UICorner6 = Instance.new("UICorner", Frame3)
			UICorner6.CornerRadius = UDim.new(1, 0)
			local Frame4 = Instance.new("Frame")
			Frame4.Name = "Fill"
			Frame4.AnchorPoint = Vector2.new(0, 0.5)
			Frame4.Position = UDim2.new(0, 0, 0.5, 0)
			Frame4.Size = UDim2.fromScale(0, 1)
			Frame4.BackgroundColor3 = Color3.fromHex("#257AF7")
			Frame4.BorderSizePixel = 0
			Frame4.ZIndex = 5
			Frame4.Parent = Frame3
			local UICorner7 = Instance.new("UICorner", Frame4)
			UICorner7.CornerRadius = UDim.new(1, 0)
			Frame2.Position = UDim2.new(0.5, 0, 0, 22)
			TextLabel.AnchorPoint = Vector2.new(0.5, 0)
			TextLabel.TextYAlignment = Enum.TextYAlignment.Center
			TextLabel.Size = UDim2.new(1, -6, 0, 24)
			TextLabel.Position = UDim2.new(0.5, 0, 0, 39)
			Frame3.Visible = true
			Frame4.Visible = true
			Frame4.BackgroundColor3 = Color3.fromHex("#257AF7")
			Frame4.Size = UDim2.fromScale(0, 1)
			local tween12 = TweenService:Create(UIStroke, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Color = Color3.fromRGB(255, 255, 255), Transparency = 0.88 })
			tween12:Play()
			local tween13 = TweenService:Create(ImageLabel2, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { ImageColor3 = Color3.new(0.35882353410124779, 0.60882353037595749, 0.97647058963775635) })
			tween13:Play()
			local tween14 = TweenService:Create(TextLabel, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(146, 146, 158) })
			tween14:Play()
			Frame4.Size = UDim2.fromScale(0, 1)
			TextButton.MouseEnter:Connect(function(arg116)
				local tween178 = TweenService:Create(TextButton, TweenInfo.new(0.12, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.03 })
				tween178:Play()
				local tween179 = TweenService:Create(TextLabel, TweenInfo.new(0.12, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(191, 219, 254) })
				tween179:Play()
			end)
			TextButton.MouseLeave:Connect(function(arg117)
				local tween180 = TweenService:Create(TextButton, TweenInfo.new(0.12, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.1 })
				tween180:Play()
				local tween181 = TweenService:Create(TextLabel, TweenInfo.new(0.12, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(146, 146, 158) })
				tween181:Play()
			end)
			TextButton.MouseButton1Click:Connect(function()
				local tween182 = TweenService:Create(UIScale, TweenInfo.new(0.06, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = 0.651 })
				tween182:Play()
				task.delay(0.08, function(...)
				end)
				task.spawn(function(...)
					local players41 = Players:GetPlayers()
					for i108, v108 in ipairs(players41) do
						local Backpack24 = v108:FindFirstChildOfClass("Backpack")
						Backpack24:FindFirstChild("Gun")
						task.spawn(function(...)
							task.wait(0.5)
						end)
						result:Notify({ Title = "Not Sheriff!", Content = "You don't have the gun.", Duration = 2, Icon = "x" })
					end
				end)
			end)
			TextButton.TouchTap:Connect(function(arg118)
			end)
			TextButton.InputBegan:Connect(function(input2, gameProcessed2)
			end)
			local connection23 = UserInputService.InputChanged:Connect(function(input3, gameProcessed3)
			end)
			local connection24 = UserInputService.InputEnded:Connect(function(input4, gameProcessed4)
			end)
		else
			connection23:Disconnect()
			connection24:Disconnect()
			ScreenGui2:Destroy()
		end
	end
})
Tab4:Toggle({
	Title = "Grab Gun",
	Desc = "Grabs the gun off the floor. It only drops when the sheriff dies.",
	Flag = "Toggle_Grab_Gun",
	Type = "Toggle",
	Value = false,
	Callback = function(state, arg120)
		if state then
			local ScreenGui3 = Instance.new("ScreenGui")
			ScreenGui3.Name = "FVLGrabButton"
			ScreenGui3.ResetOnSpawn = false
			ScreenGui3.IgnoreGuiInset = true
			ScreenGui3.Parent = CoreGui
			local TextButton2 = Instance.new("TextButton")
			TextButton2.Size = UDim2.new(0, 72, 0, 72)
			TextButton2.Position = UDim2.new(0.5, -86.1, 0.25, 0)
			TextButton2.AnchorPoint = Vector2.new(0.5, 0.5)
			TextButton2.Text = ""
			TextButton2.BackgroundColor3 = Color3.fromRGB(10, 10, 13)
			TextButton2.BackgroundTransparency = 0.18
			TextButton2.BorderSizePixel = 0
			TextButton2.AutoButtonColor = false
			TextButton2.ZIndex = 2
			TextButton2.Name = "GrabBtn"
			TextButton2.Parent = ScreenGui3
			local UICorner8 = Instance.new("UICorner", TextButton2)
			UICorner8.CornerRadius = UDim.new(0, 16)
			local UIScale2 = Instance.new("UIScale")
			UIScale2.Scale = 0.7
			UIScale2.Parent = TextButton2
			local UIStroke3 = Instance.new("UIStroke")
			UIStroke3.Thickness = 1.5
			UIStroke3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			UIStroke3.Color = Color3.fromHex("#10C550")
			UIStroke3.Transparency = 0.15
			UIStroke3.Parent = TextButton2
			local Frame5 = Instance.new("Frame")
			Frame5.Name = "Plate"
			Frame5.Size = UDim2.new(0, 30, 0, 30)
			Frame5.Position = UDim2.new(0.5, 0, 0, 25)
			Frame5.AnchorPoint = Vector2.new(0.5, 0.5)
			Frame5.BackgroundColor3 = Color3.fromHex("#10C550")
			Frame5.BackgroundTransparency = 0.82
			Frame5.BorderSizePixel = 0
			Frame5.ZIndex = 3
			Frame5.Parent = TextButton2
			local UICorner9 = Instance.new("UICorner", Frame5)
			UICorner9.CornerRadius = UDim.new(0, 11)
			local UIStroke4 = Instance.new("UIStroke")
			UIStroke4.Thickness = 1
			UIStroke4.Color = Color3.fromHex("#10C550")
			UIStroke4.Transparency = 0.55
			UIStroke4.Parent = Frame5
			local ImageLabel3 = Instance.new("ImageLabel")
			ImageLabel3.Name = "Icon"
			ImageLabel3.Size = UDim2.new(0, 23, 0, 23)
			ImageLabel3.Position = UDim2.new(0.5, 0, 0.5, 0)
			ImageLabel3.AnchorPoint = Vector2.new(0.5, 0.5)
			ImageLabel3.BackgroundTransparency = 1
			ImageLabel3.Image = "rbxassetid://130703864968637"
			ImageLabel3.ImageColor3 = Color3.new(0.5782352957874537, 0.89764706492424007, 0.69117647558450701)
			ImageLabel3.ZIndex = 5
			ImageLabel3.Parent = Frame5
			local TextLabel2 = Instance.new("TextLabel")
			TextLabel2.Name = "Label"
			TextLabel2.Size = UDim2.new(1, -10, 0, 24)
			TextLabel2.Position = UDim2.new(0.5, 0, 1, -7)
			TextLabel2.AnchorPoint = Vector2.new(0.5, 1)
			TextLabel2.BackgroundTransparency = 1
			TextLabel2.Text = "GRAB\nGUN"
			TextLabel2.TextSize = 9
			TextLabel2.Font = Enum.Font.GothamBold
			TextLabel2.TextColor3 = Color3.fromRGB(146, 146, 158)
			TextLabel2.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
			TextLabel2.TextStrokeTransparency = 1
			TextLabel2.TextWrapped = true
			TextLabel2.LineHeight = 1.1
			TextLabel2.ZIndex = 6
			TextLabel2.Parent = TextButton2
			Frame5.Position = UDim2.new(0.5, 0, 0, 22)
			TextLabel2.AnchorPoint = Vector2.new(0.5, 0)
			TextLabel2.TextYAlignment = Enum.TextYAlignment.Center
			TextLabel2.Size = UDim2.new(1, -6, 0, 24)
			TextLabel2.Position = UDim2.new(0.5, 0, 0, 39)
			ImageLabel3.Size = UDim2.fromOffset(22, 22)
			local UICorner10 = TextButton2:FindFirstChildOfClass("UICorner")
			local UICorner11 = TextButton2:FindFirstChildOfClass("UICorner")
			UICorner11.CornerRadius = UICorner10.CornerRadius
			TextButton2.BackgroundColor3 = Color3.fromRGB(10, 10, 13)
			TextButton2.ClipsDescendants = false
			UIStroke3.Thickness = 1.5
			Frame5.Size = UDim2.new(0, 30, 0, 30)
			Frame5.Position = UDim2.new(0.5, 0, 0, 22)
			Frame5.BackgroundColor3 = Color3.fromHex("#10C550")
			ImageLabel3.Size = UDim2.fromOffset(22, 22)
			TextLabel2.Visible = true
			TextLabel2.Position = UDim2.new(0.5, 0, 0, 39)
			TextLabel2.Size = UDim2.new(1, -6, 0, 24)
			local tween15 = TweenService:Create(TextButton2, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.18 })
			tween15:Play()
			local tween16 = TweenService:Create(UIStroke3, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Color = Color3.fromHex("#10C550"), Transparency = 0.15 })
			tween16:Play()
			local tween17 = TweenService:Create(Frame5, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.82 })
			tween17:Play()
			local tween18 = TweenService:Create(UIStroke4, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Transparency = 0.55 })
			tween18:Play()
			local tween19 = TweenService:Create(ImageLabel3, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { ImageColor3 = Color3.new(0.5782352957874537, 0.89764706492424007, 0.69117647558450701) })
			tween19:Play()
			local tween20 = TweenService:Create(TextLabel2, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(146, 146, 158) })
			tween20:Play()
			local UICorner12 = TextButton2:FindFirstChildOfClass("UICorner")
			UICorner12.CornerRadius = UDim.new(0, 20)
			UIStroke3.Thickness = 1
			ImageLabel3.Size = UDim2.fromOffset(22, 22)
			local tween21 = TweenService:Create(TextButton2, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.1 })
			tween21:Play()
			local tween22 = TweenService:Create(UIStroke3, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Color = Color3.fromRGB(255, 255, 255), Transparency = 0.88 })
			tween22:Play()
			local tween23 = TweenService:Create(Frame5, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 1 })
			tween23:Play()
			local tween24 = TweenService:Create(UIStroke4, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Transparency = 1 })
			tween24:Play()
			local tween25 = TweenService:Create(ImageLabel3, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { ImageColor3 = Color3.new(0.29705882631242275, 0.82941177487373352, 0.48529412597417831) })
			tween25:Play()
			local Frame6 = Instance.new("Frame")
			Frame6.Name = "Track"
			Frame6.AnchorPoint = Vector2.new(0.5, 1)
			Frame6.Position = UDim2.new(0.5, 0, 1, -6)
			Frame6.Size = UDim2.new(1, -26, 0, 4)
			Frame6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Frame6.BackgroundTransparency = 0.86
			Frame6.BorderSizePixel = 0
			Frame6.ZIndex = 4
			Frame6.Parent = TextButton2
			local UICorner13 = Instance.new("UICorner", Frame6)
			UICorner13.CornerRadius = UDim.new(1, 0)
			local Frame7 = Instance.new("Frame")
			Frame7.Name = "Fill"
			Frame7.AnchorPoint = Vector2.new(0, 0.5)
			Frame7.Position = UDim2.new(0, 0, 0.5, 0)
			Frame7.Size = UDim2.fromScale(0, 1)
			Frame7.BackgroundColor3 = Color3.fromHex("#10C550")
			Frame7.BorderSizePixel = 0
			Frame7.ZIndex = 5
			Frame7.Parent = Frame6
			local UICorner14 = Instance.new("UICorner", Frame7)
			UICorner14.CornerRadius = UDim.new(1, 0)
			Frame5.Position = UDim2.new(0.5, 0, 0, 22)
			TextLabel2.AnchorPoint = Vector2.new(0.5, 0)
			TextLabel2.TextYAlignment = Enum.TextYAlignment.Center
			TextLabel2.Size = UDim2.new(1, -6, 0, 24)
			TextLabel2.Position = UDim2.new(0.5, 0, 0, 39)
			Frame6.Visible = true
			Frame7.Visible = true
			Frame7.BackgroundColor3 = Color3.fromHex("#10C550")
			Frame7.Size = UDim2.fromScale(0, 1)
			local tween26 = TweenService:Create(UIStroke3, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Color = Color3.fromRGB(255, 255, 255), Transparency = 0.88 })
			tween26:Play()
			local tween27 = TweenService:Create(ImageLabel3, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { ImageColor3 = Color3.new(0.29705882631242275, 0.82941177487373352, 0.48529412597417831) })
			tween27:Play()
			local tween28 = TweenService:Create(TextLabel2, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(146, 146, 158) })
			tween28:Play()
			Frame7.Size = UDim2.fromScale(0, 1)
			TextButton2.MouseEnter:Connect(function(arg121)
				local tween183 = TweenService:Create(TextButton2, TweenInfo.new(0.12, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.03 })
				tween183:Play()
				local tween184 = TweenService:Create(TextLabel2, TweenInfo.new(0.12, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(191, 219, 254) })
				tween184:Play()
			end)
			TextButton2.MouseLeave:Connect(function(arg122)
				local tween185 = TweenService:Create(TextButton2, TweenInfo.new(0.12, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.1 })
				tween185:Play()
				local tween186 = TweenService:Create(TextLabel2, TweenInfo.new(0.12, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(146, 146, 158) })
				tween186:Play()
			end)
			TextButton2.MouseButton1Click:Connect(function()
				local tween187 = TweenService:Create(UIScale2, TweenInfo.new(0.06, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = 0.651 })
				tween187:Play()
				task.delay(0.08, function(...)
				end)
				task.spawn(function(...)
					local descendants42 = workspace:GetDescendants()
					for i109, v109 in ipairs(descendants42) do
					end
					workspace:GetChildren()
					result:Notify({
		Title = "Not In A Round",
		Content = "The round is over, so the gun can't be picked up. Wait for the next one.",
		Duration = 3,
		Icon = "clock"
	})
				end)
			end)
			TextButton2.TouchTap:Connect(function(arg123)
			end)
			TextButton2.InputBegan:Connect(function(input5, gameProcessed5)
			end)
			local connection25 = UserInputService.InputChanged:Connect(function(input6, gameProcessed6)
			end)
			local connection26 = UserInputService.InputEnded:Connect(function(input7, gameProcessed7)
			end)
		else
			connection25:Disconnect()
			connection26:Disconnect()
			ScreenGui3:Destroy()
		end
	end
})
Tab4:Toggle({
	Title = "Throw Knife",
	Desc = "Throws your knife at the nearest player",
	Flag = "Toggle_Throw_Knife",
	Type = "Toggle",
	Value = false,
	Callback = function(state, arg125)
		if state then
			local ScreenGui4 = Instance.new("ScreenGui")
			ScreenGui4.Name = "FVLThrowButton"
			ScreenGui4.ResetOnSpawn = false
			ScreenGui4.IgnoreGuiInset = true
			ScreenGui4.Parent = CoreGui
			local TextButton3 = Instance.new("TextButton")
			TextButton3.Size = UDim2.new(0, 72, 0, 72)
			TextButton3.Position = UDim2.new(0.5, 86.1, 0.25, 0)
			TextButton3.AnchorPoint = Vector2.new(0.5, 0.5)
			TextButton3.Text = ""
			TextButton3.BackgroundColor3 = Color3.fromRGB(10, 10, 13)
			TextButton3.BackgroundTransparency = 0.18
			TextButton3.BorderSizePixel = 0
			TextButton3.AutoButtonColor = false
			TextButton3.ZIndex = 2
			TextButton3.Name = "ThrowBtn"
			TextButton3.Parent = ScreenGui4
			local UICorner15 = Instance.new("UICorner", TextButton3)
			UICorner15.CornerRadius = UDim.new(0, 16)
			local UIScale3 = Instance.new("UIScale")
			UIScale3.Scale = 0.7
			UIScale3.Parent = TextButton3
			local UIStroke5 = Instance.new("UIStroke")
			UIStroke5.Thickness = 1.5
			UIStroke5.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			UIStroke5.Color = Color3.fromHex("#EF4444")
			UIStroke5.Transparency = 0.15
			UIStroke5.Parent = TextButton3
			local Frame8 = Instance.new("Frame")
			Frame8.Name = "Plate"
			Frame8.Size = UDim2.new(0, 30, 0, 30)
			Frame8.Position = UDim2.new(0.5, 0, 0, 25)
			Frame8.AnchorPoint = Vector2.new(0.5, 0.5)
			Frame8.BackgroundColor3 = Color3.fromHex("#EF4444")
			Frame8.BackgroundTransparency = 0.82
			Frame8.BorderSizePixel = 0
			Frame8.ZIndex = 3
			Frame8.Parent = TextButton3
			local UICorner16 = Instance.new("UICorner", Frame8)
			UICorner16.CornerRadius = UDim.new(0, 11)
			local UIStroke6 = Instance.new("UIStroke")
			UIStroke6.Thickness = 1
			UIStroke6.Color = Color3.fromHex("#EF4444")
			UIStroke6.Transparency = 0.55
			UIStroke6.Parent = Frame8
			local ImageLabel4 = Instance.new("ImageLabel")
			ImageLabel4.Name = "Icon"
			ImageLabel4.Size = UDim2.new(0, 23, 0, 23)
			ImageLabel4.Position = UDim2.new(0.5, 0, 0.5, 0)
			ImageLabel4.AnchorPoint = Vector2.new(0.5, 0.5)
			ImageLabel4.BackgroundTransparency = 1
			ImageLabel4.Image = "rbxassetid://124448418211665"
			ImageLabel4.ImageColor3 = Color3.new(0.97176470756530764, 0.67000000625848766, 0.67000000625848766)
			ImageLabel4.ZIndex = 5
			ImageLabel4.Parent = Frame8
			local TextLabel3 = Instance.new("TextLabel")
			TextLabel3.Name = "Label"
			TextLabel3.Size = UDim2.new(1, -10, 0, 24)
			TextLabel3.Position = UDim2.new(0.5, 0, 1, -7)
			TextLabel3.AnchorPoint = Vector2.new(0.5, 1)
			TextLabel3.BackgroundTransparency = 1
			TextLabel3.Text = "THROW\nKNIFE"
			TextLabel3.TextSize = 9
			TextLabel3.Font = Enum.Font.GothamBold
			TextLabel3.TextColor3 = Color3.fromRGB(146, 146, 158)
			TextLabel3.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
			TextLabel3.TextStrokeTransparency = 1
			TextLabel3.TextWrapped = true
			TextLabel3.LineHeight = 1.1
			TextLabel3.ZIndex = 6
			TextLabel3.Parent = TextButton3
			Frame8.Position = UDim2.new(0.5, 0, 0, 22)
			TextLabel3.AnchorPoint = Vector2.new(0.5, 0)
			TextLabel3.TextYAlignment = Enum.TextYAlignment.Center
			TextLabel3.Size = UDim2.new(1, -6, 0, 24)
			TextLabel3.Position = UDim2.new(0.5, 0, 0, 39)
			ImageLabel4.Size = UDim2.fromOffset(22, 22)
			local UICorner17 = TextButton3:FindFirstChildOfClass("UICorner")
			local UICorner18 = TextButton3:FindFirstChildOfClass("UICorner")
			UICorner18.CornerRadius = UICorner17.CornerRadius
			TextButton3.BackgroundColor3 = Color3.fromRGB(10, 10, 13)
			TextButton3.ClipsDescendants = false
			UIStroke5.Thickness = 1.5
			Frame8.Size = UDim2.new(0, 30, 0, 30)
			Frame8.Position = UDim2.new(0.5, 0, 0, 22)
			Frame8.BackgroundColor3 = Color3.fromHex("#EF4444")
			ImageLabel4.Size = UDim2.fromOffset(22, 22)
			TextLabel3.Visible = true
			TextLabel3.Position = UDim2.new(0.5, 0, 0, 39)
			TextLabel3.Size = UDim2.new(1, -6, 0, 24)
			local tween29 = TweenService:Create(TextButton3, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.18 })
			tween29:Play()
			local tween30 = TweenService:Create(UIStroke5, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Color = Color3.fromHex("#EF4444"), Transparency = 0.15 })
			tween30:Play()
			local tween31 = TweenService:Create(Frame8, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.82 })
			tween31:Play()
			local tween32 = TweenService:Create(UIStroke6, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Transparency = 0.55 })
			tween32:Play()
			local tween33 = TweenService:Create(ImageLabel4, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { ImageColor3 = Color3.new(0.97176470756530764, 0.67000000625848766, 0.67000000625848766) })
			tween33:Play()
			local tween34 = TweenService:Create(TextLabel3, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(146, 146, 158) })
			tween34:Play()
			local UICorner19 = TextButton3:FindFirstChildOfClass("UICorner")
			UICorner19.CornerRadius = UDim.new(0, 20)
			UIStroke5.Thickness = 1
			ImageLabel4.Size = UDim2.fromOffset(22, 22)
			local tween35 = TweenService:Create(TextButton3, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.1 })
			tween35:Play()
			local tween36 = TweenService:Create(UIStroke5, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Color = Color3.fromRGB(255, 255, 255), Transparency = 0.88 })
			tween36:Play()
			local tween37 = TweenService:Create(Frame8, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 1 })
			tween37:Play()
			local tween38 = TweenService:Create(UIStroke6, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Transparency = 1 })
			tween38:Play()
			local tween39 = TweenService:Create(ImageLabel4, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { ImageColor3 = Color3.new(0.9529411792755127, 0.45000001043081284, 0.45000001043081284) })
			tween39:Play()
			local Frame9 = Instance.new("Frame")
			Frame9.Name = "Track"
			Frame9.AnchorPoint = Vector2.new(0.5, 1)
			Frame9.Position = UDim2.new(0.5, 0, 1, -6)
			Frame9.Size = UDim2.new(1, -26, 0, 4)
			Frame9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Frame9.BackgroundTransparency = 0.86
			Frame9.BorderSizePixel = 0
			Frame9.ZIndex = 4
			Frame9.Parent = TextButton3
			local UICorner20 = Instance.new("UICorner", Frame9)
			UICorner20.CornerRadius = UDim.new(1, 0)
			local Frame10 = Instance.new("Frame")
			Frame10.Name = "Fill"
			Frame10.AnchorPoint = Vector2.new(0, 0.5)
			Frame10.Position = UDim2.new(0, 0, 0.5, 0)
			Frame10.Size = UDim2.fromScale(0, 1)
			Frame10.BackgroundColor3 = Color3.fromHex("#EF4444")
			Frame10.BorderSizePixel = 0
			Frame10.ZIndex = 5
			Frame10.Parent = Frame9
			local UICorner21 = Instance.new("UICorner", Frame10)
			UICorner21.CornerRadius = UDim.new(1, 0)
			Frame8.Position = UDim2.new(0.5, 0, 0, 22)
			TextLabel3.AnchorPoint = Vector2.new(0.5, 0)
			TextLabel3.TextYAlignment = Enum.TextYAlignment.Center
			TextLabel3.Size = UDim2.new(1, -6, 0, 24)
			TextLabel3.Position = UDim2.new(0.5, 0, 0, 39)
			Frame9.Visible = true
			Frame10.Visible = true
			Frame10.BackgroundColor3 = Color3.fromHex("#EF4444")
			Frame10.Size = UDim2.fromScale(0, 1)
			local tween40 = TweenService:Create(UIStroke5, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Color = Color3.fromRGB(255, 255, 255), Transparency = 0.88 })
			tween40:Play()
			local tween41 = TweenService:Create(ImageLabel4, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { ImageColor3 = Color3.new(0.9529411792755127, 0.45000001043081284, 0.45000001043081284) })
			tween41:Play()
			local tween42 = TweenService:Create(TextLabel3, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(146, 146, 158) })
			tween42:Play()
			Frame10.Size = UDim2.fromScale(0, 1)
			TextButton3.MouseEnter:Connect(function(arg126)
				local tween188 = TweenService:Create(TextButton3, TweenInfo.new(0.12, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.03 })
				tween188:Play()
				local tween189 = TweenService:Create(TextLabel3, TweenInfo.new(0.12, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(191, 219, 254) })
				tween189:Play()
			end)
			TextButton3.MouseLeave:Connect(function(arg127)
				local tween190 = TweenService:Create(TextButton3, TweenInfo.new(0.12, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.1 })
				tween190:Play()
				local tween191 = TweenService:Create(TextLabel3, TweenInfo.new(0.12, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(146, 146, 158) })
				tween191:Play()
			end)
			TextButton3.MouseButton1Click:Connect(function()
				local tween192 = TweenService:Create(UIScale3, TweenInfo.new(0.06, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = 0.651 })
				tween192:Play()
				task.delay(0.08, function(...)
				end)
				task.spawn(function(...)
					local players42 = Players:GetPlayers()
					for i110, v110 in ipairs(players42) do
						local Backpack25 = v110:FindFirstChildOfClass("Backpack")
						Backpack25:FindFirstChild("Knife")
						result:Notify({ Title = "Not Murderer!", Content = "You don't have the knife.", Duration = 2, Icon = "x" })
						task.spawn(function(...)
							task.wait(0.5)
						end)
					end
				end)
			end)
			TextButton3.TouchTap:Connect(function(arg128)
			end)
			TextButton3.InputBegan:Connect(function(input8, gameProcessed8)
			end)
			local connection27 = UserInputService.InputChanged:Connect(function(input9, gameProcessed9)
			end)
			local connection28 = UserInputService.InputEnded:Connect(function(input10, gameProcessed10)
			end)
		else
			connection27:Disconnect()
			connection28:Disconnect()
			ScreenGui4:Destroy()
		end
	end
})
Tab4:Toggle({
	Title = "Bomb Jump",
	Desc = "Bomb jump, with the cooldown shown on the button",
	Flag = "Toggle_Bomb_Jump",
	Type = "Toggle",
	Value = false,
	Callback = function(state, arg130)
		if state then
			local ScreenGui5 = Instance.new("ScreenGui")
			ScreenGui5.Name = "FVLBombButton"
			ScreenGui5.ResetOnSpawn = false
			ScreenGui5.IgnoreGuiInset = true
			ScreenGui5.Parent = CoreGui
			local TextButton4 = Instance.new("TextButton")
			TextButton4.Size = UDim2.new(0, 72, 0, 72)
			TextButton4.Position = UDim2.new(0.5, 28.7, 0.25, 0)
			TextButton4.AnchorPoint = Vector2.new(0.5, 0.5)
			TextButton4.Text = ""
			TextButton4.BackgroundColor3 = Color3.fromRGB(10, 10, 13)
			TextButton4.BackgroundTransparency = 0.18
			TextButton4.BorderSizePixel = 0
			TextButton4.AutoButtonColor = false
			TextButton4.ZIndex = 2
			TextButton4.Name = "BombBtn"
			TextButton4.Parent = ScreenGui5
			local UICorner22 = Instance.new("UICorner", TextButton4)
			UICorner22.CornerRadius = UDim.new(0, 16)
			local UIScale4 = Instance.new("UIScale")
			UIScale4.Scale = 0.7
			UIScale4.Parent = TextButton4
			local UIStroke7 = Instance.new("UIStroke")
			UIStroke7.Thickness = 1.5
			UIStroke7.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			UIStroke7.Color = Color3.fromHex("#F97316")
			UIStroke7.Transparency = 0.15
			UIStroke7.Parent = TextButton4
			local Frame11 = Instance.new("Frame")
			Frame11.Name = "Plate"
			Frame11.Size = UDim2.new(0, 30, 0, 30)
			Frame11.Position = UDim2.new(0.5, 0, 0, 25)
			Frame11.AnchorPoint = Vector2.new(0.5, 0.5)
			Frame11.BackgroundColor3 = Color3.fromHex("#F97316")
			Frame11.BackgroundTransparency = 0.82
			Frame11.BorderSizePixel = 0
			Frame11.ZIndex = 3
			Frame11.Parent = TextButton4
			local UICorner23 = Instance.new("UICorner", Frame11)
			UICorner23.CornerRadius = UDim.new(0, 11)
			local UIStroke8 = Instance.new("UIStroke")
			UIStroke8.Thickness = 1
			UIStroke8.Color = Color3.fromHex("#F97316")
			UIStroke8.Transparency = 0.55
			UIStroke8.Parent = Frame11
			local ImageLabel5 = Instance.new("ImageLabel")
			ImageLabel5.Name = "Icon"
			ImageLabel5.Size = UDim2.new(0, 23, 0, 23)
			ImageLabel5.Position = UDim2.new(0.5, 0, 0.5, 0)
			ImageLabel5.AnchorPoint = Vector2.new(0.5, 0.5)
			ImageLabel5.BackgroundTransparency = 1
			ImageLabel5.Image = "http://www.roblox.com/Thumbs/Asset.ashx?format=png&width=250&height=250&assetId=342187115"
			ImageLabel5.ImageColor3 = Color3.new(0.98941176533699038, 0.7529411777853966, 0.58882353045046332)
			ImageLabel5.ZIndex = 5
			ImageLabel5.Parent = Frame11
			local TextLabel4 = Instance.new("TextLabel")
			TextLabel4.Name = "Label"
			TextLabel4.Size = UDim2.new(1, -10, 0, 24)
			TextLabel4.Position = UDim2.new(0.5, 0, 1, -7)
			TextLabel4.AnchorPoint = Vector2.new(0.5, 1)
			TextLabel4.BackgroundTransparency = 1
			TextLabel4.Text = "BOMB\nJUMP"
			TextLabel4.TextSize = 9
			TextLabel4.Font = Enum.Font.GothamBold
			TextLabel4.TextColor3 = Color3.fromRGB(146, 146, 158)
			TextLabel4.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
			TextLabel4.TextStrokeTransparency = 1
			TextLabel4.TextWrapped = true
			TextLabel4.LineHeight = 1.1
			TextLabel4.ZIndex = 6
			TextLabel4.Parent = TextButton4
			ImageLabel5.ImageRectOffset = Vector2.new(8, 24)
			ImageLabel5.ImageRectSize = Vector2.new(170, 170)
			ImageLabel5.ImageColor3 = Color3.fromRGB(255, 255, 255)
			ImageLabel5.Size = UDim2.new(0, 41, 0, 41)
			Frame11.ClipsDescendants = false
			Frame11.Position = UDim2.new(0.5, 0, 0, 22)
			TextLabel4.AnchorPoint = Vector2.new(0.5, 0)
			TextLabel4.TextYAlignment = Enum.TextYAlignment.Center
			TextLabel4.Size = UDim2.new(1, -6, 0, 24)
			TextLabel4.Position = UDim2.new(0.5, 0, 0, 39)
			ImageLabel5.Size = UDim2.fromOffset(32, 32)
			local UICorner24 = TextButton4:FindFirstChildOfClass("UICorner")
			local UICorner25 = TextButton4:FindFirstChildOfClass("UICorner")
			UICorner25.CornerRadius = UICorner24.CornerRadius
			TextButton4.BackgroundColor3 = Color3.fromRGB(10, 10, 13)
			TextButton4.ClipsDescendants = false
			UIStroke7.Thickness = 1.5
			Frame11.Size = UDim2.new(0, 30, 0, 30)
			Frame11.Position = UDim2.new(0.5, 0, 0, 22)
			Frame11.BackgroundColor3 = Color3.fromHex("#F97316")
			ImageLabel5.Size = UDim2.fromOffset(32, 32)
			TextLabel4.Visible = true
			TextLabel4.Position = UDim2.new(0.5, 0, 0, 39)
			TextLabel4.Size = UDim2.new(1, -6, 0, 24)
			local tween43 = TweenService:Create(TextButton4, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.18 })
			tween43:Play()
			local tween44 = TweenService:Create(UIStroke7, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Color = Color3.fromHex("#F97316"), Transparency = 0.15 })
			tween44:Play()
			local tween45 = TweenService:Create(Frame11, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.82 })
			tween45:Play()
			local tween46 = TweenService:Create(UIStroke8, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Transparency = 0.55 })
			tween46:Play()
			local tween47 = TweenService:Create(ImageLabel5, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { ImageColor3 = Color3.fromRGB(255, 255, 255) })
			tween47:Play()
			local tween48 = TweenService:Create(TextLabel4, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(146, 146, 158) })
			tween48:Play()
			local UICorner26 = TextButton4:FindFirstChildOfClass("UICorner")
			UICorner26.CornerRadius = UDim.new(0, 20)
			UIStroke7.Thickness = 1
			ImageLabel5.Size = UDim2.fromOffset(41, 41)
			local tween49 = TweenService:Create(TextButton4, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.1 })
			tween49:Play()
			local tween50 = TweenService:Create(UIStroke7, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Color = Color3.fromRGB(255, 255, 255), Transparency = 0.88 })
			tween50:Play()
			local tween51 = TweenService:Create(Frame11, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 1 })
			tween51:Play()
			local tween52 = TweenService:Create(UIStroke8, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Transparency = 1 })
			tween52:Play()
			local tween53 = TweenService:Create(ImageLabel5, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { ImageColor3 = Color3.fromRGB(255, 255, 255) })
			tween53:Play()
			local Frame12 = Instance.new("Frame")
			Frame12.Name = "Track"
			Frame12.AnchorPoint = Vector2.new(0.5, 1)
			Frame12.Position = UDim2.new(0.5, 0, 1, -6)
			Frame12.Size = UDim2.new(1, -26, 0, 4)
			Frame12.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Frame12.BackgroundTransparency = 0.86
			Frame12.BorderSizePixel = 0
			Frame12.ZIndex = 4
			Frame12.Parent = TextButton4
			local UICorner27 = Instance.new("UICorner", Frame12)
			UICorner27.CornerRadius = UDim.new(1, 0)
			local Frame13 = Instance.new("Frame")
			Frame13.Name = "Fill"
			Frame13.AnchorPoint = Vector2.new(0, 0.5)
			Frame13.Position = UDim2.new(0, 0, 0.5, 0)
			Frame13.Size = UDim2.fromScale(0, 1)
			Frame13.BackgroundColor3 = Color3.fromHex("#F97316")
			Frame13.BorderSizePixel = 0
			Frame13.ZIndex = 5
			Frame13.Parent = Frame12
			local UICorner28 = Instance.new("UICorner", Frame13)
			UICorner28.CornerRadius = UDim.new(1, 0)
			Frame11.Position = UDim2.new(0.5, 0, 0, 22)
			TextLabel4.AnchorPoint = Vector2.new(0.5, 0)
			TextLabel4.TextYAlignment = Enum.TextYAlignment.Center
			TextLabel4.Size = UDim2.new(1, -6, 0, 24)
			TextLabel4.Position = UDim2.new(0.5, 0, 0, 39)
			ImageLabel5.Size = UDim2.fromOffset(32, 32)
			Frame12.Visible = true
			Frame13.Visible = true
			Frame13.BackgroundColor3 = Color3.fromHex("#F97316")
			Frame13.Size = UDim2.fromScale(0, 1)
			local tween54 = TweenService:Create(UIStroke7, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Color = Color3.fromRGB(255, 255, 255), Transparency = 0.88 })
			tween54:Play()
			local tween55 = TweenService:Create(ImageLabel5, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { ImageColor3 = Color3.fromRGB(255, 255, 255) })
			tween55:Play()
			local tween56 = TweenService:Create(TextLabel4, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(146, 146, 158) })
			tween56:Play()
			Frame13.Size = UDim2.fromScale(0, 1)
			TextButton4.MouseEnter:Connect(function(arg131)
				local tween193 = TweenService:Create(TextButton4, TweenInfo.new(0.12, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.03 })
				tween193:Play()
				local tween194 = TweenService:Create(TextLabel4, TweenInfo.new(0.12, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(191, 219, 254) })
				tween194:Play()
			end)
			TextButton4.MouseLeave:Connect(function(arg132)
				local tween195 = TweenService:Create(TextButton4, TweenInfo.new(0.12, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.1 })
				tween195:Play()
				local tween196 = TweenService:Create(TextLabel4, TweenInfo.new(0.12, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(146, 146, 158) })
				tween196:Play()
			end)
			TextButton4.MouseButton1Click:Connect(function()
				local tween197 = TweenService:Create(UIScale4, TweenInfo.new(0.06, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = 0.651 })
				tween197:Play()
				task.delay(0.08, function(...)
				end)
				task.spawn(function(...)
					local Humanoid27 = Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
					local HumanoidRootPart2 = Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
					local Tool = Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
					local FakeBomb3 = Players.LocalPlayer.Character:FindFirstChild("FakeBomb")
					Humanoid27:ChangeState(Enum.HumanoidStateType.Jumping)
					task.wait(0.05)
					local Remote = FakeBomb3:FindFirstChild("Remote")
					Remote:FireServer(CFrame.new(HumanoidRootPart2.Position.X, (HumanoidRootPart2.Position.Y - 3), HumanoidRootPart2.Position.Z), 50)
					task.wait(0.1)
					Humanoid27:ChangeState(Enum.HumanoidStateType.Jumping)
					task.wait(0.1)
					Humanoid27:UnequipTools()
					task.wait(0.1)
					Humanoid27:EquipTool(Tool)
				end)
			end)
			TextButton4.TouchTap:Connect(function(arg133)
			end)
			TextButton4.InputBegan:Connect(function(input11, gameProcessed11)
			end)
			local connection29 = UserInputService.InputChanged:Connect(function(input12, gameProcessed12)
			end)
			local connection30 = UserInputService.InputEnded:Connect(function(input13, gameProcessed13)
			end)
		else
			connection29:Disconnect()
			connection30:Disconnect()
			ScreenGui5:Destroy()
		end
	end
})
Tab4:Toggle({
	Title = "Wall Hop",
	Desc = "Climbs the wall you are standing against.",
	Flag = "Toggle_Wall_Hop",
	Type = "Toggle",
	Value = false,
	Callback = function(state, arg135)
		if state then
			local ScreenGui6 = Instance.new("ScreenGui")
			ScreenGui6.Name = "FVLWallHopButton"
			ScreenGui6.ResetOnSpawn = false
			ScreenGui6.IgnoreGuiInset = true
			ScreenGui6.Parent = CoreGui
			local TextButton5 = Instance.new("TextButton")
			TextButton5.Size = UDim2.new(0, 72, 0, 72)
			TextButton5.Position = UDim2.new(0.5, 143.5, 0.25, 0)
			TextButton5.AnchorPoint = Vector2.new(0.5, 0.5)
			TextButton5.Text = ""
			TextButton5.BackgroundColor3 = Color3.fromRGB(10, 10, 13)
			TextButton5.BackgroundTransparency = 0.18
			TextButton5.BorderSizePixel = 0
			TextButton5.AutoButtonColor = false
			TextButton5.ZIndex = 2
			TextButton5.Name = "WallHopBtn"
			TextButton5.Parent = ScreenGui6
			local UICorner29 = Instance.new("UICorner", TextButton5)
			UICorner29.CornerRadius = UDim.new(0, 16)
			local UIScale5 = Instance.new("UIScale")
			UIScale5.Scale = 0.7
			UIScale5.Parent = TextButton5
			local UIStroke9 = Instance.new("UIStroke")
			UIStroke9.Thickness = 1.5
			UIStroke9.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			UIStroke9.Color = Color3.fromHex("#A855F7")
			UIStroke9.Transparency = 0.15
			UIStroke9.Parent = TextButton5
			local Frame14 = Instance.new("Frame")
			Frame14.Name = "Plate"
			Frame14.Size = UDim2.new(0, 30, 0, 30)
			Frame14.Position = UDim2.new(0.5, 0, 0, 25)
			Frame14.AnchorPoint = Vector2.new(0.5, 0.5)
			Frame14.BackgroundColor3 = Color3.fromHex("#A855F7")
			Frame14.BackgroundTransparency = 0.82
			Frame14.BorderSizePixel = 0
			Frame14.ZIndex = 3
			Frame14.Parent = TextButton5
			local UICorner30 = Instance.new("UICorner", Frame14)
			UICorner30.CornerRadius = UDim.new(0, 11)
			local UIStroke10 = Instance.new("UIStroke")
			UIStroke10.Thickness = 1
			UIStroke10.Color = Color3.fromHex("#A855F7")
			UIStroke10.Transparency = 0.55
			UIStroke10.Parent = Frame14
			local ImageLabel6 = Instance.new("ImageLabel")
			ImageLabel6.Name = "Icon"
			ImageLabel6.Size = UDim2.new(0, 23, 0, 23)
			ImageLabel6.Position = UDim2.new(0.5, 0, 0.5, 0)
			ImageLabel6.AnchorPoint = Vector2.new(0.5, 0.5)
			ImageLabel6.BackgroundTransparency = 1
			ImageLabel6.Image = "rbxassetid://100467452364672"
			ImageLabel6.ImageColor3 = Color3.new(0.84647059738636021, 0.70000000447034838, 0.98588235378265376)
			ImageLabel6.ZIndex = 5
			ImageLabel6.Parent = Frame14
			local TextLabel5 = Instance.new("TextLabel")
			TextLabel5.Name = "Label"
			TextLabel5.Size = UDim2.new(1, -10, 0, 24)
			TextLabel5.Position = UDim2.new(0.5, 0, 1, -7)
			TextLabel5.AnchorPoint = Vector2.new(0.5, 1)
			TextLabel5.BackgroundTransparency = 1
			TextLabel5.Text = "WALL\nHOP"
			TextLabel5.TextSize = 9
			TextLabel5.Font = Enum.Font.GothamBold
			TextLabel5.TextColor3 = Color3.fromRGB(146, 146, 158)
			TextLabel5.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
			TextLabel5.TextStrokeTransparency = 1
			TextLabel5.TextWrapped = true
			TextLabel5.LineHeight = 1.1
			TextLabel5.ZIndex = 6
			TextLabel5.Parent = TextButton5
			Frame14.Position = UDim2.new(0.5, 0, 0, 22)
			TextLabel5.AnchorPoint = Vector2.new(0.5, 0)
			TextLabel5.TextYAlignment = Enum.TextYAlignment.Center
			TextLabel5.Size = UDim2.new(1, -6, 0, 24)
			TextLabel5.Position = UDim2.new(0.5, 0, 0, 39)
			ImageLabel6.Size = UDim2.fromOffset(22, 22)
			local UICorner31 = TextButton5:FindFirstChildOfClass("UICorner")
			local UICorner32 = TextButton5:FindFirstChildOfClass("UICorner")
			UICorner32.CornerRadius = UICorner31.CornerRadius
			TextButton5.BackgroundColor3 = Color3.fromRGB(10, 10, 13)
			TextButton5.ClipsDescendants = false
			UIStroke9.Thickness = 1.5
			Frame14.Size = UDim2.new(0, 30, 0, 30)
			Frame14.Position = UDim2.new(0.5, 0, 0, 22)
			Frame14.BackgroundColor3 = Color3.fromHex("#A855F7")
			ImageLabel6.Size = UDim2.fromOffset(22, 22)
			TextLabel5.Visible = true
			TextLabel5.Position = UDim2.new(0.5, 0, 0, 39)
			TextLabel5.Size = UDim2.new(1, -6, 0, 24)
			local tween57 = TweenService:Create(TextButton5, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.18 })
			tween57:Play()
			local tween58 = TweenService:Create(UIStroke9, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Color = Color3.fromHex("#A855F7"), Transparency = 0.15 })
			tween58:Play()
			local tween59 = TweenService:Create(Frame14, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.82 })
			tween59:Play()
			local tween60 = TweenService:Create(UIStroke10, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Transparency = 0.55 })
			tween60:Play()
			local tween61 = TweenService:Create(ImageLabel6, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { ImageColor3 = Color3.new(0.84647059738636021, 0.70000000447034838, 0.98588235378265376) })
			tween61:Play()
			local tween62 = TweenService:Create(TextLabel5, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(146, 146, 158) })
			tween62:Play()
			local UICorner33 = TextButton5:FindFirstChildOfClass("UICorner")
			UICorner33.CornerRadius = UDim.new(0, 20)
			UIStroke9.Thickness = 1
			ImageLabel6.Size = UDim2.fromOffset(22, 22)
			local tween63 = TweenService:Create(TextButton5, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.1 })
			tween63:Play()
			local tween64 = TweenService:Create(UIStroke9, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Color = Color3.fromRGB(255, 255, 255), Transparency = 0.88 })
			tween64:Play()
			local tween65 = TweenService:Create(Frame14, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 1 })
			tween65:Play()
			local tween66 = TweenService:Create(UIStroke10, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Transparency = 1 })
			tween66:Play()
			local tween67 = TweenService:Create(ImageLabel6, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { ImageColor3 = Color3.new(0.74411766231060028, 0.5000000074505806, 0.97647058963775635) })
			tween67:Play()
			local Frame15 = Instance.new("Frame")
			Frame15.Name = "Track"
			Frame15.AnchorPoint = Vector2.new(0.5, 1)
			Frame15.Position = UDim2.new(0.5, 0, 1, -6)
			Frame15.Size = UDim2.new(1, -26, 0, 4)
			Frame15.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Frame15.BackgroundTransparency = 0.86
			Frame15.BorderSizePixel = 0
			Frame15.ZIndex = 4
			Frame15.Parent = TextButton5
			local UICorner34 = Instance.new("UICorner", Frame15)
			UICorner34.CornerRadius = UDim.new(1, 0)
			local Frame16 = Instance.new("Frame")
			Frame16.Name = "Fill"
			Frame16.AnchorPoint = Vector2.new(0, 0.5)
			Frame16.Position = UDim2.new(0, 0, 0.5, 0)
			Frame16.Size = UDim2.fromScale(0, 1)
			Frame16.BackgroundColor3 = Color3.fromHex("#A855F7")
			Frame16.BorderSizePixel = 0
			Frame16.ZIndex = 5
			Frame16.Parent = Frame15
			local UICorner35 = Instance.new("UICorner", Frame16)
			UICorner35.CornerRadius = UDim.new(1, 0)
			Frame14.Position = UDim2.new(0.5, 0, 0, 22)
			TextLabel5.AnchorPoint = Vector2.new(0.5, 0)
			TextLabel5.TextYAlignment = Enum.TextYAlignment.Center
			TextLabel5.Size = UDim2.new(1, -6, 0, 24)
			TextLabel5.Position = UDim2.new(0.5, 0, 0, 39)
			Frame15.Visible = true
			Frame16.Visible = true
			Frame16.BackgroundColor3 = Color3.fromHex("#A855F7")
			Frame16.Size = UDim2.fromScale(0, 1)
			local tween68 = TweenService:Create(UIStroke9, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Color = Color3.fromRGB(255, 255, 255), Transparency = 0.88 })
			tween68:Play()
			local tween69 = TweenService:Create(ImageLabel6, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { ImageColor3 = Color3.new(0.74411766231060028, 0.5000000074505806, 0.97647058963775635) })
			tween69:Play()
			local tween70 = TweenService:Create(TextLabel5, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(146, 146, 158) })
			tween70:Play()
			Frame16.Size = UDim2.fromScale(0, 1)
			TextButton5.MouseEnter:Connect(function(arg136)
				local tween198 = TweenService:Create(TextButton5, TweenInfo.new(0.12, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.03 })
				tween198:Play()
				local tween199 = TweenService:Create(TextLabel5, TweenInfo.new(0.12, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(191, 219, 254) })
				tween199:Play()
			end)
			TextButton5.MouseLeave:Connect(function(arg137)
				local tween200 = TweenService:Create(TextButton5, TweenInfo.new(0.12, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.1 })
				tween200:Play()
				local tween201 = TweenService:Create(TextLabel5, TweenInfo.new(0.12, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(146, 146, 158) })
				tween201:Play()
			end)
			TextButton5.MouseButton1Click:Connect(function()
				local tween202 = TweenService:Create(UIScale5, TweenInfo.new(0.06, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = 0.651 })
				tween202:Play()
				task.delay(0.08, function(...)
				end)
				task.spawn(function(...)
					local HumanoidRootPart3 = Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
					RaycastParams.new().FilterType = Enum.RaycastFilterType.Exclude
					RaycastParams.new().FilterDescendantsInstances = { Players.LocalPlayer.Character }
					workspace:Raycast(HumanoidRootPart3.Position, (HumanoidRootPart3.CFrame.LookVector * 4), RaycastParams.new())
					task.spawn(function(...)
						local HumanoidRootPart4 = Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
						Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
						RaycastParams.new().FilterType = Enum.RaycastFilterType.Exclude
						RaycastParams.new().FilterDescendantsInstances = { Players.LocalPlayer.Character }
						workspace:Raycast(HumanoidRootPart4.Position, (HumanoidRootPart4.CFrame.LookVector * 4), RaycastParams.new())
					end)
				end)
			end)
			TextButton5.TouchTap:Connect(function(arg138)
			end)
			TextButton5.InputBegan:Connect(function(input14, gameProcessed14)
			end)
			local connection31 = UserInputService.InputChanged:Connect(function(input15, gameProcessed15)
			end)
			local connection32 = UserInputService.InputEnded:Connect(function(input16, gameProcessed16)
			end)
		else
			connection31:Disconnect()
			connection32:Disconnect()
			ScreenGui6:Destroy()
		end
	end
})
Tab4:Toggle({
	Title = "Aimbot Button",
	Desc = "Turns the aimbot on and off, and shows its state.",
	Flag = "Toggle_Aimbot_Button",
	Type = "Toggle",
	Value = false,
	Callback = function(state, arg140)
		if state then
			local ScreenGui7 = Instance.new("ScreenGui")
			ScreenGui7.Name = "FVLAimbotButton"
			ScreenGui7.ResetOnSpawn = false
			ScreenGui7.IgnoreGuiInset = true
			ScreenGui7.Parent = CoreGui
			local TextButton6 = Instance.new("TextButton")
			TextButton6.Size = UDim2.new(0, 72, 0, 72)
			TextButton6.Position = UDim2.new(0.5, -28.7, 0.25, 0)
			TextButton6.AnchorPoint = Vector2.new(0.5, 0.5)
			TextButton6.Text = ""
			TextButton6.BackgroundColor3 = Color3.fromRGB(10, 10, 13)
			TextButton6.BackgroundTransparency = 0.18
			TextButton6.BorderSizePixel = 0
			TextButton6.AutoButtonColor = false
			TextButton6.ZIndex = 2
			TextButton6.Name = "AimbotBtn"
			TextButton6.Parent = ScreenGui7
			local UICorner36 = Instance.new("UICorner", TextButton6)
			UICorner36.CornerRadius = UDim.new(0, 16)
			local UIScale6 = Instance.new("UIScale")
			UIScale6.Scale = 0.7
			UIScale6.Parent = TextButton6
			local UIStroke11 = Instance.new("UIStroke")
			UIStroke11.Thickness = 1.5
			UIStroke11.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			UIStroke11.Color = Color3.fromHex("#2DD4BF")
			UIStroke11.Transparency = 0.15
			UIStroke11.Parent = TextButton6
			local Frame17 = Instance.new("Frame")
			Frame17.Name = "Plate"
			Frame17.Size = UDim2.new(0, 30, 0, 30)
			Frame17.Position = UDim2.new(0.5, 0, 0, 25)
			Frame17.AnchorPoint = Vector2.new(0.5, 0.5)
			Frame17.BackgroundColor3 = Color3.fromHex("#2DD4BF")
			Frame17.BackgroundTransparency = 0.82
			Frame17.BorderSizePixel = 0
			Frame17.ZIndex = 3
			Frame17.Parent = TextButton6
			local UICorner37 = Instance.new("UICorner", Frame17)
			UICorner37.CornerRadius = UDim.new(0, 11)
			local UIStroke12 = Instance.new("UIStroke")
			UIStroke12.Thickness = 1
			UIStroke12.Color = Color3.fromHex("#2DD4BF")
			UIStroke12.Transparency = 0.55
			UIStroke12.Parent = Frame17
			local ImageLabel7 = Instance.new("ImageLabel")
			ImageLabel7.Name = "Icon"
			ImageLabel7.Size = UDim2.new(0, 23, 0, 23)
			ImageLabel7.Position = UDim2.new(0.5, 0, 0.5, 0)
			ImageLabel7.AnchorPoint = Vector2.new(0.5, 0.5)
			ImageLabel7.BackgroundTransparency = 1
			ImageLabel7.Image = "rbxassetid://87563802520297"
			ImageLabel7.ImageColor3 = Color3.new(0.62941176667809495, 0.92411765158176418, 0.88705883026123045)
			ImageLabel7.ZIndex = 5
			ImageLabel7.Parent = Frame17
			local TextLabel6 = Instance.new("TextLabel")
			TextLabel6.Name = "Label"
			TextLabel6.Size = UDim2.new(1, -10, 0, 24)
			TextLabel6.Position = UDim2.new(0.5, 0, 1, -7)
			TextLabel6.AnchorPoint = Vector2.new(0.5, 1)
			TextLabel6.BackgroundTransparency = 1
			TextLabel6.Text = "AIMBOT\nOFF"
			TextLabel6.TextSize = 9
			TextLabel6.Font = Enum.Font.GothamBold
			TextLabel6.TextColor3 = Color3.fromRGB(146, 146, 158)
			TextLabel6.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
			TextLabel6.TextStrokeTransparency = 1
			TextLabel6.TextWrapped = true
			TextLabel6.LineHeight = 1.1
			TextLabel6.ZIndex = 6
			TextLabel6.Parent = TextButton6
			Frame17.Position = UDim2.new(0.5, 0, 0, 22)
			TextLabel6.AnchorPoint = Vector2.new(0.5, 0)
			TextLabel6.TextYAlignment = Enum.TextYAlignment.Center
			TextLabel6.Size = UDim2.new(1, -6, 0, 24)
			TextLabel6.Position = UDim2.new(0.5, 0, 0, 39)
			ImageLabel7.Size = UDim2.fromOffset(22, 22)
			local UICorner38 = TextButton6:FindFirstChildOfClass("UICorner")
			local UICorner39 = TextButton6:FindFirstChildOfClass("UICorner")
			UICorner39.CornerRadius = UICorner38.CornerRadius
			TextButton6.BackgroundColor3 = Color3.fromRGB(10, 10, 13)
			TextButton6.ClipsDescendants = false
			UIStroke11.Thickness = 1.5
			Frame17.Size = UDim2.new(0, 30, 0, 30)
			Frame17.Position = UDim2.new(0.5, 0, 0, 22)
			Frame17.BackgroundColor3 = Color3.fromHex("#2DD4BF")
			ImageLabel7.Size = UDim2.fromOffset(22, 22)
			TextLabel6.Visible = true
			TextLabel6.Position = UDim2.new(0.5, 0, 0, 39)
			TextLabel6.Size = UDim2.new(1, -6, 0, 24)
			local tween71 = TweenService:Create(TextButton6, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.18 })
			tween71:Play()
			local tween72 = TweenService:Create(UIStroke11, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Color = Color3.fromHex("#2DD4BF"), Transparency = 0.15 })
			tween72:Play()
			local tween73 = TweenService:Create(Frame17, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.82 })
			tween73:Play()
			local tween74 = TweenService:Create(UIStroke12, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Transparency = 0.55 })
			tween74:Play()
			local tween75 = TweenService:Create(ImageLabel7, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { ImageColor3 = Color3.new(0.62941176667809495, 0.92411765158176418, 0.88705883026123045) })
			tween75:Play()
			local tween76 = TweenService:Create(TextLabel6, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(146, 146, 158) })
			tween76:Play()
			local UICorner40 = TextButton6:FindFirstChildOfClass("UICorner")
			UICorner40.CornerRadius = UDim.new(0, 20)
			UIStroke11.Thickness = 1
			ImageLabel7.Size = UDim2.fromOffset(22, 22)
			local tween77 = TweenService:Create(TextButton6, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.1 })
			tween77:Play()
			local tween78 = TweenService:Create(UIStroke11, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Color = Color3.fromRGB(255, 255, 255), Transparency = 0.88 })
			tween78:Play()
			local tween79 = TweenService:Create(Frame17, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 1 })
			tween79:Play()
			local tween80 = TweenService:Create(UIStroke12, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Transparency = 1 })
			tween80:Play()
			local tween81 = TweenService:Create(ImageLabel7, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { ImageColor3 = Color3.new(0.38235294446349144, 0.87352941930294037, 0.81176471710205078) })
			tween81:Play()
			local Frame18 = Instance.new("Frame")
			Frame18.Name = "Track"
			Frame18.AnchorPoint = Vector2.new(0.5, 1)
			Frame18.Position = UDim2.new(0.5, 0, 1, -6)
			Frame18.Size = UDim2.new(1, -26, 0, 4)
			Frame18.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Frame18.BackgroundTransparency = 0.86
			Frame18.BorderSizePixel = 0
			Frame18.ZIndex = 4
			Frame18.Parent = TextButton6
			local UICorner41 = Instance.new("UICorner", Frame18)
			UICorner41.CornerRadius = UDim.new(1, 0)
			local Frame19 = Instance.new("Frame")
			Frame19.Name = "Fill"
			Frame19.AnchorPoint = Vector2.new(0, 0.5)
			Frame19.Position = UDim2.new(0, 0, 0.5, 0)
			Frame19.Size = UDim2.fromScale(0, 1)
			Frame19.BackgroundColor3 = Color3.fromHex("#2DD4BF")
			Frame19.BorderSizePixel = 0
			Frame19.ZIndex = 5
			Frame19.Parent = Frame18
			local UICorner42 = Instance.new("UICorner", Frame19)
			UICorner42.CornerRadius = UDim.new(1, 0)
			Frame17.Position = UDim2.new(0.5, 0, 0, 22)
			TextLabel6.AnchorPoint = Vector2.new(0.5, 0)
			TextLabel6.TextYAlignment = Enum.TextYAlignment.Center
			TextLabel6.Size = UDim2.new(1, -6, 0, 24)
			TextLabel6.Position = UDim2.new(0.5, 0, 0, 39)
			Frame18.Visible = true
			Frame19.Visible = true
			Frame19.BackgroundColor3 = Color3.fromHex("#2DD4BF")
			Frame19.Size = UDim2.fromScale(0, 1)
			local tween82 = TweenService:Create(UIStroke11, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Color = Color3.fromRGB(255, 255, 255), Transparency = 0.88 })
			tween82:Play()
			local tween83 = TweenService:Create(ImageLabel7, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { ImageColor3 = Color3.new(0.38235294446349144, 0.87352941930294037, 0.81176471710205078) })
			tween83:Play()
			local tween84 = TweenService:Create(TextLabel6, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(146, 146, 158) })
			tween84:Play()
			Frame19.Size = UDim2.fromScale(0, 1)
			TextButton6.MouseEnter:Connect(function(arg141)
				local tween203 = TweenService:Create(TextButton6, TweenInfo.new(0.12, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.03 })
				tween203:Play()
				local tween204 = TweenService:Create(TextLabel6, TweenInfo.new(0.12, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(191, 219, 254) })
				tween204:Play()
			end)
			TextButton6.MouseLeave:Connect(function(arg142)
				local tween205 = TweenService:Create(TextButton6, TweenInfo.new(0.12, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.1 })
				tween205:Play()
				local tween206 = TweenService:Create(TextLabel6, TweenInfo.new(0.12, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(146, 146, 158) })
				tween206:Play()
			end)
			TextButton6.MouseButton1Click:Connect(function()
				local tween207 = TweenService:Create(UIScale6, TweenInfo.new(0.06, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = 0.651 })
				tween207:Play()
				task.delay(0.08, function(...)
				end)
				task.spawn(function(...)
					RunService.RenderStepped:Connect(function(deltaTime9)
						Players.LocalPlayer.Character:FindFirstChild("Gun")
						local players48 = Players:GetPlayers()
						for i119, v119 in ipairs(players48) do
							local Backpack32 = v119:FindFirstChildOfClass("Backpack")
							Backpack32:FindFirstChild("Knife")
							v119.Character:FindFirstChildOfClass("Humanoid")
						end
					end)
					Players.LocalPlayer.Character:FindFirstChild("Gun")
					Players.LocalPlayer.Character.ChildAdded:Connect(function(child6)
					end)
					Players.LocalPlayer.CharacterAdded:Connect(function(character10)
						task.wait(1)
						Players.LocalPlayer.Character:FindFirstChild("Gun")
						character10.ChildAdded:Connect(function(child10)
						end)
					end)
					local mouse5 = Players.LocalPlayer:GetMouse()
					mouse5.Button1Down:Connect(function(arg295)
						local Gun2 = Players.LocalPlayer.Character:FindFirstChild("Gun")
						Gun2:FindFirstChild("Shoot")
						Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
						local players49 = Players:GetPlayers()
						for i120, v120 in ipairs(players49) do
							local Backpack33 = v120:FindFirstChildOfClass("Backpack")
							Backpack33:FindFirstChild("Knife")
							v120.Character:FindFirstChildOfClass("Humanoid")
						end
						-- [envlog] error: protected:7274: attempt to compare number < userdata
					end)
					Toggle2:SetValue(true)
				end)
			end)
			TextButton6.TouchTap:Connect(function(arg143)
			end)
			TextButton6.InputBegan:Connect(function(input17, gameProcessed17)
			end)
			local connection33 = UserInputService.InputChanged:Connect(function(input18, gameProcessed18)
			end)
			local connection34 = UserInputService.InputEnded:Connect(function(input19, gameProcessed19)
			end)
			TextLabel6.Text = "AIMBOT\nOFF"
			local tween85 = TweenService:Create(UIStroke11, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Color = Color3.fromRGB(255, 255, 255), Transparency = 0.88 })
			tween85:Play()
			local tween86 = TweenService:Create(ImageLabel7, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { ImageColor3 = Color3.new(0.38235294446349144, 0.87352941930294037, 0.81176471710205078) })
			tween86:Play()
			local tween87 = TweenService:Create(TextLabel6, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(146, 146, 158) })
			tween87:Play()
			Frame19.Size = UDim2.fromScale(0, 1)
		else
			connection33:Disconnect()
			connection34:Disconnect()
			ScreenGui7:Destroy()
		end
	end
})
Tab4:Section({ Title = "Extra Buttons" })
Tab4:Toggle({
	Title = "Kill All Button  (Murderer Only)",
	Desc = "Stabs every player at once. Murderer only.",
	Flag = "Toggle_Kill_All_Button",
	Type = "Toggle",
	Value = false,
	Callback = function(state, arg145)
		if state then
			local ScreenGui8 = Instance.new("ScreenGui")
			ScreenGui8.Name = "FVLKillAllButton"
			ScreenGui8.ResetOnSpawn = false
			ScreenGui8.IgnoreGuiInset = true
			ScreenGui8.Parent = CoreGui
			local TextButton7 = Instance.new("TextButton")
			TextButton7.Size = UDim2.new(0, 72, 0, 72)
			TextButton7.Position = UDim2.new(0.5, -114.8, 0.25, 57.4)
			TextButton7.AnchorPoint = Vector2.new(0.5, 0.5)
			TextButton7.Text = ""
			TextButton7.BackgroundColor3 = Color3.fromRGB(10, 10, 13)
			TextButton7.BackgroundTransparency = 0.18
			TextButton7.BorderSizePixel = 0
			TextButton7.AutoButtonColor = false
			TextButton7.ZIndex = 2
			TextButton7.Name = "KillAllBtn"
			TextButton7.Parent = ScreenGui8
			local UICorner43 = Instance.new("UICorner", TextButton7)
			UICorner43.CornerRadius = UDim.new(0, 16)
			local UIScale7 = Instance.new("UIScale")
			UIScale7.Scale = 0.7
			UIScale7.Parent = TextButton7
			local UIStroke13 = Instance.new("UIStroke")
			UIStroke13.Thickness = 1.5
			UIStroke13.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			UIStroke13.Color = Color3.fromHex("#DC2626")
			UIStroke13.Transparency = 0.15
			UIStroke13.Parent = TextButton7
			local Frame20 = Instance.new("Frame")
			Frame20.Name = "Plate"
			Frame20.Size = UDim2.new(0, 30, 0, 30)
			Frame20.Position = UDim2.new(0.5, 0, 0, 25)
			Frame20.AnchorPoint = Vector2.new(0.5, 0.5)
			Frame20.BackgroundColor3 = Color3.fromHex("#DC2626")
			Frame20.BackgroundTransparency = 0.82
			Frame20.BorderSizePixel = 0
			Frame20.ZIndex = 3
			Frame20.Parent = TextButton7
			local UICorner44 = Instance.new("UICorner", Frame20)
			UICorner44.CornerRadius = UDim.new(0, 11)
			local UIStroke14 = Instance.new("UIStroke")
			UIStroke14.Thickness = 1
			UIStroke14.Color = Color3.fromHex("#DC2626")
			UIStroke14.Transparency = 0.55
			UIStroke14.Parent = Frame20
			local ImageLabel8 = Instance.new("ImageLabel")
			ImageLabel8.Name = "Icon"
			ImageLabel8.Size = UDim2.new(0, 23, 0, 23)
			ImageLabel8.Position = UDim2.new(0.5, 0, 0.5, 0)
			ImageLabel8.AnchorPoint = Vector2.new(0.5, 0.5)
			ImageLabel8.BackgroundTransparency = 1
			ImageLabel8.Image = "rbxassetid://116620312917084"
			ImageLabel8.ImageColor3 = Color3.new(0.93823529779911041, 0.61705882623791697, 0.61705882623791697)
			ImageLabel8.ZIndex = 5
			ImageLabel8.Parent = Frame20
			local TextLabel7 = Instance.new("TextLabel")
			TextLabel7.Name = "Label"
			TextLabel7.Size = UDim2.new(1, -10, 0, 24)
			TextLabel7.Position = UDim2.new(0.5, 0, 1, -7)
			TextLabel7.AnchorPoint = Vector2.new(0.5, 1)
			TextLabel7.BackgroundTransparency = 1
			TextLabel7.Text = "KILL ALL\nMURDER\nONLY"
			TextLabel7.TextSize = 9
			TextLabel7.Font = Enum.Font.GothamBold
			TextLabel7.TextColor3 = Color3.fromRGB(146, 146, 158)
			TextLabel7.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
			TextLabel7.TextStrokeTransparency = 1
			TextLabel7.TextWrapped = true
			TextLabel7.LineHeight = 1.1
			TextLabel7.ZIndex = 6
			TextLabel7.Parent = TextButton7
			Frame20.Size = UDim2.new(0, 24, 0, 24)
			ImageLabel8.Size = UDim2.new(0, 20, 0, 20)
			TextLabel7.TextSize = 8
			TextLabel7.LineHeight = 1
			Frame20.Position = UDim2.new(0.5, 0, 0, 21)
			TextLabel7.AnchorPoint = Vector2.new(0.5, 0)
			TextLabel7.TextYAlignment = Enum.TextYAlignment.Center
			TextLabel7.Size = UDim2.new(1, -6, 0, 24)
			TextLabel7.Position = UDim2.new(0.5, 0, 0, 38)
			local UICorner45 = TextButton7:FindFirstChildOfClass("UICorner")
			local UICorner46 = TextButton7:FindFirstChildOfClass("UICorner")
			UICorner46.CornerRadius = UICorner45.CornerRadius
			TextButton7.BackgroundColor3 = Color3.fromRGB(10, 10, 13)
			TextButton7.ClipsDescendants = false
			UIStroke13.Thickness = 1.5
			Frame20.Size = UDim2.new(0, 24, 0, 24)
			Frame20.Position = UDim2.new(0.5, 0, 0, 21)
			Frame20.BackgroundColor3 = Color3.fromHex("#DC2626")
			ImageLabel8.Size = UDim2.new(0, 20, 0, 20)
			TextLabel7.Visible = true
			TextLabel7.Position = UDim2.new(0.5, 0, 0, 38)
			TextLabel7.Size = UDim2.new(1, -6, 0, 24)
			local tween88 = TweenService:Create(TextButton7, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.18 })
			tween88:Play()
			local tween89 = TweenService:Create(UIStroke13, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Color = Color3.fromHex("#DC2626"), Transparency = 0.15 })
			tween89:Play()
			local tween90 = TweenService:Create(Frame20, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.82 })
			tween90:Play()
			local tween91 = TweenService:Create(UIStroke14, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Transparency = 0.55 })
			tween91:Play()
			local tween92 = TweenService:Create(ImageLabel8, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { ImageColor3 = Color3.new(0.93823529779911041, 0.61705882623791697, 0.61705882623791697) })
			tween92:Play()
			local tween93 = TweenService:Create(TextLabel7, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(146, 146, 158) })
			tween93:Play()
			local UICorner47 = TextButton7:FindFirstChildOfClass("UICorner")
			UICorner47.CornerRadius = UDim.new(0, 20)
			UIStroke13.Thickness = 1
			ImageLabel8.Size = UDim2.fromOffset(22, 22)
			local tween94 = TweenService:Create(TextButton7, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.1 })
			tween94:Play()
			local tween95 = TweenService:Create(UIStroke13, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Color = Color3.fromRGB(255, 255, 255), Transparency = 0.88 })
			tween95:Play()
			local tween96 = TweenService:Create(Frame20, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 1 })
			tween96:Play()
			local tween97 = TweenService:Create(UIStroke14, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Transparency = 1 })
			tween97:Play()
			local tween98 = TweenService:Create(ImageLabel8, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { ImageColor3 = Color3.new(0.89705882966518402, 0.36176471039652824, 0.36176471039652824) })
			tween98:Play()
			local Frame21 = Instance.new("Frame")
			Frame21.Name = "Track"
			Frame21.AnchorPoint = Vector2.new(0.5, 1)
			Frame21.Position = UDim2.new(0.5, 0, 1, -6)
			Frame21.Size = UDim2.new(1, -26, 0, 4)
			Frame21.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Frame21.BackgroundTransparency = 0.86
			Frame21.BorderSizePixel = 0
			Frame21.ZIndex = 4
			Frame21.Parent = TextButton7
			local UICorner48 = Instance.new("UICorner", Frame21)
			UICorner48.CornerRadius = UDim.new(1, 0)
			local Frame22 = Instance.new("Frame")
			Frame22.Name = "Fill"
			Frame22.AnchorPoint = Vector2.new(0, 0.5)
			Frame22.Position = UDim2.new(0, 0, 0.5, 0)
			Frame22.Size = UDim2.fromScale(0, 1)
			Frame22.BackgroundColor3 = Color3.fromHex("#DC2626")
			Frame22.BorderSizePixel = 0
			Frame22.ZIndex = 5
			Frame22.Parent = Frame21
			local UICorner49 = Instance.new("UICorner", Frame22)
			UICorner49.CornerRadius = UDim.new(1, 0)
			Frame20.Position = UDim2.new(0.5, 0, 0, 21)
			TextLabel7.AnchorPoint = Vector2.new(0.5, 0)
			TextLabel7.TextYAlignment = Enum.TextYAlignment.Center
			TextLabel7.Size = UDim2.new(1, -6, 0, 24)
			TextLabel7.Position = UDim2.new(0.5, 0, 0, 38)
			Frame21.Visible = true
			Frame22.Visible = true
			Frame22.BackgroundColor3 = Color3.fromHex("#DC2626")
			Frame22.Size = UDim2.fromScale(0, 1)
			local tween99 = TweenService:Create(UIStroke13, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Color = Color3.fromRGB(255, 255, 255), Transparency = 0.88 })
			tween99:Play()
			local tween100 = TweenService:Create(ImageLabel8, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { ImageColor3 = Color3.new(0.89705882966518402, 0.36176471039652824, 0.36176471039652824) })
			tween100:Play()
			local tween101 = TweenService:Create(TextLabel7, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(146, 146, 158) })
			tween101:Play()
			Frame22.Size = UDim2.fromScale(0, 1)
			TextButton7.MouseEnter:Connect(function(arg146)
				local tween208 = TweenService:Create(TextButton7, TweenInfo.new(0.12, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.03 })
				tween208:Play()
				local tween209 = TweenService:Create(TextLabel7, TweenInfo.new(0.12, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(191, 219, 254) })
				tween209:Play()
			end)
			TextButton7.MouseLeave:Connect(function(arg147)
				local tween210 = TweenService:Create(TextButton7, TweenInfo.new(0.12, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.1 })
				tween210:Play()
				local tween211 = TweenService:Create(TextLabel7, TweenInfo.new(0.12, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(146, 146, 158) })
				tween211:Play()
			end)
			TextButton7.MouseButton1Click:Connect(function()
				local tween212 = TweenService:Create(UIScale7, TweenInfo.new(0.06, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = 0.651 })
				tween212:Play()
				task.delay(0.08, function(...)
				end)
				task.spawn(function(...)
					local players43 = Players:GetPlayers()
					for i111, v111 in ipairs(players43) do
						local Backpack26 = v111:FindFirstChildOfClass("Backpack")
						Backpack26:FindFirstChild("Knife")
						result:Notify({ Title = "Not Murderer!", Content = "You don't have the knife.", Duration = 2, Icon = "x" })
					end
				end)
			end)
			TextButton7.TouchTap:Connect(function(arg148)
			end)
			TextButton7.InputBegan:Connect(function(input20, gameProcessed20)
			end)
			local connection35 = UserInputService.InputChanged:Connect(function(input21, gameProcessed21)
			end)
			local connection36 = UserInputService.InputEnded:Connect(function(input22, gameProcessed22)
			end)
		else
			connection35:Disconnect()
			connection36:Disconnect()
			ScreenGui8:Destroy()
		end
	end
})
Tab4:Toggle({
	Title = "Kill Sheriff Button  (Murderer Only)",
	Desc = "Stabs whoever is holding the gun. Murderer only.",
	Flag = "Toggle_Kill_Sheriff_Button",
	Type = "Toggle",
	Value = false,
	Callback = function(state, arg150)
		if state then
			local ScreenGui9 = Instance.new("ScreenGui")
			ScreenGui9.Name = "FVLKillSheriffButton"
			ScreenGui9.ResetOnSpawn = false
			ScreenGui9.IgnoreGuiInset = true
			ScreenGui9.Parent = CoreGui
			local TextButton8 = Instance.new("TextButton")
			TextButton8.Size = UDim2.new(0, 72, 0, 72)
			TextButton8.Position = UDim2.new(0.5, -57.4, 0.25, 57.4)
			TextButton8.AnchorPoint = Vector2.new(0.5, 0.5)
			TextButton8.Text = ""
			TextButton8.BackgroundColor3 = Color3.fromRGB(10, 10, 13)
			TextButton8.BackgroundTransparency = 0.18
			TextButton8.BorderSizePixel = 0
			TextButton8.AutoButtonColor = false
			TextButton8.ZIndex = 2
			TextButton8.Name = "KillSheriffBtn"
			TextButton8.Parent = ScreenGui9
			local UICorner50 = Instance.new("UICorner", TextButton8)
			UICorner50.CornerRadius = UDim.new(0, 16)
			local UIScale8 = Instance.new("UIScale")
			UIScale8.Scale = 0.7
			UIScale8.Parent = TextButton8
			local UIStroke15 = Instance.new("UIStroke")
			UIStroke15.Thickness = 1.5
			UIStroke15.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			UIStroke15.Color = Color3.fromHex("#DC2626")
			UIStroke15.Transparency = 0.15
			UIStroke15.Parent = TextButton8
			local Frame23 = Instance.new("Frame")
			Frame23.Name = "Plate"
			Frame23.Size = UDim2.new(0, 30, 0, 30)
			Frame23.Position = UDim2.new(0.5, 0, 0, 25)
			Frame23.AnchorPoint = Vector2.new(0.5, 0.5)
			Frame23.BackgroundColor3 = Color3.fromHex("#DC2626")
			Frame23.BackgroundTransparency = 0.82
			Frame23.BorderSizePixel = 0
			Frame23.ZIndex = 3
			Frame23.Parent = TextButton8
			local UICorner51 = Instance.new("UICorner", Frame23)
			UICorner51.CornerRadius = UDim.new(0, 11)
			local UIStroke16 = Instance.new("UIStroke")
			UIStroke16.Thickness = 1
			UIStroke16.Color = Color3.fromHex("#DC2626")
			UIStroke16.Transparency = 0.55
			UIStroke16.Parent = Frame23
			local ImageLabel9 = Instance.new("ImageLabel")
			ImageLabel9.Name = "Icon"
			ImageLabel9.Size = UDim2.new(0, 23, 0, 23)
			ImageLabel9.Position = UDim2.new(0.5, 0, 0.5, 0)
			ImageLabel9.AnchorPoint = Vector2.new(0.5, 0.5)
			ImageLabel9.BackgroundTransparency = 1
			ImageLabel9.Image = "rbxassetid://137726256442333"
			ImageLabel9.ImageColor3 = Color3.new(0.93823529779911041, 0.61705882623791697, 0.61705882623791697)
			ImageLabel9.ZIndex = 5
			ImageLabel9.Parent = Frame23
			local TextLabel8 = Instance.new("TextLabel")
			TextLabel8.Name = "Label"
			TextLabel8.Size = UDim2.new(1, -10, 0, 24)
			TextLabel8.Position = UDim2.new(0.5, 0, 1, -7)
			TextLabel8.AnchorPoint = Vector2.new(0.5, 1)
			TextLabel8.BackgroundTransparency = 1
			TextLabel8.Text = "KILL\nSHERIFF"
			TextLabel8.TextSize = 9
			TextLabel8.Font = Enum.Font.GothamBold
			TextLabel8.TextColor3 = Color3.fromRGB(146, 146, 158)
			TextLabel8.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
			TextLabel8.TextStrokeTransparency = 1
			TextLabel8.TextWrapped = true
			TextLabel8.LineHeight = 1.1
			TextLabel8.ZIndex = 6
			TextLabel8.Parent = TextButton8
			Frame23.Position = UDim2.new(0.5, 0, 0, 22)
			TextLabel8.AnchorPoint = Vector2.new(0.5, 0)
			TextLabel8.TextYAlignment = Enum.TextYAlignment.Center
			TextLabel8.Size = UDim2.new(1, -6, 0, 24)
			TextLabel8.Position = UDim2.new(0.5, 0, 0, 39)
			ImageLabel9.Size = UDim2.fromOffset(22, 22)
			local UICorner52 = TextButton8:FindFirstChildOfClass("UICorner")
			local UICorner53 = TextButton8:FindFirstChildOfClass("UICorner")
			UICorner53.CornerRadius = UICorner52.CornerRadius
			TextButton8.BackgroundColor3 = Color3.fromRGB(10, 10, 13)
			TextButton8.ClipsDescendants = false
			UIStroke15.Thickness = 1.5
			Frame23.Size = UDim2.new(0, 30, 0, 30)
			Frame23.Position = UDim2.new(0.5, 0, 0, 22)
			Frame23.BackgroundColor3 = Color3.fromHex("#DC2626")
			ImageLabel9.Size = UDim2.fromOffset(22, 22)
			TextLabel8.Visible = true
			TextLabel8.Position = UDim2.new(0.5, 0, 0, 39)
			TextLabel8.Size = UDim2.new(1, -6, 0, 24)
			local tween102 = TweenService:Create(TextButton8, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.18 })
			tween102:Play()
			local tween103 = TweenService:Create(UIStroke15, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Color = Color3.fromHex("#DC2626"), Transparency = 0.15 })
			tween103:Play()
			local tween104 = TweenService:Create(Frame23, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.82 })
			tween104:Play()
			local tween105 = TweenService:Create(UIStroke16, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Transparency = 0.55 })
			tween105:Play()
			local tween106 = TweenService:Create(ImageLabel9, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { ImageColor3 = Color3.new(0.93823529779911041, 0.61705882623791697, 0.61705882623791697) })
			tween106:Play()
			local tween107 = TweenService:Create(TextLabel8, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(146, 146, 158) })
			tween107:Play()
			local UICorner54 = TextButton8:FindFirstChildOfClass("UICorner")
			UICorner54.CornerRadius = UDim.new(0, 20)
			UIStroke15.Thickness = 1
			ImageLabel9.Size = UDim2.fromOffset(22, 22)
			local tween108 = TweenService:Create(TextButton8, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.1 })
			tween108:Play()
			local tween109 = TweenService:Create(UIStroke15, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Color = Color3.fromRGB(255, 255, 255), Transparency = 0.88 })
			tween109:Play()
			local tween110 = TweenService:Create(Frame23, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 1 })
			tween110:Play()
			local tween111 = TweenService:Create(UIStroke16, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Transparency = 1 })
			tween111:Play()
			local tween112 = TweenService:Create(ImageLabel9, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { ImageColor3 = Color3.new(0.89705882966518402, 0.36176471039652824, 0.36176471039652824) })
			tween112:Play()
			local Frame24 = Instance.new("Frame")
			Frame24.Name = "Track"
			Frame24.AnchorPoint = Vector2.new(0.5, 1)
			Frame24.Position = UDim2.new(0.5, 0, 1, -6)
			Frame24.Size = UDim2.new(1, -26, 0, 4)
			Frame24.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Frame24.BackgroundTransparency = 0.86
			Frame24.BorderSizePixel = 0
			Frame24.ZIndex = 4
			Frame24.Parent = TextButton8
			local UICorner55 = Instance.new("UICorner", Frame24)
			UICorner55.CornerRadius = UDim.new(1, 0)
			local Frame25 = Instance.new("Frame")
			Frame25.Name = "Fill"
			Frame25.AnchorPoint = Vector2.new(0, 0.5)
			Frame25.Position = UDim2.new(0, 0, 0.5, 0)
			Frame25.Size = UDim2.fromScale(0, 1)
			Frame25.BackgroundColor3 = Color3.fromHex("#DC2626")
			Frame25.BorderSizePixel = 0
			Frame25.ZIndex = 5
			Frame25.Parent = Frame24
			local UICorner56 = Instance.new("UICorner", Frame25)
			UICorner56.CornerRadius = UDim.new(1, 0)
			Frame23.Position = UDim2.new(0.5, 0, 0, 22)
			TextLabel8.AnchorPoint = Vector2.new(0.5, 0)
			TextLabel8.TextYAlignment = Enum.TextYAlignment.Center
			TextLabel8.Size = UDim2.new(1, -6, 0, 24)
			TextLabel8.Position = UDim2.new(0.5, 0, 0, 39)
			Frame24.Visible = true
			Frame25.Visible = true
			Frame25.BackgroundColor3 = Color3.fromHex("#DC2626")
			Frame25.Size = UDim2.fromScale(0, 1)
			local tween113 = TweenService:Create(UIStroke15, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Color = Color3.fromRGB(255, 255, 255), Transparency = 0.88 })
			tween113:Play()
			local tween114 = TweenService:Create(ImageLabel9, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { ImageColor3 = Color3.new(0.89705882966518402, 0.36176471039652824, 0.36176471039652824) })
			tween114:Play()
			local tween115 = TweenService:Create(TextLabel8, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(146, 146, 158) })
			tween115:Play()
			Frame25.Size = UDim2.fromScale(0, 1)
			TextButton8.MouseEnter:Connect(function(arg151)
				local tween213 = TweenService:Create(TextButton8, TweenInfo.new(0.12, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.03 })
				tween213:Play()
				local tween214 = TweenService:Create(TextLabel8, TweenInfo.new(0.12, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(191, 219, 254) })
				tween214:Play()
			end)
			TextButton8.MouseLeave:Connect(function(arg152)
				local tween215 = TweenService:Create(TextButton8, TweenInfo.new(0.12, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.1 })
				tween215:Play()
				local tween216 = TweenService:Create(TextLabel8, TweenInfo.new(0.12, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(146, 146, 158) })
				tween216:Play()
			end)
			TextButton8.MouseButton1Click:Connect(function()
				local tween217 = TweenService:Create(UIScale8, TweenInfo.new(0.06, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = 0.651 })
				tween217:Play()
				task.delay(0.08, function(...)
				end)
				task.spawn(function(...)
					local players44 = Players:GetPlayers()
					for i112, v112 in ipairs(players44) do
						local Backpack27 = v112:FindFirstChildOfClass("Backpack")
						Backpack27:FindFirstChild("Gun")
						local players45 = Players:GetPlayers()
						for i113, v113 in ipairs(players45) do
							local Backpack28 = v113:FindFirstChildOfClass("Backpack")
							Backpack28:FindFirstChild("Knife")
							result:Notify({ Title = "Not Murderer!", Content = "You don't have the knife.", Duration = 2, Icon = "x" })
						end
					end
				end)
			end)
			TextButton8.TouchTap:Connect(function(arg153)
			end)
			TextButton8.InputBegan:Connect(function(input23, gameProcessed23)
			end)
			local connection37 = UserInputService.InputChanged:Connect(function(input24, gameProcessed24)
			end)
			local connection38 = UserInputService.InputEnded:Connect(function(input25, gameProcessed25)
			end)
		else
			connection37:Disconnect()
			connection38:Disconnect()
			ScreenGui9:Destroy()
		end
	end
})
Tab4:Toggle({
	Title = "Free X-Ray Button",
	Desc = "Unlocks the X-Ray perk for free.",
	Flag = "Toggle_Xray_Button",
	Type = "Toggle",
	Value = false,
	Callback = function(state, arg155)
		if state then
			local ScreenGui10 = Instance.new("ScreenGui")
			ScreenGui10.Name = "FVLXrayButton"
			ScreenGui10.ResetOnSpawn = false
			ScreenGui10.IgnoreGuiInset = true
			ScreenGui10.Parent = CoreGui
			local TextButton9 = Instance.new("TextButton")
			TextButton9.Size = UDim2.new(0, 72, 0, 72)
			TextButton9.Position = UDim2.new(0.5, 114.8, 0.25, 57.4)
			TextButton9.AnchorPoint = Vector2.new(0.5, 0.5)
			TextButton9.Text = ""
			TextButton9.BackgroundColor3 = Color3.fromRGB(10, 10, 13)
			TextButton9.BackgroundTransparency = 0.18
			TextButton9.BorderSizePixel = 0
			TextButton9.AutoButtonColor = false
			TextButton9.ZIndex = 2
			TextButton9.Name = "XrayBtn"
			TextButton9.Parent = ScreenGui10
			local UICorner57 = Instance.new("UICorner", TextButton9)
			UICorner57.CornerRadius = UDim.new(0, 16)
			local UIScale9 = Instance.new("UIScale")
			UIScale9.Scale = 0.7
			UIScale9.Parent = TextButton9
			local UIStroke17 = Instance.new("UIStroke")
			UIStroke17.Thickness = 1.5
			UIStroke17.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			UIStroke17.Color = Color3.fromHex("#FACC15")
			UIStroke17.Transparency = 0.15
			UIStroke17.Parent = TextButton9
			local Frame26 = Instance.new("Frame")
			Frame26.Name = "Plate"
			Frame26.Size = UDim2.new(0, 30, 0, 30)
			Frame26.Position = UDim2.new(0.5, 0, 0, 25)
			Frame26.AnchorPoint = Vector2.new(0.5, 0.5)
			Frame26.BackgroundColor3 = Color3.fromHex("#FACC15")
			Frame26.BackgroundTransparency = 0.82
			Frame26.BorderSizePixel = 0
			Frame26.ZIndex = 3
			Frame26.Parent = TextButton9
			local UICorner58 = Instance.new("UICorner", Frame26)
			UICorner58.CornerRadius = UDim.new(0, 11)
			local UIStroke18 = Instance.new("UIStroke")
			UIStroke18.Thickness = 1
			UIStroke18.Color = Color3.fromHex("#FACC15")
			UIStroke18.Transparency = 0.55
			UIStroke18.Parent = Frame26
			local ImageLabel10 = Instance.new("ImageLabel")
			ImageLabel10.Name = "Icon"
			ImageLabel10.Size = UDim2.new(0, 23, 0, 23)
			ImageLabel10.Position = UDim2.new(0.5, 0, 0.5, 0)
			ImageLabel10.AnchorPoint = Vector2.new(0.5, 0.5)
			ImageLabel10.BackgroundTransparency = 1
			ImageLabel10.Image = "rbxassetid://340313896"
			ImageLabel10.ImageColor3 = Color3.new(0.99117647111415863, 0.91000000536441805, 0.58705882467329507)
			ImageLabel10.ZIndex = 5
			ImageLabel10.Parent = Frame26
			local TextLabel9 = Instance.new("TextLabel")
			TextLabel9.Name = "Label"
			TextLabel9.Size = UDim2.new(1, -10, 0, 24)
			TextLabel9.Position = UDim2.new(0.5, 0, 1, -7)
			TextLabel9.AnchorPoint = Vector2.new(0.5, 1)
			TextLabel9.BackgroundTransparency = 1
			TextLabel9.Text = "FREE\nX-RAY"
			TextLabel9.TextSize = 9
			TextLabel9.Font = Enum.Font.GothamBold
			TextLabel9.TextColor3 = Color3.fromRGB(146, 146, 158)
			TextLabel9.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
			TextLabel9.TextStrokeTransparency = 1
			TextLabel9.TextWrapped = true
			TextLabel9.LineHeight = 1.1
			TextLabel9.ZIndex = 6
			TextLabel9.Parent = TextButton9
			ImageLabel10.ImageRectOffset = Vector2.new(165, 85)
			ImageLabel10.ImageRectSize = Vector2.new(250, 250)
			ImageLabel10.ImageColor3 = Color3.fromRGB(255, 255, 255)
			ImageLabel10.Size = UDim2.new(0, 29, 0, 29)
			Frame26.ClipsDescendants = false
			Frame26.Position = UDim2.new(0.5, 0, 0, 22)
			TextLabel9.AnchorPoint = Vector2.new(0.5, 0)
			TextLabel9.TextYAlignment = Enum.TextYAlignment.Center
			TextLabel9.Size = UDim2.new(1, -6, 0, 24)
			TextLabel9.Position = UDim2.new(0.5, 0, 0, 39)
			local UICorner59 = TextButton9:FindFirstChildOfClass("UICorner")
			local UICorner60 = TextButton9:FindFirstChildOfClass("UICorner")
			UICorner60.CornerRadius = UICorner59.CornerRadius
			TextButton9.BackgroundColor3 = Color3.fromRGB(10, 10, 13)
			TextButton9.ClipsDescendants = false
			UIStroke17.Thickness = 1.5
			Frame26.Size = UDim2.new(0, 30, 0, 30)
			Frame26.Position = UDim2.new(0.5, 0, 0, 22)
			Frame26.BackgroundColor3 = Color3.fromHex("#FACC15")
			ImageLabel10.Size = UDim2.new(0, 29, 0, 29)
			TextLabel9.Visible = true
			TextLabel9.Position = UDim2.new(0.5, 0, 0, 39)
			TextLabel9.Size = UDim2.new(1, -6, 0, 24)
			local tween116 = TweenService:Create(TextButton9, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.18 })
			tween116:Play()
			local tween117 = TweenService:Create(UIStroke17, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Color = Color3.fromHex("#FACC15"), Transparency = 0.15 })
			tween117:Play()
			local tween118 = TweenService:Create(Frame26, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.82 })
			tween118:Play()
			local tween119 = TweenService:Create(UIStroke18, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Transparency = 0.55 })
			tween119:Play()
			local tween120 = TweenService:Create(ImageLabel10, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { ImageColor3 = Color3.fromRGB(255, 255, 255) })
			tween120:Play()
			local tween121 = TweenService:Create(TextLabel9, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(146, 146, 158) })
			tween121:Play()
			local UICorner61 = TextButton9:FindFirstChildOfClass("UICorner")
			UICorner61.CornerRadius = UDim.new(0, 20)
			UIStroke17.Thickness = 1
			ImageLabel10.Size = UDim2.fromOffset(29, 29)
			local tween122 = TweenService:Create(TextButton9, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.1 })
			tween122:Play()
			local tween123 = TweenService:Create(UIStroke17, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Color = Color3.fromRGB(255, 255, 255), Transparency = 0.88 })
			tween123:Play()
			local tween124 = TweenService:Create(Frame26, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 1 })
			tween124:Play()
			local tween125 = TweenService:Create(UIStroke18, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Transparency = 1 })
			tween125:Play()
			local tween126 = TweenService:Create(ImageLabel10, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { ImageColor3 = Color3.fromRGB(255, 255, 255) })
			tween126:Play()
			local Frame27 = Instance.new("Frame")
			Frame27.Name = "Track"
			Frame27.AnchorPoint = Vector2.new(0.5, 1)
			Frame27.Position = UDim2.new(0.5, 0, 1, -6)
			Frame27.Size = UDim2.new(1, -26, 0, 4)
			Frame27.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Frame27.BackgroundTransparency = 0.86
			Frame27.BorderSizePixel = 0
			Frame27.ZIndex = 4
			Frame27.Parent = TextButton9
			local UICorner62 = Instance.new("UICorner", Frame27)
			UICorner62.CornerRadius = UDim.new(1, 0)
			local Frame28 = Instance.new("Frame")
			Frame28.Name = "Fill"
			Frame28.AnchorPoint = Vector2.new(0, 0.5)
			Frame28.Position = UDim2.new(0, 0, 0.5, 0)
			Frame28.Size = UDim2.fromScale(0, 1)
			Frame28.BackgroundColor3 = Color3.fromHex("#FACC15")
			Frame28.BorderSizePixel = 0
			Frame28.ZIndex = 5
			Frame28.Parent = Frame27
			local UICorner63 = Instance.new("UICorner", Frame28)
			UICorner63.CornerRadius = UDim.new(1, 0)
			Frame26.Position = UDim2.new(0.5, 0, 0, 22)
			TextLabel9.AnchorPoint = Vector2.new(0.5, 0)
			TextLabel9.TextYAlignment = Enum.TextYAlignment.Center
			TextLabel9.Size = UDim2.new(1, -6, 0, 24)
			TextLabel9.Position = UDim2.new(0.5, 0, 0, 39)
			Frame27.Visible = true
			Frame28.Visible = true
			Frame28.BackgroundColor3 = Color3.fromHex("#FACC15")
			Frame28.Size = UDim2.fromScale(0, 1)
			local tween127 = TweenService:Create(UIStroke17, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Color = Color3.fromRGB(255, 255, 255), Transparency = 0.88 })
			tween127:Play()
			local tween128 = TweenService:Create(ImageLabel10, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { ImageColor3 = Color3.fromRGB(255, 255, 255) })
			tween128:Play()
			local tween129 = TweenService:Create(TextLabel9, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(146, 146, 158) })
			tween129:Play()
			Frame28.Size = UDim2.fromScale(0, 1)
			TextButton9.MouseEnter:Connect(function(arg156)
				local tween218 = TweenService:Create(TextButton9, TweenInfo.new(0.12, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.03 })
				tween218:Play()
				local tween219 = TweenService:Create(TextLabel9, TweenInfo.new(0.12, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(191, 219, 254) })
				tween219:Play()
			end)
			TextButton9.MouseLeave:Connect(function(arg157)
				local tween220 = TweenService:Create(TextButton9, TweenInfo.new(0.12, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.1 })
				tween220:Play()
				local tween221 = TweenService:Create(TextLabel9, TweenInfo.new(0.12, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(146, 146, 158) })
				tween221:Play()
			end)
			TextButton9.MouseButton1Click:Connect(function()
				local tween222 = TweenService:Create(UIScale9, TweenInfo.new(0.06, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = 0.651 })
				tween222:Play()
				task.delay(0.08, function(...)
				end)
				task.spawn(function(...)
					local descendants43 = workspace:GetDescendants()
					for i114, v114 in ipairs(descendants43) do
					end
					-- [envlog] error: protected:942: attempt to compare userdata < number
				end)
			end)
			TextButton9.TouchTap:Connect(function(arg158)
			end)
			TextButton9.InputBegan:Connect(function(input26, gameProcessed26)
			end)
			local connection39 = UserInputService.InputChanged:Connect(function(input27, gameProcessed27)
			end)
			local connection40 = UserInputService.InputEnded:Connect(function(input28, gameProcessed28)
			end)
			local tween130 = TweenService:Create(UIStroke17, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Color = Color3.fromRGB(255, 255, 255), Transparency = 0.88 })
			tween130:Play()
			local tween131 = TweenService:Create(ImageLabel10, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { ImageColor3 = Color3.fromRGB(255, 255, 255) })
			tween131:Play()
			local tween132 = TweenService:Create(TextLabel9, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(146, 146, 158) })
			tween132:Play()
			Frame28.Size = UDim2.fromScale(0, 1)
		else
			connection39:Disconnect()
			connection40:Disconnect()
			ScreenGui10:Destroy()
		end
	end
})
Tab4:Toggle({
	Title = "Fly Button",
	Desc = "On-screen button that turns Fly on and off. Same fly as the Player tab.",
	Flag = "Toggle_Fly_Button",
	Type = "Toggle",
	Value = false,
	Callback = function(state, arg160)
		if state then
			local ScreenGui11 = Instance.new("ScreenGui")
			ScreenGui11.Name = "FVLFlyButton"
			ScreenGui11.ResetOnSpawn = false
			ScreenGui11.IgnoreGuiInset = true
			ScreenGui11.Parent = CoreGui
			local TextButton10 = Instance.new("TextButton")
			TextButton10.Size = UDim2.new(0, 72, 0, 72)
			TextButton10.Position = UDim2.new(0.5, 0, 0.25, 57.4)
			TextButton10.AnchorPoint = Vector2.new(0.5, 0.5)
			TextButton10.Text = ""
			TextButton10.BackgroundColor3 = Color3.fromRGB(10, 10, 13)
			TextButton10.BackgroundTransparency = 0.18
			TextButton10.BorderSizePixel = 0
			TextButton10.AutoButtonColor = false
			TextButton10.ZIndex = 2
			TextButton10.Name = "FlyBtn"
			TextButton10.Parent = ScreenGui11
			local UICorner64 = Instance.new("UICorner", TextButton10)
			UICorner64.CornerRadius = UDim.new(0, 16)
			local UIScale10 = Instance.new("UIScale")
			UIScale10.Scale = 0.7
			UIScale10.Parent = TextButton10
			local UIStroke19 = Instance.new("UIStroke")
			UIStroke19.Thickness = 1.5
			UIStroke19.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			UIStroke19.Color = Color3.fromHex("#38BDF8")
			UIStroke19.Transparency = 0.15
			UIStroke19.Parent = TextButton10
			local Frame29 = Instance.new("Frame")
			Frame29.Name = "Plate"
			Frame29.Size = UDim2.new(0, 30, 0, 30)
			Frame29.Position = UDim2.new(0.5, 0, 0, 25)
			Frame29.AnchorPoint = Vector2.new(0.5, 0.5)
			Frame29.BackgroundColor3 = Color3.fromHex("#38BDF8")
			Frame29.BackgroundTransparency = 0.82
			Frame29.BorderSizePixel = 0
			Frame29.ZIndex = 3
			Frame29.Parent = TextButton10
			local UICorner65 = Instance.new("UICorner", Frame29)
			UICorner65.CornerRadius = UDim.new(0, 11)
			local UIStroke20 = Instance.new("UIStroke")
			UIStroke20.Thickness = 1
			UIStroke20.Color = Color3.fromHex("#38BDF8")
			UIStroke20.Transparency = 0.55
			UIStroke20.Parent = Frame29
			local ImageLabel11 = Instance.new("ImageLabel")
			ImageLabel11.Name = "Icon"
			ImageLabel11.Size = UDim2.new(0, 23, 0, 23)
			ImageLabel11.Position = UDim2.new(0.5, 0, 0.5, 0)
			ImageLabel11.AnchorPoint = Vector2.new(0.5, 0.5)
			ImageLabel11.BackgroundTransparency = 1
			ImageLabel11.Image = "rbxassetid://126985561580989"
			ImageLabel11.ImageColor3 = Color3.new(0.64882353022694583, 0.88352941870689394, 0.98764705955982213)
			ImageLabel11.ZIndex = 5
			ImageLabel11.Parent = Frame29
			local TextLabel10 = Instance.new("TextLabel")
			TextLabel10.Name = "Label"
			TextLabel10.Size = UDim2.new(1, -10, 0, 24)
			TextLabel10.Position = UDim2.new(0.5, 0, 1, -7)
			TextLabel10.AnchorPoint = Vector2.new(0.5, 1)
			TextLabel10.BackgroundTransparency = 1
			TextLabel10.Text = "FLY"
			TextLabel10.TextSize = 9
			TextLabel10.Font = Enum.Font.GothamBold
			TextLabel10.TextColor3 = Color3.fromRGB(146, 146, 158)
			TextLabel10.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
			TextLabel10.TextStrokeTransparency = 1
			TextLabel10.TextWrapped = true
			TextLabel10.LineHeight = 1.1
			TextLabel10.ZIndex = 6
			TextLabel10.Parent = TextButton10
			Frame29.Position = UDim2.new(0.5, 0, 0, 24)
			TextLabel10.AnchorPoint = Vector2.new(0.5, 0)
			TextLabel10.TextYAlignment = Enum.TextYAlignment.Center
			TextLabel10.Size = UDim2.new(1, -6, 0, 24)
			TextLabel10.Position = UDim2.new(0.5, 0, 0, 41)
			ImageLabel11.Size = UDim2.fromOffset(22, 22)
			local UICorner66 = TextButton10:FindFirstChildOfClass("UICorner")
			local UICorner67 = TextButton10:FindFirstChildOfClass("UICorner")
			UICorner67.CornerRadius = UICorner66.CornerRadius
			TextButton10.BackgroundColor3 = Color3.fromRGB(10, 10, 13)
			TextButton10.ClipsDescendants = false
			UIStroke19.Thickness = 1.5
			Frame29.Size = UDim2.new(0, 30, 0, 30)
			Frame29.Position = UDim2.new(0.5, 0, 0, 24)
			Frame29.BackgroundColor3 = Color3.fromHex("#38BDF8")
			ImageLabel11.Size = UDim2.fromOffset(22, 22)
			TextLabel10.Visible = true
			TextLabel10.Position = UDim2.new(0.5, 0, 0, 41)
			TextLabel10.Size = UDim2.new(1, -6, 0, 24)
			local tween133 = TweenService:Create(TextButton10, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.18 })
			tween133:Play()
			local tween134 = TweenService:Create(UIStroke19, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Color = Color3.fromHex("#38BDF8"), Transparency = 0.15 })
			tween134:Play()
			local tween135 = TweenService:Create(Frame29, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.82 })
			tween135:Play()
			local tween136 = TweenService:Create(UIStroke20, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Transparency = 0.55 })
			tween136:Play()
			local tween137 = TweenService:Create(ImageLabel11, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { ImageColor3 = Color3.new(0.64882353022694583, 0.88352941870689394, 0.98764705955982213) })
			tween137:Play()
			local tween138 = TweenService:Create(TextLabel10, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(146, 146, 158) })
			tween138:Play()
			local UICorner68 = TextButton10:FindFirstChildOfClass("UICorner")
			UICorner68.CornerRadius = UDim.new(0, 20)
			UIStroke19.Thickness = 1
			ImageLabel11.Size = UDim2.fromOffset(22, 22)
			local tween139 = TweenService:Create(TextButton10, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.1 })
			tween139:Play()
			local tween140 = TweenService:Create(UIStroke19, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Color = Color3.fromRGB(255, 255, 255), Transparency = 0.88 })
			tween140:Play()
			local tween141 = TweenService:Create(Frame29, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 1 })
			tween141:Play()
			local tween142 = TweenService:Create(UIStroke20, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Transparency = 1 })
			tween142:Play()
			local tween143 = TweenService:Create(ImageLabel11, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { ImageColor3 = Color3.new(0.41470588371157646, 0.80588236451148987, 0.9794117659330368) })
			tween143:Play()
			local Frame30 = Instance.new("Frame")
			Frame30.Name = "Track"
			Frame30.AnchorPoint = Vector2.new(0.5, 1)
			Frame30.Position = UDim2.new(0.5, 0, 1, -6)
			Frame30.Size = UDim2.new(1, -26, 0, 4)
			Frame30.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Frame30.BackgroundTransparency = 0.86
			Frame30.BorderSizePixel = 0
			Frame30.ZIndex = 4
			Frame30.Parent = TextButton10
			local UICorner69 = Instance.new("UICorner", Frame30)
			UICorner69.CornerRadius = UDim.new(1, 0)
			local Frame31 = Instance.new("Frame")
			Frame31.Name = "Fill"
			Frame31.AnchorPoint = Vector2.new(0, 0.5)
			Frame31.Position = UDim2.new(0, 0, 0.5, 0)
			Frame31.Size = UDim2.fromScale(0, 1)
			Frame31.BackgroundColor3 = Color3.fromHex("#38BDF8")
			Frame31.BorderSizePixel = 0
			Frame31.ZIndex = 5
			Frame31.Parent = Frame30
			local UICorner70 = Instance.new("UICorner", Frame31)
			UICorner70.CornerRadius = UDim.new(1, 0)
			Frame29.Position = UDim2.new(0.5, 0, 0, 24)
			TextLabel10.AnchorPoint = Vector2.new(0.5, 0)
			TextLabel10.TextYAlignment = Enum.TextYAlignment.Center
			TextLabel10.Size = UDim2.new(1, -6, 0, 24)
			TextLabel10.Position = UDim2.new(0.5, 0, 0, 41)
			Frame30.Visible = true
			Frame31.Visible = true
			Frame31.BackgroundColor3 = Color3.fromHex("#38BDF8")
			Frame31.Size = UDim2.fromScale(0, 1)
			local tween144 = TweenService:Create(UIStroke19, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Color = Color3.fromRGB(255, 255, 255), Transparency = 0.88 })
			tween144:Play()
			local tween145 = TweenService:Create(ImageLabel11, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { ImageColor3 = Color3.new(0.41470588371157646, 0.80588236451148987, 0.9794117659330368) })
			tween145:Play()
			local tween146 = TweenService:Create(TextLabel10, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(146, 146, 158) })
			tween146:Play()
			Frame31.Size = UDim2.fromScale(0, 1)
			TextButton10.MouseEnter:Connect(function(arg161)
				local tween223 = TweenService:Create(TextButton10, TweenInfo.new(0.12, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.03 })
				tween223:Play()
				local tween224 = TweenService:Create(TextLabel10, TweenInfo.new(0.12, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(191, 219, 254) })
				tween224:Play()
			end)
			TextButton10.MouseLeave:Connect(function(arg162)
				local tween225 = TweenService:Create(TextButton10, TweenInfo.new(0.12, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.1 })
				tween225:Play()
				local tween226 = TweenService:Create(TextLabel10, TweenInfo.new(0.12, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(146, 146, 158) })
				tween226:Play()
			end)
			TextButton10.MouseButton1Click:Connect(function()
				local tween227 = TweenService:Create(UIScale10, TweenInfo.new(0.06, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = 0.651 })
				tween227:Play()
				task.delay(0.08, function(...)
				end)
				task.spawn(function(...)
					local HumanoidRootPart5 = Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
					local Humanoid28 = Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
					local BodyVelocity2 = Instance.new("BodyVelocity")
					BodyVelocity2.Name = "FlyVelocity"
					BodyVelocity2.Velocity = Vector3.new(0, 0, 0)
					BodyVelocity2.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
					BodyVelocity2.Parent = HumanoidRootPart5
					local BodyGyro2 = Instance.new("BodyGyro")
					BodyGyro2.Name = "FlyGyro"
					BodyGyro2.P = 90000
					BodyGyro2.MaxTorque = Vector3.new(8999999488, 8999999488, 8999999488)
					BodyGyro2.CFrame = HumanoidRootPart5.CFrame
					BodyGyro2.Parent = HumanoidRootPart5
					Humanoid28.PlatformStand = true
					RunService.Heartbeat:Connect(function(deltaTime10)
						BodyGyro2.CFrame = workspace.CurrentCamera.CFrame
						UserInputService:IsKeyDown(Enum.KeyCode.W)
						UserInputService:IsKeyDown(Enum.KeyCode.S)
						UserInputService:IsKeyDown(Enum.KeyCode.A)
						UserInputService:IsKeyDown(Enum.KeyCode.D)
						UserInputService:IsKeyDown(Enum.KeyCode.Space)
						UserInputService:IsKeyDown(Enum.KeyCode.LeftShift)
						BodyVelocity2.Velocity = Vector3.new(0, 0, 0)
					end)
					Toggle4:SetValue(true)
				end)
			end)
			TextButton10.TouchTap:Connect(function(arg163)
			end)
			TextButton10.InputBegan:Connect(function(input29, gameProcessed29)
			end)
			local connection41 = UserInputService.InputChanged:Connect(function(input30, gameProcessed30)
			end)
			local connection42 = UserInputService.InputEnded:Connect(function(input31, gameProcessed31)
			end)
			local tween147 = TweenService:Create(UIStroke19, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Color = Color3.fromRGB(255, 255, 255), Transparency = 0.88 })
			tween147:Play()
			local tween148 = TweenService:Create(ImageLabel11, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { ImageColor3 = Color3.new(0.41470588371157646, 0.80588236451148987, 0.9794117659330368) })
			tween148:Play()
			local tween149 = TweenService:Create(TextLabel10, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(146, 146, 158) })
			tween149:Play()
			Frame31.Size = UDim2.fromScale(0, 1)
		else
			connection41:Disconnect()
			connection42:Disconnect()
			ScreenGui11:Destroy()
		end
	end
})
Tab4:Toggle({
	Title = "Noclip Button",
	Desc = "Turns Noclip on and off - walk through walls.",
	Flag = "Toggle_Noclip_Button",
	Type = "Toggle",
	Value = false,
	Callback = function(state, arg165)
		if state then
			local ScreenGui12 = Instance.new("ScreenGui")
			ScreenGui12.Name = "FVLNoclipButton"
			ScreenGui12.ResetOnSpawn = false
			ScreenGui12.IgnoreGuiInset = true
			ScreenGui12.Parent = CoreGui
			local TextButton11 = Instance.new("TextButton")
			TextButton11.Size = UDim2.new(0, 72, 0, 72)
			TextButton11.Position = UDim2.new(0.5, 57.4, 0.25, 57.4)
			TextButton11.AnchorPoint = Vector2.new(0.5, 0.5)
			TextButton11.Text = ""
			TextButton11.BackgroundColor3 = Color3.fromRGB(10, 10, 13)
			TextButton11.BackgroundTransparency = 0.18
			TextButton11.BorderSizePixel = 0
			TextButton11.AutoButtonColor = false
			TextButton11.ZIndex = 2
			TextButton11.Name = "NoclipBtn"
			TextButton11.Parent = ScreenGui12
			local UICorner71 = Instance.new("UICorner", TextButton11)
			UICorner71.CornerRadius = UDim.new(0, 16)
			local UIScale11 = Instance.new("UIScale")
			UIScale11.Scale = 0.7
			UIScale11.Parent = TextButton11
			local UIStroke21 = Instance.new("UIStroke")
			UIStroke21.Thickness = 1.5
			UIStroke21.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			UIStroke21.Color = Color3.fromHex("#94A3B8")
			UIStroke21.Transparency = 0.15
			UIStroke21.Parent = TextButton11
			local Frame32 = Instance.new("Frame")
			Frame32.Name = "Plate"
			Frame32.Size = UDim2.new(0, 30, 0, 30)
			Frame32.Position = UDim2.new(0.5, 0, 0, 25)
			Frame32.AnchorPoint = Vector2.new(0.5, 0.5)
			Frame32.BackgroundColor3 = Color3.fromHex("#94A3B8")
			Frame32.BackgroundTransparency = 0.82
			Frame32.BorderSizePixel = 0
			Frame32.ZIndex = 3
			Frame32.Parent = TextButton11
			local UICorner72 = Instance.new("UICorner", Frame32)
			UICorner72.CornerRadius = UDim.new(0, 11)
			local UIStroke22 = Instance.new("UIStroke")
			UIStroke22.Thickness = 1
			UIStroke22.Color = Color3.fromHex("#94A3B8")
			UIStroke22.Transparency = 0.55
			UIStroke22.Parent = Frame32
			local ImageLabel12 = Instance.new("ImageLabel")
			ImageLabel12.Name = "Icon"
			ImageLabel12.Size = UDim2.new(0, 23, 0, 23)
			ImageLabel12.Position = UDim2.new(0.5, 0, 0.5, 0)
			ImageLabel12.AnchorPoint = Vector2.new(0.5, 0.5)
			ImageLabel12.BackgroundTransparency = 1
			ImageLabel12.Image = "rbxassetid://113822048130017"
			ImageLabel12.ImageColor3 = Color3.new(0.81117648184299473, 0.83764706850051884, 0.87470588982105257)
			ImageLabel12.ZIndex = 5
			ImageLabel12.Parent = Frame32
			local TextLabel11 = Instance.new("TextLabel")
			TextLabel11.Name = "Label"
			TextLabel11.Size = UDim2.new(1, -10, 0, 24)
			TextLabel11.Position = UDim2.new(0.5, 0, 1, -7)
			TextLabel11.AnchorPoint = Vector2.new(0.5, 1)
			TextLabel11.BackgroundTransparency = 1
			TextLabel11.Text = "NOCLIP"
			TextLabel11.TextSize = 9
			TextLabel11.Font = Enum.Font.GothamBold
			TextLabel11.TextColor3 = Color3.fromRGB(146, 146, 158)
			TextLabel11.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
			TextLabel11.TextStrokeTransparency = 1
			TextLabel11.TextWrapped = true
			TextLabel11.LineHeight = 1.1
			TextLabel11.ZIndex = 6
			TextLabel11.Parent = TextButton11
			Frame32.Position = UDim2.new(0.5, 0, 0, 24)
			TextLabel11.AnchorPoint = Vector2.new(0.5, 0)
			TextLabel11.TextYAlignment = Enum.TextYAlignment.Center
			TextLabel11.Size = UDim2.new(1, -6, 0, 24)
			TextLabel11.Position = UDim2.new(0.5, 0, 0, 41)
			ImageLabel12.Size = UDim2.fromOffset(22, 22)
			local UICorner73 = TextButton11:FindFirstChildOfClass("UICorner")
			local UICorner74 = TextButton11:FindFirstChildOfClass("UICorner")
			UICorner74.CornerRadius = UICorner73.CornerRadius
			TextButton11.BackgroundColor3 = Color3.fromRGB(10, 10, 13)
			TextButton11.ClipsDescendants = false
			UIStroke21.Thickness = 1.5
			Frame32.Size = UDim2.new(0, 30, 0, 30)
			Frame32.Position = UDim2.new(0.5, 0, 0, 24)
			Frame32.BackgroundColor3 = Color3.fromHex("#94A3B8")
			ImageLabel12.Size = UDim2.fromOffset(22, 22)
			TextLabel11.Visible = true
			TextLabel11.Position = UDim2.new(0.5, 0, 0, 41)
			TextLabel11.Size = UDim2.new(1, -6, 0, 24)
			local tween150 = TweenService:Create(TextButton11, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.18 })
			tween150:Play()
			local tween151 = TweenService:Create(UIStroke21, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Color = Color3.fromHex("#94A3B8"), Transparency = 0.15 })
			tween151:Play()
			local tween152 = TweenService:Create(Frame32, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.82 })
			tween152:Play()
			local tween153 = TweenService:Create(UIStroke22, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Transparency = 0.55 })
			tween153:Play()
			local tween154 = TweenService:Create(ImageLabel12, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { ImageColor3 = Color3.new(0.81117648184299473, 0.83764706850051884, 0.87470588982105257) })
			tween154:Play()
			local tween155 = TweenService:Create(TextLabel11, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(146, 146, 158) })
			tween155:Play()
			local UICorner75 = TextButton11:FindFirstChildOfClass("UICorner")
			UICorner75.CornerRadius = UDim.new(0, 20)
			UIStroke21.Thickness = 1
			ImageLabel12.Size = UDim2.fromOffset(22, 22)
			local tween156 = TweenService:Create(TextButton11, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.1 })
			tween156:Play()
			local tween157 = TweenService:Create(UIStroke21, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Color = Color3.fromRGB(255, 255, 255), Transparency = 0.88 })
			tween157:Play()
			local tween158 = TweenService:Create(Frame32, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 1 })
			tween158:Play()
			local tween159 = TweenService:Create(UIStroke22, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Transparency = 1 })
			tween159:Play()
			local tween160 = TweenService:Create(ImageLabel12, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { ImageColor3 = Color3.new(0.68529413640499115, 0.729411780834198, 0.79117648303508759) })
			tween160:Play()
			local Frame33 = Instance.new("Frame")
			Frame33.Name = "Track"
			Frame33.AnchorPoint = Vector2.new(0.5, 1)
			Frame33.Position = UDim2.new(0.5, 0, 1, -6)
			Frame33.Size = UDim2.new(1, -26, 0, 4)
			Frame33.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Frame33.BackgroundTransparency = 0.86
			Frame33.BorderSizePixel = 0
			Frame33.ZIndex = 4
			Frame33.Parent = TextButton11
			local UICorner76 = Instance.new("UICorner", Frame33)
			UICorner76.CornerRadius = UDim.new(1, 0)
			local Frame34 = Instance.new("Frame")
			Frame34.Name = "Fill"
			Frame34.AnchorPoint = Vector2.new(0, 0.5)
			Frame34.Position = UDim2.new(0, 0, 0.5, 0)
			Frame34.Size = UDim2.fromScale(0, 1)
			Frame34.BackgroundColor3 = Color3.fromHex("#94A3B8")
			Frame34.BorderSizePixel = 0
			Frame34.ZIndex = 5
			Frame34.Parent = Frame33
			local UICorner77 = Instance.new("UICorner", Frame34)
			UICorner77.CornerRadius = UDim.new(1, 0)
			Frame32.Position = UDim2.new(0.5, 0, 0, 24)
			TextLabel11.AnchorPoint = Vector2.new(0.5, 0)
			TextLabel11.TextYAlignment = Enum.TextYAlignment.Center
			TextLabel11.Size = UDim2.new(1, -6, 0, 24)
			TextLabel11.Position = UDim2.new(0.5, 0, 0, 41)
			Frame33.Visible = true
			Frame34.Visible = true
			Frame34.BackgroundColor3 = Color3.fromHex("#94A3B8")
			Frame34.Size = UDim2.fromScale(0, 1)
			local tween161 = TweenService:Create(UIStroke21, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Color = Color3.fromRGB(255, 255, 255), Transparency = 0.88 })
			tween161:Play()
			local tween162 = TweenService:Create(ImageLabel12, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { ImageColor3 = Color3.new(0.68529413640499115, 0.729411780834198, 0.79117648303508759) })
			tween162:Play()
			local tween163 = TweenService:Create(TextLabel11, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(146, 146, 158) })
			tween163:Play()
			Frame34.Size = UDim2.fromScale(0, 1)
			TextButton11.MouseEnter:Connect(function(arg166)
				local tween228 = TweenService:Create(TextButton11, TweenInfo.new(0.12, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.03 })
				tween228:Play()
				local tween229 = TweenService:Create(TextLabel11, TweenInfo.new(0.12, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(191, 219, 254) })
				tween229:Play()
			end)
			TextButton11.MouseLeave:Connect(function(arg167)
				local tween230 = TweenService:Create(TextButton11, TweenInfo.new(0.12, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.1 })
				tween230:Play()
				local tween231 = TweenService:Create(TextLabel11, TweenInfo.new(0.12, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(146, 146, 158) })
				tween231:Play()
			end)
			TextButton11.MouseButton1Click:Connect(function()
				local tween232 = TweenService:Create(UIScale11, TweenInfo.new(0.06, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = 0.651 })
				tween232:Play()
				task.delay(0.08, function(...)
				end)
				task.spawn(function(...)
					RunService.Stepped:Connect(function(time2, deltaTime11)
						local descendants46 = Players.LocalPlayer.Character:GetDescendants()
						for i121, v121 in ipairs(descendants46) do
							v121.CanCollide = false
						end
					end)
					Toggle3:SetValue(true)
				end)
			end)
			TextButton11.TouchTap:Connect(function(arg168)
			end)
			TextButton11.InputBegan:Connect(function(input32, gameProcessed32)
			end)
			local connection43 = UserInputService.InputChanged:Connect(function(input33, gameProcessed33)
			end)
			local connection44 = UserInputService.InputEnded:Connect(function(input34, gameProcessed34)
			end)
			local tween164 = TweenService:Create(UIStroke21, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Color = Color3.fromRGB(255, 255, 255), Transparency = 0.88 })
			tween164:Play()
			local tween165 = TweenService:Create(ImageLabel12, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { ImageColor3 = Color3.new(0.68529413640499115, 0.729411780834198, 0.79117648303508759) })
			tween165:Play()
			local tween166 = TweenService:Create(TextLabel11, TweenInfo.new(0.03, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(146, 146, 158) })
			tween166:Play()
			Frame34.Size = UDim2.fromScale(0, 1)
		else
			connection43:Disconnect()
			connection44:Disconnect()
			ScreenGui12:Destroy()
		end
	end
})
task.spawn(function(...)
	task.wait(0.25)
	task.wait(0.25)
	-- [envlog] the statements above repeat forever (loop)
end)
-- isfile("WindUI/FVLV2/config/autosave.json") -> false
-- isfile("WindUI/FVLV2/config/autosave.json") -> false
-- isfile("WindUI/FVLV2/config/autosave.json") -> false
-- isfile("WindUI/FVLV2/config/autosave.json") -> false
-- isfile("WindUI/FVLV2/config/autosave.json") -> false
-- isfile("WindUI/FVLV2/config/autosave.json") -> false
-- isfile("WindUI/FVLV2/config/autosave.json") -> false
-- isfile("WindUI/FVLV2/config/autosave.json") -> false
-- isfile("WindUI/FVLV2/config/autosave.json") -> false
-- isfile("WindUI/FVLV2/config/autosave.json") -> false
-- isfile("WindUI/FVLV2/config/autosave.json") -> false
task.spawn(function(...)
	RunService.RenderStepped:Wait()
end)
local Backpack21 = Players.LocalPlayer:FindFirstChild("Backpack")
local FakeBomb = Backpack21:FindFirstChild("FakeBomb")
local connection45 = FakeBomb.Activated:Connect(function(inputObject, clickCount)
end)
local connection46 = Backpack21.ChildAdded:Connect(function(child2)
end)
local FakeBomb2 = Players.LocalPlayer.Character:FindFirstChild("FakeBomb")
local connection47 = FakeBomb2.Activated:Connect(function(inputObject2, clickCount2)
end)
local connection48 = Players.LocalPlayer.Character.ChildAdded:Connect(function(child3)
end)
local connection49 = Players.LocalPlayer.CharacterAdded:Connect(function(character6)
	character6:WaitForChild("Humanoid")
	task.wait(0.5)
	local Backpack29 = Players.LocalPlayer:FindFirstChild("Backpack")
	local FakeBomb4 = Backpack29:FindFirstChild("FakeBomb")
	FakeBomb4.Activated:Connect(function(inputObject3, clickCount3)
	end)
	Backpack29.ChildAdded:Connect(function(child7)
	end)
	local FakeBomb5 = Players.LocalPlayer.Character:FindFirstChild("FakeBomb")
	FakeBomb5.Activated:Connect(function(inputObject4, clickCount4)
	end)
	Players.LocalPlayer.Character.ChildAdded:Connect(function(child8)
	end)
end)
local descendants23 = Window.UIElements.Main:GetDescendants()
for i68, v68 in ipairs(descendants23) do
end
Tab3:Paragraph({
	Title = "Visual Skin Changer — ONLY YOU CAN SEE THIS!",
	Desc = "Beta - expect the odd bug while holding items. Report them in our YouTube comments."
})
Tab3:Button({
	Title = "Spawn all visual skins",
	Callback = function(state, arg170)
	end
})
Tab3:Button({
	Title = "Despawn all visual skins",
	Callback = function(state, arg172)
	end
})
local descendants24 = Window.UIElements.Main:GetDescendants()
for i69, v69 in ipairs(descendants24) do
end
local descendants25 = Window.UIElements.Main:GetDescendants()
for i70, v70 in ipairs(descendants25) do
end
local Paragraph = Tab3:Paragraph({ Title = "Skins", Desc = "Loading…" })
task.spawn(function(...)
	local InsertService = game:GetService("InsertService")
	_G.__MM2Viz = { conns = {} }
	local ClientServices2 = ReplicatedStorage:WaitForChild("ClientServices")
	local EquipService = ClientServices2:WaitForChild("EquipService")
	require(EquipService)
	local Database = ReplicatedStorage:WaitForChild("Database")
	local Sync = Database:WaitForChild("Sync")
	require(Sync)
	local Modules = ReplicatedStorage:WaitForChild("Modules")
	local ProfileData = Modules:WaitForChild("ProfileData")
	require(ProfileData)
	local Remotes28 = ReplicatedStorage:WaitForChild("Remotes")
	local Inventory = Remotes28:WaitForChild("Inventory")
	Inventory:WaitForChild("InventoryDataChanged")
	-- isfile("FVLV2/weapon.lua") -> false
	local response4 = game:HttpGet("https://raw.githubusercontent.com/kroxn/visual/refs/heads/main/weapon.lua", true)
	-- isfolder("FVLV2") -> false
	makefolder("FVLV2")
	writefile("FVLV2/weapon.lua", response4)
	loadstring(response4 .. "\nreturn MESHES_FULL")()
	require(ReplicatedStorage.Database.Sync)
	Paragraph:SetDesc("Couldn't load skins: [MM2Viz] fetched file produced no MESHES_FULL table (is the URL the data file?)")
end)
Tab:Section({ Title = "Misc" })
Tab:Toggle({
	Title = "Auto Grab Gun",
	Desc = "Picks up the dropped gun for you.",
	Flag = "Toggle_Auto_Grab_Gun",
	Type = "Toggle",
	Value = false,
	Callback = function(state, arg174)
		if state then
			local thread2 = task.spawn(function(...)
				task.wait(0.12)
				Players.LocalPlayer:FindFirstChildOfClass("Backpack")
				Players.LocalPlayer.Character:FindFirstChild("Gun")
				task.wait(0.12)
				-- [envlog] the statements above repeat forever (loop)
			end)
		else
			task.cancel(thread2)
		end
	end
})
Tab:Toggle({
	Title = "Wall Check",
	Desc = "Only act when you can actually see the target. Covers Silent Aim, Triggerbot and the on-screen buttons.",
	Flag = "Toggle_Wall_Check",
	Type = "Toggle",
	Value = false,
	Callback = function(state, arg176)
	end
})
Tab:Toggle({
	Title = "Wallbang",
	Desc = "Shoots through walls. Skips the wall check and fires from inside the target's hitbox. Covers Shoot Murderer, Silent Aim and Triggerbot.",
	Flag = "Toggle_Wallbang",
	Type = "Toggle",
	Value = false,
	Callback = function(state, arg178)
	end
})
Tab:Section({ Title = "Sheriff — you have the gun" })
local Toggle2 = Tab:Toggle({
	Title = "Silent Aim",
	Desc = "Bends your shots to the murderer when you click. Needs the gun, and the aimbot turns it on too.",
	Flag = "Toggle_Silent_Aim",
	Type = "Toggle",
	Value = false,
	Callback = function(state, arg180)
		if state then
			Players.LocalPlayer.Character:FindFirstChild("Gun")
			local connection50 = Players.LocalPlayer.Character.ChildAdded:Connect(function(child4)
			end)
			local connection51 = Players.LocalPlayer.CharacterAdded:Connect(function(character7)
				task.wait(1)
				Players.LocalPlayer.Character:FindFirstChild("Gun")
				character7.ChildAdded:Connect(function(child9)
				end)
			end)
			local mouse2 = Players.LocalPlayer:GetMouse()
			local connection52 = mouse2.Button1Down:Connect(function(arg181)
				local Gun = Players.LocalPlayer.Character:FindFirstChild("Gun")
				Gun:FindFirstChild("Shoot")
				Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				local players46 = Players:GetPlayers()
				for i115, v115 in ipairs(players46) do
					local Backpack30 = v115:FindFirstChildOfClass("Backpack")
					Backpack30:FindFirstChild("Knife")
					v115.Character:FindFirstChildOfClass("Humanoid")
				end
				-- [envlog] error: protected:7274: attempt to compare number < userdata
			end)
		else
			connection52:Disconnect()
			connection50:Disconnect()
			connection51:Disconnect()
		end
	end
})
Tab:Toggle({
	Title = "Triggerbot",
	Desc = "Fires by itself when the murderer crosses your crosshair. Sheriff only.",
	Flag = "Toggle_Triggerbot",
	Type = "Toggle",
	Value = false,
	Callback = function(state, arg183)
		if state then
			local connection53 = RunService.Heartbeat:Connect(function(deltaTime5)
			end)
		else
			connection53:Disconnect()
		end
	end
})
Tab:Section({ Title = "Murderer — you have the knife" })
UserInputService.InputBegan:Connect(function(input35, gameProcessed35)
end)
local mouse3 = Players.LocalPlayer:GetMouse()
local connection54 = mouse3.Button1Down:Connect(function(arg184)
end)
local instanceAddedSignal = CollectionService:GetInstanceAddedSignal("ThrowingKnife")
local connection55 = instanceAddedSignal:Connect(function(arg185)
end)
Tab:Slider({
	Title = "Change Knife Hitbox  (OP!)",
	Desc = "Change the size of your Knife! (1 is default hitbox)",
	Flag = "Slider_Change_Knife_Hitbox",
	Step = 1,
	Value = { Default = 1, Max = 200, Min = 1 },
	Callback = function(state, arg187)
	end
})
Tab:Toggle({
	Title = "Show Hitbox",
	Desc = "Draws the reach as a sphere.",
	Flag = "Toggle_Show_Hitbox",
	Type = "Toggle",
	Value = false,
	Callback = function(state, arg189)
	end
})
Tab:Toggle({
	Title = "Silent Throw",
	Desc = "Right click throws the knife at the nearest player. Murderer only.",
	Flag = "Toggle_Silent_Throw",
	Type = "Toggle",
	Value = false,
	Callback = function(state, arg191)
		if state then
			Players.LocalPlayer.Character:FindFirstChild("Knife")
			local connection56 = Players.LocalPlayer.Character.ChildAdded:Connect(function(child5)
			end)
			local connection57 = Players.LocalPlayer.CharacterAdded:Connect(function(character8)
			end)
			local mouse4 = Players.LocalPlayer:GetMouse()
			local connection58 = mouse4.Button2Down:Connect(function(arg192)
			end)
		else
			connection58:Disconnect()
			connection56:Disconnect()
			connection57:Disconnect()
		end
	end
})
local players31 = Players:GetPlayers()
for i71, v71 in ipairs(players31) do
end
local Dropdown2 = Tab:Dropdown({
	Title = "Target",
	Desc = "Pick who to stab, then use the button below.",
	Multi = false,
	Values = { v71.Name },
	Callback = function(state, arg194)
	end
})
Tab:Button({
	Title = "Kill Target",
	Desc = "Instantly stabs the player picked above.",
	Callback = function(state, arg196)
	end
})
Tab:Button({
	Title = "Kill All",
	Desc = "Instantly stabs every player in the server.",
	Callback = function(state, arg198)
		if state then
			local players32 = Players:GetPlayers()
			for i72, v72 in ipairs(players32) do
				local Backpack22 = v72:FindFirstChildOfClass("Backpack")
				Backpack22:FindFirstChild("Knife")
			end
		else
			local players33 = Players:GetPlayers()
			for i73, v73 in ipairs(players33) do
				local Backpack23 = v73:FindFirstChildOfClass("Backpack")
				Backpack23:FindFirstChild("Knife")
			end
		end
	end
})
local descendants26 = Window.UIElements.Main:GetDescendants()
for i74, v74 in ipairs(descendants26) do
end
local descendants27 = Window.UIElements.Main:GetDescendants()
for i75, v75 in ipairs(descendants27) do
end
local descendants28 = Window.UIElements.Main:GetDescendants()
for i76, v76 in ipairs(descendants28) do
end
local Lighting = game:GetService("Lighting")
Tab9:Section({ Title = "Performance Mode" })
Tab9:Paragraph({
	Title = "Read me first",
	Desc = "All client-side and fully reversible - switch it off and the map is back. Roughly 10-30% more frames."
})
Tab9:Toggle({
	Title = "Performance Mode",
	Desc = "Strips textures, shadows, particles, effects, pets, animations and sounds, and drops the graphics quality. Ugly, and fast.",
	Flag = "Toggle_Perf_Master",
	Type = "Toggle",
	Value = false,
	Callback = function(state, arg200)
	end
})
Tab9:Toggle({
	Title = "FPS Counter",
	Desc = "Live framerate at the top of the screen -- drag it anywhere. Green 50+, amber 30+, red below.",
	Flag = "Toggle_Perf_FPS",
	Type = "Toggle",
	Value = false,
	Callback = function(state, arg202)
	end
})
Tab9:Toggle({
	Title = "Remove Textures",
	Desc = "Textures and decals off, every part flat, nothing casting a shadow. The biggest single win.",
	Flag = "Toggle_Perf_Textures",
	Type = "Toggle",
	Value = false,
	Callback = function(state, arg204)
	end
})
Tab9:Toggle({
	Title = "Remove Particles & Effects",
	Desc = "Particles, trails, beams, smoke, fire and every dynamic light. TieDev's own ESP and crosshair stay.",
	Flag = "Toggle_Perf_Effects",
	Type = "Toggle",
	Value = false,
	Callback = function(state, arg206)
	end
})
Tab9:Toggle({
	Title = "Remove Animations",
	Desc = "Freezes every animation. Everyone slides around, you included. Movement still works.",
	Flag = "Toggle_Perf_Anims",
	Type = "Toggle",
	Value = false,
	Callback = function(state, arg208)
	end
})
Tab9:Toggle({
	Title = "Mute All Sounds",
	Desc = "Mutes the map. You lose footsteps, so think twice as innocent.",
	Flag = "Toggle_Perf_Sounds",
	Type = "Toggle",
	Value = false,
	Callback = function(state, arg210)
	end
})
Tab9:Toggle({
	Title = "Remove Shadows & Lighting FX",
	Desc = "Shadows, bloom, blur, sun rays, depth of field and clouds. Second biggest win after textures.",
	Flag = "Toggle_Perf_Lighting",
	Type = "Toggle",
	Value = false,
	Callback = function(state, arg212)
	end
})
Tab9:Toggle({
	Title = "Flat Terrain & Water",
	Desc = "Kills grass blades and the animated water waves.",
	Flag = "Toggle_Perf_Terrain",
	Type = "Toggle",
	Value = false,
	Callback = function(state, arg214)
	end
})
Tab9:Toggle({
	Title = "Lowest Graphics Quality",
	Desc = "Sets Roblox's own graphics slider to 1. Needs a level 8 executor.",
	Flag = "Toggle_Perf_Quality",
	Type = "Toggle",
	Value = false,
	Callback = function(state, arg216)
	end
})
local descendants29 = Window.UIElements.Main:GetDescendants()
for i77, v77 in ipairs(descendants29) do
end
local connection59 = UserInputService.InputBegan:Connect(function(input36, gameProcessed36)
end)
Tab10:Section({ Title = "Interface" })
Tab10:Keybind({
	Title = "Toggle GUI",
	Desc = "Show or hide the window.",
	Flag = "Keybind_ToggleGUI",
	Value = "G",
	Callback = function(state, arg218)
	end
})
Tab10:Section({ Title = "Actions" })
Tab10:Keybind({
	Title = "Shoot Murderer",
	Desc = "Unbound - click to set a key. Ignore the key shown until you do.",
	Flag = "Keybind_Shoot",
	Value = "Unknown",
	Callback = function(state, arg220)
	end
})
Tab10:Keybind({
	Title = "Grab Gun",
	Desc = "Unbound - click to set a key. Ignore the key shown until you do.",
	Flag = "Keybind_Grab",
	Value = "Unknown",
	Callback = function(state, arg222)
	end
})
Tab10:Keybind({
	Title = "Throw Knife",
	Desc = "Unbound - click to set a key. Ignore the key shown until you do.",
	Flag = "Keybind_Throw",
	Value = "Unknown",
	Callback = function(state, arg224)
	end
})
Tab10:Keybind({
	Title = "Bomb Jump",
	Desc = "Unbound - click to set a key. Ignore the key shown until you do.",
	Flag = "Keybind_Bomb",
	Value = "Unknown",
	Callback = function(state, arg226)
	end
})
Tab10:Keybind({
	Title = "Toggle Aimbot",
	Desc = "Unbound - click to set a key. Ignore the key shown until you do.",
	Flag = "Keybind_Aimbot",
	Value = "Unknown",
	Callback = function(state, arg228)
	end
})
Tab10:Section({ Title = "Player" })
Tab10:Keybind({
	Title = "Toggle Noclip",
	Desc = "Unbound - click to set a key. Ignore the key shown until you do.",
	Flag = "Keybind_Noclip",
	Value = "Unknown",
	Callback = function(state, arg230)
	end
})
Tab10:Keybind({
	Title = "Toggle Fly",
	Desc = "Unbound - click to set a key. Ignore the key shown until you do.",
	Flag = "Keybind_Fly",
	Value = "Unknown",
	Callback = function(state, arg232)
	end
})
Tab10:Keybind({
	Title = "Toggle Infinite Jump",
	Desc = "Unbound - click to set a key. Ignore the key shown until you do.",
	Flag = "Keybind_InfJump",
	Value = "Unknown",
	Callback = function(state, arg234)
	end
})
Tab10:Keybind({
	Title = "Toggle Anti-Fling",
	Desc = "Unbound - click to set a key. Ignore the key shown until you do.",
	Flag = "Keybind_AntiFling",
	Value = "Unknown",
	Callback = function(state, arg236)
	end
})
Tab10:Keybind({
	Title = "Toggle Walk Speed",
	Desc = "Unbound - click to set a key. Ignore the key shown until you do. Snaps between your slider speed and 16.",
	Flag = "Keybind_Speed",
	Value = "Unknown",
	Callback = function(state, arg238)
	end
})
Tab10:Keybind({
	Title = "Toggle Jump Power",
	Desc = "Unbound - click to set a key. Ignore the key shown until you do. Snaps between your slider jump and 50.",
	Flag = "Keybind_Jump",
	Value = "Unknown",
	Callback = function(state, arg240)
	end
})
Tab10:Keybind({
	Title = "Wall Hop",
	Desc = "Unbound — click to set a key. Ignore the key shown until you do.",
	Flag = "Keybind_WallHop",
	Value = "Unknown",
	Callback = function(state, arg242)
	end
})
Tab8:Section({ Title = "Speeds" })
Tab8:Slider({
	Title = "Walk Speed",
	Desc = "How fast you walk — crank it to outrun the murderer",
	Flag = "Slider_Walk_Speed",
	Step = 1,
	Value = { Default = 16, Max = 100, Min = 16 },
	Callback = function(state, arg244)
		if state then
			local Humanoid6 = Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
			Humanoid6.WalkSpeed = state
		else
			local Humanoid7 = Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
			Humanoid7.WalkSpeed = false
		end
	end
})
Tab8:Slider({
	Title = "Jump Power",
	Desc = "How high you jump",
	Flag = "Slider_Jump_Power",
	Step = 1,
	Value = { Default = 50, Max = 200, Min = 50 },
	Callback = function(state, arg246)
		if state then
			local Humanoid8 = Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
			Humanoid8.JumpPower = state
			Humanoid8.UseJumpPower = true
		else
			local Humanoid9 = Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
			Humanoid9.JumpPower = false
			Humanoid9.UseJumpPower = true
		end
	end
})
Tab8:Section({ Title = "Escape & Defense" })
Tab8:Toggle({
	Title = "Anti-Fling",
	Desc = "Blocks other players from flinging you. On by default.",
	Flag = "Toggle_Anti_Fling",
	Type = "Toggle",
	Value = true,
	Callback = function(state, arg248)
		if state then
			local connection60 = RunService.Heartbeat:Connect(function(deltaTime6)
			end)
		else
			connection60:Disconnect()
		end
	end
})
local Toggle3 = Tab8:Toggle({
	Title = "Noclip",
	Desc = "Walk through walls",
	Flag = "Toggle_Noclip",
	Type = "Toggle",
	Value = false,
	Callback = function(state, arg250)
		if state then
			local connection61 = RunService.Stepped:Connect(function(time, deltaTime7)
				local descendants44 = Players.LocalPlayer.Character:GetDescendants()
				for i116, v116 in ipairs(descendants44) do
					v116.CanCollide = false
				end
			end)
		else
			connection61:Disconnect()
		end
	end
})
Tab8:Toggle({
	Title = "Infinite Jump",
	Desc = "Jump as many times as you want mid-air",
	Flag = "Toggle_Infinite_Jump",
	Type = "Toggle",
	Value = false,
	Callback = function(state, arg252)
		if state then
			local connection62 = UserInputService.JumpRequest:Connect(function(arg253)
			end)
		else
			connection62:Disconnect()
		end
	end
})
local Toggle4 = Tab8:Toggle({
	Title = "Fly",
	Desc = "Fly around the map freely. WASD + Space / LeftShift",
	Flag = "Toggle_Fly",
	Type = "Toggle",
	Value = false,
	Callback = function(state, arg255)
		if state then
			local HumanoidRootPart = Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
			local Humanoid10 = Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
			local BodyVelocity = Instance.new("BodyVelocity")
			BodyVelocity.Name = "FlyVelocity"
			BodyVelocity.Velocity = Vector3.new(0, 0, 0)
			BodyVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
			BodyVelocity.Parent = HumanoidRootPart
			local BodyGyro = Instance.new("BodyGyro")
			BodyGyro.Name = "FlyGyro"
			BodyGyro.P = 90000
			BodyGyro.MaxTorque = Vector3.new(8999999488, 8999999488, 8999999488)
			BodyGyro.CFrame = HumanoidRootPart.CFrame
			BodyGyro.Parent = HumanoidRootPart
			Humanoid10.PlatformStand = true
			local connection63 = RunService.Heartbeat:Connect(function(deltaTime8)
				BodyGyro2.CFrame = workspace.CurrentCamera.CFrame
				UserInputService:IsKeyDown(Enum.KeyCode.W)
				UserInputService:IsKeyDown(Enum.KeyCode.S)
				UserInputService:IsKeyDown(Enum.KeyCode.A)
				UserInputService:IsKeyDown(Enum.KeyCode.D)
				UserInputService:IsKeyDown(Enum.KeyCode.Space)
				UserInputService:IsKeyDown(Enum.KeyCode.LeftShift)
				BodyVelocity2.Velocity = Vector3.new(0, 0, 0)
			end)
		else
			connection63:Disconnect()
			BodyVelocity:Destroy()
			BodyGyro:Destroy()
			local Humanoid11 = Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
			Humanoid11.PlatformStand = false
		end
	end
})
Tab8:Slider({
	Title = "Fly Speed",
	Desc = "How fast you fly",
	Flag = "Slider_Fly_Speed",
	Step = 1,
	Value = { Default = 50, Max = 200, Min = 10 },
	Callback = function(state, arg257)
	end
})
Tab8:Section({ Title = "Beta" })
Tab8:Button({
	Title = "God Mode  [BETA]",
	Desc = "Nothing can kill you - but you cannot pick up coins or the gun. Needs a round in progress.",
	Callback = function(state, arg259)
		workspace:GetChildren()
	end
})
local descendants30 = Window.UIElements.Main:GetDescendants()
for i78, v78 in ipairs(descendants30) do
end
local descendants31 = Window.UIElements.Main:GetDescendants()
for i79, v79 in ipairs(descendants31) do
end
Tab2:Section({ Title = "Sheriff Crosshair" })
Tab2:Toggle({
	Title = "Spin Cursor",
	Desc = "Slowly rotates the crosshair image.",
	Flag = "Toggle_Spin_Cursor",
	Type = "Toggle",
	Value = false,
	Callback = function(state, arg261)
	end
})
Tab2:Slider({
	Title = "Crosshair Size",
	Desc = "Size in pixels.",
	Flag = "Slider_Crosshair_Size",
	Step = 1,
	Value = { Default = 50, Max = 80, Min = 12 },
	Callback = function(state, arg263)
	end
})
local Paragraph2 = Tab2:Paragraph({ Title = "Crosshair", Desc = "" })
local Frame35 = Instance.new("Frame")
Frame35.Name = "FVLCursorGrid"
Frame35.BackgroundTransparency = 1
Frame35.Size = UDim2.new(1, 0, 0, 804)
Frame35.Parent = Paragraph2.ParagraphFrame.UIElements.Container
local UIGridLayout = Instance.new("UIGridLayout")
UIGridLayout.CellSize = UDim2.fromOffset(84, 84)
UIGridLayout.CellPadding = UDim2.fromOffset(6, 6)
UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIGridLayout.Parent = Frame35
local changedSignal2 = UIGridLayout:GetPropertyChangedSignal("AbsoluteContentSize")
changedSignal2:Connect(function(arg264)
	Frame35.Size = UDim2.new(1, 0, 0, 0)
end)
Frame35.Size = UDim2.new(1, 0, 0, 0)
local TextButton12 = Instance.new("TextButton")
TextButton12.Name = "Default"
TextButton12.LayoutOrder = 1
TextButton12.Text = ""
TextButton12.AutoButtonColor = false
TextButton12.BackgroundColor3 = Color3.fromRGB(10, 10, 13)
TextButton12.BackgroundTransparency = 0.25
TextButton12.BorderSizePixel = 0
TextButton12.Parent = Frame35
local UICorner78 = Instance.new("UICorner", TextButton12)
UICorner78.CornerRadius = UDim.new(0, 10)
local UIStroke23 = Instance.new("UIStroke")
UIStroke23.Thickness = 1.5
UIStroke23.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke23.Parent = TextButton12
local ImageLabel13 = Instance.new("ImageLabel")
ImageLabel13.BackgroundTransparency = 1
ImageLabel13.AnchorPoint = Vector2.new(0.5, 0)
ImageLabel13.Position = UDim2.new(0.5, 0, 0, 5)
ImageLabel13.Size = UDim2.fromOffset(56, 56)
ImageLabel13.Image = "rbxassetid://79658449"
ImageLabel13.ScaleType = Enum.ScaleType.Stretch
ImageLabel13.Parent = TextButton12
local TextLabel12 = Instance.new("TextLabel")
TextLabel12.BackgroundTransparency = 1
TextLabel12.AnchorPoint = Vector2.new(0.5, 1)
TextLabel12.Position = UDim2.new(0.5, 0, 1, -4)
TextLabel12.Size = UDim2.new(1, -6, 0, 18)
TextLabel12.Font = Enum.Font.GothamBold
TextLabel12.TextSize = 10
TextLabel12.TextWrapped = true
TextLabel12.Text = "Default"
TextLabel12.Parent = TextButton12
TextButton12.MouseButton1Click:Connect(function()
	UserInputService.MouseIconEnabled = UserInputService.MouseIconEnabled
	Players.LocalPlayer.Character:FindFirstChild("Gun")
	mouse.Icon = "rbxassetid://79658449"
	UIStroke47.Color = Color3.fromRGB(255, 255, 255)
	UIStroke47.Transparency = 0.85
	TextLabel36.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke51.Color = Color3.fromRGB(255, 255, 255)
	UIStroke51.Transparency = 0.85
	TextLabel40.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke35.Color = Color3.fromRGB(255, 255, 255)
	UIStroke35.Transparency = 0.85
	TextLabel24.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke48.Color = Color3.fromRGB(255, 255, 255)
	UIStroke48.Transparency = 0.85
	TextLabel37.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke38.Color = Color3.fromRGB(255, 255, 255)
	UIStroke38.Transparency = 0.85
	TextLabel27.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke29.Color = Color3.fromRGB(255, 255, 255)
	UIStroke29.Transparency = 0.85
	TextLabel18.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke37.Color = Color3.fromRGB(255, 255, 255)
	UIStroke37.Transparency = 0.85
	TextLabel26.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke46.Color = Color3.fromRGB(255, 255, 255)
	UIStroke46.Transparency = 0.85
	TextLabel35.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke45.Color = Color3.fromRGB(255, 255, 255)
	UIStroke45.Transparency = 0.85
	TextLabel34.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke40.Color = Color3.fromRGB(255, 255, 255)
	UIStroke40.Transparency = 0.85
	TextLabel29.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke27.Color = Color3.fromRGB(255, 255, 255)
	UIStroke27.Transparency = 0.85
	TextLabel16.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke43.Color = Color3.fromRGB(255, 255, 255)
	UIStroke43.Transparency = 0.85
	TextLabel32.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke36.Color = Color3.fromRGB(255, 255, 255)
	UIStroke36.Transparency = 0.85
	TextLabel25.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke49.Color = Color3.fromRGB(255, 255, 255)
	UIStroke49.Transparency = 0.85
	TextLabel38.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke33.Color = Color3.fromRGB(255, 255, 255)
	UIStroke33.Transparency = 0.85
	TextLabel22.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke34.Color = Color3.fromRGB(255, 255, 255)
	UIStroke34.Transparency = 0.85
	TextLabel23.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke26.Color = Color3.fromRGB(255, 255, 255)
	UIStroke26.Transparency = 0.85
	TextLabel15.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke50.Color = Color3.fromRGB(255, 255, 255)
	UIStroke50.Transparency = 0.85
	TextLabel39.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke25.Color = Color3.fromRGB(255, 255, 255)
	UIStroke25.Transparency = 0.85
	TextLabel14.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke42.Color = Color3.fromRGB(255, 255, 255)
	UIStroke42.Transparency = 0.85
	TextLabel31.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke30.Color = Color3.fromRGB(255, 255, 255)
	UIStroke30.Transparency = 0.85
	TextLabel19.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke53.Color = Color3.fromRGB(255, 255, 255)
	UIStroke53.Transparency = 0.85
	TextLabel42.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke55.Color = Color3.fromRGB(255, 255, 255)
	UIStroke55.Transparency = 0.85
	TextLabel44.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke54.Color = Color3.fromRGB(255, 255, 255)
	UIStroke54.Transparency = 0.85
	TextLabel43.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke41.Color = Color3.fromRGB(255, 255, 255)
	UIStroke41.Transparency = 0.85
	TextLabel30.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke52.Color = Color3.fromRGB(255, 255, 255)
	UIStroke52.Transparency = 0.85
	TextLabel41.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke31.Color = Color3.fromRGB(255, 255, 255)
	UIStroke31.Transparency = 0.85
	TextLabel20.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke23.Color = Color3.fromHex("#EC4899")
	UIStroke23.Transparency = 0.1
	TextLabel12.TextColor3 = Color3.fromRGB(240, 240, 246)
	UIStroke32.Color = Color3.fromRGB(255, 255, 255)
	UIStroke32.Transparency = 0.85
	TextLabel21.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke44.Color = Color3.fromRGB(255, 255, 255)
	UIStroke44.Transparency = 0.85
	TextLabel33.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke39.Color = Color3.fromRGB(255, 255, 255)
	UIStroke39.Transparency = 0.85
	TextLabel28.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke24.Color = Color3.fromRGB(255, 255, 255)
	UIStroke24.Transparency = 0.85
	TextLabel13.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke28.Color = Color3.fromRGB(255, 255, 255)
	UIStroke28.Transparency = 0.85
	TextLabel17.TextColor3 = Color3.fromRGB(150, 150, 160)
end)
local TextButton13 = Instance.new("TextButton")
TextButton13.Name = "Hello Kitty"
TextButton13.LayoutOrder = 2
TextButton13.Text = ""
TextButton13.AutoButtonColor = false
TextButton13.BackgroundColor3 = Color3.fromRGB(10, 10, 13)
TextButton13.BackgroundTransparency = 0.25
TextButton13.BorderSizePixel = 0
TextButton13.Parent = Frame35
local UICorner79 = Instance.new("UICorner", TextButton13)
UICorner79.CornerRadius = UDim.new(0, 10)
local UIStroke24 = Instance.new("UIStroke")
UIStroke24.Thickness = 1.5
UIStroke24.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke24.Parent = TextButton13
local ImageLabel14 = Instance.new("ImageLabel")
ImageLabel14.BackgroundTransparency = 1
ImageLabel14.AnchorPoint = Vector2.new(0.5, 0)
ImageLabel14.Position = UDim2.new(0.5, 0, 0, 5)
ImageLabel14.Size = UDim2.fromOffset(56, 56)
ImageLabel14.Image = "rbxassetid://11351620343"
ImageLabel14.ScaleType = Enum.ScaleType.Stretch
ImageLabel14.Parent = TextButton13
local TextLabel13 = Instance.new("TextLabel")
TextLabel13.BackgroundTransparency = 1
TextLabel13.AnchorPoint = Vector2.new(0.5, 1)
TextLabel13.Position = UDim2.new(0.5, 0, 1, -4)
TextLabel13.Size = UDim2.new(1, -6, 0, 18)
TextLabel13.Font = Enum.Font.GothamBold
TextLabel13.TextSize = 10
TextLabel13.TextWrapped = true
TextLabel13.Text = "Hello Kitty"
TextLabel13.Parent = TextButton13
TextButton13.MouseButton1Click:Connect(function()
	UserInputService.MouseIconEnabled = UserInputService.MouseIconEnabled
	Players.LocalPlayer.Character:FindFirstChild("Gun")
	mouse.Icon = "rbxassetid://79658449"
	local ScreenGui14 = Instance.new("ScreenGui")
	ScreenGui14.Name = "FVLCrosshair"
	ScreenGui14.ResetOnSpawn = false
	ScreenGui14.IgnoreGuiInset = true
	ScreenGui14.DisplayOrder = 10000
	ScreenGui14.Parent = CoreGui
	local ImageLabel48 = Instance.new("ImageLabel")
	ImageLabel48.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel48.BackgroundTransparency = 1
	ImageLabel48.Image = "rbxassetid://11351620343"
	ImageLabel48.Size = UDim2.fromOffset(50, 50)
	ImageLabel48.ScaleType = Enum.ScaleType.Stretch
	ImageLabel48.Parent = ScreenGui14
	local connection64 = RunService.RenderStepped:Connect(function(deltaTime12)
	end)
	UIStroke47.Color = Color3.fromRGB(255, 255, 255)
	UIStroke47.Transparency = 0.85
	TextLabel36.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke51.Color = Color3.fromRGB(255, 255, 255)
	UIStroke51.Transparency = 0.85
	TextLabel40.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke35.Color = Color3.fromRGB(255, 255, 255)
	UIStroke35.Transparency = 0.85
	TextLabel24.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke48.Color = Color3.fromRGB(255, 255, 255)
	UIStroke48.Transparency = 0.85
	TextLabel37.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke38.Color = Color3.fromRGB(255, 255, 255)
	UIStroke38.Transparency = 0.85
	TextLabel27.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke29.Color = Color3.fromRGB(255, 255, 255)
	UIStroke29.Transparency = 0.85
	TextLabel18.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke37.Color = Color3.fromRGB(255, 255, 255)
	UIStroke37.Transparency = 0.85
	TextLabel26.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke46.Color = Color3.fromRGB(255, 255, 255)
	UIStroke46.Transparency = 0.85
	TextLabel35.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke45.Color = Color3.fromRGB(255, 255, 255)
	UIStroke45.Transparency = 0.85
	TextLabel34.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke40.Color = Color3.fromRGB(255, 255, 255)
	UIStroke40.Transparency = 0.85
	TextLabel29.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke27.Color = Color3.fromRGB(255, 255, 255)
	UIStroke27.Transparency = 0.85
	TextLabel16.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke43.Color = Color3.fromRGB(255, 255, 255)
	UIStroke43.Transparency = 0.85
	TextLabel32.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke36.Color = Color3.fromRGB(255, 255, 255)
	UIStroke36.Transparency = 0.85
	TextLabel25.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke49.Color = Color3.fromRGB(255, 255, 255)
	UIStroke49.Transparency = 0.85
	TextLabel38.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke33.Color = Color3.fromRGB(255, 255, 255)
	UIStroke33.Transparency = 0.85
	TextLabel22.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke34.Color = Color3.fromRGB(255, 255, 255)
	UIStroke34.Transparency = 0.85
	TextLabel23.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke26.Color = Color3.fromRGB(255, 255, 255)
	UIStroke26.Transparency = 0.85
	TextLabel15.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke50.Color = Color3.fromRGB(255, 255, 255)
	UIStroke50.Transparency = 0.85
	TextLabel39.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke25.Color = Color3.fromRGB(255, 255, 255)
	UIStroke25.Transparency = 0.85
	TextLabel14.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke42.Color = Color3.fromRGB(255, 255, 255)
	UIStroke42.Transparency = 0.85
	TextLabel31.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke30.Color = Color3.fromRGB(255, 255, 255)
	UIStroke30.Transparency = 0.85
	TextLabel19.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke53.Color = Color3.fromRGB(255, 255, 255)
	UIStroke53.Transparency = 0.85
	TextLabel42.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke55.Color = Color3.fromRGB(255, 255, 255)
	UIStroke55.Transparency = 0.85
	TextLabel44.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke54.Color = Color3.fromRGB(255, 255, 255)
	UIStroke54.Transparency = 0.85
	TextLabel43.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke41.Color = Color3.fromRGB(255, 255, 255)
	UIStroke41.Transparency = 0.85
	TextLabel30.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke52.Color = Color3.fromRGB(255, 255, 255)
	UIStroke52.Transparency = 0.85
	TextLabel41.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke31.Color = Color3.fromRGB(255, 255, 255)
	UIStroke31.Transparency = 0.85
	TextLabel20.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke23.Color = Color3.fromRGB(255, 255, 255)
	UIStroke23.Transparency = 0.85
	TextLabel12.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke32.Color = Color3.fromRGB(255, 255, 255)
	UIStroke32.Transparency = 0.85
	TextLabel21.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke44.Color = Color3.fromRGB(255, 255, 255)
	UIStroke44.Transparency = 0.85
	TextLabel33.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke39.Color = Color3.fromRGB(255, 255, 255)
	UIStroke39.Transparency = 0.85
	TextLabel28.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke24.Color = Color3.fromHex("#EC4899")
	UIStroke24.Transparency = 0.1
	TextLabel13.TextColor3 = Color3.fromRGB(240, 240, 246)
	UIStroke28.Color = Color3.fromRGB(255, 255, 255)
	UIStroke28.Transparency = 0.85
	TextLabel17.TextColor3 = Color3.fromRGB(150, 150, 160)
end)
local TextButton14 = Instance.new("TextButton")
TextButton14.Name = "Kitty v2"
TextButton14.LayoutOrder = 3
TextButton14.Text = ""
TextButton14.AutoButtonColor = false
TextButton14.BackgroundColor3 = Color3.fromRGB(10, 10, 13)
TextButton14.BackgroundTransparency = 0.25
TextButton14.BorderSizePixel = 0
TextButton14.Parent = Frame35
local UICorner80 = Instance.new("UICorner", TextButton14)
UICorner80.CornerRadius = UDim.new(0, 10)
local UIStroke25 = Instance.new("UIStroke")
UIStroke25.Thickness = 1.5
UIStroke25.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke25.Parent = TextButton14
local ImageLabel15 = Instance.new("ImageLabel")
ImageLabel15.BackgroundTransparency = 1
ImageLabel15.AnchorPoint = Vector2.new(0.5, 0)
ImageLabel15.Position = UDim2.new(0.5, 0, 0, 5)
ImageLabel15.Size = UDim2.fromOffset(56, 56)
ImageLabel15.Image = "rbxassetid://11802094220"
ImageLabel15.ScaleType = Enum.ScaleType.Stretch
ImageLabel15.Parent = TextButton14
local TextLabel14 = Instance.new("TextLabel")
TextLabel14.BackgroundTransparency = 1
TextLabel14.AnchorPoint = Vector2.new(0.5, 1)
TextLabel14.Position = UDim2.new(0.5, 0, 1, -4)
TextLabel14.Size = UDim2.new(1, -6, 0, 18)
TextLabel14.Font = Enum.Font.GothamBold
TextLabel14.TextSize = 10
TextLabel14.TextWrapped = true
TextLabel14.Text = "Kitty v2"
TextLabel14.Parent = TextButton14
TextButton14.MouseButton1Click:Connect(function()
	connection64:Disconnect()
	ScreenGui14:Destroy()
	UserInputService.MouseIconEnabled = UserInputService.MouseIconEnabled
	Players.LocalPlayer.Character:FindFirstChild("Gun")
	mouse.Icon = "rbxassetid://79658449"
	local ScreenGui15 = Instance.new("ScreenGui")
	ScreenGui15.Name = "FVLCrosshair"
	ScreenGui15.ResetOnSpawn = false
	ScreenGui15.IgnoreGuiInset = true
	ScreenGui15.DisplayOrder = 10000
	ScreenGui15.Parent = CoreGui
	local ImageLabel49 = Instance.new("ImageLabel")
	ImageLabel49.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel49.BackgroundTransparency = 1
	ImageLabel49.Image = "rbxassetid://11802094220"
	ImageLabel49.Size = UDim2.fromOffset(50, 50)
	ImageLabel49.ScaleType = Enum.ScaleType.Stretch
	ImageLabel49.Parent = ScreenGui15
	local connection65 = RunService.RenderStepped:Connect(function(deltaTime13)
	end)
	UIStroke47.Color = Color3.fromRGB(255, 255, 255)
	UIStroke47.Transparency = 0.85
	TextLabel36.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke51.Color = Color3.fromRGB(255, 255, 255)
	UIStroke51.Transparency = 0.85
	TextLabel40.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke35.Color = Color3.fromRGB(255, 255, 255)
	UIStroke35.Transparency = 0.85
	TextLabel24.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke48.Color = Color3.fromRGB(255, 255, 255)
	UIStroke48.Transparency = 0.85
	TextLabel37.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke38.Color = Color3.fromRGB(255, 255, 255)
	UIStroke38.Transparency = 0.85
	TextLabel27.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke29.Color = Color3.fromRGB(255, 255, 255)
	UIStroke29.Transparency = 0.85
	TextLabel18.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke37.Color = Color3.fromRGB(255, 255, 255)
	UIStroke37.Transparency = 0.85
	TextLabel26.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke46.Color = Color3.fromRGB(255, 255, 255)
	UIStroke46.Transparency = 0.85
	TextLabel35.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke45.Color = Color3.fromRGB(255, 255, 255)
	UIStroke45.Transparency = 0.85
	TextLabel34.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke40.Color = Color3.fromRGB(255, 255, 255)
	UIStroke40.Transparency = 0.85
	TextLabel29.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke27.Color = Color3.fromRGB(255, 255, 255)
	UIStroke27.Transparency = 0.85
	TextLabel16.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke43.Color = Color3.fromRGB(255, 255, 255)
	UIStroke43.Transparency = 0.85
	TextLabel32.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke36.Color = Color3.fromRGB(255, 255, 255)
	UIStroke36.Transparency = 0.85
	TextLabel25.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke49.Color = Color3.fromRGB(255, 255, 255)
	UIStroke49.Transparency = 0.85
	TextLabel38.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke33.Color = Color3.fromRGB(255, 255, 255)
	UIStroke33.Transparency = 0.85
	TextLabel22.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke34.Color = Color3.fromRGB(255, 255, 255)
	UIStroke34.Transparency = 0.85
	TextLabel23.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke26.Color = Color3.fromRGB(255, 255, 255)
	UIStroke26.Transparency = 0.85
	TextLabel15.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke50.Color = Color3.fromRGB(255, 255, 255)
	UIStroke50.Transparency = 0.85
	TextLabel39.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke25.Color = Color3.fromHex("#EC4899")
	UIStroke25.Transparency = 0.1
	TextLabel14.TextColor3 = Color3.fromRGB(240, 240, 246)
	UIStroke42.Color = Color3.fromRGB(255, 255, 255)
	UIStroke42.Transparency = 0.85
	TextLabel31.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke30.Color = Color3.fromRGB(255, 255, 255)
	UIStroke30.Transparency = 0.85
	TextLabel19.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke53.Color = Color3.fromRGB(255, 255, 255)
	UIStroke53.Transparency = 0.85
	TextLabel42.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke55.Color = Color3.fromRGB(255, 255, 255)
	UIStroke55.Transparency = 0.85
	TextLabel44.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke54.Color = Color3.fromRGB(255, 255, 255)
	UIStroke54.Transparency = 0.85
	TextLabel43.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke41.Color = Color3.fromRGB(255, 255, 255)
	UIStroke41.Transparency = 0.85
	TextLabel30.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke52.Color = Color3.fromRGB(255, 255, 255)
	UIStroke52.Transparency = 0.85
	TextLabel41.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke31.Color = Color3.fromRGB(255, 255, 255)
	UIStroke31.Transparency = 0.85
	TextLabel20.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke23.Color = Color3.fromRGB(255, 255, 255)
	UIStroke23.Transparency = 0.85
	TextLabel12.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke32.Color = Color3.fromRGB(255, 255, 255)
	UIStroke32.Transparency = 0.85
	TextLabel21.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke44.Color = Color3.fromRGB(255, 255, 255)
	UIStroke44.Transparency = 0.85
	TextLabel33.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke39.Color = Color3.fromRGB(255, 255, 255)
	UIStroke39.Transparency = 0.85
	TextLabel28.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke24.Color = Color3.fromRGB(255, 255, 255)
	UIStroke24.Transparency = 0.85
	TextLabel13.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke28.Color = Color3.fromRGB(255, 255, 255)
	UIStroke28.Transparency = 0.85
	TextLabel17.TextColor3 = Color3.fromRGB(150, 150, 160)
end)
local TextButton15 = Instance.new("TextButton")
TextButton15.Name = "Clean Kitty"
TextButton15.LayoutOrder = 4
TextButton15.Text = ""
TextButton15.AutoButtonColor = false
TextButton15.BackgroundColor3 = Color3.fromRGB(10, 10, 13)
TextButton15.BackgroundTransparency = 0.25
TextButton15.BorderSizePixel = 0
TextButton15.Parent = Frame35
local UICorner81 = Instance.new("UICorner", TextButton15)
UICorner81.CornerRadius = UDim.new(0, 10)
local UIStroke26 = Instance.new("UIStroke")
UIStroke26.Thickness = 1.5
UIStroke26.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke26.Parent = TextButton15
local ImageLabel16 = Instance.new("ImageLabel")
ImageLabel16.BackgroundTransparency = 1
ImageLabel16.AnchorPoint = Vector2.new(0.5, 0)
ImageLabel16.Position = UDim2.new(0.5, 0, 0, 5)
ImageLabel16.Size = UDim2.fromOffset(56, 56)
ImageLabel16.Image = "rbxassetid://11718192673"
ImageLabel16.ScaleType = Enum.ScaleType.Stretch
ImageLabel16.Parent = TextButton15
local TextLabel15 = Instance.new("TextLabel")
TextLabel15.BackgroundTransparency = 1
TextLabel15.AnchorPoint = Vector2.new(0.5, 1)
TextLabel15.Position = UDim2.new(0.5, 0, 1, -4)
TextLabel15.Size = UDim2.new(1, -6, 0, 18)
TextLabel15.Font = Enum.Font.GothamBold
TextLabel15.TextSize = 10
TextLabel15.TextWrapped = true
TextLabel15.Text = "Clean Kitty"
TextLabel15.Parent = TextButton15
TextButton15.MouseButton1Click:Connect(function()
	connection65:Disconnect()
	ScreenGui15:Destroy()
	UserInputService.MouseIconEnabled = UserInputService.MouseIconEnabled
	Players.LocalPlayer.Character:FindFirstChild("Gun")
	mouse.Icon = "rbxassetid://79658449"
	local ScreenGui16 = Instance.new("ScreenGui")
	ScreenGui16.Name = "FVLCrosshair"
	ScreenGui16.ResetOnSpawn = false
	ScreenGui16.IgnoreGuiInset = true
	ScreenGui16.DisplayOrder = 10000
	ScreenGui16.Parent = CoreGui
	local ImageLabel50 = Instance.new("ImageLabel")
	ImageLabel50.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel50.BackgroundTransparency = 1
	ImageLabel50.Image = "rbxassetid://11718192673"
	ImageLabel50.Size = UDim2.fromOffset(50, 50)
	ImageLabel50.ScaleType = Enum.ScaleType.Stretch
	ImageLabel50.Parent = ScreenGui16
	local connection66 = RunService.RenderStepped:Connect(function(deltaTime14)
	end)
	UIStroke47.Color = Color3.fromRGB(255, 255, 255)
	UIStroke47.Transparency = 0.85
	TextLabel36.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke51.Color = Color3.fromRGB(255, 255, 255)
	UIStroke51.Transparency = 0.85
	TextLabel40.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke35.Color = Color3.fromRGB(255, 255, 255)
	UIStroke35.Transparency = 0.85
	TextLabel24.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke48.Color = Color3.fromRGB(255, 255, 255)
	UIStroke48.Transparency = 0.85
	TextLabel37.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke38.Color = Color3.fromRGB(255, 255, 255)
	UIStroke38.Transparency = 0.85
	TextLabel27.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke29.Color = Color3.fromRGB(255, 255, 255)
	UIStroke29.Transparency = 0.85
	TextLabel18.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke37.Color = Color3.fromRGB(255, 255, 255)
	UIStroke37.Transparency = 0.85
	TextLabel26.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke46.Color = Color3.fromRGB(255, 255, 255)
	UIStroke46.Transparency = 0.85
	TextLabel35.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke45.Color = Color3.fromRGB(255, 255, 255)
	UIStroke45.Transparency = 0.85
	TextLabel34.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke40.Color = Color3.fromRGB(255, 255, 255)
	UIStroke40.Transparency = 0.85
	TextLabel29.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke27.Color = Color3.fromRGB(255, 255, 255)
	UIStroke27.Transparency = 0.85
	TextLabel16.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke43.Color = Color3.fromRGB(255, 255, 255)
	UIStroke43.Transparency = 0.85
	TextLabel32.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke36.Color = Color3.fromRGB(255, 255, 255)
	UIStroke36.Transparency = 0.85
	TextLabel25.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke49.Color = Color3.fromRGB(255, 255, 255)
	UIStroke49.Transparency = 0.85
	TextLabel38.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke33.Color = Color3.fromRGB(255, 255, 255)
	UIStroke33.Transparency = 0.85
	TextLabel22.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke34.Color = Color3.fromRGB(255, 255, 255)
	UIStroke34.Transparency = 0.85
	TextLabel23.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke26.Color = Color3.fromHex("#EC4899")
	UIStroke26.Transparency = 0.1
	TextLabel15.TextColor3 = Color3.fromRGB(240, 240, 246)
	UIStroke50.Color = Color3.fromRGB(255, 255, 255)
	UIStroke50.Transparency = 0.85
	TextLabel39.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke25.Color = Color3.fromRGB(255, 255, 255)
	UIStroke25.Transparency = 0.85
	TextLabel14.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke42.Color = Color3.fromRGB(255, 255, 255)
	UIStroke42.Transparency = 0.85
	TextLabel31.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke30.Color = Color3.fromRGB(255, 255, 255)
	UIStroke30.Transparency = 0.85
	TextLabel19.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke53.Color = Color3.fromRGB(255, 255, 255)
	UIStroke53.Transparency = 0.85
	TextLabel42.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke55.Color = Color3.fromRGB(255, 255, 255)
	UIStroke55.Transparency = 0.85
	TextLabel44.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke54.Color = Color3.fromRGB(255, 255, 255)
	UIStroke54.Transparency = 0.85
	TextLabel43.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke41.Color = Color3.fromRGB(255, 255, 255)
	UIStroke41.Transparency = 0.85
	TextLabel30.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke52.Color = Color3.fromRGB(255, 255, 255)
	UIStroke52.Transparency = 0.85
	TextLabel41.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke31.Color = Color3.fromRGB(255, 255, 255)
	UIStroke31.Transparency = 0.85
	TextLabel20.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke23.Color = Color3.fromRGB(255, 255, 255)
	UIStroke23.Transparency = 0.85
	TextLabel12.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke32.Color = Color3.fromRGB(255, 255, 255)
	UIStroke32.Transparency = 0.85
	TextLabel21.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke44.Color = Color3.fromRGB(255, 255, 255)
	UIStroke44.Transparency = 0.85
	TextLabel33.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke39.Color = Color3.fromRGB(255, 255, 255)
	UIStroke39.Transparency = 0.85
	TextLabel28.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke24.Color = Color3.fromRGB(255, 255, 255)
	UIStroke24.Transparency = 0.85
	TextLabel13.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke28.Color = Color3.fromRGB(255, 255, 255)
	UIStroke28.Transparency = 0.85
	TextLabel17.TextColor3 = Color3.fromRGB(150, 150, 160)
end)
local TextButton16 = Instance.new("TextButton")
TextButton16.Name = "Evil Kitty"
TextButton16.LayoutOrder = 5
TextButton16.Text = ""
TextButton16.AutoButtonColor = false
TextButton16.BackgroundColor3 = Color3.fromRGB(10, 10, 13)
TextButton16.BackgroundTransparency = 0.25
TextButton16.BorderSizePixel = 0
TextButton16.Parent = Frame35
local UICorner82 = Instance.new("UICorner", TextButton16)
UICorner82.CornerRadius = UDim.new(0, 10)
local UIStroke27 = Instance.new("UIStroke")
UIStroke27.Thickness = 1.5
UIStroke27.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke27.Parent = TextButton16
local ImageLabel17 = Instance.new("ImageLabel")
ImageLabel17.BackgroundTransparency = 1
ImageLabel17.AnchorPoint = Vector2.new(0.5, 0)
ImageLabel17.Position = UDim2.new(0.5, 0, 0, 5)
ImageLabel17.Size = UDim2.fromOffset(56, 56)
ImageLabel17.Image = "rbxassetid://11734940424"
ImageLabel17.ScaleType = Enum.ScaleType.Stretch
ImageLabel17.Parent = TextButton16
local TextLabel16 = Instance.new("TextLabel")
TextLabel16.BackgroundTransparency = 1
TextLabel16.AnchorPoint = Vector2.new(0.5, 1)
TextLabel16.Position = UDim2.new(0.5, 0, 1, -4)
TextLabel16.Size = UDim2.new(1, -6, 0, 18)
TextLabel16.Font = Enum.Font.GothamBold
TextLabel16.TextSize = 10
TextLabel16.TextWrapped = true
TextLabel16.Text = "Evil Kitty"
TextLabel16.Parent = TextButton16
TextButton16.MouseButton1Click:Connect(function()
	connection66:Disconnect()
	ScreenGui16:Destroy()
	UserInputService.MouseIconEnabled = UserInputService.MouseIconEnabled
	Players.LocalPlayer.Character:FindFirstChild("Gun")
	mouse.Icon = "rbxassetid://79658449"
	local ScreenGui17 = Instance.new("ScreenGui")
	ScreenGui17.Name = "FVLCrosshair"
	ScreenGui17.ResetOnSpawn = false
	ScreenGui17.IgnoreGuiInset = true
	ScreenGui17.DisplayOrder = 10000
	ScreenGui17.Parent = CoreGui
	local ImageLabel51 = Instance.new("ImageLabel")
	ImageLabel51.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel51.BackgroundTransparency = 1
	ImageLabel51.Image = "rbxassetid://11734940424"
	ImageLabel51.Size = UDim2.fromOffset(50, 50)
	ImageLabel51.ScaleType = Enum.ScaleType.Stretch
	ImageLabel51.Parent = ScreenGui17
	local connection67 = RunService.RenderStepped:Connect(function(deltaTime15)
	end)
	UIStroke47.Color = Color3.fromRGB(255, 255, 255)
	UIStroke47.Transparency = 0.85
	TextLabel36.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke51.Color = Color3.fromRGB(255, 255, 255)
	UIStroke51.Transparency = 0.85
	TextLabel40.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke35.Color = Color3.fromRGB(255, 255, 255)
	UIStroke35.Transparency = 0.85
	TextLabel24.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke48.Color = Color3.fromRGB(255, 255, 255)
	UIStroke48.Transparency = 0.85
	TextLabel37.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke38.Color = Color3.fromRGB(255, 255, 255)
	UIStroke38.Transparency = 0.85
	TextLabel27.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke29.Color = Color3.fromRGB(255, 255, 255)
	UIStroke29.Transparency = 0.85
	TextLabel18.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke37.Color = Color3.fromRGB(255, 255, 255)
	UIStroke37.Transparency = 0.85
	TextLabel26.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke46.Color = Color3.fromRGB(255, 255, 255)
	UIStroke46.Transparency = 0.85
	TextLabel35.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke45.Color = Color3.fromRGB(255, 255, 255)
	UIStroke45.Transparency = 0.85
	TextLabel34.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke40.Color = Color3.fromRGB(255, 255, 255)
	UIStroke40.Transparency = 0.85
	TextLabel29.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke27.Color = Color3.fromHex("#EC4899")
	UIStroke27.Transparency = 0.1
	TextLabel16.TextColor3 = Color3.fromRGB(240, 240, 246)
	UIStroke43.Color = Color3.fromRGB(255, 255, 255)
	UIStroke43.Transparency = 0.85
	TextLabel32.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke36.Color = Color3.fromRGB(255, 255, 255)
	UIStroke36.Transparency = 0.85
	TextLabel25.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke49.Color = Color3.fromRGB(255, 255, 255)
	UIStroke49.Transparency = 0.85
	TextLabel38.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke33.Color = Color3.fromRGB(255, 255, 255)
	UIStroke33.Transparency = 0.85
	TextLabel22.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke34.Color = Color3.fromRGB(255, 255, 255)
	UIStroke34.Transparency = 0.85
	TextLabel23.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke26.Color = Color3.fromRGB(255, 255, 255)
	UIStroke26.Transparency = 0.85
	TextLabel15.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke50.Color = Color3.fromRGB(255, 255, 255)
	UIStroke50.Transparency = 0.85
	TextLabel39.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke25.Color = Color3.fromRGB(255, 255, 255)
	UIStroke25.Transparency = 0.85
	TextLabel14.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke42.Color = Color3.fromRGB(255, 255, 255)
	UIStroke42.Transparency = 0.85
	TextLabel31.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke30.Color = Color3.fromRGB(255, 255, 255)
	UIStroke30.Transparency = 0.85
	TextLabel19.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke53.Color = Color3.fromRGB(255, 255, 255)
	UIStroke53.Transparency = 0.85
	TextLabel42.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke55.Color = Color3.fromRGB(255, 255, 255)
	UIStroke55.Transparency = 0.85
	TextLabel44.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke54.Color = Color3.fromRGB(255, 255, 255)
	UIStroke54.Transparency = 0.85
	TextLabel43.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke41.Color = Color3.fromRGB(255, 255, 255)
	UIStroke41.Transparency = 0.85
	TextLabel30.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke52.Color = Color3.fromRGB(255, 255, 255)
	UIStroke52.Transparency = 0.85
	TextLabel41.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke31.Color = Color3.fromRGB(255, 255, 255)
	UIStroke31.Transparency = 0.85
	TextLabel20.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke23.Color = Color3.fromRGB(255, 255, 255)
	UIStroke23.Transparency = 0.85
	TextLabel12.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke32.Color = Color3.fromRGB(255, 255, 255)
	UIStroke32.Transparency = 0.85
	TextLabel21.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke44.Color = Color3.fromRGB(255, 255, 255)
	UIStroke44.Transparency = 0.85
	TextLabel33.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke39.Color = Color3.fromRGB(255, 255, 255)
	UIStroke39.Transparency = 0.85
	TextLabel28.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke24.Color = Color3.fromRGB(255, 255, 255)
	UIStroke24.Transparency = 0.85
	TextLabel13.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke28.Color = Color3.fromRGB(255, 255, 255)
	UIStroke28.Transparency = 0.85
	TextLabel17.TextColor3 = Color3.fromRGB(150, 150, 160)
end)
local TextButton17 = Instance.new("TextButton")
TextButton17.Name = "Kuromi"
TextButton17.LayoutOrder = 6
TextButton17.Text = ""
TextButton17.AutoButtonColor = false
TextButton17.BackgroundColor3 = Color3.fromRGB(10, 10, 13)
TextButton17.BackgroundTransparency = 0.25
TextButton17.BorderSizePixel = 0
TextButton17.Parent = Frame35
local UICorner83 = Instance.new("UICorner", TextButton17)
UICorner83.CornerRadius = UDim.new(0, 10)
local UIStroke28 = Instance.new("UIStroke")
UIStroke28.Thickness = 1.5
UIStroke28.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke28.Parent = TextButton17
local ImageLabel18 = Instance.new("ImageLabel")
ImageLabel18.BackgroundTransparency = 1
ImageLabel18.AnchorPoint = Vector2.new(0.5, 0)
ImageLabel18.Position = UDim2.new(0.5, 0, 0, 5)
ImageLabel18.Size = UDim2.fromOffset(56, 56)
ImageLabel18.Image = "rbxthumb://type=Asset&w=420&h=420&id=11893991373"
ImageLabel18.ScaleType = Enum.ScaleType.Stretch
ImageLabel18.Parent = TextButton17
local TextLabel17 = Instance.new("TextLabel")
TextLabel17.BackgroundTransparency = 1
TextLabel17.AnchorPoint = Vector2.new(0.5, 1)
TextLabel17.Position = UDim2.new(0.5, 0, 1, -4)
TextLabel17.Size = UDim2.new(1, -6, 0, 18)
TextLabel17.Font = Enum.Font.GothamBold
TextLabel17.TextSize = 10
TextLabel17.TextWrapped = true
TextLabel17.Text = "Kuromi"
TextLabel17.Parent = TextButton17
TextButton17.MouseButton1Click:Connect(function()
	connection67:Disconnect()
	ScreenGui17:Destroy()
	UserInputService.MouseIconEnabled = UserInputService.MouseIconEnabled
	Players.LocalPlayer.Character:FindFirstChild("Gun")
	mouse.Icon = "rbxassetid://79658449"
	local ScreenGui18 = Instance.new("ScreenGui")
	ScreenGui18.Name = "FVLCrosshair"
	ScreenGui18.ResetOnSpawn = false
	ScreenGui18.IgnoreGuiInset = true
	ScreenGui18.DisplayOrder = 10000
	ScreenGui18.Parent = CoreGui
	local ImageLabel52 = Instance.new("ImageLabel")
	ImageLabel52.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel52.BackgroundTransparency = 1
	ImageLabel52.Image = "rbxthumb://type=Asset&w=420&h=420&id=11893991373"
	ImageLabel52.Size = UDim2.fromOffset(50, 50)
	ImageLabel52.ScaleType = Enum.ScaleType.Stretch
	ImageLabel52.Parent = ScreenGui18
	local connection68 = RunService.RenderStepped:Connect(function(deltaTime16)
	end)
	UIStroke47.Color = Color3.fromRGB(255, 255, 255)
	UIStroke47.Transparency = 0.85
	TextLabel36.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke51.Color = Color3.fromRGB(255, 255, 255)
	UIStroke51.Transparency = 0.85
	TextLabel40.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke35.Color = Color3.fromRGB(255, 255, 255)
	UIStroke35.Transparency = 0.85
	TextLabel24.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke48.Color = Color3.fromRGB(255, 255, 255)
	UIStroke48.Transparency = 0.85
	TextLabel37.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke38.Color = Color3.fromRGB(255, 255, 255)
	UIStroke38.Transparency = 0.85
	TextLabel27.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke29.Color = Color3.fromRGB(255, 255, 255)
	UIStroke29.Transparency = 0.85
	TextLabel18.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke37.Color = Color3.fromRGB(255, 255, 255)
	UIStroke37.Transparency = 0.85
	TextLabel26.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke46.Color = Color3.fromRGB(255, 255, 255)
	UIStroke46.Transparency = 0.85
	TextLabel35.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke45.Color = Color3.fromRGB(255, 255, 255)
	UIStroke45.Transparency = 0.85
	TextLabel34.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke40.Color = Color3.fromRGB(255, 255, 255)
	UIStroke40.Transparency = 0.85
	TextLabel29.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke27.Color = Color3.fromRGB(255, 255, 255)
	UIStroke27.Transparency = 0.85
	TextLabel16.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke43.Color = Color3.fromRGB(255, 255, 255)
	UIStroke43.Transparency = 0.85
	TextLabel32.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke36.Color = Color3.fromRGB(255, 255, 255)
	UIStroke36.Transparency = 0.85
	TextLabel25.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke49.Color = Color3.fromRGB(255, 255, 255)
	UIStroke49.Transparency = 0.85
	TextLabel38.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke33.Color = Color3.fromRGB(255, 255, 255)
	UIStroke33.Transparency = 0.85
	TextLabel22.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke34.Color = Color3.fromRGB(255, 255, 255)
	UIStroke34.Transparency = 0.85
	TextLabel23.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke26.Color = Color3.fromRGB(255, 255, 255)
	UIStroke26.Transparency = 0.85
	TextLabel15.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke50.Color = Color3.fromRGB(255, 255, 255)
	UIStroke50.Transparency = 0.85
	TextLabel39.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke25.Color = Color3.fromRGB(255, 255, 255)
	UIStroke25.Transparency = 0.85
	TextLabel14.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke42.Color = Color3.fromRGB(255, 255, 255)
	UIStroke42.Transparency = 0.85
	TextLabel31.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke30.Color = Color3.fromRGB(255, 255, 255)
	UIStroke30.Transparency = 0.85
	TextLabel19.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke53.Color = Color3.fromRGB(255, 255, 255)
	UIStroke53.Transparency = 0.85
	TextLabel42.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke55.Color = Color3.fromRGB(255, 255, 255)
	UIStroke55.Transparency = 0.85
	TextLabel44.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke54.Color = Color3.fromRGB(255, 255, 255)
	UIStroke54.Transparency = 0.85
	TextLabel43.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke41.Color = Color3.fromRGB(255, 255, 255)
	UIStroke41.Transparency = 0.85
	TextLabel30.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke52.Color = Color3.fromRGB(255, 255, 255)
	UIStroke52.Transparency = 0.85
	TextLabel41.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke31.Color = Color3.fromRGB(255, 255, 255)
	UIStroke31.Transparency = 0.85
	TextLabel20.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke23.Color = Color3.fromRGB(255, 255, 255)
	UIStroke23.Transparency = 0.85
	TextLabel12.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke32.Color = Color3.fromRGB(255, 255, 255)
	UIStroke32.Transparency = 0.85
	TextLabel21.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke44.Color = Color3.fromRGB(255, 255, 255)
	UIStroke44.Transparency = 0.85
	TextLabel33.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke39.Color = Color3.fromRGB(255, 255, 255)
	UIStroke39.Transparency = 0.85
	TextLabel28.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke24.Color = Color3.fromRGB(255, 255, 255)
	UIStroke24.Transparency = 0.85
	TextLabel13.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke28.Color = Color3.fromHex("#EC4899")
	UIStroke28.Transparency = 0.1
	TextLabel17.TextColor3 = Color3.fromRGB(240, 240, 246)
end)
local TextButton18 = Instance.new("TextButton")
TextButton18.Name = "Pixel Cat"
TextButton18.LayoutOrder = 7
TextButton18.Text = ""
TextButton18.AutoButtonColor = false
TextButton18.BackgroundColor3 = Color3.fromRGB(10, 10, 13)
TextButton18.BackgroundTransparency = 0.25
TextButton18.BorderSizePixel = 0
TextButton18.Parent = Frame35
local UICorner84 = Instance.new("UICorner", TextButton18)
UICorner84.CornerRadius = UDim.new(0, 10)
local UIStroke29 = Instance.new("UIStroke")
UIStroke29.Thickness = 1.5
UIStroke29.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke29.Parent = TextButton18
local ImageLabel19 = Instance.new("ImageLabel")
ImageLabel19.BackgroundTransparency = 1
ImageLabel19.AnchorPoint = Vector2.new(0.5, 0)
ImageLabel19.Position = UDim2.new(0.5, 0, 0, 5)
ImageLabel19.Size = UDim2.fromOffset(56, 56)
ImageLabel19.Image = "rbxassetid://10878214990"
ImageLabel19.ScaleType = Enum.ScaleType.Stretch
ImageLabel19.Parent = TextButton18
local TextLabel18 = Instance.new("TextLabel")
TextLabel18.BackgroundTransparency = 1
TextLabel18.AnchorPoint = Vector2.new(0.5, 1)
TextLabel18.Position = UDim2.new(0.5, 0, 1, -4)
TextLabel18.Size = UDim2.new(1, -6, 0, 18)
TextLabel18.Font = Enum.Font.GothamBold
TextLabel18.TextSize = 10
TextLabel18.TextWrapped = true
TextLabel18.Text = "Pixel Cat"
TextLabel18.Parent = TextButton18
TextButton18.MouseButton1Click:Connect(function()
	connection68:Disconnect()
	ScreenGui18:Destroy()
	UserInputService.MouseIconEnabled = UserInputService.MouseIconEnabled
	Players.LocalPlayer.Character:FindFirstChild("Gun")
	mouse.Icon = "rbxassetid://79658449"
	local ScreenGui19 = Instance.new("ScreenGui")
	ScreenGui19.Name = "FVLCrosshair"
	ScreenGui19.ResetOnSpawn = false
	ScreenGui19.IgnoreGuiInset = true
	ScreenGui19.DisplayOrder = 10000
	ScreenGui19.Parent = CoreGui
	local ImageLabel53 = Instance.new("ImageLabel")
	ImageLabel53.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel53.BackgroundTransparency = 1
	ImageLabel53.Image = "rbxassetid://10878214990"
	ImageLabel53.Size = UDim2.fromOffset(50, 50)
	ImageLabel53.ScaleType = Enum.ScaleType.Stretch
	ImageLabel53.Parent = ScreenGui19
	local connection69 = RunService.RenderStepped:Connect(function(deltaTime17)
	end)
	UIStroke47.Color = Color3.fromRGB(255, 255, 255)
	UIStroke47.Transparency = 0.85
	TextLabel36.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke51.Color = Color3.fromRGB(255, 255, 255)
	UIStroke51.Transparency = 0.85
	TextLabel40.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke35.Color = Color3.fromRGB(255, 255, 255)
	UIStroke35.Transparency = 0.85
	TextLabel24.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke48.Color = Color3.fromRGB(255, 255, 255)
	UIStroke48.Transparency = 0.85
	TextLabel37.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke38.Color = Color3.fromRGB(255, 255, 255)
	UIStroke38.Transparency = 0.85
	TextLabel27.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke29.Color = Color3.fromHex("#EC4899")
	UIStroke29.Transparency = 0.1
	TextLabel18.TextColor3 = Color3.fromRGB(240, 240, 246)
	UIStroke37.Color = Color3.fromRGB(255, 255, 255)
	UIStroke37.Transparency = 0.85
	TextLabel26.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke46.Color = Color3.fromRGB(255, 255, 255)
	UIStroke46.Transparency = 0.85
	TextLabel35.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke45.Color = Color3.fromRGB(255, 255, 255)
	UIStroke45.Transparency = 0.85
	TextLabel34.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke40.Color = Color3.fromRGB(255, 255, 255)
	UIStroke40.Transparency = 0.85
	TextLabel29.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke27.Color = Color3.fromRGB(255, 255, 255)
	UIStroke27.Transparency = 0.85
	TextLabel16.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke43.Color = Color3.fromRGB(255, 255, 255)
	UIStroke43.Transparency = 0.85
	TextLabel32.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke36.Color = Color3.fromRGB(255, 255, 255)
	UIStroke36.Transparency = 0.85
	TextLabel25.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke49.Color = Color3.fromRGB(255, 255, 255)
	UIStroke49.Transparency = 0.85
	TextLabel38.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke33.Color = Color3.fromRGB(255, 255, 255)
	UIStroke33.Transparency = 0.85
	TextLabel22.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke34.Color = Color3.fromRGB(255, 255, 255)
	UIStroke34.Transparency = 0.85
	TextLabel23.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke26.Color = Color3.fromRGB(255, 255, 255)
	UIStroke26.Transparency = 0.85
	TextLabel15.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke50.Color = Color3.fromRGB(255, 255, 255)
	UIStroke50.Transparency = 0.85
	TextLabel39.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke25.Color = Color3.fromRGB(255, 255, 255)
	UIStroke25.Transparency = 0.85
	TextLabel14.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke42.Color = Color3.fromRGB(255, 255, 255)
	UIStroke42.Transparency = 0.85
	TextLabel31.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke30.Color = Color3.fromRGB(255, 255, 255)
	UIStroke30.Transparency = 0.85
	TextLabel19.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke53.Color = Color3.fromRGB(255, 255, 255)
	UIStroke53.Transparency = 0.85
	TextLabel42.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke55.Color = Color3.fromRGB(255, 255, 255)
	UIStroke55.Transparency = 0.85
	TextLabel44.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke54.Color = Color3.fromRGB(255, 255, 255)
	UIStroke54.Transparency = 0.85
	TextLabel43.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke41.Color = Color3.fromRGB(255, 255, 255)
	UIStroke41.Transparency = 0.85
	TextLabel30.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke52.Color = Color3.fromRGB(255, 255, 255)
	UIStroke52.Transparency = 0.85
	TextLabel41.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke31.Color = Color3.fromRGB(255, 255, 255)
	UIStroke31.Transparency = 0.85
	TextLabel20.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke23.Color = Color3.fromRGB(255, 255, 255)
	UIStroke23.Transparency = 0.85
	TextLabel12.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke32.Color = Color3.fromRGB(255, 255, 255)
	UIStroke32.Transparency = 0.85
	TextLabel21.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke44.Color = Color3.fromRGB(255, 255, 255)
	UIStroke44.Transparency = 0.85
	TextLabel33.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke39.Color = Color3.fromRGB(255, 255, 255)
	UIStroke39.Transparency = 0.85
	TextLabel28.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke24.Color = Color3.fromRGB(255, 255, 255)
	UIStroke24.Transparency = 0.85
	TextLabel13.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke28.Color = Color3.fromRGB(255, 255, 255)
	UIStroke28.Transparency = 0.85
	TextLabel17.TextColor3 = Color3.fromRGB(150, 150, 160)
end)
local TextButton19 = Instance.new("TextButton")
TextButton19.Name = "Paw"
TextButton19.LayoutOrder = 8
TextButton19.Text = ""
TextButton19.AutoButtonColor = false
TextButton19.BackgroundColor3 = Color3.fromRGB(10, 10, 13)
TextButton19.BackgroundTransparency = 0.25
TextButton19.BorderSizePixel = 0
TextButton19.Parent = Frame35
local UICorner85 = Instance.new("UICorner", TextButton19)
UICorner85.CornerRadius = UDim.new(0, 10)
local UIStroke30 = Instance.new("UIStroke")
UIStroke30.Thickness = 1.5
UIStroke30.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke30.Parent = TextButton19
local ImageLabel20 = Instance.new("ImageLabel")
ImageLabel20.BackgroundTransparency = 1
ImageLabel20.AnchorPoint = Vector2.new(0.5, 0)
ImageLabel20.Position = UDim2.new(0.5, 0, 0, 5)
ImageLabel20.Size = UDim2.fromOffset(56, 56)
ImageLabel20.Image = "rbxassetid://11767069582"
ImageLabel20.ScaleType = Enum.ScaleType.Stretch
ImageLabel20.Parent = TextButton19
local TextLabel19 = Instance.new("TextLabel")
TextLabel19.BackgroundTransparency = 1
TextLabel19.AnchorPoint = Vector2.new(0.5, 1)
TextLabel19.Position = UDim2.new(0.5, 0, 1, -4)
TextLabel19.Size = UDim2.new(1, -6, 0, 18)
TextLabel19.Font = Enum.Font.GothamBold
TextLabel19.TextSize = 10
TextLabel19.TextWrapped = true
TextLabel19.Text = "Paw"
TextLabel19.Parent = TextButton19
TextButton19.MouseButton1Click:Connect(function()
	connection69:Disconnect()
	ScreenGui19:Destroy()
	UserInputService.MouseIconEnabled = UserInputService.MouseIconEnabled
	Players.LocalPlayer.Character:FindFirstChild("Gun")
	mouse.Icon = "rbxassetid://79658449"
	local ScreenGui20 = Instance.new("ScreenGui")
	ScreenGui20.Name = "FVLCrosshair"
	ScreenGui20.ResetOnSpawn = false
	ScreenGui20.IgnoreGuiInset = true
	ScreenGui20.DisplayOrder = 10000
	ScreenGui20.Parent = CoreGui
	local ImageLabel54 = Instance.new("ImageLabel")
	ImageLabel54.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel54.BackgroundTransparency = 1
	ImageLabel54.Image = "rbxassetid://11767069582"
	ImageLabel54.Size = UDim2.fromOffset(50, 50)
	ImageLabel54.ScaleType = Enum.ScaleType.Stretch
	ImageLabel54.Parent = ScreenGui20
	local connection70 = RunService.RenderStepped:Connect(function(deltaTime18)
	end)
	UIStroke47.Color = Color3.fromRGB(255, 255, 255)
	UIStroke47.Transparency = 0.85
	TextLabel36.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke51.Color = Color3.fromRGB(255, 255, 255)
	UIStroke51.Transparency = 0.85
	TextLabel40.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke35.Color = Color3.fromRGB(255, 255, 255)
	UIStroke35.Transparency = 0.85
	TextLabel24.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke48.Color = Color3.fromRGB(255, 255, 255)
	UIStroke48.Transparency = 0.85
	TextLabel37.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke38.Color = Color3.fromRGB(255, 255, 255)
	UIStroke38.Transparency = 0.85
	TextLabel27.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke29.Color = Color3.fromRGB(255, 255, 255)
	UIStroke29.Transparency = 0.85
	TextLabel18.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke37.Color = Color3.fromRGB(255, 255, 255)
	UIStroke37.Transparency = 0.85
	TextLabel26.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke46.Color = Color3.fromRGB(255, 255, 255)
	UIStroke46.Transparency = 0.85
	TextLabel35.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke45.Color = Color3.fromRGB(255, 255, 255)
	UIStroke45.Transparency = 0.85
	TextLabel34.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke40.Color = Color3.fromRGB(255, 255, 255)
	UIStroke40.Transparency = 0.85
	TextLabel29.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke27.Color = Color3.fromRGB(255, 255, 255)
	UIStroke27.Transparency = 0.85
	TextLabel16.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke43.Color = Color3.fromRGB(255, 255, 255)
	UIStroke43.Transparency = 0.85
	TextLabel32.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke36.Color = Color3.fromRGB(255, 255, 255)
	UIStroke36.Transparency = 0.85
	TextLabel25.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke49.Color = Color3.fromRGB(255, 255, 255)
	UIStroke49.Transparency = 0.85
	TextLabel38.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke33.Color = Color3.fromRGB(255, 255, 255)
	UIStroke33.Transparency = 0.85
	TextLabel22.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke34.Color = Color3.fromRGB(255, 255, 255)
	UIStroke34.Transparency = 0.85
	TextLabel23.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke26.Color = Color3.fromRGB(255, 255, 255)
	UIStroke26.Transparency = 0.85
	TextLabel15.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke50.Color = Color3.fromRGB(255, 255, 255)
	UIStroke50.Transparency = 0.85
	TextLabel39.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke25.Color = Color3.fromRGB(255, 255, 255)
	UIStroke25.Transparency = 0.85
	TextLabel14.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke42.Color = Color3.fromRGB(255, 255, 255)
	UIStroke42.Transparency = 0.85
	TextLabel31.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke30.Color = Color3.fromHex("#EC4899")
	UIStroke30.Transparency = 0.1
	TextLabel19.TextColor3 = Color3.fromRGB(240, 240, 246)
	UIStroke53.Color = Color3.fromRGB(255, 255, 255)
	UIStroke53.Transparency = 0.85
	TextLabel42.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke55.Color = Color3.fromRGB(255, 255, 255)
	UIStroke55.Transparency = 0.85
	TextLabel44.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke54.Color = Color3.fromRGB(255, 255, 255)
	UIStroke54.Transparency = 0.85
	TextLabel43.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke41.Color = Color3.fromRGB(255, 255, 255)
	UIStroke41.Transparency = 0.85
	TextLabel30.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke52.Color = Color3.fromRGB(255, 255, 255)
	UIStroke52.Transparency = 0.85
	TextLabel41.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke31.Color = Color3.fromRGB(255, 255, 255)
	UIStroke31.Transparency = 0.85
	TextLabel20.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke23.Color = Color3.fromRGB(255, 255, 255)
	UIStroke23.Transparency = 0.85
	TextLabel12.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke32.Color = Color3.fromRGB(255, 255, 255)
	UIStroke32.Transparency = 0.85
	TextLabel21.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke44.Color = Color3.fromRGB(255, 255, 255)
	UIStroke44.Transparency = 0.85
	TextLabel33.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke39.Color = Color3.fromRGB(255, 255, 255)
	UIStroke39.Transparency = 0.85
	TextLabel28.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke24.Color = Color3.fromRGB(255, 255, 255)
	UIStroke24.Transparency = 0.85
	TextLabel13.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke28.Color = Color3.fromRGB(255, 255, 255)
	UIStroke28.Transparency = 0.85
	TextLabel17.TextColor3 = Color3.fromRGB(150, 150, 160)
end)
local TextButton20 = Instance.new("TextButton")
TextButton20.Name = "Cat"
TextButton20.LayoutOrder = 9
TextButton20.Text = ""
TextButton20.AutoButtonColor = false
TextButton20.BackgroundColor3 = Color3.fromRGB(10, 10, 13)
TextButton20.BackgroundTransparency = 0.25
TextButton20.BorderSizePixel = 0
TextButton20.Parent = Frame35
local UICorner86 = Instance.new("UICorner", TextButton20)
UICorner86.CornerRadius = UDim.new(0, 10)
local UIStroke31 = Instance.new("UIStroke")
UIStroke31.Thickness = 1.5
UIStroke31.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke31.Parent = TextButton20
local ImageLabel21 = Instance.new("ImageLabel")
ImageLabel21.BackgroundTransparency = 1
ImageLabel21.AnchorPoint = Vector2.new(0.5, 0)
ImageLabel21.Position = UDim2.new(0.5, 0, 0, 5)
ImageLabel21.Size = UDim2.fromOffset(56, 56)
ImageLabel21.Image = "rbxassetid://11722553511"
ImageLabel21.ScaleType = Enum.ScaleType.Stretch
ImageLabel21.Parent = TextButton20
local TextLabel20 = Instance.new("TextLabel")
TextLabel20.BackgroundTransparency = 1
TextLabel20.AnchorPoint = Vector2.new(0.5, 1)
TextLabel20.Position = UDim2.new(0.5, 0, 1, -4)
TextLabel20.Size = UDim2.new(1, -6, 0, 18)
TextLabel20.Font = Enum.Font.GothamBold
TextLabel20.TextSize = 10
TextLabel20.TextWrapped = true
TextLabel20.Text = "Cat"
TextLabel20.Parent = TextButton20
TextButton20.MouseButton1Click:Connect(function()
	connection70:Disconnect()
	ScreenGui20:Destroy()
	UserInputService.MouseIconEnabled = UserInputService.MouseIconEnabled
	Players.LocalPlayer.Character:FindFirstChild("Gun")
	mouse.Icon = "rbxassetid://79658449"
	local ScreenGui21 = Instance.new("ScreenGui")
	ScreenGui21.Name = "FVLCrosshair"
	ScreenGui21.ResetOnSpawn = false
	ScreenGui21.IgnoreGuiInset = true
	ScreenGui21.DisplayOrder = 10000
	ScreenGui21.Parent = CoreGui
	local ImageLabel55 = Instance.new("ImageLabel")
	ImageLabel55.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel55.BackgroundTransparency = 1
	ImageLabel55.Image = "rbxassetid://11722553511"
	ImageLabel55.Size = UDim2.fromOffset(50, 50)
	ImageLabel55.ScaleType = Enum.ScaleType.Stretch
	ImageLabel55.Parent = ScreenGui21
	local connection71 = RunService.RenderStepped:Connect(function(deltaTime19)
	end)
	UIStroke47.Color = Color3.fromRGB(255, 255, 255)
	UIStroke47.Transparency = 0.85
	TextLabel36.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke51.Color = Color3.fromRGB(255, 255, 255)
	UIStroke51.Transparency = 0.85
	TextLabel40.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke35.Color = Color3.fromRGB(255, 255, 255)
	UIStroke35.Transparency = 0.85
	TextLabel24.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke48.Color = Color3.fromRGB(255, 255, 255)
	UIStroke48.Transparency = 0.85
	TextLabel37.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke38.Color = Color3.fromRGB(255, 255, 255)
	UIStroke38.Transparency = 0.85
	TextLabel27.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke29.Color = Color3.fromRGB(255, 255, 255)
	UIStroke29.Transparency = 0.85
	TextLabel18.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke37.Color = Color3.fromRGB(255, 255, 255)
	UIStroke37.Transparency = 0.85
	TextLabel26.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke46.Color = Color3.fromRGB(255, 255, 255)
	UIStroke46.Transparency = 0.85
	TextLabel35.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke45.Color = Color3.fromRGB(255, 255, 255)
	UIStroke45.Transparency = 0.85
	TextLabel34.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke40.Color = Color3.fromRGB(255, 255, 255)
	UIStroke40.Transparency = 0.85
	TextLabel29.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke27.Color = Color3.fromRGB(255, 255, 255)
	UIStroke27.Transparency = 0.85
	TextLabel16.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke43.Color = Color3.fromRGB(255, 255, 255)
	UIStroke43.Transparency = 0.85
	TextLabel32.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke36.Color = Color3.fromRGB(255, 255, 255)
	UIStroke36.Transparency = 0.85
	TextLabel25.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke49.Color = Color3.fromRGB(255, 255, 255)
	UIStroke49.Transparency = 0.85
	TextLabel38.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke33.Color = Color3.fromRGB(255, 255, 255)
	UIStroke33.Transparency = 0.85
	TextLabel22.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke34.Color = Color3.fromRGB(255, 255, 255)
	UIStroke34.Transparency = 0.85
	TextLabel23.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke26.Color = Color3.fromRGB(255, 255, 255)
	UIStroke26.Transparency = 0.85
	TextLabel15.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke50.Color = Color3.fromRGB(255, 255, 255)
	UIStroke50.Transparency = 0.85
	TextLabel39.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke25.Color = Color3.fromRGB(255, 255, 255)
	UIStroke25.Transparency = 0.85
	TextLabel14.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke42.Color = Color3.fromRGB(255, 255, 255)
	UIStroke42.Transparency = 0.85
	TextLabel31.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke30.Color = Color3.fromRGB(255, 255, 255)
	UIStroke30.Transparency = 0.85
	TextLabel19.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke53.Color = Color3.fromRGB(255, 255, 255)
	UIStroke53.Transparency = 0.85
	TextLabel42.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke55.Color = Color3.fromRGB(255, 255, 255)
	UIStroke55.Transparency = 0.85
	TextLabel44.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke54.Color = Color3.fromRGB(255, 255, 255)
	UIStroke54.Transparency = 0.85
	TextLabel43.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke41.Color = Color3.fromRGB(255, 255, 255)
	UIStroke41.Transparency = 0.85
	TextLabel30.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke52.Color = Color3.fromRGB(255, 255, 255)
	UIStroke52.Transparency = 0.85
	TextLabel41.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke31.Color = Color3.fromHex("#EC4899")
	UIStroke31.Transparency = 0.1
	TextLabel20.TextColor3 = Color3.fromRGB(240, 240, 246)
	UIStroke23.Color = Color3.fromRGB(255, 255, 255)
	UIStroke23.Transparency = 0.85
	TextLabel12.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke32.Color = Color3.fromRGB(255, 255, 255)
	UIStroke32.Transparency = 0.85
	TextLabel21.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke44.Color = Color3.fromRGB(255, 255, 255)
	UIStroke44.Transparency = 0.85
	TextLabel33.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke39.Color = Color3.fromRGB(255, 255, 255)
	UIStroke39.Transparency = 0.85
	TextLabel28.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke24.Color = Color3.fromRGB(255, 255, 255)
	UIStroke24.Transparency = 0.85
	TextLabel13.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke28.Color = Color3.fromRGB(255, 255, 255)
	UIStroke28.Transparency = 0.85
	TextLabel17.TextColor3 = Color3.fromRGB(150, 150, 160)
end)
local TextButton21 = Instance.new("TextButton")
TextButton21.Name = "Heart"
TextButton21.LayoutOrder = 10
TextButton21.Text = ""
TextButton21.AutoButtonColor = false
TextButton21.BackgroundColor3 = Color3.fromRGB(10, 10, 13)
TextButton21.BackgroundTransparency = 0.25
TextButton21.BorderSizePixel = 0
TextButton21.Parent = Frame35
local UICorner87 = Instance.new("UICorner", TextButton21)
UICorner87.CornerRadius = UDim.new(0, 10)
local UIStroke32 = Instance.new("UIStroke")
UIStroke32.Thickness = 1.5
UIStroke32.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke32.Parent = TextButton21
local ImageLabel22 = Instance.new("ImageLabel")
ImageLabel22.BackgroundTransparency = 1
ImageLabel22.AnchorPoint = Vector2.new(0.5, 0)
ImageLabel22.Position = UDim2.new(0.5, 0, 0, 5)
ImageLabel22.Size = UDim2.fromOffset(56, 56)
ImageLabel22.Image = "rbxthumb://type=Asset&w=420&h=420&id=11722368344"
ImageLabel22.ScaleType = Enum.ScaleType.Stretch
ImageLabel22.Parent = TextButton21
local TextLabel21 = Instance.new("TextLabel")
TextLabel21.BackgroundTransparency = 1
TextLabel21.AnchorPoint = Vector2.new(0.5, 1)
TextLabel21.Position = UDim2.new(0.5, 0, 1, -4)
TextLabel21.Size = UDim2.new(1, -6, 0, 18)
TextLabel21.Font = Enum.Font.GothamBold
TextLabel21.TextSize = 10
TextLabel21.TextWrapped = true
TextLabel21.Text = "Heart"
TextLabel21.Parent = TextButton21
TextButton21.MouseButton1Click:Connect(function()
	connection71:Disconnect()
	ScreenGui21:Destroy()
	UserInputService.MouseIconEnabled = UserInputService.MouseIconEnabled
	Players.LocalPlayer.Character:FindFirstChild("Gun")
	mouse.Icon = "rbxassetid://79658449"
	local ScreenGui22 = Instance.new("ScreenGui")
	ScreenGui22.Name = "FVLCrosshair"
	ScreenGui22.ResetOnSpawn = false
	ScreenGui22.IgnoreGuiInset = true
	ScreenGui22.DisplayOrder = 10000
	ScreenGui22.Parent = CoreGui
	local ImageLabel56 = Instance.new("ImageLabel")
	ImageLabel56.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel56.BackgroundTransparency = 1
	ImageLabel56.Image = "rbxthumb://type=Asset&w=420&h=420&id=11722368344"
	ImageLabel56.Size = UDim2.fromOffset(50, 50)
	ImageLabel56.ScaleType = Enum.ScaleType.Stretch
	ImageLabel56.Parent = ScreenGui22
	local connection72 = RunService.RenderStepped:Connect(function(deltaTime20)
	end)
	UIStroke47.Color = Color3.fromRGB(255, 255, 255)
	UIStroke47.Transparency = 0.85
	TextLabel36.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke51.Color = Color3.fromRGB(255, 255, 255)
	UIStroke51.Transparency = 0.85
	TextLabel40.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke35.Color = Color3.fromRGB(255, 255, 255)
	UIStroke35.Transparency = 0.85
	TextLabel24.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke48.Color = Color3.fromRGB(255, 255, 255)
	UIStroke48.Transparency = 0.85
	TextLabel37.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke38.Color = Color3.fromRGB(255, 255, 255)
	UIStroke38.Transparency = 0.85
	TextLabel27.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke29.Color = Color3.fromRGB(255, 255, 255)
	UIStroke29.Transparency = 0.85
	TextLabel18.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke37.Color = Color3.fromRGB(255, 255, 255)
	UIStroke37.Transparency = 0.85
	TextLabel26.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke46.Color = Color3.fromRGB(255, 255, 255)
	UIStroke46.Transparency = 0.85
	TextLabel35.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke45.Color = Color3.fromRGB(255, 255, 255)
	UIStroke45.Transparency = 0.85
	TextLabel34.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke40.Color = Color3.fromRGB(255, 255, 255)
	UIStroke40.Transparency = 0.85
	TextLabel29.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke27.Color = Color3.fromRGB(255, 255, 255)
	UIStroke27.Transparency = 0.85
	TextLabel16.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke43.Color = Color3.fromRGB(255, 255, 255)
	UIStroke43.Transparency = 0.85
	TextLabel32.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke36.Color = Color3.fromRGB(255, 255, 255)
	UIStroke36.Transparency = 0.85
	TextLabel25.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke49.Color = Color3.fromRGB(255, 255, 255)
	UIStroke49.Transparency = 0.85
	TextLabel38.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke33.Color = Color3.fromRGB(255, 255, 255)
	UIStroke33.Transparency = 0.85
	TextLabel22.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke34.Color = Color3.fromRGB(255, 255, 255)
	UIStroke34.Transparency = 0.85
	TextLabel23.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke26.Color = Color3.fromRGB(255, 255, 255)
	UIStroke26.Transparency = 0.85
	TextLabel15.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke50.Color = Color3.fromRGB(255, 255, 255)
	UIStroke50.Transparency = 0.85
	TextLabel39.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke25.Color = Color3.fromRGB(255, 255, 255)
	UIStroke25.Transparency = 0.85
	TextLabel14.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke42.Color = Color3.fromRGB(255, 255, 255)
	UIStroke42.Transparency = 0.85
	TextLabel31.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke30.Color = Color3.fromRGB(255, 255, 255)
	UIStroke30.Transparency = 0.85
	TextLabel19.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke53.Color = Color3.fromRGB(255, 255, 255)
	UIStroke53.Transparency = 0.85
	TextLabel42.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke55.Color = Color3.fromRGB(255, 255, 255)
	UIStroke55.Transparency = 0.85
	TextLabel44.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke54.Color = Color3.fromRGB(255, 255, 255)
	UIStroke54.Transparency = 0.85
	TextLabel43.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke41.Color = Color3.fromRGB(255, 255, 255)
	UIStroke41.Transparency = 0.85
	TextLabel30.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke52.Color = Color3.fromRGB(255, 255, 255)
	UIStroke52.Transparency = 0.85
	TextLabel41.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke31.Color = Color3.fromRGB(255, 255, 255)
	UIStroke31.Transparency = 0.85
	TextLabel20.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke23.Color = Color3.fromRGB(255, 255, 255)
	UIStroke23.Transparency = 0.85
	TextLabel12.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke32.Color = Color3.fromHex("#EC4899")
	UIStroke32.Transparency = 0.1
	TextLabel21.TextColor3 = Color3.fromRGB(240, 240, 246)
	UIStroke44.Color = Color3.fromRGB(255, 255, 255)
	UIStroke44.Transparency = 0.85
	TextLabel33.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke39.Color = Color3.fromRGB(255, 255, 255)
	UIStroke39.Transparency = 0.85
	TextLabel28.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke24.Color = Color3.fromRGB(255, 255, 255)
	UIStroke24.Transparency = 0.85
	TextLabel13.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke28.Color = Color3.fromRGB(255, 255, 255)
	UIStroke28.Transparency = 0.85
	TextLabel17.TextColor3 = Color3.fromRGB(150, 150, 160)
end)
local TextButton22 = Instance.new("TextButton")
TextButton22.Name = "Red Heart"
TextButton22.LayoutOrder = 11
TextButton22.Text = ""
TextButton22.AutoButtonColor = false
TextButton22.BackgroundColor3 = Color3.fromRGB(10, 10, 13)
TextButton22.BackgroundTransparency = 0.25
TextButton22.BorderSizePixel = 0
TextButton22.Parent = Frame35
local UICorner88 = Instance.new("UICorner", TextButton22)
UICorner88.CornerRadius = UDim.new(0, 10)
local UIStroke33 = Instance.new("UIStroke")
UIStroke33.Thickness = 1.5
UIStroke33.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke33.Parent = TextButton22
local ImageLabel23 = Instance.new("ImageLabel")
ImageLabel23.BackgroundTransparency = 1
ImageLabel23.AnchorPoint = Vector2.new(0.5, 0)
ImageLabel23.Position = UDim2.new(0.5, 0, 0, 5)
ImageLabel23.Size = UDim2.fromOffset(56, 56)
ImageLabel23.Image = "rbxthumb://type=Asset&w=420&h=420&id=11754042886"
ImageLabel23.ScaleType = Enum.ScaleType.Stretch
ImageLabel23.Parent = TextButton22
local TextLabel22 = Instance.new("TextLabel")
TextLabel22.BackgroundTransparency = 1
TextLabel22.AnchorPoint = Vector2.new(0.5, 1)
TextLabel22.Position = UDim2.new(0.5, 0, 1, -4)
TextLabel22.Size = UDim2.new(1, -6, 0, 18)
TextLabel22.Font = Enum.Font.GothamBold
TextLabel22.TextSize = 10
TextLabel22.TextWrapped = true
TextLabel22.Text = "Red Heart"
TextLabel22.Parent = TextButton22
TextButton22.MouseButton1Click:Connect(function()
	connection72:Disconnect()
	ScreenGui22:Destroy()
	UserInputService.MouseIconEnabled = UserInputService.MouseIconEnabled
	Players.LocalPlayer.Character:FindFirstChild("Gun")
	mouse.Icon = "rbxassetid://79658449"
	local ScreenGui23 = Instance.new("ScreenGui")
	ScreenGui23.Name = "FVLCrosshair"
	ScreenGui23.ResetOnSpawn = false
	ScreenGui23.IgnoreGuiInset = true
	ScreenGui23.DisplayOrder = 10000
	ScreenGui23.Parent = CoreGui
	local ImageLabel57 = Instance.new("ImageLabel")
	ImageLabel57.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel57.BackgroundTransparency = 1
	ImageLabel57.Image = "rbxthumb://type=Asset&w=420&h=420&id=11754042886"
	ImageLabel57.Size = UDim2.fromOffset(50, 50)
	ImageLabel57.ScaleType = Enum.ScaleType.Stretch
	ImageLabel57.Parent = ScreenGui23
	local connection73 = RunService.RenderStepped:Connect(function(deltaTime21)
	end)
	UIStroke47.Color = Color3.fromRGB(255, 255, 255)
	UIStroke47.Transparency = 0.85
	TextLabel36.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke51.Color = Color3.fromRGB(255, 255, 255)
	UIStroke51.Transparency = 0.85
	TextLabel40.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke35.Color = Color3.fromRGB(255, 255, 255)
	UIStroke35.Transparency = 0.85
	TextLabel24.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke48.Color = Color3.fromRGB(255, 255, 255)
	UIStroke48.Transparency = 0.85
	TextLabel37.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke38.Color = Color3.fromRGB(255, 255, 255)
	UIStroke38.Transparency = 0.85
	TextLabel27.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke29.Color = Color3.fromRGB(255, 255, 255)
	UIStroke29.Transparency = 0.85
	TextLabel18.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke37.Color = Color3.fromRGB(255, 255, 255)
	UIStroke37.Transparency = 0.85
	TextLabel26.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke46.Color = Color3.fromRGB(255, 255, 255)
	UIStroke46.Transparency = 0.85
	TextLabel35.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke45.Color = Color3.fromRGB(255, 255, 255)
	UIStroke45.Transparency = 0.85
	TextLabel34.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke40.Color = Color3.fromRGB(255, 255, 255)
	UIStroke40.Transparency = 0.85
	TextLabel29.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke27.Color = Color3.fromRGB(255, 255, 255)
	UIStroke27.Transparency = 0.85
	TextLabel16.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke43.Color = Color3.fromRGB(255, 255, 255)
	UIStroke43.Transparency = 0.85
	TextLabel32.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke36.Color = Color3.fromRGB(255, 255, 255)
	UIStroke36.Transparency = 0.85
	TextLabel25.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke49.Color = Color3.fromRGB(255, 255, 255)
	UIStroke49.Transparency = 0.85
	TextLabel38.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke33.Color = Color3.fromHex("#EC4899")
	UIStroke33.Transparency = 0.1
	TextLabel22.TextColor3 = Color3.fromRGB(240, 240, 246)
	UIStroke34.Color = Color3.fromRGB(255, 255, 255)
	UIStroke34.Transparency = 0.85
	TextLabel23.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke26.Color = Color3.fromRGB(255, 255, 255)
	UIStroke26.Transparency = 0.85
	TextLabel15.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke50.Color = Color3.fromRGB(255, 255, 255)
	UIStroke50.Transparency = 0.85
	TextLabel39.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke25.Color = Color3.fromRGB(255, 255, 255)
	UIStroke25.Transparency = 0.85
	TextLabel14.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke42.Color = Color3.fromRGB(255, 255, 255)
	UIStroke42.Transparency = 0.85
	TextLabel31.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke30.Color = Color3.fromRGB(255, 255, 255)
	UIStroke30.Transparency = 0.85
	TextLabel19.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke53.Color = Color3.fromRGB(255, 255, 255)
	UIStroke53.Transparency = 0.85
	TextLabel42.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke55.Color = Color3.fromRGB(255, 255, 255)
	UIStroke55.Transparency = 0.85
	TextLabel44.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke54.Color = Color3.fromRGB(255, 255, 255)
	UIStroke54.Transparency = 0.85
	TextLabel43.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke41.Color = Color3.fromRGB(255, 255, 255)
	UIStroke41.Transparency = 0.85
	TextLabel30.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke52.Color = Color3.fromRGB(255, 255, 255)
	UIStroke52.Transparency = 0.85
	TextLabel41.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke31.Color = Color3.fromRGB(255, 255, 255)
	UIStroke31.Transparency = 0.85
	TextLabel20.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke23.Color = Color3.fromRGB(255, 255, 255)
	UIStroke23.Transparency = 0.85
	TextLabel12.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke32.Color = Color3.fromRGB(255, 255, 255)
	UIStroke32.Transparency = 0.85
	TextLabel21.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke44.Color = Color3.fromRGB(255, 255, 255)
	UIStroke44.Transparency = 0.85
	TextLabel33.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke39.Color = Color3.fromRGB(255, 255, 255)
	UIStroke39.Transparency = 0.85
	TextLabel28.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke24.Color = Color3.fromRGB(255, 255, 255)
	UIStroke24.Transparency = 0.85
	TextLabel13.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke28.Color = Color3.fromRGB(255, 255, 255)
	UIStroke28.Transparency = 0.85
	TextLabel17.TextColor3 = Color3.fromRGB(150, 150, 160)
end)
local TextButton23 = Instance.new("TextButton")
TextButton23.Name = "Green Heart"
TextButton23.LayoutOrder = 12
TextButton23.Text = ""
TextButton23.AutoButtonColor = false
TextButton23.BackgroundColor3 = Color3.fromRGB(10, 10, 13)
TextButton23.BackgroundTransparency = 0.25
TextButton23.BorderSizePixel = 0
TextButton23.Parent = Frame35
local UICorner89 = Instance.new("UICorner", TextButton23)
UICorner89.CornerRadius = UDim.new(0, 10)
local UIStroke34 = Instance.new("UIStroke")
UIStroke34.Thickness = 1.5
UIStroke34.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke34.Parent = TextButton23
local ImageLabel24 = Instance.new("ImageLabel")
ImageLabel24.BackgroundTransparency = 1
ImageLabel24.AnchorPoint = Vector2.new(0.5, 0)
ImageLabel24.Position = UDim2.new(0.5, 0, 0, 5)
ImageLabel24.Size = UDim2.fromOffset(56, 56)
ImageLabel24.Image = "rbxthumb://type=Asset&w=420&h=420&id=11754039821"
ImageLabel24.ScaleType = Enum.ScaleType.Stretch
ImageLabel24.Parent = TextButton23
local TextLabel23 = Instance.new("TextLabel")
TextLabel23.BackgroundTransparency = 1
TextLabel23.AnchorPoint = Vector2.new(0.5, 1)
TextLabel23.Position = UDim2.new(0.5, 0, 1, -4)
TextLabel23.Size = UDim2.new(1, -6, 0, 18)
TextLabel23.Font = Enum.Font.GothamBold
TextLabel23.TextSize = 10
TextLabel23.TextWrapped = true
TextLabel23.Text = "Green Heart"
TextLabel23.Parent = TextButton23
TextButton23.MouseButton1Click:Connect(function()
	connection73:Disconnect()
	ScreenGui23:Destroy()
	UserInputService.MouseIconEnabled = UserInputService.MouseIconEnabled
	Players.LocalPlayer.Character:FindFirstChild("Gun")
	mouse.Icon = "rbxassetid://79658449"
	local ScreenGui24 = Instance.new("ScreenGui")
	ScreenGui24.Name = "FVLCrosshair"
	ScreenGui24.ResetOnSpawn = false
	ScreenGui24.IgnoreGuiInset = true
	ScreenGui24.DisplayOrder = 10000
	ScreenGui24.Parent = CoreGui
	local ImageLabel58 = Instance.new("ImageLabel")
	ImageLabel58.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel58.BackgroundTransparency = 1
	ImageLabel58.Image = "rbxthumb://type=Asset&w=420&h=420&id=11754039821"
	ImageLabel58.Size = UDim2.fromOffset(50, 50)
	ImageLabel58.ScaleType = Enum.ScaleType.Stretch
	ImageLabel58.Parent = ScreenGui24
	local connection74 = RunService.RenderStepped:Connect(function(deltaTime22)
	end)
	UIStroke47.Color = Color3.fromRGB(255, 255, 255)
	UIStroke47.Transparency = 0.85
	TextLabel36.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke51.Color = Color3.fromRGB(255, 255, 255)
	UIStroke51.Transparency = 0.85
	TextLabel40.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke35.Color = Color3.fromRGB(255, 255, 255)
	UIStroke35.Transparency = 0.85
	TextLabel24.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke48.Color = Color3.fromRGB(255, 255, 255)
	UIStroke48.Transparency = 0.85
	TextLabel37.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke38.Color = Color3.fromRGB(255, 255, 255)
	UIStroke38.Transparency = 0.85
	TextLabel27.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke29.Color = Color3.fromRGB(255, 255, 255)
	UIStroke29.Transparency = 0.85
	TextLabel18.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke37.Color = Color3.fromRGB(255, 255, 255)
	UIStroke37.Transparency = 0.85
	TextLabel26.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke46.Color = Color3.fromRGB(255, 255, 255)
	UIStroke46.Transparency = 0.85
	TextLabel35.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke45.Color = Color3.fromRGB(255, 255, 255)
	UIStroke45.Transparency = 0.85
	TextLabel34.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke40.Color = Color3.fromRGB(255, 255, 255)
	UIStroke40.Transparency = 0.85
	TextLabel29.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke27.Color = Color3.fromRGB(255, 255, 255)
	UIStroke27.Transparency = 0.85
	TextLabel16.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke43.Color = Color3.fromRGB(255, 255, 255)
	UIStroke43.Transparency = 0.85
	TextLabel32.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke36.Color = Color3.fromRGB(255, 255, 255)
	UIStroke36.Transparency = 0.85
	TextLabel25.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke49.Color = Color3.fromRGB(255, 255, 255)
	UIStroke49.Transparency = 0.85
	TextLabel38.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke33.Color = Color3.fromRGB(255, 255, 255)
	UIStroke33.Transparency = 0.85
	TextLabel22.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke34.Color = Color3.fromHex("#EC4899")
	UIStroke34.Transparency = 0.1
	TextLabel23.TextColor3 = Color3.fromRGB(240, 240, 246)
	UIStroke26.Color = Color3.fromRGB(255, 255, 255)
	UIStroke26.Transparency = 0.85
	TextLabel15.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke50.Color = Color3.fromRGB(255, 255, 255)
	UIStroke50.Transparency = 0.85
	TextLabel39.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke25.Color = Color3.fromRGB(255, 255, 255)
	UIStroke25.Transparency = 0.85
	TextLabel14.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke42.Color = Color3.fromRGB(255, 255, 255)
	UIStroke42.Transparency = 0.85
	TextLabel31.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke30.Color = Color3.fromRGB(255, 255, 255)
	UIStroke30.Transparency = 0.85
	TextLabel19.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke53.Color = Color3.fromRGB(255, 255, 255)
	UIStroke53.Transparency = 0.85
	TextLabel42.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke55.Color = Color3.fromRGB(255, 255, 255)
	UIStroke55.Transparency = 0.85
	TextLabel44.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke54.Color = Color3.fromRGB(255, 255, 255)
	UIStroke54.Transparency = 0.85
	TextLabel43.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke41.Color = Color3.fromRGB(255, 255, 255)
	UIStroke41.Transparency = 0.85
	TextLabel30.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke52.Color = Color3.fromRGB(255, 255, 255)
	UIStroke52.Transparency = 0.85
	TextLabel41.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke31.Color = Color3.fromRGB(255, 255, 255)
	UIStroke31.Transparency = 0.85
	TextLabel20.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke23.Color = Color3.fromRGB(255, 255, 255)
	UIStroke23.Transparency = 0.85
	TextLabel12.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke32.Color = Color3.fromRGB(255, 255, 255)
	UIStroke32.Transparency = 0.85
	TextLabel21.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke44.Color = Color3.fromRGB(255, 255, 255)
	UIStroke44.Transparency = 0.85
	TextLabel33.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke39.Color = Color3.fromRGB(255, 255, 255)
	UIStroke39.Transparency = 0.85
	TextLabel28.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke24.Color = Color3.fromRGB(255, 255, 255)
	UIStroke24.Transparency = 0.85
	TextLabel13.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke28.Color = Color3.fromRGB(255, 255, 255)
	UIStroke28.Transparency = 0.85
	TextLabel17.TextColor3 = Color3.fromRGB(150, 150, 160)
end)
local TextButton24 = Instance.new("TextButton")
TextButton24.Name = "Blue Heart"
TextButton24.LayoutOrder = 13
TextButton24.Text = ""
TextButton24.AutoButtonColor = false
TextButton24.BackgroundColor3 = Color3.fromRGB(10, 10, 13)
TextButton24.BackgroundTransparency = 0.25
TextButton24.BorderSizePixel = 0
TextButton24.Parent = Frame35
local UICorner90 = Instance.new("UICorner", TextButton24)
UICorner90.CornerRadius = UDim.new(0, 10)
local UIStroke35 = Instance.new("UIStroke")
UIStroke35.Thickness = 1.5
UIStroke35.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke35.Parent = TextButton24
local ImageLabel25 = Instance.new("ImageLabel")
ImageLabel25.BackgroundTransparency = 1
ImageLabel25.AnchorPoint = Vector2.new(0.5, 0)
ImageLabel25.Position = UDim2.new(0.5, 0, 0, 5)
ImageLabel25.Size = UDim2.fromOffset(56, 56)
ImageLabel25.Image = "rbxthumb://type=Asset&w=420&h=420&id=11754037423"
ImageLabel25.ScaleType = Enum.ScaleType.Stretch
ImageLabel25.Parent = TextButton24
local TextLabel24 = Instance.new("TextLabel")
TextLabel24.BackgroundTransparency = 1
TextLabel24.AnchorPoint = Vector2.new(0.5, 1)
TextLabel24.Position = UDim2.new(0.5, 0, 1, -4)
TextLabel24.Size = UDim2.new(1, -6, 0, 18)
TextLabel24.Font = Enum.Font.GothamBold
TextLabel24.TextSize = 10
TextLabel24.TextWrapped = true
TextLabel24.Text = "Blue Heart"
TextLabel24.Parent = TextButton24
TextButton24.MouseButton1Click:Connect(function()
	connection74:Disconnect()
	ScreenGui24:Destroy()
	UserInputService.MouseIconEnabled = UserInputService.MouseIconEnabled
	Players.LocalPlayer.Character:FindFirstChild("Gun")
	mouse.Icon = "rbxassetid://79658449"
	local ScreenGui25 = Instance.new("ScreenGui")
	ScreenGui25.Name = "FVLCrosshair"
	ScreenGui25.ResetOnSpawn = false
	ScreenGui25.IgnoreGuiInset = true
	ScreenGui25.DisplayOrder = 10000
	ScreenGui25.Parent = CoreGui
	local ImageLabel59 = Instance.new("ImageLabel")
	ImageLabel59.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel59.BackgroundTransparency = 1
	ImageLabel59.Image = "rbxthumb://type=Asset&w=420&h=420&id=11754037423"
	ImageLabel59.Size = UDim2.fromOffset(50, 50)
	ImageLabel59.ScaleType = Enum.ScaleType.Stretch
	ImageLabel59.Parent = ScreenGui25
	local connection75 = RunService.RenderStepped:Connect(function(deltaTime23)
	end)
	UIStroke47.Color = Color3.fromRGB(255, 255, 255)
	UIStroke47.Transparency = 0.85
	TextLabel36.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke51.Color = Color3.fromRGB(255, 255, 255)
	UIStroke51.Transparency = 0.85
	TextLabel40.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke35.Color = Color3.fromHex("#EC4899")
	UIStroke35.Transparency = 0.1
	TextLabel24.TextColor3 = Color3.fromRGB(240, 240, 246)
	UIStroke48.Color = Color3.fromRGB(255, 255, 255)
	UIStroke48.Transparency = 0.85
	TextLabel37.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke38.Color = Color3.fromRGB(255, 255, 255)
	UIStroke38.Transparency = 0.85
	TextLabel27.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke29.Color = Color3.fromRGB(255, 255, 255)
	UIStroke29.Transparency = 0.85
	TextLabel18.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke37.Color = Color3.fromRGB(255, 255, 255)
	UIStroke37.Transparency = 0.85
	TextLabel26.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke46.Color = Color3.fromRGB(255, 255, 255)
	UIStroke46.Transparency = 0.85
	TextLabel35.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke45.Color = Color3.fromRGB(255, 255, 255)
	UIStroke45.Transparency = 0.85
	TextLabel34.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke40.Color = Color3.fromRGB(255, 255, 255)
	UIStroke40.Transparency = 0.85
	TextLabel29.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke27.Color = Color3.fromRGB(255, 255, 255)
	UIStroke27.Transparency = 0.85
	TextLabel16.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke43.Color = Color3.fromRGB(255, 255, 255)
	UIStroke43.Transparency = 0.85
	TextLabel32.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke36.Color = Color3.fromRGB(255, 255, 255)
	UIStroke36.Transparency = 0.85
	TextLabel25.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke49.Color = Color3.fromRGB(255, 255, 255)
	UIStroke49.Transparency = 0.85
	TextLabel38.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke33.Color = Color3.fromRGB(255, 255, 255)
	UIStroke33.Transparency = 0.85
	TextLabel22.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke34.Color = Color3.fromRGB(255, 255, 255)
	UIStroke34.Transparency = 0.85
	TextLabel23.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke26.Color = Color3.fromRGB(255, 255, 255)
	UIStroke26.Transparency = 0.85
	TextLabel15.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke50.Color = Color3.fromRGB(255, 255, 255)
	UIStroke50.Transparency = 0.85
	TextLabel39.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke25.Color = Color3.fromRGB(255, 255, 255)
	UIStroke25.Transparency = 0.85
	TextLabel14.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke42.Color = Color3.fromRGB(255, 255, 255)
	UIStroke42.Transparency = 0.85
	TextLabel31.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke30.Color = Color3.fromRGB(255, 255, 255)
	UIStroke30.Transparency = 0.85
	TextLabel19.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke53.Color = Color3.fromRGB(255, 255, 255)
	UIStroke53.Transparency = 0.85
	TextLabel42.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke55.Color = Color3.fromRGB(255, 255, 255)
	UIStroke55.Transparency = 0.85
	TextLabel44.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke54.Color = Color3.fromRGB(255, 255, 255)
	UIStroke54.Transparency = 0.85
	TextLabel43.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke41.Color = Color3.fromRGB(255, 255, 255)
	UIStroke41.Transparency = 0.85
	TextLabel30.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke52.Color = Color3.fromRGB(255, 255, 255)
	UIStroke52.Transparency = 0.85
	TextLabel41.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke31.Color = Color3.fromRGB(255, 255, 255)
	UIStroke31.Transparency = 0.85
	TextLabel20.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke23.Color = Color3.fromRGB(255, 255, 255)
	UIStroke23.Transparency = 0.85
	TextLabel12.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke32.Color = Color3.fromRGB(255, 255, 255)
	UIStroke32.Transparency = 0.85
	TextLabel21.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke44.Color = Color3.fromRGB(255, 255, 255)
	UIStroke44.Transparency = 0.85
	TextLabel33.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke39.Color = Color3.fromRGB(255, 255, 255)
	UIStroke39.Transparency = 0.85
	TextLabel28.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke24.Color = Color3.fromRGB(255, 255, 255)
	UIStroke24.Transparency = 0.85
	TextLabel13.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke28.Color = Color3.fromRGB(255, 255, 255)
	UIStroke28.Transparency = 0.85
	TextLabel17.TextColor3 = Color3.fromRGB(150, 150, 160)
end)
local TextButton25 = Instance.new("TextButton")
TextButton25.Name = "Yellow Heart"
TextButton25.LayoutOrder = 14
TextButton25.Text = ""
TextButton25.AutoButtonColor = false
TextButton25.BackgroundColor3 = Color3.fromRGB(10, 10, 13)
TextButton25.BackgroundTransparency = 0.25
TextButton25.BorderSizePixel = 0
TextButton25.Parent = Frame35
local UICorner91 = Instance.new("UICorner", TextButton25)
UICorner91.CornerRadius = UDim.new(0, 10)
local UIStroke36 = Instance.new("UIStroke")
UIStroke36.Thickness = 1.5
UIStroke36.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke36.Parent = TextButton25
local ImageLabel26 = Instance.new("ImageLabel")
ImageLabel26.BackgroundTransparency = 1
ImageLabel26.AnchorPoint = Vector2.new(0.5, 0)
ImageLabel26.Position = UDim2.new(0.5, 0, 0, 5)
ImageLabel26.Size = UDim2.fromOffset(56, 56)
ImageLabel26.Image = "rbxthumb://type=Asset&w=420&h=420&id=11754042019"
ImageLabel26.ScaleType = Enum.ScaleType.Stretch
ImageLabel26.Parent = TextButton25
local TextLabel25 = Instance.new("TextLabel")
TextLabel25.BackgroundTransparency = 1
TextLabel25.AnchorPoint = Vector2.new(0.5, 1)
TextLabel25.Position = UDim2.new(0.5, 0, 1, -4)
TextLabel25.Size = UDim2.new(1, -6, 0, 18)
TextLabel25.Font = Enum.Font.GothamBold
TextLabel25.TextSize = 10
TextLabel25.TextWrapped = true
TextLabel25.Text = "Yellow Heart"
TextLabel25.Parent = TextButton25
TextButton25.MouseButton1Click:Connect(function()
	connection75:Disconnect()
	ScreenGui25:Destroy()
	UserInputService.MouseIconEnabled = UserInputService.MouseIconEnabled
	Players.LocalPlayer.Character:FindFirstChild("Gun")
	mouse.Icon = "rbxassetid://79658449"
	local ScreenGui26 = Instance.new("ScreenGui")
	ScreenGui26.Name = "FVLCrosshair"
	ScreenGui26.ResetOnSpawn = false
	ScreenGui26.IgnoreGuiInset = true
	ScreenGui26.DisplayOrder = 10000
	ScreenGui26.Parent = CoreGui
	local ImageLabel60 = Instance.new("ImageLabel")
	ImageLabel60.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel60.BackgroundTransparency = 1
	ImageLabel60.Image = "rbxthumb://type=Asset&w=420&h=420&id=11754042019"
	ImageLabel60.Size = UDim2.fromOffset(50, 50)
	ImageLabel60.ScaleType = Enum.ScaleType.Stretch
	ImageLabel60.Parent = ScreenGui26
	local connection76 = RunService.RenderStepped:Connect(function(deltaTime24)
	end)
	UIStroke47.Color = Color3.fromRGB(255, 255, 255)
	UIStroke47.Transparency = 0.85
	TextLabel36.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke51.Color = Color3.fromRGB(255, 255, 255)
	UIStroke51.Transparency = 0.85
	TextLabel40.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke35.Color = Color3.fromRGB(255, 255, 255)
	UIStroke35.Transparency = 0.85
	TextLabel24.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke48.Color = Color3.fromRGB(255, 255, 255)
	UIStroke48.Transparency = 0.85
	TextLabel37.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke38.Color = Color3.fromRGB(255, 255, 255)
	UIStroke38.Transparency = 0.85
	TextLabel27.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke29.Color = Color3.fromRGB(255, 255, 255)
	UIStroke29.Transparency = 0.85
	TextLabel18.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke37.Color = Color3.fromRGB(255, 255, 255)
	UIStroke37.Transparency = 0.85
	TextLabel26.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke46.Color = Color3.fromRGB(255, 255, 255)
	UIStroke46.Transparency = 0.85
	TextLabel35.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke45.Color = Color3.fromRGB(255, 255, 255)
	UIStroke45.Transparency = 0.85
	TextLabel34.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke40.Color = Color3.fromRGB(255, 255, 255)
	UIStroke40.Transparency = 0.85
	TextLabel29.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke27.Color = Color3.fromRGB(255, 255, 255)
	UIStroke27.Transparency = 0.85
	TextLabel16.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke43.Color = Color3.fromRGB(255, 255, 255)
	UIStroke43.Transparency = 0.85
	TextLabel32.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke36.Color = Color3.fromHex("#EC4899")
	UIStroke36.Transparency = 0.1
	TextLabel25.TextColor3 = Color3.fromRGB(240, 240, 246)
	UIStroke49.Color = Color3.fromRGB(255, 255, 255)
	UIStroke49.Transparency = 0.85
	TextLabel38.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke33.Color = Color3.fromRGB(255, 255, 255)
	UIStroke33.Transparency = 0.85
	TextLabel22.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke34.Color = Color3.fromRGB(255, 255, 255)
	UIStroke34.Transparency = 0.85
	TextLabel23.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke26.Color = Color3.fromRGB(255, 255, 255)
	UIStroke26.Transparency = 0.85
	TextLabel15.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke50.Color = Color3.fromRGB(255, 255, 255)
	UIStroke50.Transparency = 0.85
	TextLabel39.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke25.Color = Color3.fromRGB(255, 255, 255)
	UIStroke25.Transparency = 0.85
	TextLabel14.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke42.Color = Color3.fromRGB(255, 255, 255)
	UIStroke42.Transparency = 0.85
	TextLabel31.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke30.Color = Color3.fromRGB(255, 255, 255)
	UIStroke30.Transparency = 0.85
	TextLabel19.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke53.Color = Color3.fromRGB(255, 255, 255)
	UIStroke53.Transparency = 0.85
	TextLabel42.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke55.Color = Color3.fromRGB(255, 255, 255)
	UIStroke55.Transparency = 0.85
	TextLabel44.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke54.Color = Color3.fromRGB(255, 255, 255)
	UIStroke54.Transparency = 0.85
	TextLabel43.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke41.Color = Color3.fromRGB(255, 255, 255)
	UIStroke41.Transparency = 0.85
	TextLabel30.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke52.Color = Color3.fromRGB(255, 255, 255)
	UIStroke52.Transparency = 0.85
	TextLabel41.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke31.Color = Color3.fromRGB(255, 255, 255)
	UIStroke31.Transparency = 0.85
	TextLabel20.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke23.Color = Color3.fromRGB(255, 255, 255)
	UIStroke23.Transparency = 0.85
	TextLabel12.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke32.Color = Color3.fromRGB(255, 255, 255)
	UIStroke32.Transparency = 0.85
	TextLabel21.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke44.Color = Color3.fromRGB(255, 255, 255)
	UIStroke44.Transparency = 0.85
	TextLabel33.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke39.Color = Color3.fromRGB(255, 255, 255)
	UIStroke39.Transparency = 0.85
	TextLabel28.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke24.Color = Color3.fromRGB(255, 255, 255)
	UIStroke24.Transparency = 0.85
	TextLabel13.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke28.Color = Color3.fromRGB(255, 255, 255)
	UIStroke28.Transparency = 0.85
	TextLabel17.TextColor3 = Color3.fromRGB(150, 150, 160)
end)
local TextButton26 = Instance.new("TextButton")
TextButton26.Name = "Heart Cross"
TextButton26.LayoutOrder = 15
TextButton26.Text = ""
TextButton26.AutoButtonColor = false
TextButton26.BackgroundColor3 = Color3.fromRGB(10, 10, 13)
TextButton26.BackgroundTransparency = 0.25
TextButton26.BorderSizePixel = 0
TextButton26.Parent = Frame35
local UICorner92 = Instance.new("UICorner", TextButton26)
UICorner92.CornerRadius = UDim.new(0, 10)
local UIStroke37 = Instance.new("UIStroke")
UIStroke37.Thickness = 1.5
UIStroke37.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke37.Parent = TextButton26
local ImageLabel27 = Instance.new("ImageLabel")
ImageLabel27.BackgroundTransparency = 1
ImageLabel27.AnchorPoint = Vector2.new(0.5, 0)
ImageLabel27.Position = UDim2.new(0.5, 0, 0, 5)
ImageLabel27.Size = UDim2.fromOffset(56, 56)
ImageLabel27.Image = "rbxassetid://11739569678"
ImageLabel27.ScaleType = Enum.ScaleType.Stretch
ImageLabel27.Parent = TextButton26
local TextLabel26 = Instance.new("TextLabel")
TextLabel26.BackgroundTransparency = 1
TextLabel26.AnchorPoint = Vector2.new(0.5, 1)
TextLabel26.Position = UDim2.new(0.5, 0, 1, -4)
TextLabel26.Size = UDim2.new(1, -6, 0, 18)
TextLabel26.Font = Enum.Font.GothamBold
TextLabel26.TextSize = 10
TextLabel26.TextWrapped = true
TextLabel26.Text = "Heart Cross"
TextLabel26.Parent = TextButton26
TextButton26.MouseButton1Click:Connect(function()
	connection76:Disconnect()
	ScreenGui26:Destroy()
	UserInputService.MouseIconEnabled = UserInputService.MouseIconEnabled
	Players.LocalPlayer.Character:FindFirstChild("Gun")
	mouse.Icon = "rbxassetid://79658449"
	local ScreenGui27 = Instance.new("ScreenGui")
	ScreenGui27.Name = "FVLCrosshair"
	ScreenGui27.ResetOnSpawn = false
	ScreenGui27.IgnoreGuiInset = true
	ScreenGui27.DisplayOrder = 10000
	ScreenGui27.Parent = CoreGui
	local ImageLabel61 = Instance.new("ImageLabel")
	ImageLabel61.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel61.BackgroundTransparency = 1
	ImageLabel61.Image = "rbxassetid://11739569678"
	ImageLabel61.Size = UDim2.fromOffset(50, 50)
	ImageLabel61.ScaleType = Enum.ScaleType.Stretch
	ImageLabel61.Parent = ScreenGui27
	local connection77 = RunService.RenderStepped:Connect(function(deltaTime25)
	end)
	UIStroke47.Color = Color3.fromRGB(255, 255, 255)
	UIStroke47.Transparency = 0.85
	TextLabel36.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke51.Color = Color3.fromRGB(255, 255, 255)
	UIStroke51.Transparency = 0.85
	TextLabel40.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke35.Color = Color3.fromRGB(255, 255, 255)
	UIStroke35.Transparency = 0.85
	TextLabel24.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke48.Color = Color3.fromRGB(255, 255, 255)
	UIStroke48.Transparency = 0.85
	TextLabel37.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke38.Color = Color3.fromRGB(255, 255, 255)
	UIStroke38.Transparency = 0.85
	TextLabel27.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke29.Color = Color3.fromRGB(255, 255, 255)
	UIStroke29.Transparency = 0.85
	TextLabel18.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke37.Color = Color3.fromHex("#EC4899")
	UIStroke37.Transparency = 0.1
	TextLabel26.TextColor3 = Color3.fromRGB(240, 240, 246)
	UIStroke46.Color = Color3.fromRGB(255, 255, 255)
	UIStroke46.Transparency = 0.85
	TextLabel35.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke45.Color = Color3.fromRGB(255, 255, 255)
	UIStroke45.Transparency = 0.85
	TextLabel34.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke40.Color = Color3.fromRGB(255, 255, 255)
	UIStroke40.Transparency = 0.85
	TextLabel29.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke27.Color = Color3.fromRGB(255, 255, 255)
	UIStroke27.Transparency = 0.85
	TextLabel16.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke43.Color = Color3.fromRGB(255, 255, 255)
	UIStroke43.Transparency = 0.85
	TextLabel32.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke36.Color = Color3.fromRGB(255, 255, 255)
	UIStroke36.Transparency = 0.85
	TextLabel25.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke49.Color = Color3.fromRGB(255, 255, 255)
	UIStroke49.Transparency = 0.85
	TextLabel38.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke33.Color = Color3.fromRGB(255, 255, 255)
	UIStroke33.Transparency = 0.85
	TextLabel22.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke34.Color = Color3.fromRGB(255, 255, 255)
	UIStroke34.Transparency = 0.85
	TextLabel23.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke26.Color = Color3.fromRGB(255, 255, 255)
	UIStroke26.Transparency = 0.85
	TextLabel15.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke50.Color = Color3.fromRGB(255, 255, 255)
	UIStroke50.Transparency = 0.85
	TextLabel39.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke25.Color = Color3.fromRGB(255, 255, 255)
	UIStroke25.Transparency = 0.85
	TextLabel14.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke42.Color = Color3.fromRGB(255, 255, 255)
	UIStroke42.Transparency = 0.85
	TextLabel31.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke30.Color = Color3.fromRGB(255, 255, 255)
	UIStroke30.Transparency = 0.85
	TextLabel19.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke53.Color = Color3.fromRGB(255, 255, 255)
	UIStroke53.Transparency = 0.85
	TextLabel42.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke55.Color = Color3.fromRGB(255, 255, 255)
	UIStroke55.Transparency = 0.85
	TextLabel44.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke54.Color = Color3.fromRGB(255, 255, 255)
	UIStroke54.Transparency = 0.85
	TextLabel43.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke41.Color = Color3.fromRGB(255, 255, 255)
	UIStroke41.Transparency = 0.85
	TextLabel30.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke52.Color = Color3.fromRGB(255, 255, 255)
	UIStroke52.Transparency = 0.85
	TextLabel41.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke31.Color = Color3.fromRGB(255, 255, 255)
	UIStroke31.Transparency = 0.85
	TextLabel20.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke23.Color = Color3.fromRGB(255, 255, 255)
	UIStroke23.Transparency = 0.85
	TextLabel12.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke32.Color = Color3.fromRGB(255, 255, 255)
	UIStroke32.Transparency = 0.85
	TextLabel21.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke44.Color = Color3.fromRGB(255, 255, 255)
	UIStroke44.Transparency = 0.85
	TextLabel33.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke39.Color = Color3.fromRGB(255, 255, 255)
	UIStroke39.Transparency = 0.85
	TextLabel28.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke24.Color = Color3.fromRGB(255, 255, 255)
	UIStroke24.Transparency = 0.85
	TextLabel13.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke28.Color = Color3.fromRGB(255, 255, 255)
	UIStroke28.Transparency = 0.85
	TextLabel17.TextColor3 = Color3.fromRGB(150, 150, 160)
end)
local TextButton27 = Instance.new("TextButton")
TextButton27.Name = "Star"
TextButton27.LayoutOrder = 16
TextButton27.Text = ""
TextButton27.AutoButtonColor = false
TextButton27.BackgroundColor3 = Color3.fromRGB(10, 10, 13)
TextButton27.BackgroundTransparency = 0.25
TextButton27.BorderSizePixel = 0
TextButton27.Parent = Frame35
local UICorner93 = Instance.new("UICorner", TextButton27)
UICorner93.CornerRadius = UDim.new(0, 10)
local UIStroke38 = Instance.new("UIStroke")
UIStroke38.Thickness = 1.5
UIStroke38.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke38.Parent = TextButton27
local ImageLabel28 = Instance.new("ImageLabel")
ImageLabel28.BackgroundTransparency = 1
ImageLabel28.AnchorPoint = Vector2.new(0.5, 0)
ImageLabel28.Position = UDim2.new(0.5, 0, 0, 5)
ImageLabel28.Size = UDim2.fromOffset(56, 56)
ImageLabel28.Image = "rbxassetid://11716559277"
ImageLabel28.ScaleType = Enum.ScaleType.Stretch
ImageLabel28.Parent = TextButton27
local TextLabel27 = Instance.new("TextLabel")
TextLabel27.BackgroundTransparency = 1
TextLabel27.AnchorPoint = Vector2.new(0.5, 1)
TextLabel27.Position = UDim2.new(0.5, 0, 1, -4)
TextLabel27.Size = UDim2.new(1, -6, 0, 18)
TextLabel27.Font = Enum.Font.GothamBold
TextLabel27.TextSize = 10
TextLabel27.TextWrapped = true
TextLabel27.Text = "Star"
TextLabel27.Parent = TextButton27
TextButton27.MouseButton1Click:Connect(function()
	connection77:Disconnect()
	ScreenGui27:Destroy()
	UserInputService.MouseIconEnabled = UserInputService.MouseIconEnabled
	Players.LocalPlayer.Character:FindFirstChild("Gun")
	mouse.Icon = "rbxassetid://79658449"
	local ScreenGui28 = Instance.new("ScreenGui")
	ScreenGui28.Name = "FVLCrosshair"
	ScreenGui28.ResetOnSpawn = false
	ScreenGui28.IgnoreGuiInset = true
	ScreenGui28.DisplayOrder = 10000
	ScreenGui28.Parent = CoreGui
	local ImageLabel62 = Instance.new("ImageLabel")
	ImageLabel62.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel62.BackgroundTransparency = 1
	ImageLabel62.Image = "rbxassetid://11716559277"
	ImageLabel62.Size = UDim2.fromOffset(50, 50)
	ImageLabel62.ScaleType = Enum.ScaleType.Stretch
	ImageLabel62.Parent = ScreenGui28
	local connection78 = RunService.RenderStepped:Connect(function(deltaTime26)
	end)
	UIStroke47.Color = Color3.fromRGB(255, 255, 255)
	UIStroke47.Transparency = 0.85
	TextLabel36.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke51.Color = Color3.fromRGB(255, 255, 255)
	UIStroke51.Transparency = 0.85
	TextLabel40.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke35.Color = Color3.fromRGB(255, 255, 255)
	UIStroke35.Transparency = 0.85
	TextLabel24.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke48.Color = Color3.fromRGB(255, 255, 255)
	UIStroke48.Transparency = 0.85
	TextLabel37.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke38.Color = Color3.fromHex("#EC4899")
	UIStroke38.Transparency = 0.1
	TextLabel27.TextColor3 = Color3.fromRGB(240, 240, 246)
	UIStroke29.Color = Color3.fromRGB(255, 255, 255)
	UIStroke29.Transparency = 0.85
	TextLabel18.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke37.Color = Color3.fromRGB(255, 255, 255)
	UIStroke37.Transparency = 0.85
	TextLabel26.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke46.Color = Color3.fromRGB(255, 255, 255)
	UIStroke46.Transparency = 0.85
	TextLabel35.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke45.Color = Color3.fromRGB(255, 255, 255)
	UIStroke45.Transparency = 0.85
	TextLabel34.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke40.Color = Color3.fromRGB(255, 255, 255)
	UIStroke40.Transparency = 0.85
	TextLabel29.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke27.Color = Color3.fromRGB(255, 255, 255)
	UIStroke27.Transparency = 0.85
	TextLabel16.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke43.Color = Color3.fromRGB(255, 255, 255)
	UIStroke43.Transparency = 0.85
	TextLabel32.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke36.Color = Color3.fromRGB(255, 255, 255)
	UIStroke36.Transparency = 0.85
	TextLabel25.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke49.Color = Color3.fromRGB(255, 255, 255)
	UIStroke49.Transparency = 0.85
	TextLabel38.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke33.Color = Color3.fromRGB(255, 255, 255)
	UIStroke33.Transparency = 0.85
	TextLabel22.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke34.Color = Color3.fromRGB(255, 255, 255)
	UIStroke34.Transparency = 0.85
	TextLabel23.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke26.Color = Color3.fromRGB(255, 255, 255)
	UIStroke26.Transparency = 0.85
	TextLabel15.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke50.Color = Color3.fromRGB(255, 255, 255)
	UIStroke50.Transparency = 0.85
	TextLabel39.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke25.Color = Color3.fromRGB(255, 255, 255)
	UIStroke25.Transparency = 0.85
	TextLabel14.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke42.Color = Color3.fromRGB(255, 255, 255)
	UIStroke42.Transparency = 0.85
	TextLabel31.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke30.Color = Color3.fromRGB(255, 255, 255)
	UIStroke30.Transparency = 0.85
	TextLabel19.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke53.Color = Color3.fromRGB(255, 255, 255)
	UIStroke53.Transparency = 0.85
	TextLabel42.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke55.Color = Color3.fromRGB(255, 255, 255)
	UIStroke55.Transparency = 0.85
	TextLabel44.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke54.Color = Color3.fromRGB(255, 255, 255)
	UIStroke54.Transparency = 0.85
	TextLabel43.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke41.Color = Color3.fromRGB(255, 255, 255)
	UIStroke41.Transparency = 0.85
	TextLabel30.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke52.Color = Color3.fromRGB(255, 255, 255)
	UIStroke52.Transparency = 0.85
	TextLabel41.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke31.Color = Color3.fromRGB(255, 255, 255)
	UIStroke31.Transparency = 0.85
	TextLabel20.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke23.Color = Color3.fromRGB(255, 255, 255)
	UIStroke23.Transparency = 0.85
	TextLabel12.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke32.Color = Color3.fromRGB(255, 255, 255)
	UIStroke32.Transparency = 0.85
	TextLabel21.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke44.Color = Color3.fromRGB(255, 255, 255)
	UIStroke44.Transparency = 0.85
	TextLabel33.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke39.Color = Color3.fromRGB(255, 255, 255)
	UIStroke39.Transparency = 0.85
	TextLabel28.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke24.Color = Color3.fromRGB(255, 255, 255)
	UIStroke24.Transparency = 0.85
	TextLabel13.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke28.Color = Color3.fromRGB(255, 255, 255)
	UIStroke28.Transparency = 0.85
	TextLabel17.TextColor3 = Color3.fromRGB(150, 150, 160)
end)
local TextButton28 = Instance.new("TextButton")
TextButton28.Name = "Star v2"
TextButton28.LayoutOrder = 17
TextButton28.Text = ""
TextButton28.AutoButtonColor = false
TextButton28.BackgroundColor3 = Color3.fromRGB(10, 10, 13)
TextButton28.BackgroundTransparency = 0.25
TextButton28.BorderSizePixel = 0
TextButton28.Parent = Frame35
local UICorner94 = Instance.new("UICorner", TextButton28)
UICorner94.CornerRadius = UDim.new(0, 10)
local UIStroke39 = Instance.new("UIStroke")
UIStroke39.Thickness = 1.5
UIStroke39.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke39.Parent = TextButton28
local ImageLabel29 = Instance.new("ImageLabel")
ImageLabel29.BackgroundTransparency = 1
ImageLabel29.AnchorPoint = Vector2.new(0.5, 0)
ImageLabel29.Position = UDim2.new(0.5, 0, 0, 5)
ImageLabel29.Size = UDim2.fromOffset(56, 56)
ImageLabel29.Image = "rbxassetid://11716557686"
ImageLabel29.ScaleType = Enum.ScaleType.Stretch
ImageLabel29.Parent = TextButton28
local TextLabel28 = Instance.new("TextLabel")
TextLabel28.BackgroundTransparency = 1
TextLabel28.AnchorPoint = Vector2.new(0.5, 1)
TextLabel28.Position = UDim2.new(0.5, 0, 1, -4)
TextLabel28.Size = UDim2.new(1, -6, 0, 18)
TextLabel28.Font = Enum.Font.GothamBold
TextLabel28.TextSize = 10
TextLabel28.TextWrapped = true
TextLabel28.Text = "Star v2"
TextLabel28.Parent = TextButton28
TextButton28.MouseButton1Click:Connect(function()
	connection78:Disconnect()
	ScreenGui28:Destroy()
	UserInputService.MouseIconEnabled = UserInputService.MouseIconEnabled
	Players.LocalPlayer.Character:FindFirstChild("Gun")
	mouse.Icon = "rbxassetid://79658449"
	local ScreenGui29 = Instance.new("ScreenGui")
	ScreenGui29.Name = "FVLCrosshair"
	ScreenGui29.ResetOnSpawn = false
	ScreenGui29.IgnoreGuiInset = true
	ScreenGui29.DisplayOrder = 10000
	ScreenGui29.Parent = CoreGui
	local ImageLabel63 = Instance.new("ImageLabel")
	ImageLabel63.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel63.BackgroundTransparency = 1
	ImageLabel63.Image = "rbxassetid://11716557686"
	ImageLabel63.Size = UDim2.fromOffset(50, 50)
	ImageLabel63.ScaleType = Enum.ScaleType.Stretch
	ImageLabel63.Parent = ScreenGui29
	local connection79 = RunService.RenderStepped:Connect(function(deltaTime27)
	end)
	UIStroke47.Color = Color3.fromRGB(255, 255, 255)
	UIStroke47.Transparency = 0.85
	TextLabel36.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke51.Color = Color3.fromRGB(255, 255, 255)
	UIStroke51.Transparency = 0.85
	TextLabel40.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke35.Color = Color3.fromRGB(255, 255, 255)
	UIStroke35.Transparency = 0.85
	TextLabel24.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke48.Color = Color3.fromRGB(255, 255, 255)
	UIStroke48.Transparency = 0.85
	TextLabel37.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke38.Color = Color3.fromRGB(255, 255, 255)
	UIStroke38.Transparency = 0.85
	TextLabel27.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke29.Color = Color3.fromRGB(255, 255, 255)
	UIStroke29.Transparency = 0.85
	TextLabel18.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke37.Color = Color3.fromRGB(255, 255, 255)
	UIStroke37.Transparency = 0.85
	TextLabel26.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke46.Color = Color3.fromRGB(255, 255, 255)
	UIStroke46.Transparency = 0.85
	TextLabel35.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke45.Color = Color3.fromRGB(255, 255, 255)
	UIStroke45.Transparency = 0.85
	TextLabel34.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke40.Color = Color3.fromRGB(255, 255, 255)
	UIStroke40.Transparency = 0.85
	TextLabel29.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke27.Color = Color3.fromRGB(255, 255, 255)
	UIStroke27.Transparency = 0.85
	TextLabel16.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke43.Color = Color3.fromRGB(255, 255, 255)
	UIStroke43.Transparency = 0.85
	TextLabel32.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke36.Color = Color3.fromRGB(255, 255, 255)
	UIStroke36.Transparency = 0.85
	TextLabel25.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke49.Color = Color3.fromRGB(255, 255, 255)
	UIStroke49.Transparency = 0.85
	TextLabel38.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke33.Color = Color3.fromRGB(255, 255, 255)
	UIStroke33.Transparency = 0.85
	TextLabel22.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke34.Color = Color3.fromRGB(255, 255, 255)
	UIStroke34.Transparency = 0.85
	TextLabel23.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke26.Color = Color3.fromRGB(255, 255, 255)
	UIStroke26.Transparency = 0.85
	TextLabel15.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke50.Color = Color3.fromRGB(255, 255, 255)
	UIStroke50.Transparency = 0.85
	TextLabel39.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke25.Color = Color3.fromRGB(255, 255, 255)
	UIStroke25.Transparency = 0.85
	TextLabel14.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke42.Color = Color3.fromRGB(255, 255, 255)
	UIStroke42.Transparency = 0.85
	TextLabel31.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke30.Color = Color3.fromRGB(255, 255, 255)
	UIStroke30.Transparency = 0.85
	TextLabel19.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke53.Color = Color3.fromRGB(255, 255, 255)
	UIStroke53.Transparency = 0.85
	TextLabel42.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke55.Color = Color3.fromRGB(255, 255, 255)
	UIStroke55.Transparency = 0.85
	TextLabel44.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke54.Color = Color3.fromRGB(255, 255, 255)
	UIStroke54.Transparency = 0.85
	TextLabel43.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke41.Color = Color3.fromRGB(255, 255, 255)
	UIStroke41.Transparency = 0.85
	TextLabel30.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke52.Color = Color3.fromRGB(255, 255, 255)
	UIStroke52.Transparency = 0.85
	TextLabel41.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke31.Color = Color3.fromRGB(255, 255, 255)
	UIStroke31.Transparency = 0.85
	TextLabel20.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke23.Color = Color3.fromRGB(255, 255, 255)
	UIStroke23.Transparency = 0.85
	TextLabel12.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke32.Color = Color3.fromRGB(255, 255, 255)
	UIStroke32.Transparency = 0.85
	TextLabel21.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke44.Color = Color3.fromRGB(255, 255, 255)
	UIStroke44.Transparency = 0.85
	TextLabel33.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke39.Color = Color3.fromHex("#EC4899")
	UIStroke39.Transparency = 0.1
	TextLabel28.TextColor3 = Color3.fromRGB(240, 240, 246)
	UIStroke24.Color = Color3.fromRGB(255, 255, 255)
	UIStroke24.Transparency = 0.85
	TextLabel13.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke28.Color = Color3.fromRGB(255, 255, 255)
	UIStroke28.Transparency = 0.85
	TextLabel17.TextColor3 = Color3.fromRGB(150, 150, 160)
end)
local TextButton29 = Instance.new("TextButton")
TextButton29.Name = "Pink Star"
TextButton29.LayoutOrder = 18
TextButton29.Text = ""
TextButton29.AutoButtonColor = false
TextButton29.BackgroundColor3 = Color3.fromRGB(10, 10, 13)
TextButton29.BackgroundTransparency = 0.25
TextButton29.BorderSizePixel = 0
TextButton29.Parent = Frame35
local UICorner95 = Instance.new("UICorner", TextButton29)
UICorner95.CornerRadius = UDim.new(0, 10)
local UIStroke40 = Instance.new("UIStroke")
UIStroke40.Thickness = 1.5
UIStroke40.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke40.Parent = TextButton29
local ImageLabel30 = Instance.new("ImageLabel")
ImageLabel30.BackgroundTransparency = 1
ImageLabel30.AnchorPoint = Vector2.new(0.5, 0)
ImageLabel30.Position = UDim2.new(0.5, 0, 0, 5)
ImageLabel30.Size = UDim2.fromOffset(56, 56)
ImageLabel30.Image = "rbxthumb://type=Asset&w=420&h=420&id=11719595129"
ImageLabel30.ScaleType = Enum.ScaleType.Stretch
ImageLabel30.Parent = TextButton29
local TextLabel29 = Instance.new("TextLabel")
TextLabel29.BackgroundTransparency = 1
TextLabel29.AnchorPoint = Vector2.new(0.5, 1)
TextLabel29.Position = UDim2.new(0.5, 0, 1, -4)
TextLabel29.Size = UDim2.new(1, -6, 0, 18)
TextLabel29.Font = Enum.Font.GothamBold
TextLabel29.TextSize = 10
TextLabel29.TextWrapped = true
TextLabel29.Text = "Pink Star"
TextLabel29.Parent = TextButton29
TextButton29.MouseButton1Click:Connect(function()
	connection79:Disconnect()
	ScreenGui29:Destroy()
	UserInputService.MouseIconEnabled = UserInputService.MouseIconEnabled
	Players.LocalPlayer.Character:FindFirstChild("Gun")
	mouse.Icon = "rbxassetid://79658449"
	local ScreenGui30 = Instance.new("ScreenGui")
	ScreenGui30.Name = "FVLCrosshair"
	ScreenGui30.ResetOnSpawn = false
	ScreenGui30.IgnoreGuiInset = true
	ScreenGui30.DisplayOrder = 10000
	ScreenGui30.Parent = CoreGui
	local ImageLabel64 = Instance.new("ImageLabel")
	ImageLabel64.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel64.BackgroundTransparency = 1
	ImageLabel64.Image = "rbxthumb://type=Asset&w=420&h=420&id=11719595129"
	ImageLabel64.Size = UDim2.fromOffset(50, 50)
	ImageLabel64.ScaleType = Enum.ScaleType.Stretch
	ImageLabel64.Parent = ScreenGui30
	local connection80 = RunService.RenderStepped:Connect(function(deltaTime28)
	end)
	UIStroke47.Color = Color3.fromRGB(255, 255, 255)
	UIStroke47.Transparency = 0.85
	TextLabel36.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke51.Color = Color3.fromRGB(255, 255, 255)
	UIStroke51.Transparency = 0.85
	TextLabel40.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke35.Color = Color3.fromRGB(255, 255, 255)
	UIStroke35.Transparency = 0.85
	TextLabel24.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke48.Color = Color3.fromRGB(255, 255, 255)
	UIStroke48.Transparency = 0.85
	TextLabel37.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke38.Color = Color3.fromRGB(255, 255, 255)
	UIStroke38.Transparency = 0.85
	TextLabel27.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke29.Color = Color3.fromRGB(255, 255, 255)
	UIStroke29.Transparency = 0.85
	TextLabel18.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke37.Color = Color3.fromRGB(255, 255, 255)
	UIStroke37.Transparency = 0.85
	TextLabel26.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke46.Color = Color3.fromRGB(255, 255, 255)
	UIStroke46.Transparency = 0.85
	TextLabel35.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke45.Color = Color3.fromRGB(255, 255, 255)
	UIStroke45.Transparency = 0.85
	TextLabel34.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke40.Color = Color3.fromHex("#EC4899")
	UIStroke40.Transparency = 0.1
	TextLabel29.TextColor3 = Color3.fromRGB(240, 240, 246)
	UIStroke27.Color = Color3.fromRGB(255, 255, 255)
	UIStroke27.Transparency = 0.85
	TextLabel16.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke43.Color = Color3.fromRGB(255, 255, 255)
	UIStroke43.Transparency = 0.85
	TextLabel32.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke36.Color = Color3.fromRGB(255, 255, 255)
	UIStroke36.Transparency = 0.85
	TextLabel25.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke49.Color = Color3.fromRGB(255, 255, 255)
	UIStroke49.Transparency = 0.85
	TextLabel38.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke33.Color = Color3.fromRGB(255, 255, 255)
	UIStroke33.Transparency = 0.85
	TextLabel22.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke34.Color = Color3.fromRGB(255, 255, 255)
	UIStroke34.Transparency = 0.85
	TextLabel23.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke26.Color = Color3.fromRGB(255, 255, 255)
	UIStroke26.Transparency = 0.85
	TextLabel15.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke50.Color = Color3.fromRGB(255, 255, 255)
	UIStroke50.Transparency = 0.85
	TextLabel39.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke25.Color = Color3.fromRGB(255, 255, 255)
	UIStroke25.Transparency = 0.85
	TextLabel14.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke42.Color = Color3.fromRGB(255, 255, 255)
	UIStroke42.Transparency = 0.85
	TextLabel31.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke30.Color = Color3.fromRGB(255, 255, 255)
	UIStroke30.Transparency = 0.85
	TextLabel19.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke53.Color = Color3.fromRGB(255, 255, 255)
	UIStroke53.Transparency = 0.85
	TextLabel42.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke55.Color = Color3.fromRGB(255, 255, 255)
	UIStroke55.Transparency = 0.85
	TextLabel44.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke54.Color = Color3.fromRGB(255, 255, 255)
	UIStroke54.Transparency = 0.85
	TextLabel43.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke41.Color = Color3.fromRGB(255, 255, 255)
	UIStroke41.Transparency = 0.85
	TextLabel30.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke52.Color = Color3.fromRGB(255, 255, 255)
	UIStroke52.Transparency = 0.85
	TextLabel41.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke31.Color = Color3.fromRGB(255, 255, 255)
	UIStroke31.Transparency = 0.85
	TextLabel20.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke23.Color = Color3.fromRGB(255, 255, 255)
	UIStroke23.Transparency = 0.85
	TextLabel12.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke32.Color = Color3.fromRGB(255, 255, 255)
	UIStroke32.Transparency = 0.85
	TextLabel21.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke44.Color = Color3.fromRGB(255, 255, 255)
	UIStroke44.Transparency = 0.85
	TextLabel33.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke39.Color = Color3.fromRGB(255, 255, 255)
	UIStroke39.Transparency = 0.85
	TextLabel28.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke24.Color = Color3.fromRGB(255, 255, 255)
	UIStroke24.Transparency = 0.85
	TextLabel13.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke28.Color = Color3.fromRGB(255, 255, 255)
	UIStroke28.Transparency = 0.85
	TextLabel17.TextColor3 = Color3.fromRGB(150, 150, 160)
end)
local TextButton30 = Instance.new("TextButton")
TextButton30.Name = "Power Star"
TextButton30.LayoutOrder = 19
TextButton30.Text = ""
TextButton30.AutoButtonColor = false
TextButton30.BackgroundColor3 = Color3.fromRGB(10, 10, 13)
TextButton30.BackgroundTransparency = 0.25
TextButton30.BorderSizePixel = 0
TextButton30.Parent = Frame35
local UICorner96 = Instance.new("UICorner", TextButton30)
UICorner96.CornerRadius = UDim.new(0, 10)
local UIStroke41 = Instance.new("UIStroke")
UIStroke41.Thickness = 1.5
UIStroke41.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke41.Parent = TextButton30
local ImageLabel31 = Instance.new("ImageLabel")
ImageLabel31.BackgroundTransparency = 1
ImageLabel31.AnchorPoint = Vector2.new(0.5, 0)
ImageLabel31.Position = UDim2.new(0.5, 0, 0, 5)
ImageLabel31.Size = UDim2.fromOffset(56, 56)
ImageLabel31.Image = "rbxassetid://1718840561"
ImageLabel31.ScaleType = Enum.ScaleType.Stretch
ImageLabel31.Parent = TextButton30
local TextLabel30 = Instance.new("TextLabel")
TextLabel30.BackgroundTransparency = 1
TextLabel30.AnchorPoint = Vector2.new(0.5, 1)
TextLabel30.Position = UDim2.new(0.5, 0, 1, -4)
TextLabel30.Size = UDim2.new(1, -6, 0, 18)
TextLabel30.Font = Enum.Font.GothamBold
TextLabel30.TextSize = 10
TextLabel30.TextWrapped = true
TextLabel30.Text = "Power Star"
TextLabel30.Parent = TextButton30
TextButton30.MouseButton1Click:Connect(function()
	connection80:Disconnect()
	ScreenGui30:Destroy()
	UserInputService.MouseIconEnabled = UserInputService.MouseIconEnabled
	Players.LocalPlayer.Character:FindFirstChild("Gun")
	mouse.Icon = "rbxassetid://79658449"
	local ScreenGui31 = Instance.new("ScreenGui")
	ScreenGui31.Name = "FVLCrosshair"
	ScreenGui31.ResetOnSpawn = false
	ScreenGui31.IgnoreGuiInset = true
	ScreenGui31.DisplayOrder = 10000
	ScreenGui31.Parent = CoreGui
	local ImageLabel65 = Instance.new("ImageLabel")
	ImageLabel65.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel65.BackgroundTransparency = 1
	ImageLabel65.Image = "rbxassetid://1718840561"
	ImageLabel65.Size = UDim2.fromOffset(50, 50)
	ImageLabel65.ScaleType = Enum.ScaleType.Stretch
	ImageLabel65.Parent = ScreenGui31
	local connection81 = RunService.RenderStepped:Connect(function(deltaTime29)
	end)
	UIStroke47.Color = Color3.fromRGB(255, 255, 255)
	UIStroke47.Transparency = 0.85
	TextLabel36.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke51.Color = Color3.fromRGB(255, 255, 255)
	UIStroke51.Transparency = 0.85
	TextLabel40.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke35.Color = Color3.fromRGB(255, 255, 255)
	UIStroke35.Transparency = 0.85
	TextLabel24.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke48.Color = Color3.fromRGB(255, 255, 255)
	UIStroke48.Transparency = 0.85
	TextLabel37.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke38.Color = Color3.fromRGB(255, 255, 255)
	UIStroke38.Transparency = 0.85
	TextLabel27.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke29.Color = Color3.fromRGB(255, 255, 255)
	UIStroke29.Transparency = 0.85
	TextLabel18.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke37.Color = Color3.fromRGB(255, 255, 255)
	UIStroke37.Transparency = 0.85
	TextLabel26.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke46.Color = Color3.fromRGB(255, 255, 255)
	UIStroke46.Transparency = 0.85
	TextLabel35.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke45.Color = Color3.fromRGB(255, 255, 255)
	UIStroke45.Transparency = 0.85
	TextLabel34.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke40.Color = Color3.fromRGB(255, 255, 255)
	UIStroke40.Transparency = 0.85
	TextLabel29.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke27.Color = Color3.fromRGB(255, 255, 255)
	UIStroke27.Transparency = 0.85
	TextLabel16.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke43.Color = Color3.fromRGB(255, 255, 255)
	UIStroke43.Transparency = 0.85
	TextLabel32.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke36.Color = Color3.fromRGB(255, 255, 255)
	UIStroke36.Transparency = 0.85
	TextLabel25.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke49.Color = Color3.fromRGB(255, 255, 255)
	UIStroke49.Transparency = 0.85
	TextLabel38.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke33.Color = Color3.fromRGB(255, 255, 255)
	UIStroke33.Transparency = 0.85
	TextLabel22.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke34.Color = Color3.fromRGB(255, 255, 255)
	UIStroke34.Transparency = 0.85
	TextLabel23.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke26.Color = Color3.fromRGB(255, 255, 255)
	UIStroke26.Transparency = 0.85
	TextLabel15.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke50.Color = Color3.fromRGB(255, 255, 255)
	UIStroke50.Transparency = 0.85
	TextLabel39.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke25.Color = Color3.fromRGB(255, 255, 255)
	UIStroke25.Transparency = 0.85
	TextLabel14.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke42.Color = Color3.fromRGB(255, 255, 255)
	UIStroke42.Transparency = 0.85
	TextLabel31.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke30.Color = Color3.fromRGB(255, 255, 255)
	UIStroke30.Transparency = 0.85
	TextLabel19.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke53.Color = Color3.fromRGB(255, 255, 255)
	UIStroke53.Transparency = 0.85
	TextLabel42.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke55.Color = Color3.fromRGB(255, 255, 255)
	UIStroke55.Transparency = 0.85
	TextLabel44.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke54.Color = Color3.fromRGB(255, 255, 255)
	UIStroke54.Transparency = 0.85
	TextLabel43.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke41.Color = Color3.fromHex("#EC4899")
	UIStroke41.Transparency = 0.1
	TextLabel30.TextColor3 = Color3.fromRGB(240, 240, 246)
	UIStroke52.Color = Color3.fromRGB(255, 255, 255)
	UIStroke52.Transparency = 0.85
	TextLabel41.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke31.Color = Color3.fromRGB(255, 255, 255)
	UIStroke31.Transparency = 0.85
	TextLabel20.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke23.Color = Color3.fromRGB(255, 255, 255)
	UIStroke23.Transparency = 0.85
	TextLabel12.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke32.Color = Color3.fromRGB(255, 255, 255)
	UIStroke32.Transparency = 0.85
	TextLabel21.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke44.Color = Color3.fromRGB(255, 255, 255)
	UIStroke44.Transparency = 0.85
	TextLabel33.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke39.Color = Color3.fromRGB(255, 255, 255)
	UIStroke39.Transparency = 0.85
	TextLabel28.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke24.Color = Color3.fromRGB(255, 255, 255)
	UIStroke24.Transparency = 0.85
	TextLabel13.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke28.Color = Color3.fromRGB(255, 255, 255)
	UIStroke28.Transparency = 0.85
	TextLabel17.TextColor3 = Color3.fromRGB(150, 150, 160)
end)
local TextButton31 = Instance.new("TextButton")
TextButton31.Name = "Cross"
TextButton31.LayoutOrder = 20
TextButton31.Text = ""
TextButton31.AutoButtonColor = false
TextButton31.BackgroundColor3 = Color3.fromRGB(10, 10, 13)
TextButton31.BackgroundTransparency = 0.25
TextButton31.BorderSizePixel = 0
TextButton31.Parent = Frame35
local UICorner97 = Instance.new("UICorner", TextButton31)
UICorner97.CornerRadius = UDim.new(0, 10)
local UIStroke42 = Instance.new("UIStroke")
UIStroke42.Thickness = 1.5
UIStroke42.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke42.Parent = TextButton31
local ImageLabel32 = Instance.new("ImageLabel")
ImageLabel32.BackgroundTransparency = 1
ImageLabel32.AnchorPoint = Vector2.new(0.5, 0)
ImageLabel32.Position = UDim2.new(0.5, 0, 0, 5)
ImageLabel32.Size = UDim2.fromOffset(56, 56)
ImageLabel32.Image = "rbxthumb://type=Asset&w=420&h=420&id=14034486267"
ImageLabel32.ScaleType = Enum.ScaleType.Stretch
ImageLabel32.Parent = TextButton31
local TextLabel31 = Instance.new("TextLabel")
TextLabel31.BackgroundTransparency = 1
TextLabel31.AnchorPoint = Vector2.new(0.5, 1)
TextLabel31.Position = UDim2.new(0.5, 0, 1, -4)
TextLabel31.Size = UDim2.new(1, -6, 0, 18)
TextLabel31.Font = Enum.Font.GothamBold
TextLabel31.TextSize = 10
TextLabel31.TextWrapped = true
TextLabel31.Text = "Cross"
TextLabel31.Parent = TextButton31
TextButton31.MouseButton1Click:Connect(function()
	connection81:Disconnect()
	ScreenGui31:Destroy()
	UserInputService.MouseIconEnabled = UserInputService.MouseIconEnabled
	Players.LocalPlayer.Character:FindFirstChild("Gun")
	mouse.Icon = "rbxassetid://79658449"
	local ScreenGui32 = Instance.new("ScreenGui")
	ScreenGui32.Name = "FVLCrosshair"
	ScreenGui32.ResetOnSpawn = false
	ScreenGui32.IgnoreGuiInset = true
	ScreenGui32.DisplayOrder = 10000
	ScreenGui32.Parent = CoreGui
	local ImageLabel66 = Instance.new("ImageLabel")
	ImageLabel66.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel66.BackgroundTransparency = 1
	ImageLabel66.Image = "rbxthumb://type=Asset&w=420&h=420&id=14034486267"
	ImageLabel66.Size = UDim2.fromOffset(50, 50)
	ImageLabel66.ScaleType = Enum.ScaleType.Stretch
	ImageLabel66.Parent = ScreenGui32
	local connection82 = RunService.RenderStepped:Connect(function(deltaTime30)
	end)
	UIStroke47.Color = Color3.fromRGB(255, 255, 255)
	UIStroke47.Transparency = 0.85
	TextLabel36.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke51.Color = Color3.fromRGB(255, 255, 255)
	UIStroke51.Transparency = 0.85
	TextLabel40.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke35.Color = Color3.fromRGB(255, 255, 255)
	UIStroke35.Transparency = 0.85
	TextLabel24.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke48.Color = Color3.fromRGB(255, 255, 255)
	UIStroke48.Transparency = 0.85
	TextLabel37.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke38.Color = Color3.fromRGB(255, 255, 255)
	UIStroke38.Transparency = 0.85
	TextLabel27.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke29.Color = Color3.fromRGB(255, 255, 255)
	UIStroke29.Transparency = 0.85
	TextLabel18.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke37.Color = Color3.fromRGB(255, 255, 255)
	UIStroke37.Transparency = 0.85
	TextLabel26.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke46.Color = Color3.fromRGB(255, 255, 255)
	UIStroke46.Transparency = 0.85
	TextLabel35.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke45.Color = Color3.fromRGB(255, 255, 255)
	UIStroke45.Transparency = 0.85
	TextLabel34.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke40.Color = Color3.fromRGB(255, 255, 255)
	UIStroke40.Transparency = 0.85
	TextLabel29.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke27.Color = Color3.fromRGB(255, 255, 255)
	UIStroke27.Transparency = 0.85
	TextLabel16.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke43.Color = Color3.fromRGB(255, 255, 255)
	UIStroke43.Transparency = 0.85
	TextLabel32.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke36.Color = Color3.fromRGB(255, 255, 255)
	UIStroke36.Transparency = 0.85
	TextLabel25.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke49.Color = Color3.fromRGB(255, 255, 255)
	UIStroke49.Transparency = 0.85
	TextLabel38.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke33.Color = Color3.fromRGB(255, 255, 255)
	UIStroke33.Transparency = 0.85
	TextLabel22.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke34.Color = Color3.fromRGB(255, 255, 255)
	UIStroke34.Transparency = 0.85
	TextLabel23.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke26.Color = Color3.fromRGB(255, 255, 255)
	UIStroke26.Transparency = 0.85
	TextLabel15.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke50.Color = Color3.fromRGB(255, 255, 255)
	UIStroke50.Transparency = 0.85
	TextLabel39.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke25.Color = Color3.fromRGB(255, 255, 255)
	UIStroke25.Transparency = 0.85
	TextLabel14.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke42.Color = Color3.fromHex("#EC4899")
	UIStroke42.Transparency = 0.1
	TextLabel31.TextColor3 = Color3.fromRGB(240, 240, 246)
	UIStroke30.Color = Color3.fromRGB(255, 255, 255)
	UIStroke30.Transparency = 0.85
	TextLabel19.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke53.Color = Color3.fromRGB(255, 255, 255)
	UIStroke53.Transparency = 0.85
	TextLabel42.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke55.Color = Color3.fromRGB(255, 255, 255)
	UIStroke55.Transparency = 0.85
	TextLabel44.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke54.Color = Color3.fromRGB(255, 255, 255)
	UIStroke54.Transparency = 0.85
	TextLabel43.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke41.Color = Color3.fromRGB(255, 255, 255)
	UIStroke41.Transparency = 0.85
	TextLabel30.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke52.Color = Color3.fromRGB(255, 255, 255)
	UIStroke52.Transparency = 0.85
	TextLabel41.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke31.Color = Color3.fromRGB(255, 255, 255)
	UIStroke31.Transparency = 0.85
	TextLabel20.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke23.Color = Color3.fromRGB(255, 255, 255)
	UIStroke23.Transparency = 0.85
	TextLabel12.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke32.Color = Color3.fromRGB(255, 255, 255)
	UIStroke32.Transparency = 0.85
	TextLabel21.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke44.Color = Color3.fromRGB(255, 255, 255)
	UIStroke44.Transparency = 0.85
	TextLabel33.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke39.Color = Color3.fromRGB(255, 255, 255)
	UIStroke39.Transparency = 0.85
	TextLabel28.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke24.Color = Color3.fromRGB(255, 255, 255)
	UIStroke24.Transparency = 0.85
	TextLabel13.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke28.Color = Color3.fromRGB(255, 255, 255)
	UIStroke28.Transparency = 0.85
	TextLabel17.TextColor3 = Color3.fromRGB(150, 150, 160)
end)
local TextButton32 = Instance.new("TextButton")
TextButton32.Name = "Pentagram"
TextButton32.LayoutOrder = 21
TextButton32.Text = ""
TextButton32.AutoButtonColor = false
TextButton32.BackgroundColor3 = Color3.fromRGB(10, 10, 13)
TextButton32.BackgroundTransparency = 0.25
TextButton32.BorderSizePixel = 0
TextButton32.Parent = Frame35
local UICorner98 = Instance.new("UICorner", TextButton32)
UICorner98.CornerRadius = UDim.new(0, 10)
local UIStroke43 = Instance.new("UIStroke")
UIStroke43.Thickness = 1.5
UIStroke43.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke43.Parent = TextButton32
local ImageLabel33 = Instance.new("ImageLabel")
ImageLabel33.BackgroundTransparency = 1
ImageLabel33.AnchorPoint = Vector2.new(0.5, 0)
ImageLabel33.Position = UDim2.new(0.5, 0, 0, 5)
ImageLabel33.Size = UDim2.fromOffset(56, 56)
ImageLabel33.Image = "rbxassetid://51838212"
ImageLabel33.ScaleType = Enum.ScaleType.Stretch
ImageLabel33.Parent = TextButton32
local TextLabel32 = Instance.new("TextLabel")
TextLabel32.BackgroundTransparency = 1
TextLabel32.AnchorPoint = Vector2.new(0.5, 1)
TextLabel32.Position = UDim2.new(0.5, 0, 1, -4)
TextLabel32.Size = UDim2.new(1, -6, 0, 18)
TextLabel32.Font = Enum.Font.GothamBold
TextLabel32.TextSize = 10
TextLabel32.TextWrapped = true
TextLabel32.Text = "Pentagram"
TextLabel32.Parent = TextButton32
TextButton32.MouseButton1Click:Connect(function()
	connection82:Disconnect()
	ScreenGui32:Destroy()
	UserInputService.MouseIconEnabled = UserInputService.MouseIconEnabled
	Players.LocalPlayer.Character:FindFirstChild("Gun")
	mouse.Icon = "rbxassetid://79658449"
	local ScreenGui33 = Instance.new("ScreenGui")
	ScreenGui33.Name = "FVLCrosshair"
	ScreenGui33.ResetOnSpawn = false
	ScreenGui33.IgnoreGuiInset = true
	ScreenGui33.DisplayOrder = 10000
	ScreenGui33.Parent = CoreGui
	local ImageLabel67 = Instance.new("ImageLabel")
	ImageLabel67.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel67.BackgroundTransparency = 1
	ImageLabel67.Image = "rbxassetid://51838212"
	ImageLabel67.Size = UDim2.fromOffset(50, 50)
	ImageLabel67.ScaleType = Enum.ScaleType.Stretch
	ImageLabel67.Parent = ScreenGui33
	local connection83 = RunService.RenderStepped:Connect(function(deltaTime31)
	end)
	UIStroke47.Color = Color3.fromRGB(255, 255, 255)
	UIStroke47.Transparency = 0.85
	TextLabel36.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke51.Color = Color3.fromRGB(255, 255, 255)
	UIStroke51.Transparency = 0.85
	TextLabel40.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke35.Color = Color3.fromRGB(255, 255, 255)
	UIStroke35.Transparency = 0.85
	TextLabel24.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke48.Color = Color3.fromRGB(255, 255, 255)
	UIStroke48.Transparency = 0.85
	TextLabel37.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke38.Color = Color3.fromRGB(255, 255, 255)
	UIStroke38.Transparency = 0.85
	TextLabel27.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke29.Color = Color3.fromRGB(255, 255, 255)
	UIStroke29.Transparency = 0.85
	TextLabel18.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke37.Color = Color3.fromRGB(255, 255, 255)
	UIStroke37.Transparency = 0.85
	TextLabel26.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke46.Color = Color3.fromRGB(255, 255, 255)
	UIStroke46.Transparency = 0.85
	TextLabel35.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke45.Color = Color3.fromRGB(255, 255, 255)
	UIStroke45.Transparency = 0.85
	TextLabel34.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke40.Color = Color3.fromRGB(255, 255, 255)
	UIStroke40.Transparency = 0.85
	TextLabel29.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke27.Color = Color3.fromRGB(255, 255, 255)
	UIStroke27.Transparency = 0.85
	TextLabel16.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke43.Color = Color3.fromHex("#EC4899")
	UIStroke43.Transparency = 0.1
	TextLabel32.TextColor3 = Color3.fromRGB(240, 240, 246)
	UIStroke36.Color = Color3.fromRGB(255, 255, 255)
	UIStroke36.Transparency = 0.85
	TextLabel25.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke49.Color = Color3.fromRGB(255, 255, 255)
	UIStroke49.Transparency = 0.85
	TextLabel38.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke33.Color = Color3.fromRGB(255, 255, 255)
	UIStroke33.Transparency = 0.85
	TextLabel22.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke34.Color = Color3.fromRGB(255, 255, 255)
	UIStroke34.Transparency = 0.85
	TextLabel23.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke26.Color = Color3.fromRGB(255, 255, 255)
	UIStroke26.Transparency = 0.85
	TextLabel15.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke50.Color = Color3.fromRGB(255, 255, 255)
	UIStroke50.Transparency = 0.85
	TextLabel39.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke25.Color = Color3.fromRGB(255, 255, 255)
	UIStroke25.Transparency = 0.85
	TextLabel14.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke42.Color = Color3.fromRGB(255, 255, 255)
	UIStroke42.Transparency = 0.85
	TextLabel31.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke30.Color = Color3.fromRGB(255, 255, 255)
	UIStroke30.Transparency = 0.85
	TextLabel19.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke53.Color = Color3.fromRGB(255, 255, 255)
	UIStroke53.Transparency = 0.85
	TextLabel42.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke55.Color = Color3.fromRGB(255, 255, 255)
	UIStroke55.Transparency = 0.85
	TextLabel44.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke54.Color = Color3.fromRGB(255, 255, 255)
	UIStroke54.Transparency = 0.85
	TextLabel43.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke41.Color = Color3.fromRGB(255, 255, 255)
	UIStroke41.Transparency = 0.85
	TextLabel30.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke52.Color = Color3.fromRGB(255, 255, 255)
	UIStroke52.Transparency = 0.85
	TextLabel41.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke31.Color = Color3.fromRGB(255, 255, 255)
	UIStroke31.Transparency = 0.85
	TextLabel20.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke23.Color = Color3.fromRGB(255, 255, 255)
	UIStroke23.Transparency = 0.85
	TextLabel12.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke32.Color = Color3.fromRGB(255, 255, 255)
	UIStroke32.Transparency = 0.85
	TextLabel21.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke44.Color = Color3.fromRGB(255, 255, 255)
	UIStroke44.Transparency = 0.85
	TextLabel33.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke39.Color = Color3.fromRGB(255, 255, 255)
	UIStroke39.Transparency = 0.85
	TextLabel28.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke24.Color = Color3.fromRGB(255, 255, 255)
	UIStroke24.Transparency = 0.85
	TextLabel13.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke28.Color = Color3.fromRGB(255, 255, 255)
	UIStroke28.Transparency = 0.85
	TextLabel17.TextColor3 = Color3.fromRGB(150, 150, 160)
end)
local TextButton33 = Instance.new("TextButton")
TextButton33.Name = "Gengar"
TextButton33.LayoutOrder = 22
TextButton33.Text = ""
TextButton33.AutoButtonColor = false
TextButton33.BackgroundColor3 = Color3.fromRGB(10, 10, 13)
TextButton33.BackgroundTransparency = 0.25
TextButton33.BorderSizePixel = 0
TextButton33.Parent = Frame35
local UICorner99 = Instance.new("UICorner", TextButton33)
UICorner99.CornerRadius = UDim.new(0, 10)
local UIStroke44 = Instance.new("UIStroke")
UIStroke44.Thickness = 1.5
UIStroke44.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke44.Parent = TextButton33
local ImageLabel34 = Instance.new("ImageLabel")
ImageLabel34.BackgroundTransparency = 1
ImageLabel34.AnchorPoint = Vector2.new(0.5, 0)
ImageLabel34.Position = UDim2.new(0.5, 0, 0, 5)
ImageLabel34.Size = UDim2.fromOffset(56, 56)
ImageLabel34.Image = "rbxassetid://11759293285"
ImageLabel34.ScaleType = Enum.ScaleType.Stretch
ImageLabel34.Parent = TextButton33
local TextLabel33 = Instance.new("TextLabel")
TextLabel33.BackgroundTransparency = 1
TextLabel33.AnchorPoint = Vector2.new(0.5, 1)
TextLabel33.Position = UDim2.new(0.5, 0, 1, -4)
TextLabel33.Size = UDim2.new(1, -6, 0, 18)
TextLabel33.Font = Enum.Font.GothamBold
TextLabel33.TextSize = 10
TextLabel33.TextWrapped = true
TextLabel33.Text = "Gengar"
TextLabel33.Parent = TextButton33
TextButton33.MouseButton1Click:Connect(function()
	connection83:Disconnect()
	ScreenGui33:Destroy()
	UserInputService.MouseIconEnabled = UserInputService.MouseIconEnabled
	Players.LocalPlayer.Character:FindFirstChild("Gun")
	mouse.Icon = "rbxassetid://79658449"
	local ScreenGui34 = Instance.new("ScreenGui")
	ScreenGui34.Name = "FVLCrosshair"
	ScreenGui34.ResetOnSpawn = false
	ScreenGui34.IgnoreGuiInset = true
	ScreenGui34.DisplayOrder = 10000
	ScreenGui34.Parent = CoreGui
	local ImageLabel68 = Instance.new("ImageLabel")
	ImageLabel68.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel68.BackgroundTransparency = 1
	ImageLabel68.Image = "rbxassetid://11759293285"
	ImageLabel68.Size = UDim2.fromOffset(50, 50)
	ImageLabel68.ScaleType = Enum.ScaleType.Stretch
	ImageLabel68.Parent = ScreenGui34
	local connection84 = RunService.RenderStepped:Connect(function(deltaTime32)
	end)
	UIStroke47.Color = Color3.fromRGB(255, 255, 255)
	UIStroke47.Transparency = 0.85
	TextLabel36.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke51.Color = Color3.fromRGB(255, 255, 255)
	UIStroke51.Transparency = 0.85
	TextLabel40.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke35.Color = Color3.fromRGB(255, 255, 255)
	UIStroke35.Transparency = 0.85
	TextLabel24.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke48.Color = Color3.fromRGB(255, 255, 255)
	UIStroke48.Transparency = 0.85
	TextLabel37.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke38.Color = Color3.fromRGB(255, 255, 255)
	UIStroke38.Transparency = 0.85
	TextLabel27.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke29.Color = Color3.fromRGB(255, 255, 255)
	UIStroke29.Transparency = 0.85
	TextLabel18.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke37.Color = Color3.fromRGB(255, 255, 255)
	UIStroke37.Transparency = 0.85
	TextLabel26.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke46.Color = Color3.fromRGB(255, 255, 255)
	UIStroke46.Transparency = 0.85
	TextLabel35.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke45.Color = Color3.fromRGB(255, 255, 255)
	UIStroke45.Transparency = 0.85
	TextLabel34.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke40.Color = Color3.fromRGB(255, 255, 255)
	UIStroke40.Transparency = 0.85
	TextLabel29.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke27.Color = Color3.fromRGB(255, 255, 255)
	UIStroke27.Transparency = 0.85
	TextLabel16.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke43.Color = Color3.fromRGB(255, 255, 255)
	UIStroke43.Transparency = 0.85
	TextLabel32.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke36.Color = Color3.fromRGB(255, 255, 255)
	UIStroke36.Transparency = 0.85
	TextLabel25.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke49.Color = Color3.fromRGB(255, 255, 255)
	UIStroke49.Transparency = 0.85
	TextLabel38.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke33.Color = Color3.fromRGB(255, 255, 255)
	UIStroke33.Transparency = 0.85
	TextLabel22.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke34.Color = Color3.fromRGB(255, 255, 255)
	UIStroke34.Transparency = 0.85
	TextLabel23.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke26.Color = Color3.fromRGB(255, 255, 255)
	UIStroke26.Transparency = 0.85
	TextLabel15.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke50.Color = Color3.fromRGB(255, 255, 255)
	UIStroke50.Transparency = 0.85
	TextLabel39.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke25.Color = Color3.fromRGB(255, 255, 255)
	UIStroke25.Transparency = 0.85
	TextLabel14.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke42.Color = Color3.fromRGB(255, 255, 255)
	UIStroke42.Transparency = 0.85
	TextLabel31.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke30.Color = Color3.fromRGB(255, 255, 255)
	UIStroke30.Transparency = 0.85
	TextLabel19.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke53.Color = Color3.fromRGB(255, 255, 255)
	UIStroke53.Transparency = 0.85
	TextLabel42.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke55.Color = Color3.fromRGB(255, 255, 255)
	UIStroke55.Transparency = 0.85
	TextLabel44.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke54.Color = Color3.fromRGB(255, 255, 255)
	UIStroke54.Transparency = 0.85
	TextLabel43.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke41.Color = Color3.fromRGB(255, 255, 255)
	UIStroke41.Transparency = 0.85
	TextLabel30.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke52.Color = Color3.fromRGB(255, 255, 255)
	UIStroke52.Transparency = 0.85
	TextLabel41.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke31.Color = Color3.fromRGB(255, 255, 255)
	UIStroke31.Transparency = 0.85
	TextLabel20.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke23.Color = Color3.fromRGB(255, 255, 255)
	UIStroke23.Transparency = 0.85
	TextLabel12.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke32.Color = Color3.fromRGB(255, 255, 255)
	UIStroke32.Transparency = 0.85
	TextLabel21.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke44.Color = Color3.fromHex("#EC4899")
	UIStroke44.Transparency = 0.1
	TextLabel33.TextColor3 = Color3.fromRGB(240, 240, 246)
	UIStroke39.Color = Color3.fromRGB(255, 255, 255)
	UIStroke39.Transparency = 0.85
	TextLabel28.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke24.Color = Color3.fromRGB(255, 255, 255)
	UIStroke24.Transparency = 0.85
	TextLabel13.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke28.Color = Color3.fromRGB(255, 255, 255)
	UIStroke28.Transparency = 0.85
	TextLabel17.TextColor3 = Color3.fromRGB(150, 150, 160)
end)
local TextButton34 = Instance.new("TextButton")
TextButton34.Name = "Bunny"
TextButton34.LayoutOrder = 23
TextButton34.Text = ""
TextButton34.AutoButtonColor = false
TextButton34.BackgroundColor3 = Color3.fromRGB(10, 10, 13)
TextButton34.BackgroundTransparency = 0.25
TextButton34.BorderSizePixel = 0
TextButton34.Parent = Frame35
local UICorner100 = Instance.new("UICorner", TextButton34)
UICorner100.CornerRadius = UDim.new(0, 10)
local UIStroke45 = Instance.new("UIStroke")
UIStroke45.Thickness = 1.5
UIStroke45.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke45.Parent = TextButton34
local ImageLabel35 = Instance.new("ImageLabel")
ImageLabel35.BackgroundTransparency = 1
ImageLabel35.AnchorPoint = Vector2.new(0.5, 0)
ImageLabel35.Position = UDim2.new(0.5, 0, 0, 5)
ImageLabel35.Size = UDim2.fromOffset(56, 56)
ImageLabel35.Image = "rbxassetid://1912438810"
ImageLabel35.ScaleType = Enum.ScaleType.Stretch
ImageLabel35.Parent = TextButton34
local TextLabel34 = Instance.new("TextLabel")
TextLabel34.BackgroundTransparency = 1
TextLabel34.AnchorPoint = Vector2.new(0.5, 1)
TextLabel34.Position = UDim2.new(0.5, 0, 1, -4)
TextLabel34.Size = UDim2.new(1, -6, 0, 18)
TextLabel34.Font = Enum.Font.GothamBold
TextLabel34.TextSize = 10
TextLabel34.TextWrapped = true
TextLabel34.Text = "Bunny"
TextLabel34.Parent = TextButton34
TextButton34.MouseButton1Click:Connect(function()
	connection84:Disconnect()
	ScreenGui34:Destroy()
	UserInputService.MouseIconEnabled = UserInputService.MouseIconEnabled
	Players.LocalPlayer.Character:FindFirstChild("Gun")
	mouse.Icon = "rbxassetid://79658449"
	local ScreenGui35 = Instance.new("ScreenGui")
	ScreenGui35.Name = "FVLCrosshair"
	ScreenGui35.ResetOnSpawn = false
	ScreenGui35.IgnoreGuiInset = true
	ScreenGui35.DisplayOrder = 10000
	ScreenGui35.Parent = CoreGui
	local ImageLabel69 = Instance.new("ImageLabel")
	ImageLabel69.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel69.BackgroundTransparency = 1
	ImageLabel69.Image = "rbxassetid://1912438810"
	ImageLabel69.Size = UDim2.fromOffset(50, 50)
	ImageLabel69.ScaleType = Enum.ScaleType.Stretch
	ImageLabel69.Parent = ScreenGui35
	local connection85 = RunService.RenderStepped:Connect(function(deltaTime33)
	end)
	UIStroke47.Color = Color3.fromRGB(255, 255, 255)
	UIStroke47.Transparency = 0.85
	TextLabel36.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke51.Color = Color3.fromRGB(255, 255, 255)
	UIStroke51.Transparency = 0.85
	TextLabel40.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke35.Color = Color3.fromRGB(255, 255, 255)
	UIStroke35.Transparency = 0.85
	TextLabel24.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke48.Color = Color3.fromRGB(255, 255, 255)
	UIStroke48.Transparency = 0.85
	TextLabel37.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke38.Color = Color3.fromRGB(255, 255, 255)
	UIStroke38.Transparency = 0.85
	TextLabel27.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke29.Color = Color3.fromRGB(255, 255, 255)
	UIStroke29.Transparency = 0.85
	TextLabel18.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke37.Color = Color3.fromRGB(255, 255, 255)
	UIStroke37.Transparency = 0.85
	TextLabel26.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke46.Color = Color3.fromRGB(255, 255, 255)
	UIStroke46.Transparency = 0.85
	TextLabel35.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke45.Color = Color3.fromHex("#EC4899")
	UIStroke45.Transparency = 0.1
	TextLabel34.TextColor3 = Color3.fromRGB(240, 240, 246)
	UIStroke40.Color = Color3.fromRGB(255, 255, 255)
	UIStroke40.Transparency = 0.85
	TextLabel29.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke27.Color = Color3.fromRGB(255, 255, 255)
	UIStroke27.Transparency = 0.85
	TextLabel16.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke43.Color = Color3.fromRGB(255, 255, 255)
	UIStroke43.Transparency = 0.85
	TextLabel32.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke36.Color = Color3.fromRGB(255, 255, 255)
	UIStroke36.Transparency = 0.85
	TextLabel25.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke49.Color = Color3.fromRGB(255, 255, 255)
	UIStroke49.Transparency = 0.85
	TextLabel38.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke33.Color = Color3.fromRGB(255, 255, 255)
	UIStroke33.Transparency = 0.85
	TextLabel22.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke34.Color = Color3.fromRGB(255, 255, 255)
	UIStroke34.Transparency = 0.85
	TextLabel23.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke26.Color = Color3.fromRGB(255, 255, 255)
	UIStroke26.Transparency = 0.85
	TextLabel15.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke50.Color = Color3.fromRGB(255, 255, 255)
	UIStroke50.Transparency = 0.85
	TextLabel39.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke25.Color = Color3.fromRGB(255, 255, 255)
	UIStroke25.Transparency = 0.85
	TextLabel14.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke42.Color = Color3.fromRGB(255, 255, 255)
	UIStroke42.Transparency = 0.85
	TextLabel31.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke30.Color = Color3.fromRGB(255, 255, 255)
	UIStroke30.Transparency = 0.85
	TextLabel19.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke53.Color = Color3.fromRGB(255, 255, 255)
	UIStroke53.Transparency = 0.85
	TextLabel42.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke55.Color = Color3.fromRGB(255, 255, 255)
	UIStroke55.Transparency = 0.85
	TextLabel44.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke54.Color = Color3.fromRGB(255, 255, 255)
	UIStroke54.Transparency = 0.85
	TextLabel43.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke41.Color = Color3.fromRGB(255, 255, 255)
	UIStroke41.Transparency = 0.85
	TextLabel30.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke52.Color = Color3.fromRGB(255, 255, 255)
	UIStroke52.Transparency = 0.85
	TextLabel41.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke31.Color = Color3.fromRGB(255, 255, 255)
	UIStroke31.Transparency = 0.85
	TextLabel20.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke23.Color = Color3.fromRGB(255, 255, 255)
	UIStroke23.Transparency = 0.85
	TextLabel12.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke32.Color = Color3.fromRGB(255, 255, 255)
	UIStroke32.Transparency = 0.85
	TextLabel21.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke44.Color = Color3.fromRGB(255, 255, 255)
	UIStroke44.Transparency = 0.85
	TextLabel33.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke39.Color = Color3.fromRGB(255, 255, 255)
	UIStroke39.Transparency = 0.85
	TextLabel28.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke24.Color = Color3.fromRGB(255, 255, 255)
	UIStroke24.Transparency = 0.85
	TextLabel13.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke28.Color = Color3.fromRGB(255, 255, 255)
	UIStroke28.Transparency = 0.85
	TextLabel17.TextColor3 = Color3.fromRGB(150, 150, 160)
end)
local TextButton35 = Instance.new("TextButton")
TextButton35.Name = "Vamp Face"
TextButton35.LayoutOrder = 24
TextButton35.Text = ""
TextButton35.AutoButtonColor = false
TextButton35.BackgroundColor3 = Color3.fromRGB(10, 10, 13)
TextButton35.BackgroundTransparency = 0.25
TextButton35.BorderSizePixel = 0
TextButton35.Parent = Frame35
local UICorner101 = Instance.new("UICorner", TextButton35)
UICorner101.CornerRadius = UDim.new(0, 10)
local UIStroke46 = Instance.new("UIStroke")
UIStroke46.Thickness = 1.5
UIStroke46.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke46.Parent = TextButton35
local ImageLabel36 = Instance.new("ImageLabel")
ImageLabel36.BackgroundTransparency = 1
ImageLabel36.AnchorPoint = Vector2.new(0.5, 0)
ImageLabel36.Position = UDim2.new(0.5, 0, 0, 5)
ImageLabel36.Size = UDim2.fromOffset(56, 56)
ImageLabel36.Image = "rbxassetid://11734893655"
ImageLabel36.ScaleType = Enum.ScaleType.Stretch
ImageLabel36.Parent = TextButton35
local TextLabel35 = Instance.new("TextLabel")
TextLabel35.BackgroundTransparency = 1
TextLabel35.AnchorPoint = Vector2.new(0.5, 1)
TextLabel35.Position = UDim2.new(0.5, 0, 1, -4)
TextLabel35.Size = UDim2.new(1, -6, 0, 18)
TextLabel35.Font = Enum.Font.GothamBold
TextLabel35.TextSize = 10
TextLabel35.TextWrapped = true
TextLabel35.Text = "Vamp Face"
TextLabel35.Parent = TextButton35
TextButton35.MouseButton1Click:Connect(function()
	connection85:Disconnect()
	ScreenGui35:Destroy()
	UserInputService.MouseIconEnabled = UserInputService.MouseIconEnabled
	Players.LocalPlayer.Character:FindFirstChild("Gun")
	mouse.Icon = "rbxassetid://79658449"
	local ScreenGui36 = Instance.new("ScreenGui")
	ScreenGui36.Name = "FVLCrosshair"
	ScreenGui36.ResetOnSpawn = false
	ScreenGui36.IgnoreGuiInset = true
	ScreenGui36.DisplayOrder = 10000
	ScreenGui36.Parent = CoreGui
	local ImageLabel70 = Instance.new("ImageLabel")
	ImageLabel70.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel70.BackgroundTransparency = 1
	ImageLabel70.Image = "rbxassetid://11734893655"
	ImageLabel70.Size = UDim2.fromOffset(50, 50)
	ImageLabel70.ScaleType = Enum.ScaleType.Stretch
	ImageLabel70.Parent = ScreenGui36
	local connection86 = RunService.RenderStepped:Connect(function(deltaTime34)
	end)
	UIStroke47.Color = Color3.fromRGB(255, 255, 255)
	UIStroke47.Transparency = 0.85
	TextLabel36.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke51.Color = Color3.fromRGB(255, 255, 255)
	UIStroke51.Transparency = 0.85
	TextLabel40.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke35.Color = Color3.fromRGB(255, 255, 255)
	UIStroke35.Transparency = 0.85
	TextLabel24.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke48.Color = Color3.fromRGB(255, 255, 255)
	UIStroke48.Transparency = 0.85
	TextLabel37.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke38.Color = Color3.fromRGB(255, 255, 255)
	UIStroke38.Transparency = 0.85
	TextLabel27.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke29.Color = Color3.fromRGB(255, 255, 255)
	UIStroke29.Transparency = 0.85
	TextLabel18.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke37.Color = Color3.fromRGB(255, 255, 255)
	UIStroke37.Transparency = 0.85
	TextLabel26.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke46.Color = Color3.fromHex("#EC4899")
	UIStroke46.Transparency = 0.1
	TextLabel35.TextColor3 = Color3.fromRGB(240, 240, 246)
	UIStroke45.Color = Color3.fromRGB(255, 255, 255)
	UIStroke45.Transparency = 0.85
	TextLabel34.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke40.Color = Color3.fromRGB(255, 255, 255)
	UIStroke40.Transparency = 0.85
	TextLabel29.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke27.Color = Color3.fromRGB(255, 255, 255)
	UIStroke27.Transparency = 0.85
	TextLabel16.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke43.Color = Color3.fromRGB(255, 255, 255)
	UIStroke43.Transparency = 0.85
	TextLabel32.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke36.Color = Color3.fromRGB(255, 255, 255)
	UIStroke36.Transparency = 0.85
	TextLabel25.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke49.Color = Color3.fromRGB(255, 255, 255)
	UIStroke49.Transparency = 0.85
	TextLabel38.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke33.Color = Color3.fromRGB(255, 255, 255)
	UIStroke33.Transparency = 0.85
	TextLabel22.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke34.Color = Color3.fromRGB(255, 255, 255)
	UIStroke34.Transparency = 0.85
	TextLabel23.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke26.Color = Color3.fromRGB(255, 255, 255)
	UIStroke26.Transparency = 0.85
	TextLabel15.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke50.Color = Color3.fromRGB(255, 255, 255)
	UIStroke50.Transparency = 0.85
	TextLabel39.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke25.Color = Color3.fromRGB(255, 255, 255)
	UIStroke25.Transparency = 0.85
	TextLabel14.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke42.Color = Color3.fromRGB(255, 255, 255)
	UIStroke42.Transparency = 0.85
	TextLabel31.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke30.Color = Color3.fromRGB(255, 255, 255)
	UIStroke30.Transparency = 0.85
	TextLabel19.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke53.Color = Color3.fromRGB(255, 255, 255)
	UIStroke53.Transparency = 0.85
	TextLabel42.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke55.Color = Color3.fromRGB(255, 255, 255)
	UIStroke55.Transparency = 0.85
	TextLabel44.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke54.Color = Color3.fromRGB(255, 255, 255)
	UIStroke54.Transparency = 0.85
	TextLabel43.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke41.Color = Color3.fromRGB(255, 255, 255)
	UIStroke41.Transparency = 0.85
	TextLabel30.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke52.Color = Color3.fromRGB(255, 255, 255)
	UIStroke52.Transparency = 0.85
	TextLabel41.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke31.Color = Color3.fromRGB(255, 255, 255)
	UIStroke31.Transparency = 0.85
	TextLabel20.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke23.Color = Color3.fromRGB(255, 255, 255)
	UIStroke23.Transparency = 0.85
	TextLabel12.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke32.Color = Color3.fromRGB(255, 255, 255)
	UIStroke32.Transparency = 0.85
	TextLabel21.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke44.Color = Color3.fromRGB(255, 255, 255)
	UIStroke44.Transparency = 0.85
	TextLabel33.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke39.Color = Color3.fromRGB(255, 255, 255)
	UIStroke39.Transparency = 0.85
	TextLabel28.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke24.Color = Color3.fromRGB(255, 255, 255)
	UIStroke24.Transparency = 0.85
	TextLabel13.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke28.Color = Color3.fromRGB(255, 255, 255)
	UIStroke28.Transparency = 0.85
	TextLabel17.TextColor3 = Color3.fromRGB(150, 150, 160)
end)
local TextButton36 = Instance.new("TextButton")
TextButton36.Name = "Osu"
TextButton36.LayoutOrder = 25
TextButton36.Text = ""
TextButton36.AutoButtonColor = false
TextButton36.BackgroundColor3 = Color3.fromRGB(10, 10, 13)
TextButton36.BackgroundTransparency = 0.25
TextButton36.BorderSizePixel = 0
TextButton36.Parent = Frame35
local UICorner102 = Instance.new("UICorner", TextButton36)
UICorner102.CornerRadius = UDim.new(0, 10)
local UIStroke47 = Instance.new("UIStroke")
UIStroke47.Thickness = 1.5
UIStroke47.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke47.Parent = TextButton36
local ImageLabel37 = Instance.new("ImageLabel")
ImageLabel37.BackgroundTransparency = 1
ImageLabel37.AnchorPoint = Vector2.new(0.5, 0)
ImageLabel37.Position = UDim2.new(0.5, 0, 0, 5)
ImageLabel37.Size = UDim2.fromOffset(56, 56)
ImageLabel37.Image = "rbxassetid://8390115370"
ImageLabel37.ScaleType = Enum.ScaleType.Stretch
ImageLabel37.Parent = TextButton36
local TextLabel36 = Instance.new("TextLabel")
TextLabel36.BackgroundTransparency = 1
TextLabel36.AnchorPoint = Vector2.new(0.5, 1)
TextLabel36.Position = UDim2.new(0.5, 0, 1, -4)
TextLabel36.Size = UDim2.new(1, -6, 0, 18)
TextLabel36.Font = Enum.Font.GothamBold
TextLabel36.TextSize = 10
TextLabel36.TextWrapped = true
TextLabel36.Text = "Osu"
TextLabel36.Parent = TextButton36
TextButton36.MouseButton1Click:Connect(function()
	connection86:Disconnect()
	ScreenGui36:Destroy()
	UserInputService.MouseIconEnabled = UserInputService.MouseIconEnabled
	Players.LocalPlayer.Character:FindFirstChild("Gun")
	mouse.Icon = "rbxassetid://79658449"
	local ScreenGui37 = Instance.new("ScreenGui")
	ScreenGui37.Name = "FVLCrosshair"
	ScreenGui37.ResetOnSpawn = false
	ScreenGui37.IgnoreGuiInset = true
	ScreenGui37.DisplayOrder = 10000
	ScreenGui37.Parent = CoreGui
	local ImageLabel71 = Instance.new("ImageLabel")
	ImageLabel71.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel71.BackgroundTransparency = 1
	ImageLabel71.Image = "rbxassetid://8390115370"
	ImageLabel71.Size = UDim2.fromOffset(50, 50)
	ImageLabel71.ScaleType = Enum.ScaleType.Stretch
	ImageLabel71.Parent = ScreenGui37
	local connection87 = RunService.RenderStepped:Connect(function(deltaTime35)
	end)
	UIStroke47.Color = Color3.fromHex("#EC4899")
	UIStroke47.Transparency = 0.1
	TextLabel36.TextColor3 = Color3.fromRGB(240, 240, 246)
	UIStroke51.Color = Color3.fromRGB(255, 255, 255)
	UIStroke51.Transparency = 0.85
	TextLabel40.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke35.Color = Color3.fromRGB(255, 255, 255)
	UIStroke35.Transparency = 0.85
	TextLabel24.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke48.Color = Color3.fromRGB(255, 255, 255)
	UIStroke48.Transparency = 0.85
	TextLabel37.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke38.Color = Color3.fromRGB(255, 255, 255)
	UIStroke38.Transparency = 0.85
	TextLabel27.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke29.Color = Color3.fromRGB(255, 255, 255)
	UIStroke29.Transparency = 0.85
	TextLabel18.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke37.Color = Color3.fromRGB(255, 255, 255)
	UIStroke37.Transparency = 0.85
	TextLabel26.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke46.Color = Color3.fromRGB(255, 255, 255)
	UIStroke46.Transparency = 0.85
	TextLabel35.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke45.Color = Color3.fromRGB(255, 255, 255)
	UIStroke45.Transparency = 0.85
	TextLabel34.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke40.Color = Color3.fromRGB(255, 255, 255)
	UIStroke40.Transparency = 0.85
	TextLabel29.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke27.Color = Color3.fromRGB(255, 255, 255)
	UIStroke27.Transparency = 0.85
	TextLabel16.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke43.Color = Color3.fromRGB(255, 255, 255)
	UIStroke43.Transparency = 0.85
	TextLabel32.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke36.Color = Color3.fromRGB(255, 255, 255)
	UIStroke36.Transparency = 0.85
	TextLabel25.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke49.Color = Color3.fromRGB(255, 255, 255)
	UIStroke49.Transparency = 0.85
	TextLabel38.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke33.Color = Color3.fromRGB(255, 255, 255)
	UIStroke33.Transparency = 0.85
	TextLabel22.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke34.Color = Color3.fromRGB(255, 255, 255)
	UIStroke34.Transparency = 0.85
	TextLabel23.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke26.Color = Color3.fromRGB(255, 255, 255)
	UIStroke26.Transparency = 0.85
	TextLabel15.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke50.Color = Color3.fromRGB(255, 255, 255)
	UIStroke50.Transparency = 0.85
	TextLabel39.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke25.Color = Color3.fromRGB(255, 255, 255)
	UIStroke25.Transparency = 0.85
	TextLabel14.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke42.Color = Color3.fromRGB(255, 255, 255)
	UIStroke42.Transparency = 0.85
	TextLabel31.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke30.Color = Color3.fromRGB(255, 255, 255)
	UIStroke30.Transparency = 0.85
	TextLabel19.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke53.Color = Color3.fromRGB(255, 255, 255)
	UIStroke53.Transparency = 0.85
	TextLabel42.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke55.Color = Color3.fromRGB(255, 255, 255)
	UIStroke55.Transparency = 0.85
	TextLabel44.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke54.Color = Color3.fromRGB(255, 255, 255)
	UIStroke54.Transparency = 0.85
	TextLabel43.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke41.Color = Color3.fromRGB(255, 255, 255)
	UIStroke41.Transparency = 0.85
	TextLabel30.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke52.Color = Color3.fromRGB(255, 255, 255)
	UIStroke52.Transparency = 0.85
	TextLabel41.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke31.Color = Color3.fromRGB(255, 255, 255)
	UIStroke31.Transparency = 0.85
	TextLabel20.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke23.Color = Color3.fromRGB(255, 255, 255)
	UIStroke23.Transparency = 0.85
	TextLabel12.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke32.Color = Color3.fromRGB(255, 255, 255)
	UIStroke32.Transparency = 0.85
	TextLabel21.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke44.Color = Color3.fromRGB(255, 255, 255)
	UIStroke44.Transparency = 0.85
	TextLabel33.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke39.Color = Color3.fromRGB(255, 255, 255)
	UIStroke39.Transparency = 0.85
	TextLabel28.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke24.Color = Color3.fromRGB(255, 255, 255)
	UIStroke24.Transparency = 0.85
	TextLabel13.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke28.Color = Color3.fromRGB(255, 255, 255)
	UIStroke28.Transparency = 0.85
	TextLabel17.TextColor3 = Color3.fromRGB(150, 150, 160)
end)
local TextButton37 = Instance.new("TextButton")
TextButton37.Name = "Troll"
TextButton37.LayoutOrder = 26
TextButton37.Text = ""
TextButton37.AutoButtonColor = false
TextButton37.BackgroundColor3 = Color3.fromRGB(10, 10, 13)
TextButton37.BackgroundTransparency = 0.25
TextButton37.BorderSizePixel = 0
TextButton37.Parent = Frame35
local UICorner103 = Instance.new("UICorner", TextButton37)
UICorner103.CornerRadius = UDim.new(0, 10)
local UIStroke48 = Instance.new("UIStroke")
UIStroke48.Thickness = 1.5
UIStroke48.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke48.Parent = TextButton37
local ImageLabel38 = Instance.new("ImageLabel")
ImageLabel38.BackgroundTransparency = 1
ImageLabel38.AnchorPoint = Vector2.new(0.5, 0)
ImageLabel38.Position = UDim2.new(0.5, 0, 0, 5)
ImageLabel38.Size = UDim2.fromOffset(56, 56)
ImageLabel38.Image = "rbxassetid://12438907427"
ImageLabel38.ScaleType = Enum.ScaleType.Stretch
ImageLabel38.Parent = TextButton37
local TextLabel37 = Instance.new("TextLabel")
TextLabel37.BackgroundTransparency = 1
TextLabel37.AnchorPoint = Vector2.new(0.5, 1)
TextLabel37.Position = UDim2.new(0.5, 0, 1, -4)
TextLabel37.Size = UDim2.new(1, -6, 0, 18)
TextLabel37.Font = Enum.Font.GothamBold
TextLabel37.TextSize = 10
TextLabel37.TextWrapped = true
TextLabel37.Text = "Troll"
TextLabel37.Parent = TextButton37
TextButton37.MouseButton1Click:Connect(function()
	connection87:Disconnect()
	ScreenGui37:Destroy()
	UserInputService.MouseIconEnabled = UserInputService.MouseIconEnabled
	Players.LocalPlayer.Character:FindFirstChild("Gun")
	mouse.Icon = "rbxassetid://79658449"
	local ScreenGui38 = Instance.new("ScreenGui")
	ScreenGui38.Name = "FVLCrosshair"
	ScreenGui38.ResetOnSpawn = false
	ScreenGui38.IgnoreGuiInset = true
	ScreenGui38.DisplayOrder = 10000
	ScreenGui38.Parent = CoreGui
	local ImageLabel72 = Instance.new("ImageLabel")
	ImageLabel72.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel72.BackgroundTransparency = 1
	ImageLabel72.Image = "rbxassetid://12438907427"
	ImageLabel72.Size = UDim2.fromOffset(50, 50)
	ImageLabel72.ScaleType = Enum.ScaleType.Stretch
	ImageLabel72.Parent = ScreenGui38
	local connection88 = RunService.RenderStepped:Connect(function(deltaTime36)
	end)
	UIStroke47.Color = Color3.fromRGB(255, 255, 255)
	UIStroke47.Transparency = 0.85
	TextLabel36.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke51.Color = Color3.fromRGB(255, 255, 255)
	UIStroke51.Transparency = 0.85
	TextLabel40.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke35.Color = Color3.fromRGB(255, 255, 255)
	UIStroke35.Transparency = 0.85
	TextLabel24.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke48.Color = Color3.fromHex("#EC4899")
	UIStroke48.Transparency = 0.1
	TextLabel37.TextColor3 = Color3.fromRGB(240, 240, 246)
	UIStroke38.Color = Color3.fromRGB(255, 255, 255)
	UIStroke38.Transparency = 0.85
	TextLabel27.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke29.Color = Color3.fromRGB(255, 255, 255)
	UIStroke29.Transparency = 0.85
	TextLabel18.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke37.Color = Color3.fromRGB(255, 255, 255)
	UIStroke37.Transparency = 0.85
	TextLabel26.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke46.Color = Color3.fromRGB(255, 255, 255)
	UIStroke46.Transparency = 0.85
	TextLabel35.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke45.Color = Color3.fromRGB(255, 255, 255)
	UIStroke45.Transparency = 0.85
	TextLabel34.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke40.Color = Color3.fromRGB(255, 255, 255)
	UIStroke40.Transparency = 0.85
	TextLabel29.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke27.Color = Color3.fromRGB(255, 255, 255)
	UIStroke27.Transparency = 0.85
	TextLabel16.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke43.Color = Color3.fromRGB(255, 255, 255)
	UIStroke43.Transparency = 0.85
	TextLabel32.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke36.Color = Color3.fromRGB(255, 255, 255)
	UIStroke36.Transparency = 0.85
	TextLabel25.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke49.Color = Color3.fromRGB(255, 255, 255)
	UIStroke49.Transparency = 0.85
	TextLabel38.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke33.Color = Color3.fromRGB(255, 255, 255)
	UIStroke33.Transparency = 0.85
	TextLabel22.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke34.Color = Color3.fromRGB(255, 255, 255)
	UIStroke34.Transparency = 0.85
	TextLabel23.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke26.Color = Color3.fromRGB(255, 255, 255)
	UIStroke26.Transparency = 0.85
	TextLabel15.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke50.Color = Color3.fromRGB(255, 255, 255)
	UIStroke50.Transparency = 0.85
	TextLabel39.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke25.Color = Color3.fromRGB(255, 255, 255)
	UIStroke25.Transparency = 0.85
	TextLabel14.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke42.Color = Color3.fromRGB(255, 255, 255)
	UIStroke42.Transparency = 0.85
	TextLabel31.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke30.Color = Color3.fromRGB(255, 255, 255)
	UIStroke30.Transparency = 0.85
	TextLabel19.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke53.Color = Color3.fromRGB(255, 255, 255)
	UIStroke53.Transparency = 0.85
	TextLabel42.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke55.Color = Color3.fromRGB(255, 255, 255)
	UIStroke55.Transparency = 0.85
	TextLabel44.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke54.Color = Color3.fromRGB(255, 255, 255)
	UIStroke54.Transparency = 0.85
	TextLabel43.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke41.Color = Color3.fromRGB(255, 255, 255)
	UIStroke41.Transparency = 0.85
	TextLabel30.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke52.Color = Color3.fromRGB(255, 255, 255)
	UIStroke52.Transparency = 0.85
	TextLabel41.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke31.Color = Color3.fromRGB(255, 255, 255)
	UIStroke31.Transparency = 0.85
	TextLabel20.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke23.Color = Color3.fromRGB(255, 255, 255)
	UIStroke23.Transparency = 0.85
	TextLabel12.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke32.Color = Color3.fromRGB(255, 255, 255)
	UIStroke32.Transparency = 0.85
	TextLabel21.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke44.Color = Color3.fromRGB(255, 255, 255)
	UIStroke44.Transparency = 0.85
	TextLabel33.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke39.Color = Color3.fromRGB(255, 255, 255)
	UIStroke39.Transparency = 0.85
	TextLabel28.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke24.Color = Color3.fromRGB(255, 255, 255)
	UIStroke24.Transparency = 0.85
	TextLabel13.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke28.Color = Color3.fromRGB(255, 255, 255)
	UIStroke28.Transparency = 0.85
	TextLabel17.TextColor3 = Color3.fromRGB(150, 150, 160)
end)
local TextButton38 = Instance.new("TextButton")
TextButton38.Name = "Glowing Circle"
TextButton38.LayoutOrder = 27
TextButton38.Text = ""
TextButton38.AutoButtonColor = false
TextButton38.BackgroundColor3 = Color3.fromRGB(10, 10, 13)
TextButton38.BackgroundTransparency = 0.25
TextButton38.BorderSizePixel = 0
TextButton38.Parent = Frame35
local UICorner104 = Instance.new("UICorner", TextButton38)
UICorner104.CornerRadius = UDim.new(0, 10)
local UIStroke49 = Instance.new("UIStroke")
UIStroke49.Thickness = 1.5
UIStroke49.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke49.Parent = TextButton38
local ImageLabel39 = Instance.new("ImageLabel")
ImageLabel39.BackgroundTransparency = 1
ImageLabel39.AnchorPoint = Vector2.new(0.5, 0)
ImageLabel39.Position = UDim2.new(0.5, 0, 0, 5)
ImageLabel39.Size = UDim2.fromOffset(56, 56)
ImageLabel39.Image = "rbxassetid://10891594349"
ImageLabel39.ScaleType = Enum.ScaleType.Stretch
ImageLabel39.Parent = TextButton38
local TextLabel38 = Instance.new("TextLabel")
TextLabel38.BackgroundTransparency = 1
TextLabel38.AnchorPoint = Vector2.new(0.5, 1)
TextLabel38.Position = UDim2.new(0.5, 0, 1, -4)
TextLabel38.Size = UDim2.new(1, -6, 0, 18)
TextLabel38.Font = Enum.Font.GothamBold
TextLabel38.TextSize = 10
TextLabel38.TextWrapped = true
TextLabel38.Text = "Glowing Circle"
TextLabel38.Parent = TextButton38
TextButton38.MouseButton1Click:Connect(function()
	connection88:Disconnect()
	ScreenGui38:Destroy()
	UserInputService.MouseIconEnabled = UserInputService.MouseIconEnabled
	Players.LocalPlayer.Character:FindFirstChild("Gun")
	mouse.Icon = "rbxassetid://79658449"
	local ScreenGui39 = Instance.new("ScreenGui")
	ScreenGui39.Name = "FVLCrosshair"
	ScreenGui39.ResetOnSpawn = false
	ScreenGui39.IgnoreGuiInset = true
	ScreenGui39.DisplayOrder = 10000
	ScreenGui39.Parent = CoreGui
	local ImageLabel73 = Instance.new("ImageLabel")
	ImageLabel73.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel73.BackgroundTransparency = 1
	ImageLabel73.Image = "rbxassetid://10891594349"
	ImageLabel73.Size = UDim2.fromOffset(50, 50)
	ImageLabel73.ScaleType = Enum.ScaleType.Stretch
	ImageLabel73.Parent = ScreenGui39
	local connection89 = RunService.RenderStepped:Connect(function(deltaTime37)
	end)
	UIStroke47.Color = Color3.fromRGB(255, 255, 255)
	UIStroke47.Transparency = 0.85
	TextLabel36.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke51.Color = Color3.fromRGB(255, 255, 255)
	UIStroke51.Transparency = 0.85
	TextLabel40.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke35.Color = Color3.fromRGB(255, 255, 255)
	UIStroke35.Transparency = 0.85
	TextLabel24.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke48.Color = Color3.fromRGB(255, 255, 255)
	UIStroke48.Transparency = 0.85
	TextLabel37.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke38.Color = Color3.fromRGB(255, 255, 255)
	UIStroke38.Transparency = 0.85
	TextLabel27.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke29.Color = Color3.fromRGB(255, 255, 255)
	UIStroke29.Transparency = 0.85
	TextLabel18.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke37.Color = Color3.fromRGB(255, 255, 255)
	UIStroke37.Transparency = 0.85
	TextLabel26.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke46.Color = Color3.fromRGB(255, 255, 255)
	UIStroke46.Transparency = 0.85
	TextLabel35.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke45.Color = Color3.fromRGB(255, 255, 255)
	UIStroke45.Transparency = 0.85
	TextLabel34.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke40.Color = Color3.fromRGB(255, 255, 255)
	UIStroke40.Transparency = 0.85
	TextLabel29.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke27.Color = Color3.fromRGB(255, 255, 255)
	UIStroke27.Transparency = 0.85
	TextLabel16.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke43.Color = Color3.fromRGB(255, 255, 255)
	UIStroke43.Transparency = 0.85
	TextLabel32.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke36.Color = Color3.fromRGB(255, 255, 255)
	UIStroke36.Transparency = 0.85
	TextLabel25.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke49.Color = Color3.fromHex("#EC4899")
	UIStroke49.Transparency = 0.1
	TextLabel38.TextColor3 = Color3.fromRGB(240, 240, 246)
	UIStroke33.Color = Color3.fromRGB(255, 255, 255)
	UIStroke33.Transparency = 0.85
	TextLabel22.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke34.Color = Color3.fromRGB(255, 255, 255)
	UIStroke34.Transparency = 0.85
	TextLabel23.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke26.Color = Color3.fromRGB(255, 255, 255)
	UIStroke26.Transparency = 0.85
	TextLabel15.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke50.Color = Color3.fromRGB(255, 255, 255)
	UIStroke50.Transparency = 0.85
	TextLabel39.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke25.Color = Color3.fromRGB(255, 255, 255)
	UIStroke25.Transparency = 0.85
	TextLabel14.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke42.Color = Color3.fromRGB(255, 255, 255)
	UIStroke42.Transparency = 0.85
	TextLabel31.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke30.Color = Color3.fromRGB(255, 255, 255)
	UIStroke30.Transparency = 0.85
	TextLabel19.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke53.Color = Color3.fromRGB(255, 255, 255)
	UIStroke53.Transparency = 0.85
	TextLabel42.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke55.Color = Color3.fromRGB(255, 255, 255)
	UIStroke55.Transparency = 0.85
	TextLabel44.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke54.Color = Color3.fromRGB(255, 255, 255)
	UIStroke54.Transparency = 0.85
	TextLabel43.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke41.Color = Color3.fromRGB(255, 255, 255)
	UIStroke41.Transparency = 0.85
	TextLabel30.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke52.Color = Color3.fromRGB(255, 255, 255)
	UIStroke52.Transparency = 0.85
	TextLabel41.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke31.Color = Color3.fromRGB(255, 255, 255)
	UIStroke31.Transparency = 0.85
	TextLabel20.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke23.Color = Color3.fromRGB(255, 255, 255)
	UIStroke23.Transparency = 0.85
	TextLabel12.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke32.Color = Color3.fromRGB(255, 255, 255)
	UIStroke32.Transparency = 0.85
	TextLabel21.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke44.Color = Color3.fromRGB(255, 255, 255)
	UIStroke44.Transparency = 0.85
	TextLabel33.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke39.Color = Color3.fromRGB(255, 255, 255)
	UIStroke39.Transparency = 0.85
	TextLabel28.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke24.Color = Color3.fromRGB(255, 255, 255)
	UIStroke24.Transparency = 0.85
	TextLabel13.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke28.Color = Color3.fromRGB(255, 255, 255)
	UIStroke28.Transparency = 0.85
	TextLabel17.TextColor3 = Color3.fromRGB(150, 150, 160)
end)
local TextButton39 = Instance.new("TextButton")
TextButton39.Name = "Donut"
TextButton39.LayoutOrder = 28
TextButton39.Text = ""
TextButton39.AutoButtonColor = false
TextButton39.BackgroundColor3 = Color3.fromRGB(10, 10, 13)
TextButton39.BackgroundTransparency = 0.25
TextButton39.BorderSizePixel = 0
TextButton39.Parent = Frame35
local UICorner105 = Instance.new("UICorner", TextButton39)
UICorner105.CornerRadius = UDim.new(0, 10)
local UIStroke50 = Instance.new("UIStroke")
UIStroke50.Thickness = 1.5
UIStroke50.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke50.Parent = TextButton39
local ImageLabel40 = Instance.new("ImageLabel")
ImageLabel40.BackgroundTransparency = 1
ImageLabel40.AnchorPoint = Vector2.new(0.5, 0)
ImageLabel40.Position = UDim2.new(0.5, 0, 0, 5)
ImageLabel40.Size = UDim2.fromOffset(56, 56)
ImageLabel40.Image = "rbxassetid://11717104785"
ImageLabel40.ScaleType = Enum.ScaleType.Stretch
ImageLabel40.Parent = TextButton39
local TextLabel39 = Instance.new("TextLabel")
TextLabel39.BackgroundTransparency = 1
TextLabel39.AnchorPoint = Vector2.new(0.5, 1)
TextLabel39.Position = UDim2.new(0.5, 0, 1, -4)
TextLabel39.Size = UDim2.new(1, -6, 0, 18)
TextLabel39.Font = Enum.Font.GothamBold
TextLabel39.TextSize = 10
TextLabel39.TextWrapped = true
TextLabel39.Text = "Donut"
TextLabel39.Parent = TextButton39
TextButton39.MouseButton1Click:Connect(function()
	connection89:Disconnect()
	ScreenGui39:Destroy()
	UserInputService.MouseIconEnabled = UserInputService.MouseIconEnabled
	Players.LocalPlayer.Character:FindFirstChild("Gun")
	mouse.Icon = "rbxassetid://79658449"
	local ScreenGui40 = Instance.new("ScreenGui")
	ScreenGui40.Name = "FVLCrosshair"
	ScreenGui40.ResetOnSpawn = false
	ScreenGui40.IgnoreGuiInset = true
	ScreenGui40.DisplayOrder = 10000
	ScreenGui40.Parent = CoreGui
	local ImageLabel74 = Instance.new("ImageLabel")
	ImageLabel74.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel74.BackgroundTransparency = 1
	ImageLabel74.Image = "rbxassetid://11717104785"
	ImageLabel74.Size = UDim2.fromOffset(50, 50)
	ImageLabel74.ScaleType = Enum.ScaleType.Stretch
	ImageLabel74.Parent = ScreenGui40
	local connection90 = RunService.RenderStepped:Connect(function(deltaTime38)
	end)
	UIStroke47.Color = Color3.fromRGB(255, 255, 255)
	UIStroke47.Transparency = 0.85
	TextLabel36.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke51.Color = Color3.fromRGB(255, 255, 255)
	UIStroke51.Transparency = 0.85
	TextLabel40.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke35.Color = Color3.fromRGB(255, 255, 255)
	UIStroke35.Transparency = 0.85
	TextLabel24.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke48.Color = Color3.fromRGB(255, 255, 255)
	UIStroke48.Transparency = 0.85
	TextLabel37.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke38.Color = Color3.fromRGB(255, 255, 255)
	UIStroke38.Transparency = 0.85
	TextLabel27.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke29.Color = Color3.fromRGB(255, 255, 255)
	UIStroke29.Transparency = 0.85
	TextLabel18.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke37.Color = Color3.fromRGB(255, 255, 255)
	UIStroke37.Transparency = 0.85
	TextLabel26.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke46.Color = Color3.fromRGB(255, 255, 255)
	UIStroke46.Transparency = 0.85
	TextLabel35.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke45.Color = Color3.fromRGB(255, 255, 255)
	UIStroke45.Transparency = 0.85
	TextLabel34.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke40.Color = Color3.fromRGB(255, 255, 255)
	UIStroke40.Transparency = 0.85
	TextLabel29.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke27.Color = Color3.fromRGB(255, 255, 255)
	UIStroke27.Transparency = 0.85
	TextLabel16.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke43.Color = Color3.fromRGB(255, 255, 255)
	UIStroke43.Transparency = 0.85
	TextLabel32.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke36.Color = Color3.fromRGB(255, 255, 255)
	UIStroke36.Transparency = 0.85
	TextLabel25.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke49.Color = Color3.fromRGB(255, 255, 255)
	UIStroke49.Transparency = 0.85
	TextLabel38.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke33.Color = Color3.fromRGB(255, 255, 255)
	UIStroke33.Transparency = 0.85
	TextLabel22.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke34.Color = Color3.fromRGB(255, 255, 255)
	UIStroke34.Transparency = 0.85
	TextLabel23.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke26.Color = Color3.fromRGB(255, 255, 255)
	UIStroke26.Transparency = 0.85
	TextLabel15.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke50.Color = Color3.fromHex("#EC4899")
	UIStroke50.Transparency = 0.1
	TextLabel39.TextColor3 = Color3.fromRGB(240, 240, 246)
	UIStroke25.Color = Color3.fromRGB(255, 255, 255)
	UIStroke25.Transparency = 0.85
	TextLabel14.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke42.Color = Color3.fromRGB(255, 255, 255)
	UIStroke42.Transparency = 0.85
	TextLabel31.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke30.Color = Color3.fromRGB(255, 255, 255)
	UIStroke30.Transparency = 0.85
	TextLabel19.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke53.Color = Color3.fromRGB(255, 255, 255)
	UIStroke53.Transparency = 0.85
	TextLabel42.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke55.Color = Color3.fromRGB(255, 255, 255)
	UIStroke55.Transparency = 0.85
	TextLabel44.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke54.Color = Color3.fromRGB(255, 255, 255)
	UIStroke54.Transparency = 0.85
	TextLabel43.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke41.Color = Color3.fromRGB(255, 255, 255)
	UIStroke41.Transparency = 0.85
	TextLabel30.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke52.Color = Color3.fromRGB(255, 255, 255)
	UIStroke52.Transparency = 0.85
	TextLabel41.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke31.Color = Color3.fromRGB(255, 255, 255)
	UIStroke31.Transparency = 0.85
	TextLabel20.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke23.Color = Color3.fromRGB(255, 255, 255)
	UIStroke23.Transparency = 0.85
	TextLabel12.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke32.Color = Color3.fromRGB(255, 255, 255)
	UIStroke32.Transparency = 0.85
	TextLabel21.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke44.Color = Color3.fromRGB(255, 255, 255)
	UIStroke44.Transparency = 0.85
	TextLabel33.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke39.Color = Color3.fromRGB(255, 255, 255)
	UIStroke39.Transparency = 0.85
	TextLabel28.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke24.Color = Color3.fromRGB(255, 255, 255)
	UIStroke24.Transparency = 0.85
	TextLabel13.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke28.Color = Color3.fromRGB(255, 255, 255)
	UIStroke28.Transparency = 0.85
	TextLabel17.TextColor3 = Color3.fromRGB(150, 150, 160)
end)
local TextButton40 = Instance.new("TextButton")
TextButton40.Name = "Blue Donut"
TextButton40.LayoutOrder = 29
TextButton40.Text = ""
TextButton40.AutoButtonColor = false
TextButton40.BackgroundColor3 = Color3.fromRGB(10, 10, 13)
TextButton40.BackgroundTransparency = 0.25
TextButton40.BorderSizePixel = 0
TextButton40.Parent = Frame35
local UICorner106 = Instance.new("UICorner", TextButton40)
UICorner106.CornerRadius = UDim.new(0, 10)
local UIStroke51 = Instance.new("UIStroke")
UIStroke51.Thickness = 1.5
UIStroke51.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke51.Parent = TextButton40
local ImageLabel41 = Instance.new("ImageLabel")
ImageLabel41.BackgroundTransparency = 1
ImageLabel41.AnchorPoint = Vector2.new(0.5, 0)
ImageLabel41.Position = UDim2.new(0.5, 0, 0, 5)
ImageLabel41.Size = UDim2.fromOffset(56, 56)
ImageLabel41.Image = "rbxassetid://11717093063"
ImageLabel41.ScaleType = Enum.ScaleType.Stretch
ImageLabel41.Parent = TextButton40
local TextLabel40 = Instance.new("TextLabel")
TextLabel40.BackgroundTransparency = 1
TextLabel40.AnchorPoint = Vector2.new(0.5, 1)
TextLabel40.Position = UDim2.new(0.5, 0, 1, -4)
TextLabel40.Size = UDim2.new(1, -6, 0, 18)
TextLabel40.Font = Enum.Font.GothamBold
TextLabel40.TextSize = 10
TextLabel40.TextWrapped = true
TextLabel40.Text = "Blue Donut"
TextLabel40.Parent = TextButton40
TextButton40.MouseButton1Click:Connect(function()
	connection90:Disconnect()
	ScreenGui40:Destroy()
	UserInputService.MouseIconEnabled = UserInputService.MouseIconEnabled
	Players.LocalPlayer.Character:FindFirstChild("Gun")
	mouse.Icon = "rbxassetid://79658449"
	local ScreenGui41 = Instance.new("ScreenGui")
	ScreenGui41.Name = "FVLCrosshair"
	ScreenGui41.ResetOnSpawn = false
	ScreenGui41.IgnoreGuiInset = true
	ScreenGui41.DisplayOrder = 10000
	ScreenGui41.Parent = CoreGui
	local ImageLabel75 = Instance.new("ImageLabel")
	ImageLabel75.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel75.BackgroundTransparency = 1
	ImageLabel75.Image = "rbxassetid://11717093063"
	ImageLabel75.Size = UDim2.fromOffset(50, 50)
	ImageLabel75.ScaleType = Enum.ScaleType.Stretch
	ImageLabel75.Parent = ScreenGui41
	local connection91 = RunService.RenderStepped:Connect(function(deltaTime39)
	end)
	UIStroke47.Color = Color3.fromRGB(255, 255, 255)
	UIStroke47.Transparency = 0.85
	TextLabel36.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke51.Color = Color3.fromHex("#EC4899")
	UIStroke51.Transparency = 0.1
	TextLabel40.TextColor3 = Color3.fromRGB(240, 240, 246)
	UIStroke35.Color = Color3.fromRGB(255, 255, 255)
	UIStroke35.Transparency = 0.85
	TextLabel24.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke48.Color = Color3.fromRGB(255, 255, 255)
	UIStroke48.Transparency = 0.85
	TextLabel37.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke38.Color = Color3.fromRGB(255, 255, 255)
	UIStroke38.Transparency = 0.85
	TextLabel27.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke29.Color = Color3.fromRGB(255, 255, 255)
	UIStroke29.Transparency = 0.85
	TextLabel18.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke37.Color = Color3.fromRGB(255, 255, 255)
	UIStroke37.Transparency = 0.85
	TextLabel26.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke46.Color = Color3.fromRGB(255, 255, 255)
	UIStroke46.Transparency = 0.85
	TextLabel35.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke45.Color = Color3.fromRGB(255, 255, 255)
	UIStroke45.Transparency = 0.85
	TextLabel34.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke40.Color = Color3.fromRGB(255, 255, 255)
	UIStroke40.Transparency = 0.85
	TextLabel29.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke27.Color = Color3.fromRGB(255, 255, 255)
	UIStroke27.Transparency = 0.85
	TextLabel16.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke43.Color = Color3.fromRGB(255, 255, 255)
	UIStroke43.Transparency = 0.85
	TextLabel32.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke36.Color = Color3.fromRGB(255, 255, 255)
	UIStroke36.Transparency = 0.85
	TextLabel25.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke49.Color = Color3.fromRGB(255, 255, 255)
	UIStroke49.Transparency = 0.85
	TextLabel38.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke33.Color = Color3.fromRGB(255, 255, 255)
	UIStroke33.Transparency = 0.85
	TextLabel22.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke34.Color = Color3.fromRGB(255, 255, 255)
	UIStroke34.Transparency = 0.85
	TextLabel23.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke26.Color = Color3.fromRGB(255, 255, 255)
	UIStroke26.Transparency = 0.85
	TextLabel15.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke50.Color = Color3.fromRGB(255, 255, 255)
	UIStroke50.Transparency = 0.85
	TextLabel39.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke25.Color = Color3.fromRGB(255, 255, 255)
	UIStroke25.Transparency = 0.85
	TextLabel14.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke42.Color = Color3.fromRGB(255, 255, 255)
	UIStroke42.Transparency = 0.85
	TextLabel31.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke30.Color = Color3.fromRGB(255, 255, 255)
	UIStroke30.Transparency = 0.85
	TextLabel19.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke53.Color = Color3.fromRGB(255, 255, 255)
	UIStroke53.Transparency = 0.85
	TextLabel42.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke55.Color = Color3.fromRGB(255, 255, 255)
	UIStroke55.Transparency = 0.85
	TextLabel44.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke54.Color = Color3.fromRGB(255, 255, 255)
	UIStroke54.Transparency = 0.85
	TextLabel43.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke41.Color = Color3.fromRGB(255, 255, 255)
	UIStroke41.Transparency = 0.85
	TextLabel30.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke52.Color = Color3.fromRGB(255, 255, 255)
	UIStroke52.Transparency = 0.85
	TextLabel41.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke31.Color = Color3.fromRGB(255, 255, 255)
	UIStroke31.Transparency = 0.85
	TextLabel20.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke23.Color = Color3.fromRGB(255, 255, 255)
	UIStroke23.Transparency = 0.85
	TextLabel12.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke32.Color = Color3.fromRGB(255, 255, 255)
	UIStroke32.Transparency = 0.85
	TextLabel21.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke44.Color = Color3.fromRGB(255, 255, 255)
	UIStroke44.Transparency = 0.85
	TextLabel33.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke39.Color = Color3.fromRGB(255, 255, 255)
	UIStroke39.Transparency = 0.85
	TextLabel28.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke24.Color = Color3.fromRGB(255, 255, 255)
	UIStroke24.Transparency = 0.85
	TextLabel13.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke28.Color = Color3.fromRGB(255, 255, 255)
	UIStroke28.Transparency = 0.85
	TextLabel17.TextColor3 = Color3.fromRGB(150, 150, 160)
end)
local TextButton41 = Instance.new("TextButton")
TextButton41.Name = "Death"
TextButton41.LayoutOrder = 30
TextButton41.Text = ""
TextButton41.AutoButtonColor = false
TextButton41.BackgroundColor3 = Color3.fromRGB(10, 10, 13)
TextButton41.BackgroundTransparency = 0.25
TextButton41.BorderSizePixel = 0
TextButton41.Parent = Frame35
local UICorner107 = Instance.new("UICorner", TextButton41)
UICorner107.CornerRadius = UDim.new(0, 10)
local UIStroke52 = Instance.new("UIStroke")
UIStroke52.Thickness = 1.5
UIStroke52.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke52.Parent = TextButton41
local ImageLabel42 = Instance.new("ImageLabel")
ImageLabel42.BackgroundTransparency = 1
ImageLabel42.AnchorPoint = Vector2.new(0.5, 0)
ImageLabel42.Position = UDim2.new(0.5, 0, 0, 5)
ImageLabel42.Size = UDim2.fromOffset(56, 56)
ImageLabel42.Image = "rbxassetid://12472046162"
ImageLabel42.ScaleType = Enum.ScaleType.Stretch
ImageLabel42.Parent = TextButton41
local TextLabel41 = Instance.new("TextLabel")
TextLabel41.BackgroundTransparency = 1
TextLabel41.AnchorPoint = Vector2.new(0.5, 1)
TextLabel41.Position = UDim2.new(0.5, 0, 1, -4)
TextLabel41.Size = UDim2.new(1, -6, 0, 18)
TextLabel41.Font = Enum.Font.GothamBold
TextLabel41.TextSize = 10
TextLabel41.TextWrapped = true
TextLabel41.Text = "Death"
TextLabel41.Parent = TextButton41
TextButton41.MouseButton1Click:Connect(function()
	connection91:Disconnect()
	ScreenGui41:Destroy()
	UserInputService.MouseIconEnabled = UserInputService.MouseIconEnabled
	Players.LocalPlayer.Character:FindFirstChild("Gun")
	mouse.Icon = "rbxassetid://79658449"
	local ScreenGui42 = Instance.new("ScreenGui")
	ScreenGui42.Name = "FVLCrosshair"
	ScreenGui42.ResetOnSpawn = false
	ScreenGui42.IgnoreGuiInset = true
	ScreenGui42.DisplayOrder = 10000
	ScreenGui42.Parent = CoreGui
	local ImageLabel76 = Instance.new("ImageLabel")
	ImageLabel76.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel76.BackgroundTransparency = 1
	ImageLabel76.Image = "rbxassetid://12472046162"
	ImageLabel76.Size = UDim2.fromOffset(50, 50)
	ImageLabel76.ScaleType = Enum.ScaleType.Stretch
	ImageLabel76.Parent = ScreenGui42
	local connection92 = RunService.RenderStepped:Connect(function(deltaTime40)
	end)
	UIStroke47.Color = Color3.fromRGB(255, 255, 255)
	UIStroke47.Transparency = 0.85
	TextLabel36.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke51.Color = Color3.fromRGB(255, 255, 255)
	UIStroke51.Transparency = 0.85
	TextLabel40.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke35.Color = Color3.fromRGB(255, 255, 255)
	UIStroke35.Transparency = 0.85
	TextLabel24.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke48.Color = Color3.fromRGB(255, 255, 255)
	UIStroke48.Transparency = 0.85
	TextLabel37.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke38.Color = Color3.fromRGB(255, 255, 255)
	UIStroke38.Transparency = 0.85
	TextLabel27.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke29.Color = Color3.fromRGB(255, 255, 255)
	UIStroke29.Transparency = 0.85
	TextLabel18.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke37.Color = Color3.fromRGB(255, 255, 255)
	UIStroke37.Transparency = 0.85
	TextLabel26.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke46.Color = Color3.fromRGB(255, 255, 255)
	UIStroke46.Transparency = 0.85
	TextLabel35.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke45.Color = Color3.fromRGB(255, 255, 255)
	UIStroke45.Transparency = 0.85
	TextLabel34.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke40.Color = Color3.fromRGB(255, 255, 255)
	UIStroke40.Transparency = 0.85
	TextLabel29.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke27.Color = Color3.fromRGB(255, 255, 255)
	UIStroke27.Transparency = 0.85
	TextLabel16.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke43.Color = Color3.fromRGB(255, 255, 255)
	UIStroke43.Transparency = 0.85
	TextLabel32.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke36.Color = Color3.fromRGB(255, 255, 255)
	UIStroke36.Transparency = 0.85
	TextLabel25.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke49.Color = Color3.fromRGB(255, 255, 255)
	UIStroke49.Transparency = 0.85
	TextLabel38.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke33.Color = Color3.fromRGB(255, 255, 255)
	UIStroke33.Transparency = 0.85
	TextLabel22.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke34.Color = Color3.fromRGB(255, 255, 255)
	UIStroke34.Transparency = 0.85
	TextLabel23.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke26.Color = Color3.fromRGB(255, 255, 255)
	UIStroke26.Transparency = 0.85
	TextLabel15.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke50.Color = Color3.fromRGB(255, 255, 255)
	UIStroke50.Transparency = 0.85
	TextLabel39.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke25.Color = Color3.fromRGB(255, 255, 255)
	UIStroke25.Transparency = 0.85
	TextLabel14.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke42.Color = Color3.fromRGB(255, 255, 255)
	UIStroke42.Transparency = 0.85
	TextLabel31.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke30.Color = Color3.fromRGB(255, 255, 255)
	UIStroke30.Transparency = 0.85
	TextLabel19.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke53.Color = Color3.fromRGB(255, 255, 255)
	UIStroke53.Transparency = 0.85
	TextLabel42.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke55.Color = Color3.fromRGB(255, 255, 255)
	UIStroke55.Transparency = 0.85
	TextLabel44.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke54.Color = Color3.fromRGB(255, 255, 255)
	UIStroke54.Transparency = 0.85
	TextLabel43.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke41.Color = Color3.fromRGB(255, 255, 255)
	UIStroke41.Transparency = 0.85
	TextLabel30.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke52.Color = Color3.fromHex("#EC4899")
	UIStroke52.Transparency = 0.1
	TextLabel41.TextColor3 = Color3.fromRGB(240, 240, 246)
	UIStroke31.Color = Color3.fromRGB(255, 255, 255)
	UIStroke31.Transparency = 0.85
	TextLabel20.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke23.Color = Color3.fromRGB(255, 255, 255)
	UIStroke23.Transparency = 0.85
	TextLabel12.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke32.Color = Color3.fromRGB(255, 255, 255)
	UIStroke32.Transparency = 0.85
	TextLabel21.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke44.Color = Color3.fromRGB(255, 255, 255)
	UIStroke44.Transparency = 0.85
	TextLabel33.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke39.Color = Color3.fromRGB(255, 255, 255)
	UIStroke39.Transparency = 0.85
	TextLabel28.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke24.Color = Color3.fromRGB(255, 255, 255)
	UIStroke24.Transparency = 0.85
	TextLabel13.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke28.Color = Color3.fromRGB(255, 255, 255)
	UIStroke28.Transparency = 0.85
	TextLabel17.TextColor3 = Color3.fromRGB(150, 150, 160)
end)
local TextButton42 = Instance.new("TextButton")
TextButton42.Name = "Bear"
TextButton42.LayoutOrder = 31
TextButton42.Text = ""
TextButton42.AutoButtonColor = false
TextButton42.BackgroundColor3 = Color3.fromRGB(10, 10, 13)
TextButton42.BackgroundTransparency = 0.25
TextButton42.BorderSizePixel = 0
TextButton42.Parent = Frame35
local UICorner108 = Instance.new("UICorner", TextButton42)
UICorner108.CornerRadius = UDim.new(0, 10)
local UIStroke53 = Instance.new("UIStroke")
UIStroke53.Thickness = 1.5
UIStroke53.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke53.Parent = TextButton42
local ImageLabel43 = Instance.new("ImageLabel")
ImageLabel43.BackgroundTransparency = 1
ImageLabel43.AnchorPoint = Vector2.new(0.5, 0)
ImageLabel43.Position = UDim2.new(0.5, 0, 0, 5)
ImageLabel43.Size = UDim2.fromOffset(56, 56)
ImageLabel43.Image = "rbxassetid://11722088774"
ImageLabel43.ScaleType = Enum.ScaleType.Stretch
ImageLabel43.Parent = TextButton42
local TextLabel42 = Instance.new("TextLabel")
TextLabel42.BackgroundTransparency = 1
TextLabel42.AnchorPoint = Vector2.new(0.5, 1)
TextLabel42.Position = UDim2.new(0.5, 0, 1, -4)
TextLabel42.Size = UDim2.new(1, -6, 0, 18)
TextLabel42.Font = Enum.Font.GothamBold
TextLabel42.TextSize = 10
TextLabel42.TextWrapped = true
TextLabel42.Text = "Bear"
TextLabel42.Parent = TextButton42
TextButton42.MouseButton1Click:Connect(function()
	connection92:Disconnect()
	ScreenGui42:Destroy()
	UserInputService.MouseIconEnabled = UserInputService.MouseIconEnabled
	Players.LocalPlayer.Character:FindFirstChild("Gun")
	mouse.Icon = "rbxassetid://79658449"
	local ScreenGui43 = Instance.new("ScreenGui")
	ScreenGui43.Name = "FVLCrosshair"
	ScreenGui43.ResetOnSpawn = false
	ScreenGui43.IgnoreGuiInset = true
	ScreenGui43.DisplayOrder = 10000
	ScreenGui43.Parent = CoreGui
	local ImageLabel77 = Instance.new("ImageLabel")
	ImageLabel77.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel77.BackgroundTransparency = 1
	ImageLabel77.Image = "rbxassetid://11722088774"
	ImageLabel77.Size = UDim2.fromOffset(50, 50)
	ImageLabel77.ScaleType = Enum.ScaleType.Stretch
	ImageLabel77.Parent = ScreenGui43
	local connection93 = RunService.RenderStepped:Connect(function(deltaTime41)
	end)
	UIStroke47.Color = Color3.fromRGB(255, 255, 255)
	UIStroke47.Transparency = 0.85
	TextLabel36.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke51.Color = Color3.fromRGB(255, 255, 255)
	UIStroke51.Transparency = 0.85
	TextLabel40.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke35.Color = Color3.fromRGB(255, 255, 255)
	UIStroke35.Transparency = 0.85
	TextLabel24.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke48.Color = Color3.fromRGB(255, 255, 255)
	UIStroke48.Transparency = 0.85
	TextLabel37.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke38.Color = Color3.fromRGB(255, 255, 255)
	UIStroke38.Transparency = 0.85
	TextLabel27.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke29.Color = Color3.fromRGB(255, 255, 255)
	UIStroke29.Transparency = 0.85
	TextLabel18.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke37.Color = Color3.fromRGB(255, 255, 255)
	UIStroke37.Transparency = 0.85
	TextLabel26.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke46.Color = Color3.fromRGB(255, 255, 255)
	UIStroke46.Transparency = 0.85
	TextLabel35.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke45.Color = Color3.fromRGB(255, 255, 255)
	UIStroke45.Transparency = 0.85
	TextLabel34.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke40.Color = Color3.fromRGB(255, 255, 255)
	UIStroke40.Transparency = 0.85
	TextLabel29.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke27.Color = Color3.fromRGB(255, 255, 255)
	UIStroke27.Transparency = 0.85
	TextLabel16.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke43.Color = Color3.fromRGB(255, 255, 255)
	UIStroke43.Transparency = 0.85
	TextLabel32.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke36.Color = Color3.fromRGB(255, 255, 255)
	UIStroke36.Transparency = 0.85
	TextLabel25.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke49.Color = Color3.fromRGB(255, 255, 255)
	UIStroke49.Transparency = 0.85
	TextLabel38.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke33.Color = Color3.fromRGB(255, 255, 255)
	UIStroke33.Transparency = 0.85
	TextLabel22.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke34.Color = Color3.fromRGB(255, 255, 255)
	UIStroke34.Transparency = 0.85
	TextLabel23.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke26.Color = Color3.fromRGB(255, 255, 255)
	UIStroke26.Transparency = 0.85
	TextLabel15.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke50.Color = Color3.fromRGB(255, 255, 255)
	UIStroke50.Transparency = 0.85
	TextLabel39.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke25.Color = Color3.fromRGB(255, 255, 255)
	UIStroke25.Transparency = 0.85
	TextLabel14.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke42.Color = Color3.fromRGB(255, 255, 255)
	UIStroke42.Transparency = 0.85
	TextLabel31.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke30.Color = Color3.fromRGB(255, 255, 255)
	UIStroke30.Transparency = 0.85
	TextLabel19.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke53.Color = Color3.fromHex("#EC4899")
	UIStroke53.Transparency = 0.1
	TextLabel42.TextColor3 = Color3.fromRGB(240, 240, 246)
	UIStroke55.Color = Color3.fromRGB(255, 255, 255)
	UIStroke55.Transparency = 0.85
	TextLabel44.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke54.Color = Color3.fromRGB(255, 255, 255)
	UIStroke54.Transparency = 0.85
	TextLabel43.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke41.Color = Color3.fromRGB(255, 255, 255)
	UIStroke41.Transparency = 0.85
	TextLabel30.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke52.Color = Color3.fromRGB(255, 255, 255)
	UIStroke52.Transparency = 0.85
	TextLabel41.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke31.Color = Color3.fromRGB(255, 255, 255)
	UIStroke31.Transparency = 0.85
	TextLabel20.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke23.Color = Color3.fromRGB(255, 255, 255)
	UIStroke23.Transparency = 0.85
	TextLabel12.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke32.Color = Color3.fromRGB(255, 255, 255)
	UIStroke32.Transparency = 0.85
	TextLabel21.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke44.Color = Color3.fromRGB(255, 255, 255)
	UIStroke44.Transparency = 0.85
	TextLabel33.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke39.Color = Color3.fromRGB(255, 255, 255)
	UIStroke39.Transparency = 0.85
	TextLabel28.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke24.Color = Color3.fromRGB(255, 255, 255)
	UIStroke24.Transparency = 0.85
	TextLabel13.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke28.Color = Color3.fromRGB(255, 255, 255)
	UIStroke28.Transparency = 0.85
	TextLabel17.TextColor3 = Color3.fromRGB(150, 150, 160)
end)
local TextButton43 = Instance.new("TextButton")
TextButton43.Name = "Barbie"
TextButton43.LayoutOrder = 32
TextButton43.Text = ""
TextButton43.AutoButtonColor = false
TextButton43.BackgroundColor3 = Color3.fromRGB(10, 10, 13)
TextButton43.BackgroundTransparency = 0.25
TextButton43.BorderSizePixel = 0
TextButton43.Parent = Frame35
local UICorner109 = Instance.new("UICorner", TextButton43)
UICorner109.CornerRadius = UDim.new(0, 10)
local UIStroke54 = Instance.new("UIStroke")
UIStroke54.Thickness = 1.5
UIStroke54.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke54.Parent = TextButton43
local ImageLabel44 = Instance.new("ImageLabel")
ImageLabel44.BackgroundTransparency = 1
ImageLabel44.AnchorPoint = Vector2.new(0.5, 0)
ImageLabel44.Position = UDim2.new(0.5, 0, 0, 5)
ImageLabel44.Size = UDim2.fromOffset(56, 56)
ImageLabel44.Image = "rbxassetid://11754489642"
ImageLabel44.ScaleType = Enum.ScaleType.Stretch
ImageLabel44.Parent = TextButton43
local TextLabel43 = Instance.new("TextLabel")
TextLabel43.BackgroundTransparency = 1
TextLabel43.AnchorPoint = Vector2.new(0.5, 1)
TextLabel43.Position = UDim2.new(0.5, 0, 1, -4)
TextLabel43.Size = UDim2.new(1, -6, 0, 18)
TextLabel43.Font = Enum.Font.GothamBold
TextLabel43.TextSize = 10
TextLabel43.TextWrapped = true
TextLabel43.Text = "Barbie"
TextLabel43.Parent = TextButton43
TextButton43.MouseButton1Click:Connect(function()
	connection93:Disconnect()
	ScreenGui43:Destroy()
	UserInputService.MouseIconEnabled = UserInputService.MouseIconEnabled
	Players.LocalPlayer.Character:FindFirstChild("Gun")
	mouse.Icon = "rbxassetid://79658449"
	local ScreenGui44 = Instance.new("ScreenGui")
	ScreenGui44.Name = "FVLCrosshair"
	ScreenGui44.ResetOnSpawn = false
	ScreenGui44.IgnoreGuiInset = true
	ScreenGui44.DisplayOrder = 10000
	ScreenGui44.Parent = CoreGui
	local ImageLabel78 = Instance.new("ImageLabel")
	ImageLabel78.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel78.BackgroundTransparency = 1
	ImageLabel78.Image = "rbxassetid://11754489642"
	ImageLabel78.Size = UDim2.fromOffset(50, 50)
	ImageLabel78.ScaleType = Enum.ScaleType.Stretch
	ImageLabel78.Parent = ScreenGui44
	local connection94 = RunService.RenderStepped:Connect(function(deltaTime42)
	end)
	UIStroke47.Color = Color3.fromRGB(255, 255, 255)
	UIStroke47.Transparency = 0.85
	TextLabel36.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke51.Color = Color3.fromRGB(255, 255, 255)
	UIStroke51.Transparency = 0.85
	TextLabel40.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke35.Color = Color3.fromRGB(255, 255, 255)
	UIStroke35.Transparency = 0.85
	TextLabel24.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke48.Color = Color3.fromRGB(255, 255, 255)
	UIStroke48.Transparency = 0.85
	TextLabel37.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke38.Color = Color3.fromRGB(255, 255, 255)
	UIStroke38.Transparency = 0.85
	TextLabel27.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke29.Color = Color3.fromRGB(255, 255, 255)
	UIStroke29.Transparency = 0.85
	TextLabel18.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke37.Color = Color3.fromRGB(255, 255, 255)
	UIStroke37.Transparency = 0.85
	TextLabel26.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke46.Color = Color3.fromRGB(255, 255, 255)
	UIStroke46.Transparency = 0.85
	TextLabel35.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke45.Color = Color3.fromRGB(255, 255, 255)
	UIStroke45.Transparency = 0.85
	TextLabel34.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke40.Color = Color3.fromRGB(255, 255, 255)
	UIStroke40.Transparency = 0.85
	TextLabel29.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke27.Color = Color3.fromRGB(255, 255, 255)
	UIStroke27.Transparency = 0.85
	TextLabel16.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke43.Color = Color3.fromRGB(255, 255, 255)
	UIStroke43.Transparency = 0.85
	TextLabel32.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke36.Color = Color3.fromRGB(255, 255, 255)
	UIStroke36.Transparency = 0.85
	TextLabel25.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke49.Color = Color3.fromRGB(255, 255, 255)
	UIStroke49.Transparency = 0.85
	TextLabel38.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke33.Color = Color3.fromRGB(255, 255, 255)
	UIStroke33.Transparency = 0.85
	TextLabel22.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke34.Color = Color3.fromRGB(255, 255, 255)
	UIStroke34.Transparency = 0.85
	TextLabel23.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke26.Color = Color3.fromRGB(255, 255, 255)
	UIStroke26.Transparency = 0.85
	TextLabel15.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke50.Color = Color3.fromRGB(255, 255, 255)
	UIStroke50.Transparency = 0.85
	TextLabel39.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke25.Color = Color3.fromRGB(255, 255, 255)
	UIStroke25.Transparency = 0.85
	TextLabel14.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke42.Color = Color3.fromRGB(255, 255, 255)
	UIStroke42.Transparency = 0.85
	TextLabel31.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke30.Color = Color3.fromRGB(255, 255, 255)
	UIStroke30.Transparency = 0.85
	TextLabel19.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke53.Color = Color3.fromRGB(255, 255, 255)
	UIStroke53.Transparency = 0.85
	TextLabel42.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke55.Color = Color3.fromRGB(255, 255, 255)
	UIStroke55.Transparency = 0.85
	TextLabel44.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke54.Color = Color3.fromHex("#EC4899")
	UIStroke54.Transparency = 0.1
	TextLabel43.TextColor3 = Color3.fromRGB(240, 240, 246)
	UIStroke41.Color = Color3.fromRGB(255, 255, 255)
	UIStroke41.Transparency = 0.85
	TextLabel30.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke52.Color = Color3.fromRGB(255, 255, 255)
	UIStroke52.Transparency = 0.85
	TextLabel41.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke31.Color = Color3.fromRGB(255, 255, 255)
	UIStroke31.Transparency = 0.85
	TextLabel20.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke23.Color = Color3.fromRGB(255, 255, 255)
	UIStroke23.Transparency = 0.85
	TextLabel12.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke32.Color = Color3.fromRGB(255, 255, 255)
	UIStroke32.Transparency = 0.85
	TextLabel21.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke44.Color = Color3.fromRGB(255, 255, 255)
	UIStroke44.Transparency = 0.85
	TextLabel33.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke39.Color = Color3.fromRGB(255, 255, 255)
	UIStroke39.Transparency = 0.85
	TextLabel28.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke24.Color = Color3.fromRGB(255, 255, 255)
	UIStroke24.Transparency = 0.85
	TextLabel13.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke28.Color = Color3.fromRGB(255, 255, 255)
	UIStroke28.Transparency = 0.85
	TextLabel17.TextColor3 = Color3.fromRGB(150, 150, 160)
end)
local TextButton44 = Instance.new("TextButton")
TextButton44.Name = "Shoot this guy"
TextButton44.LayoutOrder = 33
TextButton44.Text = ""
TextButton44.AutoButtonColor = false
TextButton44.BackgroundColor3 = Color3.fromRGB(10, 10, 13)
TextButton44.BackgroundTransparency = 0.25
TextButton44.BorderSizePixel = 0
TextButton44.Parent = Frame35
local UICorner110 = Instance.new("UICorner", TextButton44)
UICorner110.CornerRadius = UDim.new(0, 10)
local UIStroke55 = Instance.new("UIStroke")
UIStroke55.Thickness = 1.5
UIStroke55.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke55.Parent = TextButton44
local ImageLabel45 = Instance.new("ImageLabel")
ImageLabel45.BackgroundTransparency = 1
ImageLabel45.AnchorPoint = Vector2.new(0.5, 0)
ImageLabel45.Position = UDim2.new(0.5, 0, 0, 5)
ImageLabel45.Size = UDim2.fromOffset(56, 56)
ImageLabel45.Image = "rbxassetid://8680062686"
ImageLabel45.ScaleType = Enum.ScaleType.Stretch
ImageLabel45.Parent = TextButton44
local TextLabel44 = Instance.new("TextLabel")
TextLabel44.BackgroundTransparency = 1
TextLabel44.AnchorPoint = Vector2.new(0.5, 1)
TextLabel44.Position = UDim2.new(0.5, 0, 1, -4)
TextLabel44.Size = UDim2.new(1, -6, 0, 18)
TextLabel44.Font = Enum.Font.GothamBold
TextLabel44.TextSize = 10
TextLabel44.TextWrapped = true
TextLabel44.Text = "Shoot this guy"
TextLabel44.Parent = TextButton44
TextButton44.MouseButton1Click:Connect(function()
	connection94:Disconnect()
	ScreenGui44:Destroy()
	UserInputService.MouseIconEnabled = UserInputService.MouseIconEnabled
	Players.LocalPlayer.Character:FindFirstChild("Gun")
	mouse.Icon = "rbxassetid://79658449"
	local ScreenGui45 = Instance.new("ScreenGui")
	ScreenGui45.Name = "FVLCrosshair"
	ScreenGui45.ResetOnSpawn = false
	ScreenGui45.IgnoreGuiInset = true
	ScreenGui45.DisplayOrder = 10000
	ScreenGui45.Parent = CoreGui
	local ImageLabel79 = Instance.new("ImageLabel")
	ImageLabel79.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel79.BackgroundTransparency = 1
	ImageLabel79.Image = "rbxassetid://8680062686"
	ImageLabel79.Size = UDim2.fromOffset(50, 50)
	ImageLabel79.ScaleType = Enum.ScaleType.Stretch
	ImageLabel79.Parent = ScreenGui45
	RunService.RenderStepped:Connect(function(deltaTime43)
		ImageLabel79.Visible = true
		UserInputService.MouseIconEnabled = false
		local mouseLocation = UserInputService:GetMouseLocation()
		ImageLabel79.Position = UDim2.fromOffset(mouseLocation.X, mouseLocation.Y)
	end)
	UIStroke47.Color = Color3.fromRGB(255, 255, 255)
	UIStroke47.Transparency = 0.85
	TextLabel36.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke51.Color = Color3.fromRGB(255, 255, 255)
	UIStroke51.Transparency = 0.85
	TextLabel40.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke35.Color = Color3.fromRGB(255, 255, 255)
	UIStroke35.Transparency = 0.85
	TextLabel24.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke48.Color = Color3.fromRGB(255, 255, 255)
	UIStroke48.Transparency = 0.85
	TextLabel37.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke38.Color = Color3.fromRGB(255, 255, 255)
	UIStroke38.Transparency = 0.85
	TextLabel27.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke29.Color = Color3.fromRGB(255, 255, 255)
	UIStroke29.Transparency = 0.85
	TextLabel18.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke37.Color = Color3.fromRGB(255, 255, 255)
	UIStroke37.Transparency = 0.85
	TextLabel26.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke46.Color = Color3.fromRGB(255, 255, 255)
	UIStroke46.Transparency = 0.85
	TextLabel35.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke45.Color = Color3.fromRGB(255, 255, 255)
	UIStroke45.Transparency = 0.85
	TextLabel34.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke40.Color = Color3.fromRGB(255, 255, 255)
	UIStroke40.Transparency = 0.85
	TextLabel29.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke27.Color = Color3.fromRGB(255, 255, 255)
	UIStroke27.Transparency = 0.85
	TextLabel16.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke43.Color = Color3.fromRGB(255, 255, 255)
	UIStroke43.Transparency = 0.85
	TextLabel32.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke36.Color = Color3.fromRGB(255, 255, 255)
	UIStroke36.Transparency = 0.85
	TextLabel25.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke49.Color = Color3.fromRGB(255, 255, 255)
	UIStroke49.Transparency = 0.85
	TextLabel38.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke33.Color = Color3.fromRGB(255, 255, 255)
	UIStroke33.Transparency = 0.85
	TextLabel22.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke34.Color = Color3.fromRGB(255, 255, 255)
	UIStroke34.Transparency = 0.85
	TextLabel23.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke26.Color = Color3.fromRGB(255, 255, 255)
	UIStroke26.Transparency = 0.85
	TextLabel15.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke50.Color = Color3.fromRGB(255, 255, 255)
	UIStroke50.Transparency = 0.85
	TextLabel39.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke25.Color = Color3.fromRGB(255, 255, 255)
	UIStroke25.Transparency = 0.85
	TextLabel14.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke42.Color = Color3.fromRGB(255, 255, 255)
	UIStroke42.Transparency = 0.85
	TextLabel31.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke30.Color = Color3.fromRGB(255, 255, 255)
	UIStroke30.Transparency = 0.85
	TextLabel19.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke53.Color = Color3.fromRGB(255, 255, 255)
	UIStroke53.Transparency = 0.85
	TextLabel42.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke55.Color = Color3.fromHex("#EC4899")
	UIStroke55.Transparency = 0.1
	TextLabel44.TextColor3 = Color3.fromRGB(240, 240, 246)
	UIStroke54.Color = Color3.fromRGB(255, 255, 255)
	UIStroke54.Transparency = 0.85
	TextLabel43.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke41.Color = Color3.fromRGB(255, 255, 255)
	UIStroke41.Transparency = 0.85
	TextLabel30.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke52.Color = Color3.fromRGB(255, 255, 255)
	UIStroke52.Transparency = 0.85
	TextLabel41.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke31.Color = Color3.fromRGB(255, 255, 255)
	UIStroke31.Transparency = 0.85
	TextLabel20.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke23.Color = Color3.fromRGB(255, 255, 255)
	UIStroke23.Transparency = 0.85
	TextLabel12.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke32.Color = Color3.fromRGB(255, 255, 255)
	UIStroke32.Transparency = 0.85
	TextLabel21.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke44.Color = Color3.fromRGB(255, 255, 255)
	UIStroke44.Transparency = 0.85
	TextLabel33.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke39.Color = Color3.fromRGB(255, 255, 255)
	UIStroke39.Transparency = 0.85
	TextLabel28.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke24.Color = Color3.fromRGB(255, 255, 255)
	UIStroke24.Transparency = 0.85
	TextLabel13.TextColor3 = Color3.fromRGB(150, 150, 160)
	UIStroke28.Color = Color3.fromRGB(255, 255, 255)
	UIStroke28.Transparency = 0.85
	TextLabel17.TextColor3 = Color3.fromRGB(150, 150, 160)
end)
UIStroke47.Color = Color3.fromRGB(255, 255, 255)
UIStroke47.Transparency = 0.85
TextLabel36.TextColor3 = Color3.fromRGB(150, 150, 160)
UIStroke51.Color = Color3.fromRGB(255, 255, 255)
UIStroke51.Transparency = 0.85
TextLabel40.TextColor3 = Color3.fromRGB(150, 150, 160)
UIStroke35.Color = Color3.fromRGB(255, 255, 255)
UIStroke35.Transparency = 0.85
TextLabel24.TextColor3 = Color3.fromRGB(150, 150, 160)
UIStroke48.Color = Color3.fromRGB(255, 255, 255)
UIStroke48.Transparency = 0.85
TextLabel37.TextColor3 = Color3.fromRGB(150, 150, 160)
UIStroke38.Color = Color3.fromRGB(255, 255, 255)
UIStroke38.Transparency = 0.85
TextLabel27.TextColor3 = Color3.fromRGB(150, 150, 160)
UIStroke29.Color = Color3.fromRGB(255, 255, 255)
UIStroke29.Transparency = 0.85
TextLabel18.TextColor3 = Color3.fromRGB(150, 150, 160)
UIStroke37.Color = Color3.fromRGB(255, 255, 255)
UIStroke37.Transparency = 0.85
TextLabel26.TextColor3 = Color3.fromRGB(150, 150, 160)
UIStroke46.Color = Color3.fromRGB(255, 255, 255)
UIStroke46.Transparency = 0.85
TextLabel35.TextColor3 = Color3.fromRGB(150, 150, 160)
UIStroke45.Color = Color3.fromRGB(255, 255, 255)
UIStroke45.Transparency = 0.85
TextLabel34.TextColor3 = Color3.fromRGB(150, 150, 160)
UIStroke40.Color = Color3.fromRGB(255, 255, 255)
UIStroke40.Transparency = 0.85
TextLabel29.TextColor3 = Color3.fromRGB(150, 150, 160)
UIStroke27.Color = Color3.fromRGB(255, 255, 255)
UIStroke27.Transparency = 0.85
TextLabel16.TextColor3 = Color3.fromRGB(150, 150, 160)
UIStroke43.Color = Color3.fromRGB(255, 255, 255)
UIStroke43.Transparency = 0.85
TextLabel32.TextColor3 = Color3.fromRGB(150, 150, 160)
UIStroke36.Color = Color3.fromRGB(255, 255, 255)
UIStroke36.Transparency = 0.85
TextLabel25.TextColor3 = Color3.fromRGB(150, 150, 160)
UIStroke49.Color = Color3.fromRGB(255, 255, 255)
UIStroke49.Transparency = 0.85
TextLabel38.TextColor3 = Color3.fromRGB(150, 150, 160)
UIStroke33.Color = Color3.fromRGB(255, 255, 255)
UIStroke33.Transparency = 0.85
TextLabel22.TextColor3 = Color3.fromRGB(150, 150, 160)
UIStroke34.Color = Color3.fromRGB(255, 255, 255)
UIStroke34.Transparency = 0.85
TextLabel23.TextColor3 = Color3.fromRGB(150, 150, 160)
UIStroke26.Color = Color3.fromRGB(255, 255, 255)
UIStroke26.Transparency = 0.85
TextLabel15.TextColor3 = Color3.fromRGB(150, 150, 160)
UIStroke50.Color = Color3.fromRGB(255, 255, 255)
UIStroke50.Transparency = 0.85
TextLabel39.TextColor3 = Color3.fromRGB(150, 150, 160)
UIStroke25.Color = Color3.fromRGB(255, 255, 255)
UIStroke25.Transparency = 0.85
TextLabel14.TextColor3 = Color3.fromRGB(150, 150, 160)
UIStroke42.Color = Color3.fromRGB(255, 255, 255)
UIStroke42.Transparency = 0.85
TextLabel31.TextColor3 = Color3.fromRGB(150, 150, 160)
UIStroke30.Color = Color3.fromRGB(255, 255, 255)
UIStroke30.Transparency = 0.85
TextLabel19.TextColor3 = Color3.fromRGB(150, 150, 160)
UIStroke53.Color = Color3.fromRGB(255, 255, 255)
UIStroke53.Transparency = 0.85
TextLabel42.TextColor3 = Color3.fromRGB(150, 150, 160)
UIStroke55.Color = Color3.fromRGB(255, 255, 255)
UIStroke55.Transparency = 0.85
TextLabel44.TextColor3 = Color3.fromRGB(150, 150, 160)
UIStroke54.Color = Color3.fromRGB(255, 255, 255)
UIStroke54.Transparency = 0.85
TextLabel43.TextColor3 = Color3.fromRGB(150, 150, 160)
UIStroke41.Color = Color3.fromRGB(255, 255, 255)
UIStroke41.Transparency = 0.85
TextLabel30.TextColor3 = Color3.fromRGB(150, 150, 160)
UIStroke52.Color = Color3.fromRGB(255, 255, 255)
UIStroke52.Transparency = 0.85
TextLabel41.TextColor3 = Color3.fromRGB(150, 150, 160)
UIStroke31.Color = Color3.fromRGB(255, 255, 255)
UIStroke31.Transparency = 0.85
TextLabel20.TextColor3 = Color3.fromRGB(150, 150, 160)
UIStroke23.Color = Color3.fromHex("#EC4899")
UIStroke23.Transparency = 0.1
TextLabel12.TextColor3 = Color3.fromRGB(240, 240, 246)
UIStroke32.Color = Color3.fromRGB(255, 255, 255)
UIStroke32.Transparency = 0.85
TextLabel21.TextColor3 = Color3.fromRGB(150, 150, 160)
UIStroke44.Color = Color3.fromRGB(255, 255, 255)
UIStroke44.Transparency = 0.85
TextLabel33.TextColor3 = Color3.fromRGB(150, 150, 160)
UIStroke39.Color = Color3.fromRGB(255, 255, 255)
UIStroke39.Transparency = 0.85
TextLabel28.TextColor3 = Color3.fromRGB(150, 150, 160)
UIStroke24.Color = Color3.fromRGB(255, 255, 255)
UIStroke24.Transparency = 0.85
TextLabel13.TextColor3 = Color3.fromRGB(150, 150, 160)
UIStroke28.Color = Color3.fromRGB(255, 255, 255)
UIStroke28.Transparency = 0.85
TextLabel17.TextColor3 = Color3.fromRGB(150, 150, 160)
UserInputService.MouseIconEnabled = UserInputService.MouseIconEnabled
Players.LocalPlayer.Character:FindFirstChild("Gun")
mouse.Icon = "rbxassetid://79658449"
local descendants32 = Window.UIElements.Main:GetDescendants()
for i80, v80 in ipairs(descendants32) do
end
Tab11:Section({ Title = "Interface" })
Tab11:Slider({
	Title = "UI Opacity",
	Desc = "How solid the window is. 100 hides the game behind it completely, low turns it to glass.",
	Flag = "Slider_UI_Opacity",
	Step = 1,
	Value = { Default = 75, Max = 100, Min = 0 },
	Callback = function(state, arg266)
		if state then
			Window:SetBackgroundTransparency((1 - (math.clamp(tonumber(tonumber(state)), 0, 100) / 100)))
			Window:SetBackgroundImageTransparency(math.clamp((0.55 + ((1 - (math.clamp(tonumber(tonumber(state)), 0, 100) / 100)) * 0.4)), 0.55, 0.95))
			task.delay(0.12, function(...)
			end)
		else
			Window:SetBackgroundTransparency(0.25)
			Window:SetBackgroundImageTransparency(0.65)
			task.delay(0.12, function(...)
				result.Themes.TieDev.ElementBackgroundTransparency = 0.1875
				result:SetTheme("TieDev")
			end)
		end
	end
})
task.spawn(function(...)
	task.wait(1.5)
	task.wait(1.5)
	-- [envlog] the statements above repeat forever (loop)
end)
Tab11:Dropdown({
	Title = "Language",
	Desc = "Choose the menu language.",
	Flag = "Dropdown_Language",
	Multi = false,
	Value = "English",
	Values = { "English", "ภาษาไทย" },
	Callback = function(state, arg268)
		if state then
			task.delay(2.9998574000001099, function(...)
				local descendants40 = Window.UIElements.Main:GetDescendants()
				for i101, v101 in ipairs(descendants40) do
					v101:IsFocused()
				end
			end)
		else
			task.delay(2.9998372999998537, function(...)
				local descendants39 = Window.UIElements.Main:GetDescendants()
				for i100, v100 in ipairs(descendants39) do
					v100:IsFocused()
				end
			end)
		end
	end
})
Tab11:Section({ Title = "Protection" })
Tab11:Toggle({
	Title = "Anti Stealer",
	Desc = "Stops other scripts you run from taking your godlys and other valuable items.",
	Flag = "Toggle_Anti_Stealer",
	Type = "Toggle",
	Value = false,
	Callback = function(state, arg270)
	end
})
Tab11:Section({ Title = "Server" })
Tab11:Button({
	Title = "Server Hop",
	Desc = "Quickly join another server",
	Icon = "lucide:arrow-right-left",
	Callback = function(state, arg272)
		task.spawn(function(...)
			task.wait(0.5)
			TeleportService:Teleport(0)
		end)
	end
})
Tab11:Button({
	Title = "Smallest Server",
	Desc = "Join the server with the fewest players",
	Icon = "lucide:users",
	Callback = function(state, arg274)
		task.spawn(function(...)
			local result4 = syn.request({
	Method = "GET",
	Url = "https://games.roblox.com/v1/games/0/servers/Public?sortOrder=Asc&limit=100"
})
			local data = HttpService:JSONDecode(result4.Body)
			for i81, v81 in ipairs(data.data) do
				-- condition: v81.playing < v81.maxPlayers  (assumed true)
			end
			local result5 = syn.request({ Method = "GET", Url = "https://games.roblox.com/v1/games/0/servers/Public?sortOrder=Asc&limit=100" .. "&cursor=" .. data.nextPageCursor })
			local data2 = HttpService:JSONDecode(result5.Body)
			for i82, v82 in ipairs(data2.data) do
				-- condition: v82.playing < v82.maxPlayers  (assumed true)
			end
			local result6 = syn.request({ Method = "GET", Url = "https://games.roblox.com/v1/games/0/servers/Public?sortOrder=Asc&limit=100" .. "&cursor=" .. data2.nextPageCursor })
			local data3 = HttpService:JSONDecode(result6.Body)
			for i83, v83 in ipairs(data3.data) do
				-- condition: v83.playing < v83.maxPlayers  (assumed true)
			end
			local result7 = syn.request({ Method = "GET", Url = "https://games.roblox.com/v1/games/0/servers/Public?sortOrder=Asc&limit=100" .. "&cursor=" .. data3.nextPageCursor })
			local data4 = HttpService:JSONDecode(result7.Body)
			for i84, v84 in ipairs(data4.data) do
				-- condition: v84.playing < v84.maxPlayers  (assumed true)
			end
			local result8 = syn.request({ Method = "GET", Url = "https://games.roblox.com/v1/games/0/servers/Public?sortOrder=Asc&limit=100" .. "&cursor=" .. data4.nextPageCursor })
			local data5 = HttpService:JSONDecode(result8.Body)
			for i85, v85 in ipairs(data5.data) do
				-- condition: v85.playing < v85.maxPlayers  (assumed true)
			end
			-- condition: v85.playing < v81.playing  (assumed true)
			-- condition: v83.playing < v85.playing  (assumed true)
			-- condition: v82.playing < v85.playing  (assumed true)
			-- condition: v84.playing < v85.playing  (assumed true)
			-- condition: v85.playing < v85.playing  (assumed true)
			-- condition: v81.playing < v85.playing  (assumed true)
			-- [envlog] error: protected:2578: invalid order function for sorting
		end)
	end
})
Tab11:Section({ Title = "Config" })
local result9 = Window.ConfigManager:AllConfigs()
for i86, v86 in ipairs(result9) do
	tostring(v86):match("^fvl_hud")
end
local Dropdown3 = Tab11:Dropdown({
	Title = "Saved Configs",
	Desc = "Pick one, then use Load or Delete",
	Multi = false,
	Values = {},
	Callback = function(state, arg276)
	end
})
Tab11:Input({
	Title = "Config Name",
	Desc = "Name to save under, or type an existing one to load/delete",
	Placeholder = "myconfig",
	Callback = function(state, arg278)
	end
})
local config = Window.ConfigManager:GetConfig("TieDev_Default")
config.Elements = Config.Elements
config:Save()
local json = HttpService:JSONEncode({
	Aimbot = { 0.5, -28, 0.25, 0 },
	Bomb = { 0.5, 28, 0.25, 0 },
	Fly = { 0.5, 0, 0.25, 57 },
	Grab = { 0.5, -86, 0.25, 0 },
	KillAll = { 0.5, -114, 0.25, 57 },
	KillSheriff = { 0.5, -57, 0.25, 57 },
	Noclip = { 0.5, 57, 0.25, 57 },
	Shoot = { 0.5, -143, 0.25, 0 },
	Throw = { 0.5, 86, 0.25, 0 },
	WallHop = { 0.5, 143, 0.25, 0 },
	Xray = { 0.5, 114, 0.25, 57 }
})
writefile("WindUI/FVLV2/hud/TieDev_Default.json", json)
local result10 = Window.ConfigManager:AllConfigs()
for i87, v87 in ipairs(result10) do
	tostring(v87):match("^fvl_hud")
end
Dropdown3:Refresh({})
Tab11:Button({
	Title = "Load Config",
	Desc = "Applies the named config to every setting and button position.",
	Icon = "lucide:folder-open",
	Callback = function(state, arg280)
	end
})
Tab11:Button({
	Title = "Save Config",
	Desc = "Writes your current settings and button positions to the name above.",
	Icon = "lucide:save",
	Callback = function(state, arg282)
	end
})
Tab11:Button({
	Title = "Delete Config",
	Desc = "Removes the named config. Leaves the autosave alone.",
	Icon = "lucide:trash",
	Callback = function(state, arg284)
	end
})
Tab11:Paragraph({
	Title = "Autosave Config",
	Desc = "Everything saves itself a couple of seconds after you change it and comes back next time you execute. Separate from the named configs above."
})
Tab11:Button({
	Title = "Delete Autosave Config",
	Desc = "Wipes the saved config and goes back to defaults on next execute",
	Icon = "lucide:trash-2",
	Callback = function(state, arg286)
		Config:Delete()
		-- isfile("WindUI/FVLV2/hud/autosave.json") -> false
	end
})
local descendants33 = Window.UIElements.Main:GetDescendants()
for i88, v88 in ipairs(descendants33) do
end
local descendants34 = Window.UIElements.Main:GetDescendants()
for i89, v89 in ipairs(descendants34) do
end
local descendants35 = Window.UIElements.Main:GetDescendants()
for i90, v90 in ipairs(descendants35) do
end
local descendants36 = Window.UIElements.Main:GetDescendants()
for i91, v91 in ipairs(descendants36) do
end
_G.FVLV2 = nil
Window:OnDestroy(function(arg287, arg288)
	local hui2 = gethui()
	local FVLCard = hui2:FindFirstChild("FVLCard")
	FVLCard:Destroy()
	local ScreenGui13 = Instance.new("ScreenGui")
	ScreenGui13.Name = "FVLCard"
	ScreenGui13.IgnoreGuiInset = true
	ScreenGui13.ResetOnSpawn = false
	ScreenGui13.DisplayOrder = 99999
	ScreenGui13.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	ScreenGui13.Parent = hui2
	local TextButton45 = Instance.new("TextButton")
	TextButton45.Size = UDim2.fromScale(1, 1)
	TextButton45.BackgroundColor3 = Color3.new(0, 0, 0)
	TextButton45.BackgroundTransparency = 1
	TextButton45.BorderSizePixel = 0
	TextButton45.AutoButtonColor = false
	TextButton45.Text = ""
	TextButton45.Parent = ScreenGui13
	local Frame36 = Instance.new("Frame")
	Frame36.AnchorPoint = Vector2.new(0.5, 0.5)
	Frame36.Position = UDim2.fromScale(0.5, 0.5)
	Frame36.Size = UDim2.fromOffset(300, 144)
	Frame36.BackgroundColor3 = Color3.fromRGB(23, 23, 28)
	Frame36.BackgroundTransparency = 1
	Frame36.BorderSizePixel = 0
	Frame36.ClipsDescendants = true
	Frame36.Parent = ScreenGui13
	local UICorner111 = Instance.new("UICorner", Frame36)
	UICorner111.CornerRadius = UDim.new(0, 22)
	local UIScale12 = Instance.new("UIScale", Frame36)
	UIScale12.Scale = 0.96
	local UIGradient3 = Instance.new("UIGradient", Frame36)
	UIGradient3.Rotation = 90
	UIGradient3.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(30, 30, 36)), ColorSequenceKeypoint.new(1, Color3.fromRGB(16, 16, 20)) })
	local UIStroke56 = Instance.new("UIStroke", Frame36)
	UIStroke56.Color = Color3.fromRGB(59, 130, 246)
	UIStroke56.Thickness = 1
	UIStroke56.Transparency = 1
	local Frame37 = Instance.new("Frame")
	Frame37.Position = UDim2.fromOffset(22, 20)
	Frame37.Size = UDim2.fromOffset(48, 48)
	Frame37.BackgroundColor3 = Color3.fromRGB(38, 38, 48)
	Frame37.BackgroundTransparency = 1
	Frame37.BorderSizePixel = 0
	Frame37.ZIndex = 1
	Frame37.Parent = Frame36
	local UICorner112 = Instance.new("UICorner", Frame37)
	UICorner112.CornerRadius = UDim.new(1, 0)
	local UIStroke57 = Instance.new("UIStroke", Frame37)
	UIStroke57.Color = Color3.fromRGB(59, 130, 246)
	UIStroke57.Thickness = 1
	UIStroke57.Transparency = 1
	local ImageLabel46 = Instance.new("ImageLabel")
	ImageLabel46.Image = "rbxasset://FVLV2/tiedev.png"
	ImageLabel46.Name = "Mark"
	ImageLabel46.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel46.Position = UDim2.fromScale(0.5, 0.5)
	ImageLabel46.Size = UDim2.fromOffset(26, 26)
	ImageLabel46.BackgroundTransparency = 1
	ImageLabel46.ImageColor3 = Color3.fromRGB(233, 233, 242)
	ImageLabel46.ImageTransparency = 1
	ImageLabel46.Visible = true
	ImageLabel46.Parent = Frame37
	local TextLabel45 = Instance.new("TextLabel")
	TextLabel45.Position = UDim2.fromOffset(86, 22)
	TextLabel45.Size = UDim2.new(1, -108, 0, 26)
	TextLabel45.BackgroundTransparency = 1
	TextLabel45.Font = Enum.Font.GothamBold
	TextLabel45.TextSize = 22
	TextLabel45.TextXAlignment = Enum.TextXAlignment.Left
	TextLabel45.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel45.TextTransparency = 1
	TextLabel45.Text = "Bye bye!"
	TextLabel45.ZIndex = 1
	TextLabel45.Parent = Frame36
	local UIGradient4 = Instance.new("UIGradient", TextLabel45)
	UIGradient4.Rotation = 10
	UIGradient4.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(96, 165, 250)), ColorSequenceKeypoint.new(0.42, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(0.58, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(74, 222, 128)) })
	local TextLabel46 = Instance.new("TextLabel")
	TextLabel46.Position = UDim2.fromOffset(86, 50)
	TextLabel46.Size = UDim2.new(1, -108, 0, 18)
	TextLabel46.BackgroundTransparency = 1
	TextLabel46.Font = Enum.Font.Gotham
	TextLabel46.TextSize = 14
	TextLabel46.TextXAlignment = Enum.TextXAlignment.Left
	TextLabel46.TextColor3 = Color3.fromRGB(158, 158, 174)
	TextLabel46.TextTransparency = 1
	TextLabel46.Text = "Thanks for running TieDev"
	TextLabel46.ZIndex = 1
	TextLabel46.Parent = Frame36
	local TextLabel47 = Instance.new("TextLabel")
	TextLabel47.Position = UDim2.fromOffset(22, 82)
	TextLabel47.Size = UDim2.new(1, -44, 0, 42)
	TextLabel47.BackgroundTransparency = 1
	TextLabel47.Font = Enum.Font.Gotham
	TextLabel47.TextSize = 15
	TextLabel47.LineHeight = 1.25
	TextLabel47.TextWrapped = true
	TextLabel47.TextXAlignment = Enum.TextXAlignment.Left
	TextLabel47.TextYAlignment = Enum.TextYAlignment.Top
	TextLabel47.TextColor3 = Color3.fromRGB(168, 168, 184)
	TextLabel47.TextTransparency = 1
	TextLabel47.Text = "See you next time."
	TextLabel47.ZIndex = 1
	TextLabel47.Parent = Frame36
	TextButton45.MouseButton1Click:Connect(function()
		ScreenGui13:Destroy()
	end)
	TextButton45.TouchTap:Connect(function(arg289)
	end)
	Frame36.Position = UDim2.fromScale(0.5, 0.52)
	local tween167 = TweenService:Create(Frame36, TweenInfo.new(0.34, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Position = UDim2.fromScale(0.5, 0.5) })
	tween167:Play()
	local tween168 = TweenService:Create(UIScale12, TweenInfo.new(0.34, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), { Scale = 1 })
	tween168:Play()
	local tween169 = TweenService:Create(TextButton45, TweenInfo.new(0.24, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0.5 })
	tween169:Play()
	local tween170 = TweenService:Create(Frame36, TweenInfo.new(0.24, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0 })
	tween170:Play()
	local tween171 = TweenService:Create(UIStroke56, TweenInfo.new(0.24, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Transparency = 0.42 })
	tween171:Play()
	local tween172 = TweenService:Create(Frame37, TweenInfo.new(0.24, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundTransparency = 0 })
	tween172:Play()
	local tween173 = TweenService:Create(UIStroke57, TweenInfo.new(0.24, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Transparency = 0.42 })
	tween173:Play()
	local tween174 = TweenService:Create(ImageLabel46, TweenInfo.new(0.24, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { ImageTransparency = 0 })
	tween174:Play()
	local tween175 = TweenService:Create(TextLabel45, TweenInfo.new(0.24, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextTransparency = 0 })
	tween175:Play()
	local tween176 = TweenService:Create(TextLabel46, TweenInfo.new(0.24, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextTransparency = 0 })
	tween176:Play()
	local tween177 = TweenService:Create(TextLabel47, TweenInfo.new(0.24, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextTransparency = 0 })
	tween177:Play()
	task.delay(25, function(...)
		ScreenGui13:Destroy()
	end)
	ScreenGui:Destroy()
	local Humanoid12 = Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
	Humanoid12.PlatformStand = false
	local Humanoid13 = Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
	Humanoid13.WalkSpeed = 16
	local Humanoid14 = Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
	Humanoid14.JumpPower = 50
	Humanoid14.UseJumpPower = true
	local UpperTorso3 = Players.LocalPlayer.Character:FindFirstChild("UpperTorso")
	local ODHAutoFarmBodyGyro3 = UpperTorso3:FindFirstChild("ODH Auto Farm BodyGyro")
	local ODHAutoFarmBodyVelocity3 = UpperTorso3:FindFirstChild("ODH Auto Farm BodyVelocity")
	local Humanoid15 = Players.LocalPlayer.Character:FindFirstChild("Humanoid")
	ODHAutoFarmBodyGyro3:Destroy()
	ODHAutoFarmBodyVelocity3:Destroy()
	Humanoid15.PlatformStand = false
	Players.LocalPlayer.Character:GetChildren()
	Players.LocalPlayer.Character:GetChildren()
	task.spawn(function(...)
		task.wait(0.35)
		local UpperTorso4 = Players.LocalPlayer.Character:FindFirstChild("UpperTorso")
		local ODHAutoFarmBodyGyro4 = UpperTorso4:FindFirstChild("ODH Auto Farm BodyGyro")
		local ODHAutoFarmBodyVelocity4 = UpperTorso4:FindFirstChild("ODH Auto Farm BodyVelocity")
		local Humanoid16 = Players.LocalPlayer.Character:FindFirstChild("Humanoid")
		ODHAutoFarmBodyGyro4:Destroy()
		ODHAutoFarmBodyVelocity4:Destroy()
		Humanoid16.PlatformStand = false
		Players.LocalPlayer.Character:GetDescendants()
		local Humanoid17 = Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
		Humanoid17.PlatformStand = false
		Humanoid17:ChangeState(Enum.HumanoidStateType.GettingUp)
	end)
	connection22:Disconnect()
	connection54:Disconnect()
	connection55:Disconnect()
	connection59:Disconnect()
	connection12:Disconnect()
	connection13:Disconnect()
	connection15:Disconnect()
	connection14:Disconnect()
	connection49:Disconnect()
	connection45:Disconnect()
	connection46:Disconnect()
	connection47:Disconnect()
	connection48:Disconnect()
	UserInputService.MouseIconEnabled = UserInputService.MouseIconEnabled
	Players.LocalPlayer.Character:FindFirstChild("Gun")
	mouse.Icon = "rbxassetid://79658449"
	connection:Disconnect()
	connection2:Disconnect()
	connection3:Disconnect()
	connection4:Disconnect()
	local players34 = Players:GetPlayers()
	for i92, v92 in ipairs(players34) do
		local descendants37 = v92.Character:GetDescendants()
		for i93, v93 in ipairs(descendants37) do
			v93.Visible = true
		end
	end
	connection11:Disconnect()
	connection5:Disconnect()
	connection6:Disconnect()
	connection7:Disconnect()
	connection8:Disconnect()
	connection9:Disconnect()
	connection10:Disconnect()
	connection19:Disconnect()
	connection20:Disconnect()
	_G.FVLSilentTarget = nil
	local hui3 = gethui()
	local children8 = hui3:GetChildren()
	for i94, v94 in ipairs(children8) do
		v94.Name:match("^WindUI/")
	end
	task.delay(0.6, function(...)
		v94:Destroy()
	end)
end)
_G.FVLV2Cleanup = function(arg290, arg291)
	ScreenGui:Destroy()
	local Humanoid18 = Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
	Humanoid18.PlatformStand = false
	local Humanoid19 = Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
	Humanoid19.WalkSpeed = 16
	local Humanoid20 = Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
	Humanoid20.JumpPower = 50
	Humanoid20.UseJumpPower = true
	local UpperTorso5 = Players.LocalPlayer.Character:FindFirstChild("UpperTorso")
	local ODHAutoFarmBodyGyro5 = UpperTorso5:FindFirstChild("ODH Auto Farm BodyGyro")
	local ODHAutoFarmBodyVelocity5 = UpperTorso5:FindFirstChild("ODH Auto Farm BodyVelocity")
	local Humanoid21 = Players.LocalPlayer.Character:FindFirstChild("Humanoid")
	ODHAutoFarmBodyGyro5:Destroy()
	ODHAutoFarmBodyVelocity5:Destroy()
	Humanoid21.PlatformStand = false
	Players.LocalPlayer.Character:GetChildren()
	Players.LocalPlayer.Character:GetChildren()
	task.spawn(function(...)
		task.wait(0.35)
		local UpperTorso6 = Players.LocalPlayer.Character:FindFirstChild("UpperTorso")
		local ODHAutoFarmBodyGyro6 = UpperTorso6:FindFirstChild("ODH Auto Farm BodyGyro")
		local ODHAutoFarmBodyVelocity6 = UpperTorso6:FindFirstChild("ODH Auto Farm BodyVelocity")
		local Humanoid22 = Players.LocalPlayer.Character:FindFirstChild("Humanoid")
		ODHAutoFarmBodyGyro6:Destroy()
		ODHAutoFarmBodyVelocity6:Destroy()
		Humanoid22.PlatformStand = false
		Players.LocalPlayer.Character:GetDescendants()
		local Humanoid23 = Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
		Humanoid23.PlatformStand = false
		Humanoid23:ChangeState(Enum.HumanoidStateType.GettingUp)
	end)
	keybindConn:Disconnect()
	UserInputService.MouseIconEnabled = UserInputService.MouseIconEnabled
	Players.LocalPlayer.Character:FindFirstChild("Gun")
	mouse.Icon = "rbxassetid://79658449"
	local players35 = Players:GetPlayers()
	for i95, v95 in ipairs(players35) do
		local descendants38 = v95.Character:GetDescendants()
		for i96, v96 in ipairs(descendants38) do
			v96.Visible = true
		end
	end
	_G.FVLSilentTarget = nil
end
Window:Open()
task.spawn(function(...)
	local hui4 = gethui()
	local WindUI = hui4:FindFirstChild("WindUI")
	local Window2 = WindUI:FindFirstChild("Window")
	local children9 = Window2:GetChildren()
	for i97, v97 in ipairs(children9) do
		v97:FindFirstChild("Main")
	end
	task.wait(0.05)
	local hui5 = gethui()
	local WindUI2 = hui5:FindFirstChild("WindUI")
	local Window3 = WindUI2:FindFirstChild("Window")
	local children10 = Window3:GetChildren()
	for i98, v98 in ipairs(children10) do
		v98:FindFirstChild("Main")
	end
	task.wait(0.05)
	-- [envlog] the statements above repeat forever (loop)
end)
Window:SelectTab(1)
task.spawn(function(...)
	RunService.RenderStepped:Wait()
	Window:SelectTab(1)
	RunService.RenderStepped:Wait()
	Window:SelectTab(1)
	RunService.RenderStepped:Wait()
	-- [envlog] the statements above repeat forever (loop)
end)
task.spawn(function(...)
	Config:Load()
	task.wait(1)
	local data6 = Config:GetData()
	HttpService:JSONEncode({ data = data6, hud = {} })
end)
result:Notify({
	Title = "TieDev",
	Content = "Loaded. G toggles the window.",
	Duration = 10,
	Icon = "rbxasset://FVLV2/tiedev.png"
})
