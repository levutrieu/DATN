   M S B A M L   `   `   `  ����d  `DevExpress.XtraEditors.v15.2, Version=15.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aeJclr-namespace:DevExpress.XtraEditors;assembly=DevExpress.XtraEditors.v15.2DevExpress.XtraEditors  5       DATN.TTS.TVMH   DATN.TTS.TVMH.frm_KhoaHoc   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      a ]DevExpress.Xpf.Grid.v15.2, Version=15.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49al hDevExpress.Xpf.Grid.v15.2.Extensions, Version=15.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49af bDevExpress.Xpf.Grid.v15.2.Core, Version=15.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a@dxg2http://schemas.devexpress.com/winfx/2008/xaml/grid    5      a	 ]DevExpress.Xpf.Core.v15.2, Version=15.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a;dx2http://schemas.devexpress.com/winfx/2008/xaml/core 	 5      \xtraEditorsJclr-namespace:DevExpress.XtraEditors;assembly=DevExpress.XtraEditors.v15.2 	 5      ?dxe5http://schemas.devexpress.com/winfx/2008/xaml/editors 	 5	        N� Title$  frm_KhoaHoc��5      .��5      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $��10 �6   �� 5      $	��400 �6   �� 5      $��* �6   .+�5   
   �� -   5         ��Name$ 
BrdBtnWrap��5      $��0��6%   $��Stretch=�62   $��Stretch=�6P   ._�5      ��  �� Orientation$ 
Horizontal=�6   $��Right=�62   $��0,1,0,1q�6N   .+�5      �� -   5        $��	btnAddNew��5   �   $��Thêm mới��63      Button_Style#��[  6F   $��Right=�6l   $��Center=�6�   �� 5      -   5        $��btnSave��5   �   $
��Lưu��61   #��[  6?   $��Right=�6e   $��Center=�6�   �� 5      -   5        $��	btnDelete��5   �   $
��Xóa��63   #��[  6A   $��Right=�6g   $��Center=�6�   �� 5      -   5        $��
btnRefresh��5   �   $��
Làm mới��64   #��[  6F   $��Right=�6l   $��Center=�6�   5      5      9� 5!   
   $��1��6   $��0��6    $��6��60   $��RightToLeft=�6D     ExpanderStyle#��[ 6`   $��Stretch=�6�   $��Stretch=�6�    9� 
