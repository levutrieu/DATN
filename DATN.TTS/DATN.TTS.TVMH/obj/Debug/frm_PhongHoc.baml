   M S B A M L   `   `   `  ����  DATN.TTS.TVMH     DATN.TTS.TVMH.frm_PhongHoc   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      a ]DevExpress.Xpf.Grid.v15.2, Version=15.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49al hDevExpress.Xpf.Grid.v15.2.Extensions, Version=15.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49af bDevExpress.Xpf.Grid.v15.2.Core, Version=15.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a@dxg2http://schemas.devexpress.com/winfx/2008/xaml/grid    5      a ]DevExpress.Xpf.Core.v15.2, Version=15.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a;dx2http://schemas.devexpress.com/winfx/2008/xaml/core  5      ?dxe5http://schemas.devexpress.com/winfx/2008/xaml/editors  5        N� Title$  frm_PhongHoc��5      .��5      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $��10 �6   �� 5      $	��400 �6   �� 5      $��* �6   .+�5   
   �� -   5         ��Name$ 
BrdBtnWrap��5      $��0��6%   $��0��62   $��6��6B   $��Stretch=�6V   $��Stretch=�6t   ._�5      ��  �� Orientation$ 
Horizontal=�6   $��Right=�62   $��0,1,0,1q�6N   .+�5      �� -   5        $��	btnAddNew��5   �   $��Thêm mới��63      Button_Style#��[  6F   $��Right=�6l   $��Center=�6�   �� 5      -   5        $��btnSave��5   �   $
��Lưu��61   #��[  6?   $��Right=�6e   $��Center=�6�   �� 5      -   5        $��	btnDelete��5   �   $
��Xóa��63   #��[  6A   $��Right=�6g   $��Center=�6�   �� 5      -   5        $��
btnRefresh��5   �   $��
Làm mới��64   #��[  6F   $��Right=�6l   $��Center=�6�   5      5      9� 5    
   $��1��6   $��0��6    $��6��60   $��RightToLeft=�6D     ExpanderStyle#��[ 6`   $��Stretch=�6�   $��Stretch=�6�    9� 
