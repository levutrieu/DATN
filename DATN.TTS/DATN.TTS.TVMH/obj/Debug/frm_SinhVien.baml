   M S B A M L   `   `   `  ����  DATN.TTS.TVMH     DATN.TTS.TVMH.frm_SinhVien   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      a ]DevExpress.Xpf.Grid.v15.2, Version=15.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49al hDevExpress.Xpf.Grid.v15.2.Extensions, Version=15.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49af bDevExpress.Xpf.Grid.v15.2.Core, Version=15.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a@dxg2http://schemas.devexpress.com/winfx/2008/xaml/grid    5      a ]DevExpress.Xpf.Core.v15.2, Version=15.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a;dx2http://schemas.devexpress.com/winfx/2008/xaml/core  5      ?dxe5http://schemas.devexpress.com/winfx/2008/xaml/editors  5        N� Title$  frm_SinhVien��5      .��5      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $	��400 �6   �� 5      $��* �6    � ColumnDefinitions 5   
   �� 5      $��50 �6   �� 5      $	��200 �6   �� 5      $	��200 �6   �� 5      $	��200 �6   �� 5      $	��200 �6   �� 5      $	��50* �6   .+�5   
   �� -   5         ��Name$ 
BrdBtnWrap��5      $��0��6%   $��0��62   $��6��6B   $��Stretch=�6V   $��Stretch=�6t   ._�5       ��  �� Orientation$ 
Horizontal=�6   $��Right=�62   $��0,1,0,1q�6N   .+�5!      �� -   5        $��	btnImport��5!   �   $��Nhập từ Excel��63      Button_Style#��[  6K   $��Right=�6q   $��Center=�6�   �� 5"      -   5        $��	btnAddNew��5"   �   $��Thêm mới��63   #��[  6F   $��Right=�6l   $��Center=�6�   �� 5#      -   5        $��btnSave��5#   �   $
��Lưu��61   #��[  6?   $��Right=�6e   $��Center=�6�   �� 5$      -   5        $��	btnDelete��5$   �   $
��Xóa��63   #��[  6A   $��Right=�6g   $��Center=�6�   �� 5%      -   5        $��
btnRefresh��5%   �   $��
Làm mới��64   #��[  6F   $��Right=�6l   $��Center=�6�   5&      5'      9� 5)   
   $��1��6   $��0��6    $��6��60   $��RightToLeft=�6D     ExpanderStyle#��[ 6`   $��Stretch=�6�   $��Stretch=�6�    9� 
