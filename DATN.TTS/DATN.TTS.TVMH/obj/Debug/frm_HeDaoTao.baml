   M S B A M L   `   `   `  ����  DATN.TTS.TVMH     DATN.TTS.TVMH.frm_HeDaoTao   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      a ]DevExpress.Xpf.Grid.v15.2, Version=15.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49al hDevExpress.Xpf.Grid.v15.2.Extensions, Version=15.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49af bDevExpress.Xpf.Grid.v15.2.Core, Version=15.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a@dxg2http://schemas.devexpress.com/winfx/2008/xaml/grid    5      a ]DevExpress.Xpf.Core.v15.2, Version=15.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a;dx2http://schemas.devexpress.com/winfx/2008/xaml/core  5      ?dxe5http://schemas.devexpress.com/winfx/2008/xaml/editors  5        N� Title$  frm_HeDaoTao��5      .��5      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $��10 �6   �� 5      $	��400 �6   �� 5      $��* �6   .+�5   
   �� -   5         ��Name$ 
BrdBtnWrap��5      $��0��6%   $��0��62   $��Stretch=�6C   $��Stretch=�6a   ._�5      ��  �� Orientation$ 
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
��0.7* �63   �� 52   "   $
��Auto �63   �� 53   "   $
��0.8* �63   �� 54   "   $
��Auto �63   �� 55   "   $
��0.8* �63   �� 56   "   $
��Auto �63   �� 57   "   $
��0.8* �63   �� 58   "   $
��Auto �63   �� 59   "   $
��0.8* �63   �� 5:   "   $
��0.1* �63   .+�5<      �� $��0��6(   $��1��65   $��Mã hệ đào tạo:��6E     TextBlockStyle#��[ 6[   %  DevExpress.Xpf.Editors.TextEdit  5=      -   5        $��txtMaHDT��5=   H   $��0��6+   $��2��68     TextEditStyle#��[ 6X   )  #DevExpress.Xpf.Editors.TextEditBase   	MaxLength$ 50��6�   %  DevExpress.Xpf.Editors.BaseEdit   	EditValue 6   �� *MA_HE_DAOTAO+6�   �� 5?      $��0��6(   $��3��65   $��Hệ đào tạo:��6E   #��[ 6X     5@      -   5        $��	txtTenHDT��5@   H   $��0��6+   $��4��68   #��[ 6Y    6�   �� *TEN_HE_DAOTAO+�� 5B      $��0��6(   $��5��65   $��Số năm học:��6E   #��[ 6X   %  DevExpress.Xpf.Editors.SpinEdit  5C      -   5        $��txtSonam��5C   H   $��0��6+   $��6��68   #��[ 6X      MaskType$ Numeric=�6   	   AcceptsReturn	 . 
   MinValue$
 0X�6�      MaxValue$ 6X�6�    6�   �� *	SO_NAMHOC+6�   �� 5E      $��0��6(   $��7��65   $��Loại hình đào tạo:��6E   #��[ 6_   )  #DevExpress.Xpf.Editors.ComboBoxEdit  5F      -	   5        $��cbbloaihinhdt��5F   L   $��0��6/   $��8��6<     ComboBoxEditStyle#��[ 6a   +  %DevExpress.Xpf.Editors.LookUpEditBase   AutoComplete . '  !DevExpress.Xpf.Editors.ButtonEdit   IsTextEditable$
 TrueX�5G   C      ValidateOnTextInput .     IncrementalFiltering$
 TrueX�6u      ImmediatePopup . 	 .    TextWrapping$
 Wrap=�5H   D      ValueMember$ ID_LOAIHINH_DTAO��6      DisplayMember$ TEN_LOAIHINH_DTAO��6�    6X   �� *ID_LOAIHINH_DTAO+6�   �� 5K      $��0��6(   $��9��65   $��Bậc đào tạo:��6E   #��[ 6Y     5L      -
   5        $��cbbbacdt��5L   M   $��0��6/   $��10��6<   #��[ 6]    . $
 TrueX�5M   C    .  $
 TrueX�6u    . 	 . $
 Wrap=�5N   D   $ ID_BAC_DAOTAO��6|   $ TEN_BAC_DAOTAO��6�    6X   �� *ID_BAC_DAOTAO+6�   �� 5P      $��2��6(   $��1��65   $��Trạng thái:��6E   #��[ 6X     5Q      -   5        $��txtTrangThai��5Q   H   $��2��6+   $��2��68   $��5��6\   #��[ 6p   	 . $
 Wrap=�5R   +   $	 255��6_    6?   �� *	TRANGTHAI+6_   5S      5T      5V      5W      5X      � 5Z   
   $��3��6    5[      �� 5\      $	��400 �6    .+�5^      %  DevExpress.Xpf.Grid.GridControl  -   5          Name$	 grd��5^   t   )	  #DevExpress.Xpf.Grid.DataControlBase 	  AutoPopulateColumns . $��Stretch=�6:   $��Stretch=�6X   &
   DevExpress.Xpf.Core.ThemeManager 
  	ThemeName0  *DevExpress.Xpf.Core.ThemeNameTypeConverter$ MetropolisLight 5_       	  SelectionMode$	 Row=�6J      View 5`      #  DevExpress.Xpf.Grid.TableView  5a      -   5          Name$ grdViewNDung��5a   K      	AutoWidth . &   DevExpress.Xpf.Grid.DataViewBase   BorderBrush �#27415d   NavigationStyle$
 Cell=�6b     SelectedRowStyle   RowStyle# [ 5b   $   &   DevExpress.Xpf.Grid.GridViewBase   ShowGroupPanel .  "   VerticalScrollbarVisibility$ Visible=�5c   ;   5d      5f      5g      5h      5i      