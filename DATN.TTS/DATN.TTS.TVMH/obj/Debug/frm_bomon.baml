   M S B A M L   `   `   `  ����  DATN.TTS.TVMH    DATN.TTS.TVMH.frm_bomon   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      a ]DevExpress.Xpf.Core.v15.2, Version=15.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a?dxe5http://schemas.devexpress.com/winfx/2008/xaml/editors  5      a ]DevExpress.Xpf.Grid.v15.2, Version=15.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49al hDevExpress.Xpf.Grid.v15.2.Extensions, Version=15.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49af bDevExpress.Xpf.Grid.v15.2.Core, Version=15.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a@dxg2http://schemas.devexpress.com/winfx/2008/xaml/grid    5      ;dx2http://schemas.devexpress.com/winfx/2008/xaml/core  5        N� Title$  	Bộ môn��5      .��5      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   �� -   5         ��Name$ 
BrdBtnWrap��5      $��0��6%   $��0��62   $��6��6B   $��Stretch=�6V   $��Stretch=�6t   ._�5      ��  �� Orientation$ 
Horizontal=�6   $��Right=�62   $��0,1,0,1q�6N   .+�5      �� -   5        $��	btnAddNew��5   o   $��Thêm mới��6      Button_Style#��[  6-   $��Right=�6S   $��Bottom=�6�   $��3,0,3,2q�6�   6�   �� 5      -   5        $��btnSave��5   j   $
��Lưu��6   #��[  6(   $��Right=�6N   $��Center=�6y   6�   �� 5      -   5        $��	btnDelete��5   j   $
��Xóa��6   #��[  6(   $��Right=�6N   $��Center=�6{   6�   �� 5      -   5        $��
btnRefresh��5   n   $��
Làm mới��6   #��[  6,   $��Right=�6R   $��Center=�6�   6�   5      5      9� 5   
   $��1��6   $��0��6    $��RightToLeft=�60     ExpanderStyle#��[ 6L   $��Stretch=�6s   $��Stretch=�6�    9� 
IsExpanded . $��1,0,1,0q�6�   .��5      �� $��Stretch=�6   .+�5       �� 
����������#27415d$��1,0,1,2q�6G   $
��auto��6a   ._�5"      �� $��LeftToRight=�6!   $ Vertical=�6=   $��Stretch=�6T   .+�5#      �  � ColumnDefinitions 5$      �� 5%   "   $
��Auto �63   �� 5&   "   $
��0.5* �63   �� 5'   "   $
��Auto �63   �� 5(   "   $
��0.5* �63   .+�5*      �� $��0��6(   $��Mã bộ môn��68     TextBlockStyle#��[ 6I   %  DevExpress.Xpf.Editors.TextEdit  5+      $��1��6,     TextEditStyle#��[ 6<   %  DevExpress.Xpf.Editors.BaseEdit   	EditValue 6c   �� *MA_BM+�� 5,      $��2��6(   $��Tên bộ môn��68   #��[ 6J     5-      $��3��6,   #��[ 6<    6c   �� *TEN_BM+5.      5/      50      51      52      %  DevExpress.Xpf.Grid.GridControl  55   
   -   5          Name$	 grd��55   �   $��2��6   $��3q�6'   )  #DevExpress.Xpf.Grid.DataControlBase   AutoPopulateColumns . $��Stretch=�6M   $��Stretch=�6k   &   DevExpress.Xpf.Core.ThemeManager	   	ThemeName0  *DevExpress.Xpf.Core.ThemeNameTypeConverter$	 MetropolisLight 6�   
   SelectionMode$	
 Row=�6�      View 56      #  DevExpress.Xpf.Grid.TableView  57      -   5          Name$ grdView��57   G      	AutoWidth . &   DevExpress.Xpf.Grid.DataViewBase   BorderBrush �#27415d&	   DevExpress.Xpf.Grid.GridViewBase 	  ShowGroupPanel .    SelectedRowStyle   RowStyle# [ 58   ;   6h   5:      5;      5<      