   M S B A M L   `   `   `  ����  DATN.TTS.TVMH"    DATN.TTS.TVMH.frm_CauHinhSQL   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   a ]DevExpress.Xpf.Core.v15.2, Version=15.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a?dxe5http://schemas.devexpress.com/winfx/2008/xaml/editors  5   	     � Title$  Cấu hình dữ liệu��5   	   $	��240��6"   $	��420��6/    � WindowStartupLocation$ CenterScreen=�5   	    � 
ResizeMode$ NoResize=�5   	   .��5      �  � ColumnDefinitions 5	   
   �� 5
      $
��0.3* �6   �� 5      $
��Auto �6   �� 5      $	��120 �6   �� 5      $	��120 �6   �� 5      $
��0.4* �6    � RowDefinitions 5   
   �� 5      $
��0.5* �6   �� 5      $��32 �6   �� 5      $��5 �6   �� 5      $��32 �6   �� 5      $��5 �6   �� 5      $��32 �6   �� 5      $��5 �6   �� 5      $��32 �6   �� 5      $��5 �6   �� 5      $��32 �6   �� 5      $
��0.5* �6   .+�5   
   �� $��1��6   $��1��6!   $��Tên Server:��61      TextBlockStyle#��[  6D   )  #DevExpress.Xpf.Editors.ComboBoxEdit  5   
   -   5        $��cbo_servername��5   w   $��1��6   $��2��6(   $��2��68     ComboBoxEditStyle#��[ 6L   +  %DevExpress.Xpf.Editors.LookUpEditBase   DisplayMember$ SERVER_NAME��6�      ValueMember$ SERVER_NAME_FULL��6�   %  DevExpress.Xpf.Editors.BaseEdit   	EditValue 6�   �� *SERVER_NAME+�� 5   
   -   5        $��
btnRefresh��5   z   $��1��6   $��4��6     Button_Style#��[ 6.   $
��Left=�6T   $��35��6o   .��5       �� $��Images/refresh-icon.png��6   $
��Fill=�65   5!      �� 5"   
   $��3��6   $��1��6!   $��Tên đăng nhập:��61   #��[  6G   %  DevExpress.Xpf.Editors.TextEdit  5#   
   $��3��6   $��2��6$   $��2��64     TextEditStyle#��[ 6H   )  #DevExpress.Xpf.Editors.TextEditBase   Text 6o   �� *USER+�� 5$   
   $��5��6   $��1��6!   $��Mật khẩu:��61   #��[  6B   ,  &DevExpress.Xpf.Editors.PasswordBoxEdit  5%   
   $��5��6   $��2��6+   $��2��6;     PasswordBoxEditStyle#��[ 6P    6~   �� *PASS+�� 5&   
   $��7��6   $��1��6!   $��	Database:��61   #��[  6B     5'   
   -   5        $��cbo_database��5'   w   $��7��6   $��2��6(   $��2��68   #��[ 6L   $
 name��6�   $
 name��6�    6�   �� *
DATABASE+6�   �� 5(   
   -   5        $��btnOK��5(   �   $��9��6   $��2��6   $��
Đồng ý��6.   #��[ 6?   $��Stretch=�6e   6�   �� 5)   
   -   5        $��btnHuy��5)   �   $��9��6   $��3��6   $��Hủy��6.   #��[ 6<   $��Stretch=�6b   6�   5*      5+      