   M S B A M L   `   `   `  ����  DATN.TTS.TVMH"    DATN.TTS.TVMH.frm_DoiMatKhau   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   a ]DevExpress.Xpf.Core.v15.2, Version=15.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a?dxe5http://schemas.devexpress.com/winfx/2008/xaml/editors  5   	     � Title$  Đổi mật khẩu��5   	   $	��300��6   $	��310��6+    � WindowStartupLocation$ CenterScreen=�5   	    � 
ResizeMode$ NoResize=�5   	    � ShowInTaskbar .   � SizeToContent$ Height=�5	   	   .��5
      � $��20q�6    � RowDefinitions 5   
   �� 5      $��25 �6   �� 5      $��5 �6   �� 5      $��25 �6   �� 5      $��5 �6   �� 5      $��25 �6   �� 5      $��5 �6   �� 5      $��25 �6   �� 5      $��5 �6   �� 5      $��25 �6   �� 5      $��5 �6    � ColumnDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��0.5* �6   �� 5      $
��0.3* �6   .+�5   
   �� $��0��6   $��0��6!   $��Tài khoản��61      TextBlockStyle#��[  6B   %  DevExpress.Xpf.Editors.TextEdit  5   
   -   5        $��AccountTextEdit��5   �   $��0��6   $��1��6$   $��2��64     TextEditStyle#��[ 6H   %  DevExpress.Xpf.Editors.BaseEdit   
IsReadOnly . )  #DevExpress.Xpf.Editors.TextEditBase   Text 6o   �� *	account+6�   �� 5   
   $��2��6   $��0��6!   $��Mật khẩu��61   #��[  6A   ,  &DevExpress.Xpf.Editors.PasswordBoxEdit  5    
   $��2��6   $��1��6+   $��2��6;     PasswordBoxEditStyle#��[ 6P    6~   �� *
password+�� 5"   
   $��4��6   $��0��6!   $��Mật khẩu mới��61   #��[  6E     5#   
   $��4��6   $��1��6+   $��2��6;   #��[ 6P    6~   �� *
password+�� 5%   
   $��6��6   $��0��6!   $��Xác nhận��61   #��[  6A     5&   
   $��6��6   $��1��6+   $��2��6;   #��[ 6P    6~   �� *
password+�� 5(   
   -   5        $��btnsave��5(   �   $��8��6   $��1��6   $��Đổi mật khẩu��6.   $��Stretch=�6E     Button_Style#��[ 6c   6�   �� 5)   
   -   5        $��	btnCancel��5)   �   $��8��6   $��2��6   $��Hủy��6.   $��Stretch=�6<   #��[ 6Z   6�   5+      5,      