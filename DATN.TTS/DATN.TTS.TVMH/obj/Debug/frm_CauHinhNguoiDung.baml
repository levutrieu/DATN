   M S B A M L   `   `   `  ����  DATN.TTS.TVMH(    "DATN.TTS.TVMH.frm_CauHinhNguoiDung   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      a ]DevExpress.Xpf.Grid.v15.2, Version=15.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49al hDevExpress.Xpf.Grid.v15.2.Extensions, Version=15.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49af bDevExpress.Xpf.Grid.v15.2.Core, Version=15.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a@dxg2http://schemas.devexpress.com/winfx/2008/xaml/grid    5      a ]DevExpress.Xpf.Core.v15.2, Version=15.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a;dx2http://schemas.devexpress.com/winfx/2008/xaml/core  5      ?dxe5http://schemas.devexpress.com/winfx/2008/xaml/editors  5        N� Title$  frm_CauHinhNguoiDung��5	      .��5      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $��10 �6   �� 5      $��30 �6   �� 5      $��* �6   �� 5      $
��400* �6   �� 5      $��* �6    � ColumnDefinitions 5   
   �� 5      $	��500 �6   �� 5      $��50 �6   �� 5      $
��Auto �6   �� 5      $	��250 �6   �� 5      $
��Auto �6   �� 5      $
��300* �6   .+�5   
   �� -   5         ��Name$ 
BrdBtnWrap��5      $��0��6%   $��0��62   $��6��6B   $��Stretch=�6V   $��Stretch=�6t   ._�5       ��  �� Orientation$ 
Horizontal=�6   $��Right=�62   $��0,1,0,1q�6N   .+�5!      �� -   5        $��	btnAddNew��5!   �   $��Thêm mới��63      Button_Style#��[  6F   $��Right=�6l   $��Center=�6�   �� 5"      -   5        $��btnSave��5"   �   $
��Lưu��61   #��[  6?   $��Right=�6e   $��Center=�6�   �� 5#      -   5        $��	btnDelete��5#   �   $
��Xóa��63   #��[  6A   $��Right=�6g   $��Center=�6�   �� 5$      -   5        $��
btnRefresh��5$   �   $��
Làm mới��64   #��[  6F   $��Right=�6l   $��Center=�6�   5%      5&      9� 5(   
   $��1��6   $��0��6    $��6��60   $��RightToLeft=�6D     ExpanderStyle#��[ 6`   $��Stretch=�6�   $��Stretch=�6�    9� 
