   M S B A M L   `   `   `  ����  DATN.TTS.TVMH%    DATN.TTS.TVMH.frm_TimPhongTrong   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   a ]DevExpress.Xpf.Grid.v15.2, Version=15.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49al hDevExpress.Xpf.Grid.v15.2.Extensions, Version=15.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49af bDevExpress.Xpf.Grid.v15.2.Core, Version=15.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a@dxg2http://schemas.devexpress.com/winfx/2008/xaml/grid    5   	   a ]DevExpress.Xpf.Core.v15.2, Version=15.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a;dx2http://schemas.devexpress.com/winfx/2008/xaml/core  5   	   ?dxe5http://schemas.devexpress.com/winfx/2008/xaml/editors  5   	     � Title$  Tìm phòng trống��5   	   .��5      �  � RowDefinitions 5
   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   �� -   5         ��Name$ 
BrdBtnWrap��5      $��0��6%   $��0��62   $��6��6B   $��Stretch=�6V   $��Stretch=�6t   ._�5      ��  �� Orientation$ 
Horizontal=�6   $��Right=�62   $��0,1,0,1q�6N   .+�5      �� -   5        $��btnSave��5   l   $
��Lưu��6      Button_Style_2#��[  6(   $��Right=�6P   $��Bottom=�6{   6�   �� 5      -   5        $��	btnAddNew��5   m   $��Đóng��6   #��[  6)   $��Right=�6Q   $��Bottom=�6~   6�   5      5      9� 5   
   $��1��6   $��0��6    $��RightToLeft=�60     ExpanderStyle#��[ 6L   $��Stretch=�6s   $��Stretch=�6�    9� 
IsExpanded . $��1,0,1,0q�6�   .��5      �� $��Stretch=�6   .+�5      �� 
����������#27415d$��1,0,1,1q�6G   $
��auto��6a   ._�5      �� $��LeftToRight=�6!   $ Vertical=�6=   $��Stretch=�6T   .+�5      �  5      �� 5   "   $��2 �60   �� 5   "   $��28 �60   �� 5    "   $��2 �60   �� 5!   "   $��28 �60   �� 5"   "   $��2 �60   �� 5#   "   $��28 �60   �� 5$   "   $��2 �60   �� 5%   "   $
��Auto �60    � ColumnDefinitions 5'      �� 5(   "   $��20 �63   �� 5)   "   $
��auto �63   �� 5*   "   $��2* �63   �� 5+   "   $
��auto �63   �� 5,   "   $��2* �63   �� 5-   "   $
��auto �63   �� 5.   "   $��* �63   �� 5/   "   $
��auto �63   .+�5:      �� -   5        $��	lblTuTuan��5:   E   $��1��6(   $��1��65   $��Từ tuần:��6V   $��Center=�6g   %  DevExpress.Xpf.Editors.SpinEdit  5<      -   5        $��	txtTuTuan��5<   I   $��1��6+   $��2��68   %  DevExpress.Xpf.Editors.TextEdit   MaskType$ Numeric=�6w      MinValue$ 0X�6�     SpinEditStyle#��[ 5=   +   %  DevExpress.Xpf.Editors.BaseEdit   	EditValue 5<   Z   �� *TuTuan+5=   +   �� 5?      -   5        $��lblDenTu��5?   E   $��1��6(   $��3��65   $��Đến tuần:��6U   $��Center=�6f     5@      -   5        $��txtDenTu��5@   I   $��1��6+   $��4��68   $ Numeric=�6w   $ 0X�6�   #��[ 5A   +    5@   Y   �� *	DenTuan+5A   +   &   DevExpress.Xpf.Editors.CheckEdit  5C      -   5        	  Name$	 CheckChonTiet��5D   >   $��1��6!   $��3��61   
   Content)  #DevExpress.Xpf.Core.ObjectConverter$
 Chọn tiết 6U   $��RightToLeft=�6i     CheckBoxStyle#��[ 5E   ,   $
��Left=�6S   6�   �� 5F      -	   5        $ BorChonTiet��5F   %   $��3��6:   $��2��6H   $��6��6X   
����������#27415d$��1,1,1,1q�6�   {�.  ._�5G   "   �  5H   &   �� 5I   *   $
��auto �6;   �� 5J   *   $��* �6;   �� 5K   *   $
��auto �6;   �� 5L   *   $��* �6;   .+�5N   &   �� -
   5        $��	lblTuTiet��5N   @   $��0��60   $��Từ tiết:��6Q   $��Center=�6b     5O   &   -   5        $��spTietBatDau��5O   C   $��1��63   $ Numeric=�6�   $ 0X�6�   #��[ 5P   3    5O   W   �� *	TIET_BD+ �� UpdateSourceTrigger$ PropertyChanged=�5P   3   �� 5R   &   -   5        $��
lblDenTiet��5R   @   $��2��60   $��Đến tiết:��6R   $��Center=�6d     5S   &   -   5        $��spTietKetThuc��5S   D   $��3��63   $ Numeric=�6�   $ 0X�6�    6Y   �� *	TIET_KT+$ PropertyChanged=�6�   5T   #   5U        5W      -   5        $	 CheckChonThu��5X   >   $��1��6!   $��5��61   $
 Chọn thứ 6T   $��RightToLeft=�6g   #��[ 5Y   ,   $
��Left=�5Z   '   6b   �� 5[      -   5        $��bor_ChonThu��5[   V   $��5��6%   $��2��62   $��6��6B   
����������#27415d$��1,1,1,1q�6�   {�.  ._�5\   "   �� -   5        $��lstThu��5\   *   ��5]   &   �� 5^   *   .R�5_   .   ��  ��Name$ 	CheckList��67   ��6J   �� *	TheText+ d� 	IsChecked 6f   �� *
IsSelected+5`   +   ��5b   &   �� 5c   *   .R�5d   .   �  K� IsItemsHost .  � Orientation$ 
Horizontal=�6K   
�������6d   5e   +   5g   #   5h      �� 5j      -   5        $ bodertim��5j   %   $��7��67   $��2��6D   $��6��6T   
����������#27415d$��0,0,0,0q�6�   ._�5k   "   �� $ 
Horizontal=�6-   $��Right=�6F   $��0,1,0,1q�6b   .+�5l   &   �� -   5        $��btnTim��5l   �   $��Tìm phòng��6.   #��[  6B   $��Right=�6j   $��Bottom=�5m   .   6I   5n   #   5o      5p      5q      5r      5s      5t      %  DevExpress.Xpf.Grid.GridControl  5u   
   -   5          Name$	 grd��5v      $��2��5u      $��3q�6'   )  #DevExpress.Xpf.Grid.DataControlBase   AutoPopulateColumns . $��Stretch=�6M   $��Stretch=�6k   &   DevExpress.Xpf.Core.ThemeManager   	ThemeName0	  *DevExpress.Xpf.Core.ThemeNameTypeConverter$ MetropolisLight	 5v   '      SelectionMode$	 Row=�6S      View 5w      #
  DevExpress.Xpf.Grid.TableView
  5x      -   5         
 Name$ grdView��5x   G    
  	AutoWidth . &   DevExpress.Xpf.Grid.DataViewBase   BorderBrush �#27415d&   DevExpress.Xpf.Grid.GridViewBase   ShowGroupPanel .    SelectedRowStyle 
  RowStyle# [ 5y   ;   6h   5{      5|      5}      