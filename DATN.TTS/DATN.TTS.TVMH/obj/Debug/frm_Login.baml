   M S B A M L   `   `   `  ����  DATN.TTS.TVMH    DATN.TTS.TVMH.frm_Login   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   a ]DevExpress.Xpf.Core.v15.2, Version=15.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a?dxe5http://schemas.devexpress.com/winfx/2008/xaml/editors  5   	     � Title$  Đăng nhập��5   	   $	��220��6   $	��450��6(    � WindowStartupLocation$ CenterScreen=�5   	    � 
ResizeMode$ NoResize=�5   	   .��5      � ��5	   
   �� 5
       �� ImageSource$! Images/background-login.png��6   6E    � ColumnDefinitions 5   
   �� 5      $
��0.5* �6   �� 5      $
��Auto �6   �� 5      $��90 �6   �� 5      $��90 �6   �� 5      $��90 �6   �� 5      $
��0.5* �6    � RowDefinitions 5   
   �� 5      $
��0.5* �6   �� 5      $��32 �6   �� 5      $��10 �6   �� 5      $��32 �6   �� 5      $��32 �6   �� 5      $��32 �6   �� 5      $
��0.5* �6   .+�5   
   �� $��1��6   $��1��6!   $��Tên đăng nhập:��61      TextBlockStyle#��[  6G   %  DevExpress.Xpf.Editors.TextEdit  5   
   -   5        $��AccountTextEdit��5   �   $��1��6   $��2��6$   $��3��64     TextEditStyle#��[ 6H   )  #DevExpress.Xpf.Editors.TextEditBase   Text 6o   �� *	account+6�   �� 5   
   $��3��6   $��1��6!   $��Mật khẩu:��61   #��[  6B   ,  &DevExpress.Xpf.Editors.PasswordBoxEdit  5    
   $��3��6   $��2��6+   $��3��6;     PasswordBoxEditStyle#��[ 6P    6~   �� *
password+&   DevExpress.Xpf.Editors.CheckEdit  5!   
   -   5        $��LuuMK��5!   u   $��4��6   $��2��6%   $��2��65   $��2 0 0 0q�6I      Content)  #DevExpress.Xpf.Core.ObjectConverter$ Ghi nhớ mật khẩu 6Z   6�   �� 5"   
   -   5        $��
btnCauHinh��5"   �   $��5��6   $��2��6   $��Cấu hình��6.     Button_Style#��[ 6A   $��Stretch=�6g   6�   �� 5#   
   -   5        $��btnDangNhap��5#   �   $��5��6   $��3��6   $��Đăng nhập��6.   #��[ 6B   $��Stretch=�6h   6�   �� 5$   
   -   5        $��btnThoat��5$   �   $��5��6   $��4��6   $��Thoát��6.   #��[ 6>   $��Stretch=�6d   6�   5%      5&      