IsExpanded . $��1,0,1,0q�6�   .��5)      �� $��Stretch=�6   .+�5*      �� 
����������#27415d$��1,0,1,2q�6G   $
��auto��6a   ._�5,      �� $��LeftToRight=�6!   $ Vertical=�6=   $��Stretch=�6T   .+�5-      �  5.      �� 5/   "   $��28 �60   �� 50   "   $
��Auto �60    54      �� 55   "   $��20 �63   �� 56   "   $
��Auto �63   �� 57   "   $
��0.8* �63   �� 58   "   $
��Auto �63   �� 59   "   $��5 �63   �� 5:   "   $
��Auto �63   �� 5;   "   $
��0.8* �63   �� 5<   "   $��5 �63   �� 5=   "   $
��Auto �63   �� 5>   "   $
��0.8* �63   �� 5?   "   $��5 �63   �� 5@   "   $
��Auto �63   �� 5A   "   $
��Auto �63   �� 5B   "   $��5 �63   �� 5C   "   $
��Auto �63   �� 5D   "   $
��0.8* �63   �� 5E   "   $
��0.1* �63   .+�5G      �� $��0��6(   $��1��65   $��Nhân viên:��6E     TextBlockStyle#��[ 6W   )  #DevExpress.Xpf.Editors.ComboBoxEdit  5L      -   5        $��cbbNhanVien��5L   L   $��0��6/   $��2��6<     ComboBoxEditStyle#��[ 6_   +  %DevExpress.Xpf.Editors.LookUpEditBase   AutoComplete . '  !DevExpress.Xpf.Editors.ButtonEdit   IsTextEditable$
 TrueX�5M   C   %  DevExpress.Xpf.Editors.BaseEdit   ValidateOnTextInput .  	   IncrementalFiltering$
	 TrueX�6u   
   ImmediatePopup
 . )  #DevExpress.Xpf.Editors.TextEditBase   AcceptsReturn .    TextWrapping$
 Wrap=�5N   D      ValueMember$ ID_NHANVIEN��6z      DisplayMember$ HOTEN��6�      	EditValue 6X   �� *ID_NHANVIEN+6�   �� 5P      -   5        $��btnAdd��5P   �   $��+��6B   $��0��6N   $��3��6[   #��[  6k   $��Right=�6�   $��Center=�6�   �� 5R      $��0��6(   $��5��65   $��Tên đăng nhập:��6E   #��[ 6[   %  DevExpress.Xpf.Editors.TextEdit  5S      -   5        $��txtUser��5S   H   $��0��6+   $��6��68     TextEditStyle#��[ 6W      	MaxLength$ 50��6�    6~   �� *
UserName+6�   �� 5U      $��0��6(   $��8��65   $��Mật khẩu:��6E   #��[ 6V   ,  &DevExpress.Xpf.Editors.PasswordBoxEdit  5V      -	   5        $��txtPass��5V   O   $��0��62   $��9��6?     PasswordBoxEditStyle#��[ 6^    6�   �� *Pass+�� 5X      $��0��6(   $��11��65   $��Hoạt động:��6F   #��[ 6X   &   DevExpress.Xpf.Editors.CheckEdit  5Y      -
   5        $��chkHoatDong��5Y   i   $��0��6,   $��12��69    6J   �� *
HoatDong+6i   �� 5[      $��0��6(   $��14��65   $��	Ghi chú:��6F   #��[ 6V     5\      $��0��6+   $��15��68   #��[ 6I    . $
 Wrap=�6�   $	 255��6�    6�   �� *GhiChu+6�   5]      5^      5`      5a      5b      �� 5d   
   $��3��6   $��0��6!   $��Danh sách người dùng��61   #��[ 6M   $��Center=�6u   $��14(�6�   �� 5e   
   $��3��6   $��3��6!   $��3��61   $&�� Danh sách nhóm người dùng:��6E   #��[ 6g   $��Center=�6�   $��14(�6�   $��Center=�6�   � 5g   
   -   5         �Name$ 	Body_Area��5g   ,   $��5��6   $��0��6   $��Stretch=�6?   $��Stretch=�6]   .+�5h      %	  DevExpress.Xpf.Grid.GridControl	  -   5         	 Name$	 grd��5h   s   )
  #DevExpress.Xpf.Grid.DataControlBase 
  AutoPopulateColumns . $��Stretch=�69   $��Stretch=�6W   &   DevExpress.Xpf.Core.ThemeManager   	ThemeName0  *DevExpress.Xpf.Core.ThemeNameTypeConverter$ MetropolisLight 5i       
  SelectionMode$	 Row=�6J    	  View 5j      #  DevExpress.Xpf.Grid.TableView  5k      -   5          Name$ grdViewNDung��5k   K      	AutoWidth . &   DevExpress.Xpf.Grid.DataViewBase   BorderBrush �#27415d   NavigationStyle$
 Cell=�6b     SelectedRowStyle   RowStyle# [ 5l   $   &   DevExpress.Xpf.Grid.GridViewBase   ShowGroupPanel .  "   VerticalScrollbarVisibility$ Visible=�5m   ;   5n      5p      5q      � 5s   
   -   5        $ GridUI��5s   @   $��5��6   $��2��6   $��4��6,   $��Stretch=�6P   $��Stretch=�6n   .+�5t      	  -   5        $ grdUI��5t   d   $��3q�6   $��Stretch=�6*   $��Stretch=�6H   $ MetropolisLight 6s    5u        5v      -   5        $ 	grdViewUI��5v   K    .  �#27415d# [ 6^    .  $ Visible=�5w   ;      ShowIndicator . 5x      5z      5{      5}      5~      