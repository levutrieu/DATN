   M S B A M L   `   `   `  ����  DATN.TTS.TVMH    DATN.TTS.TVMH.frm_LopHoc   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      a ]DevExpress.Xpf.Grid.v15.2, Version=15.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49al hDevExpress.Xpf.Grid.v15.2.Extensions, Version=15.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49af bDevExpress.Xpf.Grid.v15.2.Core, Version=15.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a@dxg2http://schemas.devexpress.com/winfx/2008/xaml/grid    5      a ]DevExpress.Xpf.Core.v15.2, Version=15.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a;dx2http://schemas.devexpress.com/winfx/2008/xaml/core  5      ?dxe5http://schemas.devexpress.com/winfx/2008/xaml/editors  5        N� Title$  
frm_LopHoc��5      .��5      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $��10 �6   �� 5      $	��400 �6   �� 5      $��* �6   .+�5   
   �� -   5         ��Name$ 
BrdBtnWrap��5      $��0��6%   $��Stretch=�62   $��Stretch=�6P   ._�5      ��  �� Orientation$ 
Horizontal=�6   $��Right=�62   $��0,1,0,1q�6N   .+�5      �� -   5        $��	btnAddNew��5   �   $��Thêm mới��63      Button_Style#��[  6F   $��Right=�6l   $��Center=�6�   �� 5      -   5        $��btnSave��5   �   $
��Lưu��61   #��[  6?   $��Right=�6e   $��Center=�6�   �� 5      -   5        $��	btnDelete��5   �   $
��Xóa��63   #��[  6A   $��Right=�6g   $��Center=�6�   �� 5      -   5        $��
btnRefresh��5   �   $��
Làm mới��64   #��[  6F   $��Right=�6l   $��Center=�6�   5      5      9� 5    
   $��1��6   $��RightToLeft=�6      ExpanderStyle#��[ 6<   $��Stretch=�6c   $��Stretch=�6�    9� 
IsExpanded . $��1,0,1,0q�6�   .��5!      �� $��Stretch=�6   .+�5"      �� 
����������#27415d$��1,0,1,2q�6G   $
��auto��6a   ._�5$      �� $��LeftToRight=�6!   $ Vertical=�6=   $��Stretch=�6T   .+�5%      �  5&      �� 5'   "   $��30 �60   �� 5(   "   $
��0.2* �60   �� 5)   "   $��30 �60   �� 5*   "   $
��0.1* �60    � ColumnDefinitions 5,      �� 5-   "   $
��0.1* �63   �� 5.   "   $
��Auto �63   �� 5/   "   $
��0.8* �63   �� 50   "   $
��Auto �63   �� 51   "   $
��0.8* �63   �� 52   "   $
��Auto �63   �� 53   "   $
��0.8* �63   �� 54   "   $
��Auto �63   �� 55   "   $
��0.8* �63   �� 56   "   $
��Auto �63   �� 57   "   $
��0.8* �63   �� 58   "   $
��0.1* �63   .+�5:      �� $��0��6(   $��1��65   $��
Mã lớp:��6E     TextBlockStyle#��[ 6T   %  DevExpress.Xpf.Editors.TextEdit  5;      -   5        $��txtMaLop��5;   H   $��0��6+   $��2��68     TextEditStyle#��[ 6X   )  #DevExpress.Xpf.Editors.TextEditBase   	MaxLength$ 50��6�   %  DevExpress.Xpf.Editors.BaseEdit   	EditValue 6   �� *MA_LOP+6�   �� 5=      $��0��6(   $��3��65   $��Lớp học:��6E   #��[ 6U     5>      -   5        $��	txtTenLop��5>   H   $��0��6+   $��4��68   #��[ 6Y    6�   �� *	TEN_LOP+�� 5@      $��0��6(   $��5��65   $��Số lượng sinh viên:��6E   #��[ 6`   %  DevExpress.Xpf.Editors.SpinEdit  5A      -   5        $��txtSLSV��5A   H   $��0��6+   $��6��68     SpinEditStyle#��[ 6W      MaskType$ Numeric=�5B   +   	   MinValue$	 0X�6>   
   AcceptsReturn
 .    TextWrapping$
 Wrap=�6`   $	 255��5C   L    6+   �� *
SOLUONG_SV+6L   �� 5E      $��2��6(   $��7��65   $��	Ghi chú:��6E   #��[ 6U     5F      -	   5        $��	txtGhiChu��5F   H   $��2��6+   $��8��68   $��4��6Y   #��[ 6m   $	 255��6�    6�   �� *GHICHU+6�   �� 5H      $��2��6(   $��1��65   $��Ngày mở lớp:��6E   #��[ 6Y   %  DevExpress.Xpf.Editors.DateEdit  5I      -
   5        $��	txtNgayMo��5I   H   $��2��6+   $��2��68     DateEditStyle#��[ 6Y      Mask$ 
dd/MM/yyyy��5K   ,      MaskUseAsDisplayFormat .    DisplayFormatString$ 
dd/MM/yyyy��6\    5J   +   �� *
NGAY_MOLOP+ �� UpdateSourceTrigger$ PropertyChanged=�5K   \   �� 5N      $��2��6(   $��3��65   $��Ngày kết thúc��6E   #��[ 6Z     5O      -   5        $��txtNgayKetThuc��5O   H   $��2��6+   $��4��68   #��[ 6^   $ 
dd/MM/yyyy��5Q   ,    . $ 
dd/MM/yyyy��6\    5P   +   �� *NGAY_KETTHUC+$ PropertyChanged=�5Q   \   �� 5S      $��2��6(   $��5��65   $��Giảng viên CN:��6E   #��[ 6[   )  #DevExpress.Xpf.Editors.ComboBoxEdit  5T      -   5        $��cbbGiangVienCN��5T   L   $��2��6/   $��6��6<     ComboBoxEditStyle#��[ 6b   +  %DevExpress.Xpf.Editors.LookUpEditBase   DisplayMember$ TEN_GIANGVIEN��5V   /      ValueMember$ ID_GIANGVIEN��6M      AutoComplete .  5U   /   �� *ID_GIANGVIEN+$ PropertyChanged=�5W   /   �� 5Z      $��0��6(   $��7��65   $��Khóa học ngành:��6E   #��[ 6\     5[      -   5        $��cbbKhoaNganh��5[   <   $��0��6/   $��8��6P   $��3��6`   #��[ 6t   $ ID_KHOAHOC_NGANH��5]   /   $ 
KHOA_NGANH��6N    . '  !DevExpress.Xpf.Editors.ButtonEdit   IsTextEditable$
 TrueX�5^   B    5\   /   �� *ID_KHOAHOC_NGANH+$ PropertyChanged=�5^   B   5_      5`      5b      5c      5d      � 5f   
   $��3��6    5g      �� 5h      $	��400 �6    .+�5j      %	  DevExpress.Xpf.Grid.GridControl	  -   5         	 Name$	 grd��5j   �   $��1��6   )
  #DevExpress.Xpf.Grid.DataControlBase 
  AutoPopulateColumns . $��Stretch=�6I   $��Stretch=�6g   &   DevExpress.Xpf.Core.ThemeManager   	ThemeName0  *DevExpress.Xpf.Core.ThemeNameTypeConverter$ MetropolisLight 5k       	  View 5l      #  DevExpress.Xpf.Grid.TableView  5m      -   5          Name$ grdViewNDung��5m   K      	AutoWidth . &   DevExpress.Xpf.Grid.DataViewBase   BorderBrush �#27415d   NavigationStyle$
 Cell=�6b     SelectedRowStyle   RowStyle# [ 5n   $   &   DevExpress.Xpf.Grid.GridViewBase   ShowGroupPanel .  "   VerticalScrollbarVisibility$ Visible=�5o   ;   5p      5r      5s      5t      5u      