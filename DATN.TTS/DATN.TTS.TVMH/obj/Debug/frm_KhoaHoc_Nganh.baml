   M S B A M L   `   `   `  ����  DATN.TTS.TVMH%    DATN.TTS.TVMH.frm_KhoaHoc_Nganh   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      a ]DevExpress.Xpf.Grid.v15.2, Version=15.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49al hDevExpress.Xpf.Grid.v15.2.Extensions, Version=15.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49af bDevExpress.Xpf.Grid.v15.2.Core, Version=15.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a@dxg2http://schemas.devexpress.com/winfx/2008/xaml/grid    5      a ]DevExpress.Xpf.Core.v15.2, Version=15.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a;dx2http://schemas.devexpress.com/winfx/2008/xaml/core  5      ?dxe5http://schemas.devexpress.com/winfx/2008/xaml/editors  5        N� Title$  frm_KhoaHoc_Nganh��5      .��5      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $��10 �6   �� 5      $	��400 �6   �� 5      $��* �6   .+�5   
   �� -   5         ��Name$ 
BrdBtnWrap��5      $��0��6%   $��0��62   $��Stretch=�6B   $��Stretch=�6`   ._�5      ��  �� Orientation$ 
Horizontal=�6   $��Right=�62   $��0,1,0,1q�6N   .+�5      �� -   5        $��	btnAddNew��5   �   $��Thêm mới��63      Button_Style#��[  6F   $��Right=�6l   $��Center=�6�   �� 5      -   5        $��btnSave��5   �   $
��Lưu��61   #��[  6?   $��Right=�6e   $��Center=�6�   �� 5      -   5        $��	btnDelete��5   �   $
��Xóa��63   #��[  6A   $��Right=�6g   $��Center=�6�   �� 5      -   5        $��
btnRefresh��5   �   $��
Làm mới��64   #��[  6F   $��Right=�6l   $��Center=�6�   5      5      9� 5    
   $��1��6   $��0��6    $��6��60   $��RightToLeft=�6D     ExpanderStyle#��[ 6`   $��Stretch=�6�   $��Stretch=�6�    9� 
IsExpanded . $��1,0,1,0q�6�   .��5"      �� 
����������#27415d$��1,0,1,2q�6G   $
��auto��6a   ._�5$      �� $��LeftToRight=�6!   $ Vertical=�6=   $��Stretch=�6T   .+�5%      �  5&      �� 5'   "   $��25 �60   �� 5(   "   $
��0.2* �60   �� 5)   "   $��25 �60   �� 5*   "   $
��0.1* �60    � ColumnDefinitions 5.      �� 5/   "   $
��0.1* �63   �� 50   "   $
��Auto �63   �� 51   "   $
��0.9* �63   �� 52   "   $
��Auto �63   �� 53   "   $
��0.9* �63   �� 54   "   $
��Auto �63   �� 55   "   $
��0.9* �63   �� 56   "   $
��Auto �63   �� 57   "   $
��0.9* �63   �� 58   "   $
��0.1* �63   .+�5:      �� $��0��6(   $��1��65   $��Khóa:��6E     TextBlockStyle#��[ 6R   )  #DevExpress.Xpf.Editors.ComboBoxEdit  5;      -   5        $��cbbKhoa��5;   L   $��0��6/   $��2��6<     ComboBoxEditStyle#��[ 6[   +  %DevExpress.Xpf.Editors.LookUpEditBase   AutoComplete . '  !DevExpress.Xpf.Editors.ButtonEdit   IsTextEditable$
 TrueX�5=   C      ValueMember$ 
ID_KHOAHOC��5>   /   	   DisplayMember$	 TEN_KHOAHOC��6H   %  DevExpress.Xpf.Editors.BaseEdit
   	EditValue
 5<   /   �� *
ID_KHOAHOC+ �� UpdateSourceTrigger$ PropertyChanged=�5>   H   �� 5@      $��0��6(   $��3��65   $��Ngành:��6E   #��[ 6S     5A      -   5        $��cbbNganh��5A   L   $��0��6/   $��4��6<   #��[ 6\    . $
 TrueX�5C   C   $ ID_NGANH��5D   /   $	 	TEN_NGANH��6F   
 5B   /   �� *
ID_NGANH+$ PropertyChanged=�5D   F   �� 5F      $��0��6(   $��5��65   $��Số học kỳ:��6E   #��[ 6W   %  DevExpress.Xpf.Editors.SpinEdit  5G      -   5        $��txtSoHK��5G   H   $��0��6+   $��6��68     SpinEditStyle#��[ 6t      MinValue$ 0X�5H   +   %  DevExpress.Xpf.Editors.TextEdit   MaskType$ Numeric=�68   
 5G   W   �� *SO_HKY+5H   K   �� 5J      $��0��6(   $��7��65   $��Số SV dự kiến:��6E   #��[ 6[     5K      -	   5        $��	txtSoSVDK��5K   H   $��0��6+   $��8��68   #��[ 6~   $ 0X�5L   +   
 5K   Y   �� *SO_SINHVIEN_DK+5L   +   �� 5N      $��2��6(   $��1��65   $"��Số lớp dự kiến mở:��6E   #��[ 6_     5O      -
   5        $��
txtSoLopMo��5O   H   $��2��6+   $��2��68   #��[ 6Z   )  #DevExpress.Xpf.Editors.TextEditBase   AcceptsReturn . $ 0X�5P   +      TextWrapping$
 Wrap=�5Q   +      	MaxLength$	 255��6\   
 6?   �� *SO_LOP+6\   �� 5S      $��2��6(   $��3��65   $��Học kỳ trong khóa:��6E   #��[ 6_     5T      -   5        $��txtHKTrongKhoa��5T   H   $��2��6+   $��4��68     TextEditStyle#��[ 6^    . $
 Wrap=�5U   +   $	 255��6�      
IsReadOnly . 
 6?   �� *HOCKY_TRONGKHOA+$ PropertyChanged=�6�   �� 5W      $��2��6(   $��5��65   $��	Ghi chú:��6E   #��[ 6U     5X      -   5        $��	txtGhiChu��5X   H   $��2��6+   $��6��68   $��3��6Y   #��[ 6m    . $
 Wrap=�5Y   +   $	 255��6\   
 6?   �� *GHICHU+6\   5Z      5[      5]      5_      � 5a   
   $��3��6   $��0��6    5b      �� 5c      $	��400 �6    .+�5e      %  DevExpress.Xpf.Grid.GridControl  -   5          Name$	 grd��5e   s   )	  #DevExpress.Xpf.Grid.DataControlBase 	  AutoPopulateColumns . $��Stretch=�69   $��Stretch=�6W   &
   DevExpress.Xpf.Core.ThemeManager 
  	ThemeName0  *DevExpress.Xpf.Core.ThemeNameTypeConverter$ MetropolisLight 5f         View 5g      #  DevExpress.Xpf.Grid.TableView  5h      -   5          Name$ grdViewNDung��5h   K      	AutoWidth . &   DevExpress.Xpf.Grid.DataViewBase   BorderBrush �#27415d   NavigationStyle$
 Cell=�6b      AllowCellMerge .   SelectedRowStyle   RowStyle# [ 5i   $   &   DevExpress.Xpf.Grid.GridViewBase   ShowGroupPanel .  "   VerticalScrollbarVisibility$ Visible=�5j   ;   5k      5m      5n      5o      5p      