   M S B A M L   `   `   `  ����h  dDevExpress.XtraSpreadsheet.v15.2, Version=15.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aqRclr-namespace:DevExpress.XtraSpreadsheet;assembly=DevExpress.XtraSpreadsheet.v15.2DevExpress.XtraSpreadsheet  5	       DATN.TTS.TVMH$   DATN.TTS.TVMH.frm_PhanCong_TKB   5      h dDevExpress.Xpf.Spreadsheet.v15.2, Version=15.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aEdxsps9http://schemas.devexpress.com/winfx/2008/xaml/spreadsheet  \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      a ]DevExpress.Xpf.Grid.v15.2, Version=15.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49al hDevExpress.Xpf.Grid.v15.2.Extensions, Version=15.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49af	 bDevExpress.Xpf.Grid.v15.2.Core, Version=15.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a@dxg2http://schemas.devexpress.com/winfx/2008/xaml/grid   	 5      a
 ]DevExpress.Xpf.Core.v15.2, Version=15.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a;dx2http://schemas.devexpress.com/winfx/2008/xaml/core 
 5      ?dxe5http://schemas.devexpress.com/winfx/2008/xaml/editors 
 5      hxtraSpreadsheetRclr-namespace:DevExpress.XtraSpreadsheet;assembly=DevExpress.XtraSpreadsheet.v15.2 
 5	        N� Title$  frm_PhanCong_TKB��5      .��5      �  � ColumnDefinitions 5   
   �� 5      $��0.25* �6   �� 5      $��5 �6   �� 5      $��* �6   .+�5   
   �� -   5         ��Name$ tabNKS��5   2   $��0��6   $��0��6"   $y�Visible=�6B   .@�5      �� -   5         ��Name$ tabLopHocPhan��5   ,   $��Lớp học phần��6   .��5      �  � RowDefinitions 5      �� 5      $��25 �6(   �� 5      $��2 �6(   �� 5      $��25 �6(   �� 5      $��2 �6(   �� 5      $��* �6(    5      �� 5      $
��Auto �6+   �� 5       $��* �6+   .+�5"      �� -   5         ��Name$ tblHeDaoTao��5"   =   $��0��6    $��0��6-   $��Hệ đào tạo��6R   $��Center=�6d   ) 
 #DevExpress.Xpf.Editors.ComboBoxEdit  5#      -   5          Name$ cboHeDT��5#   D   $��0��6'   $��1��64   + 
 %DevExpress.Xpf.Editors.LookUpEditBase   AutoComplete . ' 
 !DevExpress.Xpf.Editors.ButtonEdit   IsTextEditable$
 TrueX�6i      ComboBoxEditStyle#��[  6   	   DisplayMember$	 TEN_HE_DAOTAO��5%   '   
   ValueMember$
 ID_HE_DAOTAO��6E   % 
 DevExpress.Xpf.Editors.BaseEdit   	EditValue 5$   '   �� *ID_HE_DAOTAO+ �� UpdateSourceTrigger$ PropertyChanged=�5%   E   �� 5'      -   5        $ 
tblKhoaHoc��5'   =   $��2��6    $��0��6-   $��Khóa��6Q   $��Center=�6]     5(      -   5        $ 
cboKhoaHoc��5(   D   $��2��6'   $��1��64    . $
 TrueX�6l   #��[  6�   $	 TEN_KHOAHOC��5*   '   $
 
ID_KHOAHOC��6C    5)   '   �� *
ID_KHOAHOC+$ PropertyChanged=�5*   C   � 5,      $��0��6   $��4��6+   $��2��68   .+�5-      %  DevExpress.Xpf.Grid.GridControl  -   5          Name$ grdLHP��5-   P   ) 	 #DevExpress.Xpf.Grid.DataControlBase   AutoPopulateColumns . $��0q�6E   $��12(�6`   & 
  DevExpress.Xpf.Core.ThemeManager   	ThemeName0 
 *DevExpress.Xpf.Core.ThemeNameTypeConverter$ MetropolisLight 6o      View 5.      #	  DevExpress.Xpf.Grid.TableView	  5/   "   -   5         	 Name$ 
grdViewLHP��5/   �   &
 	  DevExpress.Xpf.Grid.DataViewBase 
  NavigationStyle$
 Cell=�60   &   DevExpress.Xpf.Grid.GridViewBase   ShowGroupPanel .      UseAnimationWhenExpanding .    SelectedRowStyle 	  RowStyle# [ 50   0   52      53      55      56      57      � 59   
   -	   5        $��2��59      $��0��6    5:      �� 5;      $
