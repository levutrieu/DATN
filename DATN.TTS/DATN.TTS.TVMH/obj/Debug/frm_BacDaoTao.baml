   M S B A M L   `   `   `  ����  DATN.TTS.TVMH!    DATN.TTS.TVMH.frm_BacDaoTao   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      a ]DevExpress.Xpf.Grid.v15.2, Version=15.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49al hDevExpress.Xpf.Grid.v15.2.Extensions, Version=15.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49af bDevExpress.Xpf.Grid.v15.2.Core, Version=15.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a@dxg2http://schemas.devexpress.com/winfx/2008/xaml/grid    5      a ]DevExpress.Xpf.Core.v15.2, Version=15.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a;dx2http://schemas.devexpress.com/winfx/2008/xaml/core  5      ?dxe5http://schemas.devexpress.com/winfx/2008/xaml/editors  5        N� Title$  frm_BacDaoTao��5      .��5      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $��10 �6   �� 5      $	��400 �6   .+�5   
   �� -   5         ��Name$ 
BrdBtnWrap��5      $��0��6%   $��0��62   $��Stretch=�6B   $��Stretch=�6`   ._�5      ��  �� Orientation$ 
Horizontal=�6   $��Right=�62   $��0,1,0,1q�6N   .+�5      �� -   5        $��	btnAddNew��5   �   $��Thêm mới��63      Button_Style#��[  6F   $��Right=�6l   $��Center=�6�   �� 5      -   5        $��btnSave��5   �   $
��Lưu��61   #��[  6?   $��Right=�6e   $��Center=�6�   �� 5      -   5        $��	btnDelete��5   �   $
��Xóa��63   #��[  6A   $��Right=�6g   $��Center=�6�   �� 5      -   5        $��
btnRefresh��5   �   $��
Làm mới��64   #��[  6F   $��Right=�6l   $��Center=�6�   5      5      9� 5   
   $��1��6   $��0��6    $��RightToLeft=�60     ExpanderStyle#��[ 6L   $��Stretch=�6s   $��Stretch=�6�    9� 
IsExpanded . $��1,0,1,0q�6�   .��5       �� $��Stretch=�6   .+�5!      �� 
����������#27415d$��1,0,1,2q�6G   $
��auto��6a   ._�5#      �� $��LeftToRight=�6!   $ Vertical=�6=   $��Stretch=�6T   .+�5$      �  5%      �� 5&   "   $��25 �60   �� 5'   "   $
��0.2* �60    � ColumnDefinitions 5+      �� 5,   "   $
��0.1* �63   �� 5-   "   $
��Auto �63   �� 5.   "   $
��0.8* �63   �� 5/   "   $
��Auto �63   �� 50   "   $
��0.8* �63   �� 51   "   $
��Auto �63   �� 52   "   $
��0.8* �63   �� 53   "   $
��0.1* �63   .+�55      �� $��0��6(   $��1��65   $��Mã bậc đào tạo:��6E     TextBlockStyle#��[ 6\   %  DevExpress.Xpf.Editors.TextEdit  56      -   5        $��txtMaHDT��56   H   $��0��6+   $��2��68     TextEditStyle#��[ 6X   )  #DevExpress.Xpf.Editors.TextEditBase   	MaxLength$ 50��6�   %  DevExpress.Xpf.Editors.BaseEdit   	EditValue 6   �� *MA_BAC_DAOTAO+6�   �� 58      $��0��6(   $��3��65   $��Bậc đào tạo:��6E   #��[ 6Y     59      -   5        $��	txtTenHDT��59   H   $��0��6+   $��4��68   #��[ 6Y    6�   �� *TEN_BAC_DAOTAO+�� 5;      $��0��6(   $��5��65   $��Trạng thái:��6E   #��[ 6X     5<      -   5        $��txtTrangThai��5<   H   $��0��6+   $��6��68   $��3��6\   #��[ 6p      AcceptsReturn . 	   TextWrapping$
	 Wrap=�5=   +   $	 255��6_    6?   �� *	TRANGTHAI+6_   5>      5?      5A      5B      5C      � 5E   
   $��3��6    5F      �� 5G      $	��400 �6    .+�5I      %  DevExpress.Xpf.Grid.GridControl  -	   5        
  Name$	
 grd��5I   �   $��1��6   )  #DevExpress.Xpf.Grid.DataControlBase   AutoPopulateColumns . $��Stretch=�6I   $��Stretch=�6g   &   DevExpress.Xpf.Core.ThemeManager   	ThemeName0  *DevExpress.Xpf.Core.ThemeNameTypeConverter$ MetropolisLight 5J         SelectionMode$	 Row=�6J      View 5K      #  DevExpress.Xpf.Grid.TableView  5L      -
   5          Name$ grdViewNDung��5L   K      	AutoWidth . &	   DevExpress.Xpf.Grid.DataViewBase 	  BorderBrush �#27415d 	  NavigationStyle$
 Cell=�6b     SelectedRowStyle   RowStyle# [ 5M   $   &
   DevExpress.Xpf.Grid.GridViewBase 
  ShowGroupPanel .  "   VerticalScrollbarVisibility$ Visible=�5N   ;   5O      5Q      5R      5S      5T      