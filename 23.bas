�%�
  :��Darkstone (c) freeware 2021 F� :�� version 22.20210531.1750 N� :�� o�( :��   Made by Zett Darkstone w�2 :�� ��< :��     twitch.tv/zett_darkstone ��F :�� ݀P :��   Comments and modifications since v19 by FiXato �Z :��     https://contact.fixato.org �d :�� ]�e �:� "Select tileset:": � "1) Lava": � "2) Fields": � "3) Water":� "4) Faces" f�f A$�� ��g � A$�"1" � A$�"i9_7":� n  ��h � A$�"2" � A$�"i9_6":� n  Ái � A$�"3" � A$�"i9_2":� n  �j � A$�"4" � A$�"f1_1":� n  �m � f  ��n � A�Z �x � ,:D�:� YL(c):� XL(c) N�� � E� � :� PAGE 0,E:� ,,:�:� E:� PAGE 0,:TE� _�� � ,,:�� q�� � A$�".sc5",S ��� � A$�".co5",S:�� ��� :��BLOAD"i9_7.sc5",S ǂ� :��BLOAD"i9_7.co5",S:COLOR=RESTORE ߂� � Z� � ? � :D� ��� � Y� � ' �  :D�D� �� � X� � O �  H�� XL(TE)�(�X�Y�D):YL(TE)�(_�Z)�Y�(X�)�(C�):TE�TE� P�� � X X�� � Y `�� � Z ��� :��Create the selection and placement frame as a sprite on both pages ��� � PAGE 1, Ã� � ҃� PAGE 0, ܃� � �"X�:Y�:Z�:J�2 �,:��move cursor on editor �6D���() 9�@� D� � Y�Y�:� Y� � Y� W�J� D� � X�X�:� X� � X� v�T� D� � Y�Y�:� Y� � Y� ��^� D� � X�X�:� X� � X� لh:��z-axis movement, tile placement, and tile selector detection. �rA$�� �|� A$�"z" � Z�Z�:� Z�K  � Z� )��� A$�"x" � Z�Z�:� Z� � Z�K >��� A$�"c" � �   b��� A$�"h" � H�:� � ,(� ,�), u��� A$�"H" � H� ���� A$�"+" � J�J�2 ���� A$�"-" � J�J�2:� J� � J� ̅�� A$�"q" � XS�:YS�:� � 셖� A$�"w" � XS� :YS�:� � ��� A$�"e" � XS�@:YS�:� � ,��� A$�"r" � XS�`:YS�:� � L��� A$�"t" � XS��:YS�:� � l��� A$�"y" � XS��:YS�:� � ���� A$�"u" � XS��:YS�:� � ���� A$�"i" � XS��:YS�:� � ̆�� A$�"Q" � XS�:YS� :� � 톞� A$�"W" � XS� :YS� :� � ��� A$�"E" � XS�@:YS� :� � /��� A$�"R" � XS�`:YS� :� � P��� A$�"T" � XS��:YS� :� � q��� A$�"Y" � XS��:YS� :� � ���� A$�"U" � XS��:YS� :� � ���� A$�"I" � XS��:YS� :� � ȇ�� A$�"S" � � � ���� A$���( ) � � � ��� H�� � � � ,(XL(X�Y�Z),YL(X�Y�Z)),�(Z�), 6��:��slow down cursor movement H��� I� � J:� I R��� 6 X��� ���:�� Sprite definition for tile selection and placement ڈ��$()���(  )���( )���( 0)���(�)���(�)���(�)���(�)���(�):� �� :��Tile Selector subroutine �*XS�:YS�:� PAGE 1, �4D���() A�>� D� � YS�YS� :�YS� � YS� d�H� D� � XS�XS� :�XS�� � XS� ��\� D� � YS�YS� :�YS�! � YS�  ��f� D� � XS�XS� :�XS� � XS�� �p:�� Put the selection frame sprite on the tile selector screen �q� � ,(XS,YS),, #�r� ����( ) � � PAGE 0,:� D�x:��Slow down cursor movement V�y� I� � J:� I `�z� 4 ���:�� Subroutine to draw tiles on main placement screen ���� C� � � ؊�� C� � YI�  : XI�(C�)� ::� YI�:XI�C�  ��� (XI,YI)�(�XI,�YI), �(XL(XR�YR�ZA),YL(XR�YR�ZA)),,T�:� <��:�� Tile placement subroutine ���:�� opslaan nieuwe tile en heropbouw z=hoogte wordt verdeeld in zx en zy ���� Z� � ZX�:ZY� ���� Z� � ZX��:ZY� ϋ�� Z�2 � ZX�:ZY�j 苽� Z�K � ZX��:ZY�j -��:�� opslaan van nieuwe tile in lagen zx&zy laag xs&ys welke tile n��� PAGE 0,:�:� PAGE 0,:�(ZX�X,ZY�(Y�)),((XS� )�(YS� )�) ���:�� hertekenen van het wat we nu zien xr&yr nieuwe opbouw. ̌�� XR� � :� YR� �  �  ׌�:�� z1 ��C��(XR,YR�):ZA� ���� � � :�� z2 �
C��(��XR,YR�):ZA� &�� � 1�:�� z3 K�(C��(XR,j�YR�):ZA�2 U�2� � `�<:�� z4 }�FC��(��XR,j�YR�):ZA�K ��P� � ��Z� YR ��d� XR ��n� PAGE 0,:� &��:��Subroutine to store the current drawing to a file; .GRP is only the current graphic data; .SC5 is the entire screen. 0��� @ ���:��Convert date and time to an 8 digit integer sort of representing amount of minutes since year 00 ڎ�:��obviously it doesn't take the century change into account, #��:��and it assumes every month is 31 days and every year is 366 days, j��:��but it should give an incremental integer that fits a filename. ���:��`F$` will contain this filename without suffix. ��� � T$:F$���(��((��(��(D$,,))�FSV�)�(��(��(D$,,))�EDd )�(��(��(D$,,))��)���(��(T$,,))�<���(��(T$,,))),) U��� (,)�(�,�), � F$�".GRP":� F$�".SC5",,�v,S:� ��@:��Subroutine to convert GET DATE to Y/M/D format ǐA� DATE D$:� ((��(+ ) � &B01110000)��) � C,D,E �B� :��return from 1600 sub )�C� :�� Y/M/D is already the right format, nothing to change here y�DD$���(D$,,)�"/"���(D$,,)�"/"���(D$,,):� :�� Convert from M/D/Y format ɑED$���(D$,,)�"/"���(D$,,)�"/"���(D$,,):� :�� Convert from D/M/Y format   