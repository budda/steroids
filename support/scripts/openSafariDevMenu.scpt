FasdUAS 1.101.10   ��   ��    k             i         I     �� 	��
�� .aevtoappnull  �   � **** 	 o      ���� 0 argv  ��    k     
 
     l     ��������  ��  ��        Z       ��   =         l     ����  I    �� ��
�� .corecnte****       ****  o     ���� 0 argv  ��  ��  ��    m    ����    k   
        l  
 
��  ��    6 0log "No arguments given, opening any index.html"     �   ` l o g   " N o   a r g u m e n t s   g i v e n ,   o p e n i n g   a n y   i n d e x . h t m l "   ��  r   
     m   
    �      i n d e x . h t m l  o      ���� 0 
stringpart 
StringPart��  ��    k     ! !  " # " l   �� $ %��   $ % log "Opening " & item 1 of argv    % � & & > l o g   " O p e n i n g   "   &   i t e m   1   o f   a r g v #  '�� ' r     ( ) ( n     * + * 4    �� ,
�� 
cobj , m    ����  + o    ���� 0 argv   ) o      ���� 0 
stringpart 
StringPart��     - . - l   ��������  ��  ��   .  / 0 / l   �� 1 2��   1 #  Make sure Safari is running.    2 � 3 3 :   M a k e   s u r e   S a f a r i   i s   r u n n i n g . 0  4 5 4 l   �� 6 7��   6 � � Note that we don't *activate* it yet, so that if something goes wrong the Terminal window stays active and the user gets to see error messages.    7 � 8 8    N o t e   t h a t   w e   d o n ' t   * a c t i v a t e *   i t   y e t ,   s o   t h a t   i f   s o m e t h i n g   g o e s   w r o n g   t h e   T e r m i n a l   w i n d o w   s t a y s   a c t i v e   a n d   t h e   u s e r   g e t s   t o   s e e   e r r o r   m e s s a g e s . 5  9 : 9 l   �� ; <��   ; � � (This also avoids a bug affecting both OSX 10.8 and 10.9 where, if Safari isn't running, `tell application "Safari" to activate` *launches, but doesn't activate* Safari.)    < � = =V   ( T h i s   a l s o   a v o i d s   a   b u g   a f f e c t i n g   b o t h   O S X   1 0 . 8   a n d   1 0 . 9   w h e r e ,   i f   S a f a r i   i s n ' t   r u n n i n g ,   ` t e l l   a p p l i c a t i o n   " S a f a r i "   t o   a c t i v a t e `   * l a u n c h e s ,   b u t   d o e s n ' t   a c t i v a t e *   S a f a r i . ) :  > ? > O   ! @ A @ I    ������
�� .ascrnoop****      � ****��  ��   A m     B B�                                                                                  sfri  alis    6  Iron                       �iV1H+     k
Safari.app                                                       l�R�        ����  	                Applications    �i,      �6�       k  Iron:Applications: Safari.app    
 S a f a r i . a p p  
  I r o n  Applications/Safari.app   / ��   ?  C D C l  " "��������  ��  ��   D  E F E O   " G H G k   &  I I  J K J l  & &��������  ��  ��   K  L M L O   & � N O N k   - � P P  Q R Q l  - -��������  ��  ��   R  S T S l  - -�� U V��   U u o Try to obtain a reference to the `Developer > {iPhone|iPad} Simulator`submenu items; give up after a while.			    V � W W �   T r y   t o   o b t a i n   a   r e f e r e n c e   t o   t h e   ` D e v e l o p e r   >   { i P h o n e | i P a d }   S i m u l a t o r ` s u b m e n u   i t e m s ;   g i v e   u p   a f t e r   a   w h i l e . 	 	 	 T  X Y X r   - 0 Z [ Z m   - .��
�� 
msng [ o      ���� 0 
simsubmenu 
simSubMenu Y  \ ] \ Y   1 � ^�� _ `�� ^ k   ; � a a  b c b l  ; ;�� d e��   d Z T Note that we reference the Developer menu by *index*, as its name may be localized.    e � f f �   N o t e   t h a t   w e   r e f e r e n c e   t h e   D e v e l o p e r   m e n u   b y   * i n d e x * ,   a s   i t s   n a m e   m a y   b e   l o c a l i z e d . c  g h g l  ; ;�� i j��   i � � Furthermore, we search for the relevant menu item by the tokens "iPhone" or "iPad" only, since the "Simulator" part could be localized, too.    j � k k   F u r t h e r m o r e ,   w e   s e a r c h   f o r   t h e   r e l e v a n t   m e n u   i t e m   b y   t h e   t o k e n s   " i P h o n e "   o r   " i P a d "   o n l y ,   s i n c e   t h e   " S i m u l a t o r "   p a r t   c o u l d   b e   l o c a l i z e d ,   t o o . h  l m l l  ; ;�� n o��   n n h Note that the menu-item name reflects whether the simulator currently simulates the iPhone or the iPad.    o � p p �   N o t e   t h a t   t h e   m e n u - i t e m   n a m e   r e f l e c t s   w h e t h e r   t h e   s i m u l a t o r   c u r r e n t l y   s i m u l a t e s   t h e   i P h o n e   o r   t h e   i P a d . m  q r q O   ; � s t s Z   e � u v���� u I  e j������
�� .coredoexbool       obj ��  ��   v l  m � w x y w k   m � z z  { | { l  m m�� } ~��   } u o Simulate a click on the menu item so as to get it to populate its submenu with the currently debuggable pages.    ~ �   �   S i m u l a t e   a   c l i c k   o n   t h e   m e n u   i t e m   s o   a s   t o   g e t   i t   t o   p o p u l a t e   i t s   s u b m e n u   w i t h   t h e   c u r r e n t l y   d e b u g g a b l e   p a g e s . |  � � � I  m r�� ���
�� .prcsclicuiel    ��� uiel �  g   m n��   �  � � � l  s s�� � ���   � 9 3 Loop over submenu items and find the desired page.    � � � � f   L o o p   o v e r   s u b m e n u   i t e m s   a n d   f i n d   t h e   d e s i r e d   p a g e . �  � � � r   s x � � � m   s t��
�� 
msng � o      ���� 0 pageurl pageUrl �  � � � X   y � ��� � � k   � � � �  � � � l  � � � � � � r   � � � � � n   � � � � � 1   � ���
�� 
pALL � o   � ����� 0 itm   � o      ���� 	0 props   �  y !! Bizarrely, this intermediate step is needed - directly accessing `help of itm` leads to strange behavior on OSX 10.8.    � � � � �   ! !   B i z a r r e l y ,   t h i s   i n t e r m e d i a t e   s t e p   i s   n e e d e d   -   d i r e c t l y   a c c e s s i n g   ` h e l p   o f   i t m `   l e a d s   t o   s t r a n g e   b e h a v i o r   o n   O S X   1 0 . 8 . �  � � � l  � � � � � � r   � � � � � n   � � � � � 1   � ���
�� 
help � o   � ����� 	0 props   � o      ���� 0 pageurl pageUrl � &   Page URL is in `help` property.    � � � � @   P a g e   U R L   i s   i n   ` h e l p `   p r o p e r t y . �  ��� � Z   � � � ����� � F   � � � � � >  � � � � � o   � ����� 0 pageurl pageUrl � m   � ���
�� 
msng � E   � � � � � o   � ����� 0 pageurl pageUrl � o   � ����� 0 
stringpart 
StringPart � k   � � � �  � � � l  � ��� � ���   � G A Only now that we've found a matching page do we activate Safari.    � � � � �   O n l y   n o w   t h a t   w e ' v e   f o u n d   a   m a t c h i n g   p a g e   d o   w e   a c t i v a t e   S a f a r i . �  � � � O  � � � � � I  � �������
�� .miscactvnull��� ��� null��  ��   � m   � � � ��                                                                                  sfri  alis    6  Iron                       �iV1H+     k
Safari.app                                                       l�R�        ����  	                Applications    �i,      �6�       k  Iron:Applications: Safari.app    
 S a f a r i . a p p  
  I r o n  Applications/Safari.app   / ��   �  � � � l  � ��� � ���   � R L Finally, click on the item to show the Web Inspector for the matching page.    � � � � �   F i n a l l y ,   c l i c k   o n   t h e   i t e m   t o   s h o w   t h e   W e b   I n s p e c t o r   f o r   t h e   m a t c h i n g   p a g e . �  � � � I  � ��� ���
