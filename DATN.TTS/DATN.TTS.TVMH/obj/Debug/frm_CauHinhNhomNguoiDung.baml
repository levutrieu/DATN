   M S B A M L   `   `   `  ����  DATN.TTS.TVMH,    &DATN.TTS.TVMH.frm_CauHinhNhomNguoiDung   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      a ]DevExpress.Xpf.Grid.v15.2, Version=15.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49al hDevExpress.Xpf.Grid.v15.2.Extensions, Version=15.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49af bDevExpress.Xpf.Grid.v15.2.Core, Version=15.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a@dxg2http://schemas.devexpress.com/winfx/2008/xaml/grid    5      a ]DevExpress.Xpf.Core.v15.2, Version=15.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a;dx2http://schemas.devexpress.com/winfx/2008/xaml/core  5      ?dxe5http://schemas.devexpress.com/winfx/2008/xaml/editors  5        N� Title$  frm_CauHinhNhomNguoiDung��5      .��5      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $��10 �6   �� 5      $��30 �6   �� 5      $��* �6   �� 5      $
��400* �6   �� 5      $��* �6    � ColumnDefinitions 5   
   �� 5      $	��500 �6   �� 5      $��50 �6   �� 5      $
��Auto �6   �� 5      $	��250 �6   �� 5      $
��Auto �6   �� 5      $
��300* �6   .+�5!   
   �� -   5         ��Name$ 
BrdBtnWrap��5!      $��0��6%   $��0��62   $��6��6B   $��Stretch=�6V   $��Stretch=�6t   ._�5"      ��  �� Orientation$ 
Horizontal=�6   $��Right=�62   $��0,1,0,1q�6N   .+�5#      �� -   5        $��	btnAddNew��5#   �   $��Thêm mới��63      Button_Style#��[  6F   $��Right=�6l   $��Center=�6�   �� 5$      -   5        $��btnSave��5$   �   $
��Lưu��61   #��[  6?   $��Right=�6e   $��Center=�6�   �� 5%      -   5        $��	btnDelete��5%   �   $
��Xóa��63   #��[  6A   $��Right=�6g   $��Center=�6�   �� 5&      -   5        $��
btnRefresh��5&   �   $��
Làm mới��64   #��[  6F   $��Right=�6l   $��Center=�6�   5'      5(      9� 5*   
   $��1��6   $��0��6    $��6��60   $��RightToLeft=�6D     ExpanderStyle#��[ 6`   $��Stretch=�6�   $��Stretch=�6�    9� 
IsExpanded . $��1,0,1,0q�6�   .��5+      �� $��Stretch=�6   .+�5,      �� 
����������#27415d$��1,0,1,2q�6G   $
��auto��6a   ._�5.      �� $��LeftToRight=�6!   $ Vertical=�6=   $��Stretch=�6T   .+�5/      �  50      �� 51   "   $��30 �60   �� 52   "   $
��Auto �60    56      �� 57   "   $
��0.1* �63   �� 58   "   $
��Auto �63   �� 59   "   $
��0.7* �63   �� 5:   "   $
��Auto �63   �� 5;   "   $
��0.7* �63   �� 5<   "   $
��Auto �63   �� 5=   "   $
��0.7* �63   �� 5>   "   $
��0.1* �63   .+�5@      �� $��0��6(   $��1��65   $��Mã nhóm người dùng:��6E     TextBlockStyle#��[ 6`   %  DevExpress.Xpf.Editors.TextEdit  5A      -   5        $��txtMaManHinh��5A   H   $��0��6+   $��2��68     TextEditStyle#��[ 6\   )  #DevExpress.Xpf.Editors.TextEditBase   	MaxLength$ 50��6�   %  DevExpress.Xpf.Editors.BaseEdit   	EditValue 6�   �� *MaNhomNguoiDung+6�   �� 5C      $��0��6(   $��3��65   $ ��Tên nhóm người dùng:��6E   #��[ 6a     5D      -   5        $��txtTenMH��5D   H   $��0��6+   $��4��68   #��[ 6X    6   �� *TenNhomNguoiDUng+�� 5F      $��0��6(   $��5��65   $��	Ghi chú:��6E   #��[ 6U     5G      $��0��6+   $��6��68   #��[ 6H      AcceptsReturn . 	   TextWrapping$
	 Wrap=�6�   $	 255��6�    6�   �� *GhiChu+6�   5H      5I      5K      5L      5M      �� 5O   
   $��3��6   $��0��6!   $%��Danh sách nhóm người dùng��61   #��[ 6R   $��Center=�6z   $��14(�6�   �� 5P   
   $��3��6   $��3��6!   $��3��61   $��Danh sách UI��6E   #��[ 6Y   $��Center=�6�   $��14(�6�   $��Center=�6�   � 5R   
   -   5        
 �Name$
 	Body_Area��5R   ,   $��5��6   $��0��6   $��Stretch=�6?   $��Stretch=�6]   .+�5S      %  DevExpress.Xpf.Grid.GridControl  -	   5          Name$	 grd��5S   ~   $��3q�6   )  #DevExpress.Xpf.Grid.DataControlBase   AutoPopulateColumns . $��Stretch=�6D   $��Stretch=�6b   &   DevExpress.Xpf.Core.ThemeManager   	ThemeName0  *DevExpress.Xpf.Core.ThemeNameTypeConverter$ MetropolisLight 5T         SelectionMode$	 Row=�6J      View 5U      #  DevExpress.Xpf.Grid.TableView  5V      -
   5          Name$ grdViewNDung��5V   K      	AutoWidth . &	   DevExpress.Xpf.Grid.DataViewBase 	  BorderBrush �#27415d 	  NavigationStyle$
 Cell=�6b     SelectedRowStyle   RowStyle# [ 5W   $   &
   DevExpress.Xpf.Grid.GridViewBase 
  ShowGroupPanel .  "   VerticalScrollbarVisibility$ Visible=�5X   ;   5Y      5[      5\      � 5^   
   -   5        $
 GridUI��5^   @   $��5��6   $��2��6   $��4��6,   $��Stretch=�6P   $��Stretch=�6n   .+�5_        -   5        $ grdUI��5_   d   $��3q�6   $��Stretch=�6*   $��Stretch=�6H   $ MetropolisLight 6s    5`        5a      -   5        $ 	grdViewUI��5a   K    .  �#27415d# [ 6^    .  $ Visible=�5b   ;      ShowIndicator . 5d      5f      5g      5i      5j      