   M S B A M L   `   `   `  ����  DATN.TTS.TVMH(    "DATN.TTS.TVMH.frm_PhanCongGV_popup   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   a ]DevExpress.Xpf.Core.v15.2, Version=15.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a?dxe5http://schemas.devexpress.com/winfx/2008/xaml/editors  5   	   a ]DevExpress.Xpf.Grid.v15.2, Version=15.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49al hDevExpress.Xpf.Grid.v15.2.Extensions, Version=15.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49af bDevExpress.Xpf.Grid.v15.2.Core, Version=15.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a@dxg2http://schemas.devexpress.com/winfx/2008/xaml/grid    5   	   ;dx2http://schemas.devexpress.com/winfx/2008/xaml/core  5   	     � Title$  Chọn giáo viên��5   	   $	��600��6    $	��500��6-    � WindowStartupLocation$ CenterScreen=�5   	    � 
ResizeMode$ NoResize=�5	   	    � ShowInTaskbar .  .��5      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   �� -   5         ��Name$ 
BrdBtnWrap��5      $��0��6%   $��0��62   $��6��6B   $��Stretch=�6V   $��Stretch=�6t   ._�5      ��  �� Orientation$ 
Horizontal=�6   $��Right=�62   $��0,1,0,1q�6N   .+�5      �� -   5        $��btnSave��5   j   $
��Lưu��6      Button_Style#��[  6(   $��Right=�6N   $��Center=�6y   6�   �� 5      -   5        $��	btnCancel��5   j   $��Hủy��6   #��[  6(   $��Right=�6N   $��Center=�6{   6�   5      5      9� 5   
   $��1��6   $��0��6    $��RightToLeft=�60     ExpanderStyle#��[ 6L   $��Stretch=�6s   $��Stretch=�6�    9� 
IsExpanded . $��1,0,1,0q�6�   .��5      �� $��Stretch=�6   .+�5      �� 
����������#27415d$��1,0,1,2q�6G   $
��auto��6a   ._�5      �� $��LeftToRight=�6!   $ Vertical=�6=   $��Stretch=�6T   .+�5      �  � ColumnDefinitions 5       �� 5!   "   $
��Auto �63   �� 5"   "   $
��0.5* �63   �� 5#   "   $
��Auto �63   �� 5$   "   $
��0.5* �63   .+�5&      �� $��0��6(   $��Tên giảng viên��68     TextBlockStyle#��[ 6N   %  DevExpress.Xpf.Editors.TextEdit  5'      $��1��6,     TextEditStyle#��[ 6<   %  DevExpress.Xpf.Editors.BaseEdit	   	EditValue	 6c   �� *
SEARCHGV+�� 5(      -   5        $��2��5(   %   $��Tìm kiếm��65     Button_Style_2#��[ 6H   6p   5)      5*      5+      5,      5-      � 5/   
   $��2��6   .+�50      )  #DevExpress.Xpf.Grid.TreeListControl  -   5        $��listGV��50   0   $
��Auto��6"   &   DevExpress.Xpf.Core.ThemeManager
   	ThemeName0  *DevExpress.Xpf.Core.ThemeNameTypeConverter$
 MetropolisLight 6>      View 51      &   DevExpress.Xpf.Grid.TreeListView  52      -   5        $��treeListViewMH��52   (      	AutoWidth .    AutoExpandAllNodes .    KeyFieldName$ ID��53   #      ParentFieldName$ 	ID_PARENT��65     SelectedRowStyle   RowStyle# [ 6Q   55      56      57      58      