IsExpanded . $��1,0,1,0q�6�   .��5.      � 
�������$��1��6+   $��0��68   $��6��6H   $��Stretch=�6\   $��LeftToRight=�6z    5/      �� 50   "   $��30 �60   �� 51   "   $
��0.2* �60   �� 52   "   $��30 �60   �� 53   "   $
��0.2* �60   �� 54   "   $��30 �60   �� 55   "   $
��0.2* �60   �� 56   "   $��30 �60   �� 57   "   $
��0.2* �60   �� 58   "   $��30 �60   �� 59   "   $
��0.2* �60   �� 5:   "   $��1* �60    5<      �� 5=   "   $��10 �63   �� 5>   "   $	��10* �63   �� 5?   "   $	��20* �63   �� 5@   "   $	��10* �63   �� 5A   "   $	��20* �63   �� 5B   "   $	��10* �63   �� 5C   "   $	��20* �63   �� 5D   "   $	��10* �63   �� 5E   "   $	��20* �63   �� 5F   "   $
��Auto �63   .+�5H      �� $��0��6(   $��1��65   $��Mã sinh viên:��6E     TextBlockStyle#��[ 6Z   %  DevExpress.Xpf.Editors.TextEdit  5I      -   5        $��txtMaSV��5I   H   $��0��6+   $��2��68     TextEditStyle#��[ 6W   %  DevExpress.Xpf.Editors.BaseEdit   	EditValue 5J   /   �� *MA_SINHVIEN+ �� UpdateSourceTrigger$ PropertyChanged=��� 5L      $��0��6(   $��3��65   $��Tên sinh viên:��6E   #��[ 6[     5M      -   5        $��txtTenSV��5M   H   $��0��6+   $��4��68   #��[ 6X    5N   /   �� *TEN_SINHVIEN+$ PropertyChanged=��� 5P      $��0��6(   $��5��65   $��Giới tính:��6E   #��[ 6W   &   DevExpress.Xpf.Editors.CheckEdit  5Q      -	   5        $��chkGT��5Q   Z   $��0��6,   $��6��69      Content)  #DevExpress.Xpf.Core.ObjectConverter$ Nam/Nữ 6I     CheckBoxStyle#��[ 5R   ,   $��Center=�6S    5Q   g   �� *
GIOITINH+5R   S   �� 5T      $��0��6(   $��7��65   $��Ngày sinh:��6E   #��[ 6W   %  DevExpress.Xpf.Editors.DateEdit  5U      -
   5        $��txtNgaySinh��5U   H   $��0��6+   $��8��68     DateEditStyle#��[ 6z   	   Mask$	 
dd/MM/yyyy��5V   +   
   DisplayFormatString$
 
dd/MM/yyyy��6=      MaskUseAsDisplayFormat .  5U   [   �� *
NGAYSINH+5V   ^   �� 5X      $��2��6(   $��1��65   $��
Nơi sinh:��6E   #��[ 6V     5Y      -   5        $��
txtNoiSinh��5Y   H   $��2��6+   $��2��68   #��[ 6Z   )  #DevExpress.Xpf.Editors.TextEditBase   AcceptsReturn .  5Z   +   �� *	NOISINH+$ PropertyChanged=��� 5\      $��2��6(   $��3��65   $��Địa chỉ:��6E   #��[ 6U     5]      -   5        $��txtDCHI��5]   H   $��2��6+   $��4��68   #��[ 6W    .    TextWrapping$
 Wrap=�5^   +      	MaxLength$	 255��6�    6?   �� *DIACHI+$ PropertyChanged=�6�   �� 5`      $��2��6(   $��5��65   $��Điện thoại:��6E   #��[ 6X     5a      -   5        $��txtDT��5a   H   $��2��6+   $��6��68   #��[ 6U    . $
 Wrap=�5b   +   $ 13��6_      MaskType$ Numeric=�6n    6?   �� *	DIENTHOAI+6n   �� 5d      $��2��6(   $��7��65   $��Điện thoại nhà:��6E   #��[ 6\     5e      -   5        $��txtDTGD��5e   H   $��2��6+   $��8��68   #��[ 6W    . $
 Wrap=�5f   +   $ 13��6b   $ Numeric=�6q    6?   �� *DIENTHOAI_GD+6q   �� 5h      $��4��6(   $��1��65   $��CMND:��6E   #��[ 6R     5i      -   5        $��txtCMND��5i   H   $��4��6+   $��2��68   #��[ 6W    . $
 Wrap=�5j   +   $ 13��6Z   $ Numeric=�6i    6?   �� *CMND+6i   �� 5l      $��4��6(   $��3��65   $��Nơi cấp:��6E   #��[ 6U     5m      -   5        $��	txtNoiCap��5m   H   $��4��6+   $��4��68   #��[ 6Y    . $
 Wrap=�5n   +   $ 13��6\   $ Numeric=�6k    6?   �� *NOICAP+6k   �� 5p      $��4��6(   $��5��65   $��Ngày cấp:��6E   #��[ 6V     5q      -   5        $��
txtNgayCap��5q   H   $��4��6+   $��6��68   #��[ 6Z    . $
 Wrap=�5r   +   $	 
dd/MM/yyyy��6]    . $
 dd/MM/yyyyy��6�    6?   �� *	NGAYCAP+6�   �� 5t      $��4��6(   $��7��65   $��E-mail:��6E   #��[ 6T     5u      -   5        $��txtEmail��5u   H   $��4��6+   $��8��68   #��[ 6X    . $
 Wrap=�5v   +    6?   �� *EMAIL+�� 5x      $��6��6(   $��1��65   $��TT ngoại trú:��6E   #��[ 6Z     5y      -   5        $��txtTTNgoaiTru��5y   H   $��6��6+   $��2��68   #��[ 6]    . $
 Wrap=�5z   +    6?   �� *THONGTIN_NGOAITRU+�� 5|      $��6��6(   $��3��65   $��Ngày nhập học:��6E   #��[ 6[     5}      -   5        $��txtNgayNhapHoc��5}   H   $��6��6+   $��4��68   #��[ 6^    . $
 Wrap=�5~   +   $	 
dd/MM/yyyy��5   +    . $
 
dd/MM/yyyy��6[    5~   ?   �� *NGAY_VAOTRUONG+$ PropertyChanged=�5   [   �� 5�      $��6��6(   $��5��65   $��Ngày ra trường:��6E   #��[ 6\     5�      -   5        $��txtNgayRaTruong��5�   H   $��6��6+   $��6��68   #��[ 6_    . $
 Wrap=�5�   +   $	 
dd/MM/yyyy��5�   +    . $
 
dd/MM/yyyy��6[    5�   ?   �� *NGAY_RATRUONG+$ PropertyChanged=�5�   [   �� 5�      $��6��6(   $��7��65   $��Ngày vào đoàn:��6E   #��[ 6[     5�      -   5        $��txtNgayVaoDoan��5�   H   $��6��6+   $��8��68   #��[ 6^    . $
 Wrap=�5�   +   $	 
dd/MM/yyyy��5�   +    . $
 
dd/MM/yyyy��6[    5�   ?   �� *NGAY_VAODOAN+$ PropertyChanged=�5�   [   �� 5�      $��8��6(   $��1��65   $��Đoàn viên:��6E   #��[ 6W     5�      -   5        $��chkDoanVien��5�   I   $��8��6,   $��2��69   $ Có( Không) 6\   #��[ 5�   ,   $��Center=�6S    5�   ,   �� *IS_DOANVIEN+$ PropertyChanged=��� 5�      $��8��6(   $��3��65   $��Lớp học:��6E   #��[ 6U   )  #DevExpress.Xpf.Editors.ComboBoxEdit  5�      -   5        $��cbbLop��5�   L   $��8��6/   $��4��6<     ComboBoxEditStyle#��[ 6Z    . +  %DevExpress.Xpf.Editors.LookUpEditBase   DisplayMember$ TEN_LOP��5�   /      ValueMember$ 	ID_LOPHOC��6G      AutoComplete .  5�   /   �� *	ID_LOPHOC+$ PropertyChanged=�5�   _   �� 5�      $��8��6(   $��5��65   $��Trạng thái:��6E   #��[ 6X     5�      -   5        $��cbbTrangThai��5�   @   $��8��6#   $��6��60   #��[ 6T    .  . $ NAME_TRANGTHAI��5�   q   $ 	TRANGTHAI��6�    6,   �� *	TRANGTHAI+$ PropertyChanged=�6�   �� 5�      $��8��6(   $��7��65   $��File Ảnh:��6E   #��[ 6V     5�      -   5        $��PathAnh��5�   L   $��8��6/   $��8��6<   #��[ 6[    .  5�   ,   �� *
PATH_ANH+$ PropertyChanged=�5�      5�      � 5�   
   $��2��6   $��0��6   $��6��6,   .+�5�      %	  DevExpress.Xpf.Grid.GridControl	  -   5         	 Name$	 grd��5�   s   )
  #DevExpress.Xpf.Grid.DataControlBase 
  AutoPopulateColumns . $��Stretch=�69   $��Stretch=�6W   &   DevExpress.Xpf.Core.ThemeManager   	ThemeName0  *DevExpress.Xpf.Core.ThemeNameTypeConverter$ MetropolisLight 5�       	  View 5�      #  DevExpress.Xpf.Grid.TableView  5�      -   5          Name$ grdViewNDung��5�   K      	AutoWidth . &   DevExpress.Xpf.Grid.DataViewBase   BorderBrush �#27415d   NavigationStyle$
 Cell=�6b      AllowCellMerge .   SelectedRowStyle   RowStyle# [ 5�   $   &   DevExpress.Xpf.Grid.GridViewBase   ShowGroupPanel .  "   VerticalScrollbarVisibility$ Visible=�5�   ;   5�      5�      5�      5�      5�      