IsExpanded . $��1,0,1,0q�6�   .��5!      �� $��Stretch=�6   .+�5"      �� 
����������#27415d$��1,0,1,2q�6G   $
��auto��6a   ._�5$      �� $��LeftToRight=�6!   $ Vertical=�6=   $��Stretch=�6T   .+�5%      �  5&      �� 5'   "   $��30 �60   �� 5(   "   $
��0.2* �60   �� 5)   "   $��30 �60   �� 5*   "   $
��0.1* �60    � ColumnDefinitions 5.      �� 5/   "   $
��0.1* �63   �� 50   "   $
��Auto �63   �� 51   "   $
��0.8* �63   �� 52   "   $
��Auto �63   �� 53   "   $
��0.8* �63   �� 54   "   $
��Auto �63   �� 55   "   $
��0.8* �63   �� 56   "   $
��Auto �63   �� 57   "   $
��0.5* �63   �� 58   "   $
��Auto �63   �� 59   "   $
��0.5* �63   �� 5:   "   $
��Auto �63   �� 5;   "   $
��0.5* �63   �� 5<   "   $
��Auto �63   �� 5=   "   $
��0.5* �63   �� 5>   "   $
��0.1* �63   .+�5@      �� $��0��6(   $��1��65   $��Dãy:��6E     TextBlockStyle#��[ 6Q   )  #DevExpress.Xpf.Editors.ComboBoxEdit  5A      -   5        $��txtDay��5A   L   $��0��6/   $��2��6<     ComboBoxEditStyle#��[ 6Z   )  #DevExpress.Xpf.Editors.TextEditBase   	MaxLength$ 50��6�   %  DevExpress.Xpf.Editors.BaseEdit   	EditValue 6�   �� *DAY+6�   �� 5C      $��0��6(   $��3��65   $��Tầng:��6E   #��[ 6R   %  DevExpress.Xpf.Editors.SpinEdit  5D      -   5        $��txtTang��5D   H   $��0��6+   $��4��68     TextEditStyle#��[ 6W      MinValue$ 0X�6�    6~   �� *TANG+6�   �� 5F      $��0��6(   $��5��65   $��Loại phòng:��6E   #��[ 6X   �� 5G      $��0��6)   $��6��66   $��Center=�6F   .+�5H   "   �  5I   &   �� 5J   *   $��70 �6;   �� 5K   *   $��70 �6;   .+�5M   &   /  )DevExpress.Xpf.Editors.ListBoxRadioButton  -   5        $
��rdTH��5M   Z   $��0��6=   $��TH��6M   $��Center=�6f     5N   &   -	   5        $
��rdLT��5N   Z   $��1��6=   $��LT��6M   $��Center=�6f   5O   #   5P      �� 5Q      $��2��6(   $��1��65   $��Mã phòng:��6E   #��[ 6V   %  DevExpress.Xpf.Editors.TextEdit  5R      -
   5        $��
txtMaPhong��5R   H   $��2��6+   $��2��68   #��[ 6Z   $ 50��6�    6�   �� *
MA_PHONG+6�   �� 5T      $��2��6(   $��3��65   $��Tên phòng:��6E   #��[ 6W     5U      -   5        $��txtTenPhong��5U   H   $��2��6+   $��4��68   #��[ 6[    6�   �� *	TEN_PHONG+�� 5W      $��2��6(   $��5��65   $��Sức chứa:��6E   #��[ 6V     5X      -   5        $��
txtSucChua��5X   H   $��2��6+   $��6��68   #��[ 6Z   	   MaskType$	 Numeric=�6�   
   AcceptsReturn
 . $ 0X�6�    6�   �� *	SUCCHUA+6�   �� 5Z      $��0��6(   $��7��65   $��Máy chiếu:��6E   #��[ 6W   &   DevExpress.Xpf.Editors.CheckEdit  5[      -   5        $��chkMayChieu��5[   I   $��0��6,   $��8��69     CheckBoxStyle#��[ 6\   $��Center=�6�   $��Center=�6�    6�   �� *IS_MAYCHIEU+6�   �� 5^      $��0��6(   $��9��65   $��Máy tính:��6E   #��[ 6V     5_      -   5        $��
chkMayTinh��5_   J   $��0��6,   $��10��69   #��[ 6\   $��Center=�6�   $��Center=�6�    6�   �� *
IS_MAYTINH+6�   �� 5a      $��0��6(   $��11��65   $��Tình trạng:��6F   #��[ 6Y     5b      -   5        $��chkTinhTrang��5b   J   $��0��6,   $��12��69   #��[ 6^   $��Center=�6�   $��Center=�6�    6�   �� *	TINHTRANG+6�   �� 5f      $��2��6(   $��7��65   $��	Ghi chú:��6E   #��[ 6U     5g      -   5        $��	txtGhiChu��5g   H   $��2��6+   $��8��68   $��7��6Y   #��[ 6m   
 .    TextWrapping$
 Wrap=�5h   +   $	 255��6\    6?   �� *GHICHU+6\   5i      5j      5l      5m      5n      � 5p   
   $��3��6    5q      �� 5r      $	��400 �6    .+�5t      %  DevExpress.Xpf.Grid.GridControl  -   5          Name$	 grd��5t   s   )	  #DevExpress.Xpf.Grid.DataControlBase 	  AutoPopulateColumns . $��Stretch=�69   $��Stretch=�6W   &
   DevExpress.Xpf.Core.ThemeManager 
  	ThemeName0  *DevExpress.Xpf.Core.ThemeNameTypeConverter$ MetropolisLight 5u       	  SelectionMode$	 Row=�6J      View 5v      #  DevExpress.Xpf.Grid.TableView  5w      -   5          Name$ grdViewNDung��5w   K      	AutoWidth . &   DevExpress.Xpf.Grid.DataViewBase   BorderBrush �#27415d   NavigationStyle$
 Cell=�6b     SelectedRowStyle   RowStyle# [ 5x   $   &   DevExpress.Xpf.Grid.GridViewBase   ShowGroupPanel .  "   VerticalScrollbarVisibility$ Visible=�5y   ;   5z      5|      5}      5~      5      