IsExpanded . $��1,0,1,0q�6�   .��5"      �� $��Stretch=�6   .+�5#      �� 
����������#27415d$��1,0,1,2q�6G   $
��auto��6a   ._�5%      �� $��LeftToRight=�6!   $ Vertical=�6=   $��Stretch=�6T   .+�5&      �  5'      �� 5(   "   $��30 �60   �� 5)   "   $
��0.2* �60   �� 5*   "   $��30 �60   �� 5+   "   $
��0.1* �60    � ColumnDefinitions 5/      �� 50   "   $
��0.1* �63   �� 51   "   $
��Auto �63   �� 52   "   $
��0.7* �63   �� 53   "   $
��Auto �63   �� 54   "   $
��0.7* �63   �� 55   "   $
��Auto �63   �� 56   "   $
��0.7* �63   �� 57   "   $
��Auto �63   �� 58   "   $
��0.7* �63   �� 59   "   $
��Auto �63   �� 5:   "   $
��0.7* �63   �� 5;   "   $
��0.1* �63   .+�5=      �� $��0��6(   $��1��65   $��Mã khóa học:��6E     TextBlockStyle#��[ 6Y   % 	 DevExpress.Xpf.Editors.TextEdit  5>      -   5        $��txtMaKH��5>   H   $��0��6+   $��2��68     TextEditStyle#��[ 6W   ) 	 #DevExpress.Xpf.Editors.TextEditBase   	MaxLength$ 50��6�   % 	 DevExpress.Xpf.Editors.BaseEdit   	EditValue 6~   �� *
MA_KHOAHOC+6�   �� 5@      $��0��6(   $��3��65   $��Tên khóa học:��6E   #��[ 6Z     5A      -   5        $��txtTenKH��5A   H   $��0��6+   $��4��68   #��[ 6X    6   �� *TEN_KHOAHOC+�� 5C      $��0��6(   $��5��65   $��Năm bắt đầu:��6E   #��[ 6Y     5D      -   5        $��txtNamBD��5D   H   $��0��6+   $��6��68   #��[ 6X      MaskType$ Numeric=�6   	   DisplayFormatString$
	 0000��6�   
   AcceptsReturn
 .    TextWrapping$
 Wrap=�6�   $	 255��6�    6�   �� *NAM_BD+6�   �� 5F      $��0��6(   $��7��65   $��Năm kết thúc:��6E   #��[ 6Z     5G      -	   5        $��txtNamKT��5G   H   $��0��6+   $��8��68   #��[ 6X   $ Numeric=�6   $
	 0000��6�   
 . $
 Wrap=�6�   $	 255��6�    6�   �� *NAM_KT+6�   �� 5I      $��0��6(   $��9��65   $��Hệ đào tạo:��6E   #��[ 6X   ) 	 #DevExpress.Xpf.Editors.ComboBoxEdit  5J      -
   5        $��cbbHDT��5J   M   $��0��6/   $��10��6<     ComboBoxEditStyle#��[ 6[   + 	 %DevExpress.Xpf.Editors.LookUpEditBase   AutoComplete . ' 	 !DevExpress.Xpf.Editors.ButtonEdit   IsTextEditable$
 TrueX�5K   C      ValidateOnTextInput .     IncrementalFiltering$
 TrueX�6u      ImmediatePopup . 
 . $
 Wrap=�5L   D      ValueMember$ ID_HE_DAOTAO��6{      DisplayMember$ TEN_HE_DAOTAO��6�    6X   �� *ID_HE_DAOTAO+6�   �� 5N      $��2��6(   $��1��65   $��Ký hiệu:��6E   #��[ 6U     5O      -   5        $��	txtKyHieu��5O   H   $��2��6+   $��2��68   #��[ 6Y   
 . $
 Wrap=�6�   $	 255��6�    6�   �� *KYHIEU+6�   �� 5R      $��2��6(   $��3��65   $��Số học kỳ/Năm:��6E   #��[ 6[   % 	 DevExpress.Xpf.Editors.SpinEdit  5S      -   5        $��txtHocKyNam��5S   H   $��2��6+   $��4��68     SpinEditStyle#��[ 6[      MinValue$ 0X�6�      MaxValue$ 4X�6�   
 . $
 Wrap=�6�   $	 255��6�    6�   �� *SO_HKY_1NAM+6�   �� 5U      $��2��6(   $��5��65   $��Số học kỳ:��6E   #��[ 6W     5V      -   5        $��txtSoHK��5V   H   $��2��6+   $��6��68   #��[ 6W   $ 0X�6~   $ 10X�6�   
 . $
 Wrap=�6�   $	 255��6�    6�   �� *SO_HKY+6�   �� 5Y      $��2��6(   $��7��65   $��Trạng thái:��6E   #��[ 6X     5Z      -   5        $��txtTrangThai��5Z   H   $��2��6+   $��8��68   $��3��6\   #��[ 6p   
 . $
 Wrap=�6�   $	 255��6�    6�   �� *	TRANGTHAI+6�   5[      5\      5^      5_      5`      � 5b   
   $��3��6   $��0��6   $��6��6,    5c      �� 5d      $	��400 �6    .+�5f      %  DevExpress.Xpf.Grid.GridControl  -   5          Name$	 grd��5f   �   $��1��6   )	  #DevExpress.Xpf.Grid.DataControlBase 	  AutoPopulateColumns . $��Stretch=�6I   $��Stretch=�6g   &
 	  DevExpress.Xpf.Core.ThemeManager 
  	ThemeName0 	 *DevExpress.Xpf.Core.ThemeNameTypeConverter$ MetropolisLight 5g       	  SelectionMode$	 Row=�6J      View 5h      #  DevExpress.Xpf.Grid.TableView  5i      -   5          Name$ grdViewNDung��5i   K      	AutoWidth . &   DevExpress.Xpf.Grid.DataViewBase   BorderBrush �#27415d   NavigationStyle$
 Cell=�6b     SelectedRowStyle   RowStyle# [ 5j   $   &   DevExpress.Xpf.Grid.GridViewBase   ShowGroupPanel .  "    VerticalScrollbarVisibility$  Visible=�5k   ;   5l      5n      5o      5p      5q      