��Auto �6    �� 5<      $��5 �6    �� 5=      $	��515 �6    �� 5>      $��* �6    .+�5@      3  -DevExpress.Xpf.Spreadsheet.SpreadsheetControl  -
   5        $��XepTKB��5@   D   $��0��6'   $��2��67      ShowTabSelector .  $   HorizontalScrollbarVisibility$ Hidden=�5A   ;   "   VerticalScrollbarVisibility$ Hidden=�6b    � ContextMenu 5C      �� 5D      .@�5F      m� -   5        $��BtnMerge��5F   4   $��	Xếp TKB��6#    m� Icon 5G      �� 5H   "   .+�5I   &   �� $��15��6,   $��15��67   $��Images/New.png��6C   �� 5J   &   $��	Xếp TKB��67   5K   #   5M      m� 5N      -   5        $��BtnXoaMerge��5N   4   $��Xóa TKB��6#    5O      �� 5P   "   .+�5Q   &   �� $��15��6,   $��15��67   $��Images/Delete.png��6C   5R   #   5T      m� 5U      -   5        $��
BtnCapNhat��5U   9   $��Cập nhật TKB��6#    5V      �� 5W   "   .+�5X   &   �� $��15��6,   $��15��67   $��Images/Update.png��6C   �� 5Y   &   $��Cập nhật TKB��67   5Z   #   5\      5]      5_      �� 5`      $��0��6   
����������#27415d$��	1.5,1,1,1q�6P   $
��auto��6l   ._�5a      �  5b      �� 5c      $��3 �6(   �� 5d      $��32 �6(   �� 5e      $��2 �6(   �� 5f      $��32 �6(   �� 5g      $��3 �6(   .+�5i      �� -   5         ��Name$ btnTop��5i      $��1��6-   
����������#27415d$��0,0,0,1q�6h   {�. ._�5j      �  5k      �� 5l   "   $��1 �60   �� 5m   "   $
��Auto �60    5o      �� 5p   "   $��5 �63   �� 5q   "   $��2* �63   �� 5r   "   $��2* �63   �� 5s   "   $��2* �63   �� 5t   "   $��2* �63   �� 5u   "   $��2* �63   �� 5v   "   $��2* �63   �� 5w   "   $��2* �63   �� 5x   "   $��2* �63   �� 5y   "   $
��3.5* �63   �� 5z   "   $��2* �63   .+�5|      �� $��1��6(   $��1��65   $��Tổng tuần học:��6E     TextBlockStyle#��[ 6[   % 
 DevExpress.Xpf.Editors.TextEdit  5}      -   5        $��
txtTuanhoc��5}   H   $��1��6+   $��2��68     TextEditStyle#��[ 6x      
IsReadOnly .  6Z   �� *	SO_TUAN+6�   �� 5      $��1��6(   $��3��65   $��Tổng tiết học:��6E   #��[ 6[     5�      -   5        $��txtTongTiet��5�   H   $��1��6+   $��4��68   #��[ 6~    .  6[   �� *SO_TIET_TONG+6�   �� 5�      $��1��6(   $��5��65   $��Số tiết đã sếp:��6E   #��[ 6\     5�      -   5        $��txtSoTietDaSep��5�   H   $��1��6+   $��6��68   #��[ 6�    .  6^   �� *SO_TIET_DASEP+5�   5   �� 5�      $��1��6(   $��7��65   $��Số tiết còn lại:��6E   #��[ 6]     5�      -   5        $��txtSoTietConLai��5�   H   $��1��6+   $��8��68   #��[ 6�    .  6_   �� *SO_TIET_CONLAI+6�   �� 5�      $��1��6(   $��9��65   $+��%Số tiết / Tuần có thể xếp:��6E   #��[ 6g     5�      -   5        $��txtSoTietTuan��5�   I   $��1��6+   $��10��68   #��[ 6�    .  6^   �� *SO_TIET_TUAN+6�   5�      5�      �� 5�      -   5        $ BorChonTiet��5�      $��3��62   
����������#27415d$��0,0,0,0q�6m   ._�5�      �  5�      �� 5�   "   $��2 �60   �� 5�   "   $
��Auto �60    5�      �� 5�   "   $��5 �63   �� 5�   "   $��2* �63   �� 5�   "   $��2* �63   �� 5�   "   $��2* �63   �� 5�   "   $��2* �63   �� 5�   "   $��2* �63   �� 5�   "   $��2* �63   �� 5�   "   $��2* �63   �� 5�   "   $��2* �63   �� 5�   "   $
��3.5* �63   �� 5�   "   $
��Auto �63   .+�5�      �� -   5        $��1��5�   %   $��10��63   $��Tìm phòng trống��6`   $��Right=�6z     Button_Style_2#��[ 6�   5�      5�      5�      5�      5�      5�      5�      