   M S B A M L   `   `   `  ����  DATN.TTS.TVMH    DATN.TTS.TVMH.frm_TietHoc   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      a ]DevExpress.Xpf.Grid.v15.2, Version=15.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49al hDevExpress.Xpf.Grid.v15.2.Extensions, Version=15.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49af bDevExpress.Xpf.Grid.v15.2.Core, Version=15.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a@dxg2http://schemas.devexpress.com/winfx/2008/xaml/grid    5      a ]DevExpress.Xpf.Core.v15.2, Version=15.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a;dx2http://schemas.devexpress.com/winfx/2008/xaml/core  5      ?dxe5http://schemas.devexpress.com/winfx/2008/xaml/editors  5      j	 fDevExpress.Xpf.LayoutControl.v15.2, Version=15.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aFdxlc;http://schemas.devexpress.com/winfx/2008/xaml/layoutcontrol 	 5	        N� Title$  frm_TietHoc��5      .��5      �  � RowDefinitions 5   
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
   $��1��6   $��RightToLeft=�6      ExpanderStyle#��[ 6<   $��Stretch=�6c   $��Stretch=�6�    9� 
IsExpanded . $��1,0,1,0q�6�   .��5"      �� $��Stretch=�6   .+�5#      �� 
����������#27415d$��1,0,1,2q�6G   $
��auto��6a   ._�5%      �� $��LeftToRight=�6!   $ Vertical=�6=   $��Stretch=�6T   .+�5&      �  5'      �� 5(   "   $��30 �60   �� 5)   "   $
��0.2* �60    � ColumnDefinitions 5+      �� 5,   "   $
��0.1* �63   �� 5-   "   $
��Auto �63   �� 5.   "   $
��0.8* �63   �� 5/   "   $
��Auto �63   �� 50   "   $
��0.8* �63   �� 51   "   $
��Auto �63   �� 52   "   $
��0.8* �63   �� 53   "   $
��Auto �63   �� 54   "   $
��0.8* �63   �� 55   "   $
��Auto �63   �� 56   "   $
��0.8* �63   .+�58      �� $��0��6(   $��1��65   $��Tiết học:��6E     TextBlockStyle#��[ 6V   %  DevExpress.Xpf.Editors.TextEdit  59      -   5        $��
txtTietHoc��59   H   $��0��6+   $��2��68     TextEditStyle#��[ 6Z   )  #DevExpress.Xpf.Editors.TextEditBase   	MaxLength$ 50��6�   %  DevExpress.Xpf.Editors.BaseEdit   	EditValue 6�   �� *TEN_TIETHOC+6�   �� 5;      $��0��6(   $��3��65   $	��Ca:��6E   #��[ 6P   )  #DevExpress.Xpf.Editors.ComboBoxEdit  5<      -   5        $��cbbCa��5<   L   $��0��6/   $��4��6<     ComboBoxEditStyle#��[ 6Y    6�   �� *CA+   Items 5=   "   -  'DevExpress.Xpf.Editors.ComboBoxEditItem  5>   &   $��Sáng��6;   
	 � Tag$	 1��6J     5?   &   $��Chiều��6;   $	 2��6K     5@   &   $��Tối��6;   $	 3��6I   5B      �� 5D      $��0��6(   $��5��65   $��Giờ bắt đầu:��6E   #��[ 6Y   '  !DevExpress.Xpf.Editors.ButtonEdit  5G      -   5        $��txtGioBD��5G   J   $��0��6-   $��6��6:   
   DisplayFormatString$
 hh:mm:ss��5H   -      Mask$ hh:mm:ss��6L      MaskType$ DateTime=�6\      AllowDefaultButton$ FalseX�6p    5G   Z   �� *GIO_BD+   Buttons 5J   &   +  %DevExpress.Xpf.Editors.SpinButtonInfo  +  %DevExpress.Xpf.Editors.ButtonInfoBase   IsDefaultButton . 69   5L      �� 5N      $��0��6(   $��7��65   $��Giờ kết thúc:��6E   #��[ 6Z     5Q      -	   5        $��txtGioKT��5Q   J   $��0��6-   $��8��6:   $
 hh:mm:ss��6Z   $ hh:mm:ss��6y   $ DateTime=�6�   $ FalseX�6�    6�   �� *GIO_KT+ 5S   &      . 69   5U      �� 5W      $��0��6(   $��9��65   $��Giờ/Tiết:��6E   #��[ 6V     5X      -
   5        $��txtGio��5X   I   $��0��6+   $��10��68      Text$ 
45p/Tiết��6W   #��[ 6g      AcceptsReturn .    TextWrapping$
 Wrap=�5Y   +   5Z      5[      5]      5^      5_      � 5a   
   $��3��6    5b      �� 5c      $	��400 �6    .+�5e      %	  DevExpress.Xpf.Grid.GridControl	  -   5         	 Name$	 grd��5e   s   )
  #DevExpress.Xpf.Grid.DataControlBase 
  AutoPopulateColumns . $��Stretch=�69   $��Stretch=�6W   &   DevExpress.Xpf.Core.ThemeManager   	ThemeName0  *DevExpress.Xpf.Core.ThemeNameTypeConverter$ MetropolisLight 5f       
  SelectionMode$	 Row=�6J    	  View 5g      #  DevExpress.Xpf.Grid.TableView  5h      -   5          Name$ grdViewNDung��5h   K      	AutoWidth . &   DevExpress.Xpf.Grid.DataViewBase   BorderBrush �#27415d   NavigationStyle$
 Cell=�6b     SelectedRowStyle   RowStyle# [ 5i   $   &   DevExpress.Xpf.Grid.GridViewBase   ShowGroupPanel .  "   VerticalScrollbarVisibility$ Visible=�5j   ;   5k      5m      5n      5o      5p      