�� .prcsclicuiel    ��� uiel � o   � ����� 0 itm  ��   �  ��� � L   � �����  ��  ��  ��  ��  �� 0 itm   � n   | � � � � 2   ���
�� 
menI � n   |  � � � m   } ��
�� 
menE �  g   | } �  � � � l  � ��� � ���   � / ) Report error, if no matching page found.    � � � � R   R e p o r t   e r r o r ,   i f   n o   m a t c h i n g   p a g e   f o u n d . �  ��� � R   � ��� ���
�� .ascrerr ****      � **** � b   � � � � � b   � � � � � m   � � � � � � � N N o   c u r r e n t l y   d e b u g g a b l e   p a g e   m a t c h i n g   ' � o   � ����� 0 
stringpart 
StringPart � m   � � � � � � �  '   f o u n d .��  ��   x   Menu item found?    y � � � "   M e n u   i t e m   f o u n d ?��  ��   t l  ; b ����� � 6  ; b � � � n   ; E � � � 4  B E�� �
�� 
menI � m   C D����  � n   ; B � � � 4   ? B�� �
�� 
menE � m   @ A������ � 4   ; ?�� �
�� 
mbar � m   = >����  � G   H a � � � E   I T � � � 1   J N��
�� 
pnam � m   O S � � � � �  i P h o n e � E   U ` � � � 1   V Z��
�� 
pnam � m   [ _ � � � � �  i P a d��  ��   r  ��� � l  � � � � � � I  � ��� ���
�� .sysodelanull��� ��� nmbr � m   � � � � ?ə�������   � 0 * Menu item not (yet) available; try again.    � � � � T   M e n u   i t e m   n o t   ( y e t )   a v a i l a b l e ;   t r y   a g a i n .��  �� 0 i   _ m   4 5����  ` m   5 6���� ��   ]  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � ^ X Getting here means that the simulator menu item wasn't found within the timeout period.    � � � � �   G e t t i n g   h e r e   m e a n s   t h a t   t h e   s i m u l a t o r   m e n u   i t e m   w a s n ' t   f o u n d   w i t h i n   t h e   t i m e o u t   p e r i o d . �  � � � l  � ��� � ���   �   Abort with an error.    � � � � *   A b o r t   w i t h   a n   e r r o r . �  � � � R   � ��� ���
�� .ascrerr ****      � **** � m   � �   �� C a n n o t   d e t e r m i n e   d e b u g g a b l e   p a g e s :   i O S   S i m u l a t o r - r e l a t e d   m e n u   i t e m s   n o t   f o u n d   i n   S a f a r i . 
 M a k e   s u r e   t h a t   t h e   ` D e v e l o p e r `   m e n u   i s   a c t i v a t e d   i n   t h e   a d v a n c e d   p r e f e r e n c e s   a n d   t h a t   t h e   i O S   s i m u l a t o r   i s   r u n n i n g   a   U I W e b V i e w - b a s e d   a p p .��   �  l  � ���������  ��  ��   �� l  � ���������  ��  ��  ��   O 4   & *��
�� 
prcs m   ( ) �  S a f a r i M �� l  � ���������  ��  ��  ��   H m   " #		�                                                                                  sevs  alis    z  Iron                       �iV1H+     NSystem Events.app                                               0��(�        ����  	                CoreServices    �i,      ���       N   H   G  5Iron:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p  
  I r o n  -System/Library/CoreServices/System Events.app   / ��   F 
��
 l �������  ��  �  ��    �~ l     �}�|�{�}  �|  �{  �~       
�z�y�x�w�v�z   �u�t�s�r�q�p�o�n
�u .aevtoappnull  �   � ****�t 0 
stringpart 
StringPart�s 0 
simsubmenu 
simSubMenu�r 0 pageurl pageUrl�q 	0 props  �p  �o  �n   �m �l�k�j
�m .aevtoappnull  �   � ****�l 0 argv  �k   �i�h�g�i 0 argv  �h 0 i  �g 0 itm   "�f �e�d B�c	�b�a�`�_�^�]�\�[�Z � ��Y�X�W�V�U�T�S�R�Q � � ��P 
�f .corecnte****       ****�e 0 
stringpart 
StringPart
�d 
cobj
�c .ascrnoop****      � ****
�b 
prcs
�a 
msng�` 0 
simsubmenu 
simSubMenu�_ 
�^ 
mbar
�] 
menE�\��
�[ 
menI  
�Z 
pnam
�Y .coredoexbool       obj 
�X .prcsclicuiel    ��� uiel�W 0 pageurl pageUrl
�V 
kocl
�U 
pALL�T 	0 props  
�S 
help
�R 
bool
�Q .miscactvnull��� ��� null
�P .sysodelanull��� ��� nmbr�j�j  j  �E�Y ��k/E�O� *j UO� �*��/ ��E�O �k�kh *�k/��/�k/a [[a ,\Za @\[a ,\Za @B1 �*j  z*j O�E` O [*�,�-[a �l  kh �a ,E` O_ a ,E` O_ �	 _ �a & � *j UO�j OhY h[OY��O)ja �%a %Y hUOa j  [OY�FO)ja !OPUOPUOP �  t a b
�y 
msng � 4 h t t p : / / l o c a l h o s t / t a b 1 . h t m l �O
�O 
desc �  m e n u   i t e m �N�M
�N 
orie
�M 
msng �L
�L 
posn �K�K   �J�I�J  �I L �H�G
�H 
pcls
�G 
menI �F
�F 
rold �    m e n u   i t e m �E�D!
�E 
axds
�D 
msng! �C�B"
�C 
focu
�B 
msng" �A#$
�A 
titl# �%% * l o c a l h o s t      t a b 1 . h t m l$ �@&'
�@ 
ptsz& �?(�? (  �>�=�>�= ' �<�;)
�< 
valL
�; 
msng) �:*
�: 
help* �9�8+
�9 
enaB
�8 boovtrue+ �7�6,
�7 
maxV
�6 
msng, �5-.
�5 
role- �//  A X M e n u I t e m. �401
�4 
ects0 �32�3  2   1 �2�13
�2 
sbrl
�1 
msng3 �0�/4
�0 
selE
�/ boovfals4 �.56
�. 
pnam5 �77 * l o c a l h o s t      t a b 1 . h t m l6 �-�,�+
�- 
minW
�, 
msng�+  �x  �w  �v   ascr  ��ޭ