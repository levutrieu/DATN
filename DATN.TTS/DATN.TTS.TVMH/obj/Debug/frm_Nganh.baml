   M S B A M L   `   `   `  ����  DATN.TTS.TVMH    DATN.TTS.TVMH.frm_Nganh   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      a ]DevExpress.Xpf.Grid.v15.2, Version=15.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49al hDevExpress.Xpf.Grid.v15.2.Extensions, Version=15.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49af bDevExpress.Xpf.Grid.v15.2.Core, Version=15.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a@dxg2http://schemas.devexpress.com/winfx/2008/xaml/grid    5      a ]DevExpress.Xpf.Core.v15.2, Version=15.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a;dx2http://schemas.devexpress.com/winfx/2008/xaml/core  5      ?dxe5http://schemas.devexpress.com/winfx/2008/xaml/editors  5        N� Title$  	frm_Nganh��5      .��5      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $��10 �6   �� 5      $	��400 �6   �� 5      $��* �6   .+�5   
   �� -   5         ��Name$ 
BrdBtnWrap��5      $��0��6%   $��Stretch=�62   $��Stretch=�6P   ._�5      ��  �� Orientation$ 
Horizontal=�6   $��Right=�62   $��0,1,0,1q�6N   .+�5      �� -   5        $��	btnAddNew��5   �   $��Thêm mới��63      Button_Style#��[  6F   $��Right=�6l   $��Center=�6�   �� 5      -   5        $��btnSave��5   �   $
��Lưu��61   #��[  6?   $��Right=�6e   $��Center=�6�   �� 5      -   5        $��	btnDelete��5   �   $
��Xóa��63   #��[  6A   $��Right=�6g   $��Center=�6�   �� 5      -   5        $��
btnRefresh��5   �   $��
Làm mới��64   #��[  6F   $��Right=�6l   $��Center=�6�   5      5      9� 5    
   $��1��6   $��0��6    $��6��60   $��RightToLeft=�6D     ExpanderStyle#��[ 6`   $��Stretch=�6�   $��Stretch=�6�    9� 
IsExpanded . $��1,0,1,0q�6�   .��5!      �� $��Stretch=�6   .+�5"      �� 
����������#27415d$��1,0,1,2q�6G   $
��auto��6a   ._�5$      �� $��LeftToRight=�6!   $ Vertical=�6=   $��Stretch=�6T   .+�5%      �  5&      �� 5'   "   $��25 �60   �� 5(   "   $
��0.2* �60   �� 5)   "   $��25 �60   �� 5*   "   $
��0.1* �60    � ColumnDefinitions 5.      �� 5/   "   $
��0.1* �63   �� 50   "   $
��Auto �63   �� 51   "   $
��0.8* �63   �� 52   "   $
��Auto �63   �� 53   "   $
��0.8* �63   �� 54   "   $
��Auto �63   �� 55   "   $
��0.8* �63   �� 56   "   $
��Auto �63   �� 57   "   $
��0.8* �63   �� 58   "   $
��0.1* �63   .+�5:      �� $��0��6(   $��1��65   $��Mã ngành:��6E     TextBlockStyle#��[ 6V   %  DevExpress.Xpf.Editors.TextEdit  5;      -   5        $��
txtMaNganh��5;   H   $��0��6+   $��2��68     TextEditStyle#��[ 6Z   )  #DevExpress.Xpf.Editors.TextEditBase   	MaxLength$ 50��6�   %  DevExpress.Xpf.Editors.BaseEdit   	EditValue 6�   �� *
MA_NGANH+6�   �� 5=      $��0��6(   $��3��65   $��Ngành:��6E   #��[ 6S     5>      -   5        $��txtTenNganh��5>   H   $��0��6+   $��4��68   #��[ 6[    6�   �� *	TEN_NGANH+�� 5@      $��0��6(   $��5��65   $��Ký hiệu:��6E   #��[ 6U     5A      -   5        $��	txtKyHieu��5A   H   $��0��6+   $��6��68   #��[ 6Y      AcceptsReturn . 	   TextWrapping$
	 Wrap=�5B   A   $	 255��5C   H    6+   �� *KYHIEU+6H   �� 5E      $��0��6(   $��7��65   $��	Ghi chú:��6E   #��[ 6U     5F      -	   5        $��	txtGhiChu��5G   +   $��0��5F   +   $��8��68   $��3��6H   #��[ 5G   <   $	 255��5H   H    6+   �� *GHICHU+6H   �� 5R      $��2��6(   $��1��65   $��Khoa:��6E   #��[ 6R   )  #DevExpress.Xpf.Editors.ComboBoxEdit  5S      -
   5        $��cbbKhoa��5S   L   $��2��6/   $��2��6<     ComboBoxEditStyle#��[ 6[   +  %DevExpress.Xpf.Editors.LookUpEditBase
   AutoComplete
 .    ValueMember$ ID_KHOA��5V   /      DisplayMember$ TEN_KHOA��6E    5U   /   �� *	ID_KHOA+ �� UpdateSourceTrigger$ PropertyChanged=�5V   E   �� 5Y      $��2��6(   $��3��65   $��Cấp ngành:��6E   #��[ 6W     5Z      -   5        $��txtCapNganh��5Z   H   $��2��6+   $��4��68   #��[ 6[   $	 255��5[   K    6+   �� *	CAP_NGANH+6K   �� 5\      $��2��6(   $��5��65   $��Trạng thái:��6E   #��[ 6X     5]      -   5        $��txtTThai��5]   H   $��2��6+   $��6��68   #��[ 6X   $	 255��5^   K    6+   �� *	TRANGTHAI+6K   5`      5a      5c      5d      5e      � 5g   
   $��3��6    5h      �� 5i      $	��400 �6    .+�5k      %  DevExpress.Xpf.Grid.GridControl  -   5          Name$	 grd��5k   s   )  #DevExpress.Xpf.Grid.DataControlBase   AutoPopulateColumns . $��Stretch=�69   $��Stretch=�6W   &   DevExpress.Xpf.Core.ThemeManager   	ThemeName0	  *DevExpress.Xpf.Core.ThemeNameTypeConverter$ MetropolisLight	 5l         View 5m      #
  DevExpress.Xpf.Grid.TableView
  5n      -   5         
 Name$ grdViewNDung��5n   u   &   DevExpress.Xpf.Grid.DataViewBase   NavigationStyle$
 Cell=�6%   &   DevExpress.Xpf.Grid.GridViewBase   ShowGroupPanel .      UseAnimationWhenExpanding .    SelectedRowStyle 
  RowStyle# [ 5o   $   5p      5r      5s      5t      5u      