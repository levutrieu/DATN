   M S B A M L   `   `   `  ����  DATN.TTS.TVMH!    DATN.TTS.TVMH.frm_GiangVien   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      a ]DevExpress.Xpf.Grid.v15.2, Version=15.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49al hDevExpress.Xpf.Grid.v15.2.Extensions, Version=15.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49af bDevExpress.Xpf.Grid.v15.2.Core, Version=15.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a@dxg2http://schemas.devexpress.com/winfx/2008/xaml/grid    5      a ]DevExpress.Xpf.Core.v15.2, Version=15.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a;dx2http://schemas.devexpress.com/winfx/2008/xaml/core  5      ?dxe5http://schemas.devexpress.com/winfx/2008/xaml/editors  5        N� Title$  frm_GiangVien��5      .��5      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $	��400 �6   �� 5      $��* �6    � ColumnDefinitions 5   
   �� 5      $��50 �6   �� 5      $	��200 �6   �� 5      $	��200 �6   �� 5      $	��200 �6   �� 5      $	��200 �6   �� 5      $	��50* �6   .+�5   
   �� -   5         ��Name$ 
BrdBtnWrap��5      $��0��6%   $��0��62   $��6��6B   $��Stretch=�6V   $��Stretch=�6t   ._�5       ��  �� Orientation$ 
Horizontal=�6   $��Right=�62   $��0,1,0,1q�6N   .+�5!      �� -   5        $��	btnAddNew��5!   �   $��Thêm mới��63      Button_Style#��[  6F   $��Right=�6l   $��Center=�6�   �� 5"      -   5        $��btnSave��5"   �   $
��Lưu��61   #��[  6?   $��Right=�6e   $��Center=�6�   �� 5#      -   5        $��	btnDelete��5#   �   $
��Xóa��63   #��[  6A   $��Right=�6g   $��Center=�6�   �� 5$      -   5        $��
btnRefresh��5$   �   $��
Làm mới��64   #��[  6F   $��Right=�6l   $��Center=�6�   5%      5&      9� 5(   
   $��1��6   $��0��6    $��6��60   $��RightToLeft=�6D     ExpanderStyle#��[ 6`   $��Stretch=�6�   $��Stretch=�6�    9� 
IsExpanded . $��1,0,1,0q�6�   .��5-      � 
�������$��1��6+   $��0��68   $��6��6H   $��Stretch=�6\   $��LeftToRight=�6z    5.      �� 5/      $��30 �6$   �� 50      $
��0.2* �6$   �� 51      $��30 �6$   �� 52      $
��0.2* �6$   �� 53      $��30 �6$   �� 54      $
��0.2* �6$   �� 55      $��30 �6$   �� 56      $
��0.2* �6$   �� 57      $��30 �6$   �� 58      $
��0.2* �6$   �� 59      $��1* �6$    5;      �� 5<      $��10 �6'   �� 5=      $	��12* �6'   �� 5>      $	��20* �6'   �� 5?      $	��13* �6'   �� 5@      $	��20* �6'   �� 5A      $	��10* �6'   �� 5B      $	��20* �6'   �� 5C      $	��10* �6'   �� 5D      $	��20* �6'   �� 5E      $
��Auto �6'   .+�5G      �� $��0��6   $��1��6)   $��Mã giảng viên:��69     TextBlockStyle#��[ 6O   %  DevExpress.Xpf.Editors.TextEdit  5H      -   5        $��txtMaSV��5H   <   $��0��6   $��2��6,     TextEditStyle#��[ 6K   %  DevExpress.Xpf.Editors.BaseEdit   	EditValue 5I   /   �� *MA_GIANGVIEN+ �� UpdateSourceTrigger$ PropertyChanged=��� 5K      $��0��6   $��3��6)   $��Tên giảng viên:��69   #��[ 6P     5L      -   5        $��txtTenSV��5L   <   $��0��6   $��4��6,   #��[ 6L    5M   /   �� *TEN_GIANGVIEN+$ PropertyChanged=��� 5O      $��0��6   $��5��6)   $��Giới tính:��69   #��[ 6K   &   DevExpress.Xpf.Editors.CheckEdit  5P      -   5        $��chkGT��5P   N   $��0��6    $��6��6-      Content)  #DevExpress.Xpf.Core.ObjectConverter$ Nam/Nữ 6=     CheckBoxStyle#��[ 5Q   ,   $��Center=�6S    5P   [   �� *
GIOITINH+5Q   S   �� 5S      $��0��6   $��7��6)   $��Ngày sinh:��69   #��[ 6K   %  DevExpress.Xpf.Editors.DateEdit  5T      -	   5        $��txtNgaySinh��5T   <   $��0��6   $��8��6,     DateEditStyle#��[ 6n   	   Mask$	 
dd/MM/yyyy��5U   +   
   DisplayFormatString$
 
dd/MM/yyyy��6=      MaskUseAsDisplayFormat .  5T   O   �� *
NGAYSINH+5U   ^   �� 5W      $��2��6   $��1��6)   $��
Nơi sinh:��69   #��[ 6J     5X      -
   5        $��
txtNoiSinh��5X   <   $��2��6   $��2��6,   #��[ 6N   )  #DevExpress.Xpf.Editors.TextEditBase   AcceptsReturn .  5Y   +   �� *	NOISINH+$ PropertyChanged=��� 5[      $��2��6   $��3��6)   $��Địa chỉ:��69   #��[ 6I     5\      -   5        $��txtDCHI��5\   <   $��2��6   $��4��6,   #��[ 6K    .    TextWrapping$
 Wrap=�5]   +      	MaxLength$	 255��6�    6?   �� *DIACHI+$ PropertyChanged=�6�   �� 5_      $��2��6   $��5��6)   $��Điện thoại:��69   #��[ 6L     5`      -   5        $��txtDT��5`   <   $��2��6   $��6��6,   #��[ 6I    . $
 Wrap=�5a   +   $ 13��6_      MaskType$ Numeric=�6n    6?   �� *	DIENTHOAI+6n   �� 5c      $��2��6   $��7��6)   $��E-mail:��69   #��[ 6H     5d      -   5        $��txtEmail��5d   <   $��2��6   $��8��6,   #��[ 6L    . $
 Wrap=�5e   +    6?   �� *EMAIL+�� 5g      $��4��6   $��1��6)   $��CMND:��69   #��[ 6F     5h      -   5        $��txtCMND��5h   <   $��4��6   $��2��6,   #��[ 6K    . $
 Wrap=�5i   +   $ 13��6Z   $ Numeric=�6i    6?   �� *CMND+6i   �� 5k      $��4��6   $��3��6)   $��Nơi cấp:��69   #��[ 6I     5l      -   5        $��	txtNoiCap��5l   <   $��4��6   $��4��6,   #��[ 6M    . $
 Wrap=�5m   +    6?   �� *NOICAP+�� 5o      $��4��6   $��5��6)   $��Ngày cấp:��69   #��[ 6J     5p      -   5        $��
txtNgayCap��5p   <   $��4��6   $��6��6,   #��[ 6N    . $
 Wrap=�5q   +   $	 
dd/MM/yyyy��6]    . $
 dd/MM/yyyyy��6�    6?   �� *	NGAYCAP+6�   �� 5s      $��4��6   $��7��6)   $��File Ảnh:��69   #��[ 6J   )  #DevExpress.Xpf.Editors.ComboBoxEdit  5t      -   5        $��PathAnh��5t   @   $��4��6#   $��8��60     ComboBoxEditStyle#��[ 6O    .  5u   ,   �� *
PATH_ANH+$ PropertyChanged=��� 5w      $��6��6   $��1��6)   $��Năm vào làm việc:��69   #��[ 6R     5x      -   5        $��txtNamVaoLam��5x   <   $��6��6   $��2��6,   #��[ 6P    . $
 Wrap=�5y   +    6?   �� *NAM_LAMVIEC+�� 5{      $��6��6   $��3��6)   $��Năm hết hợp đồng:��69   #��[ 6R     5|      -   5        $��txtNamHetHopDong��5|   <   $��6��6   $��4��6,   #��[ 6T    . $
 Wrap=�5}   +   $	 
dd/MM/yyyy��5~   +    . $
 
dd/MM/yyyy��6[    5}   ?   �� *NAM_KETTHUC+$ PropertyChanged=�5~   [   �� 5�      $��6��6   $��5��6)   $��Trạng thái:��69   #��[ 6L     5�      -   5        $��cbbTrangThai��5�   @   $��6��6#   $��6��60   #��[ 6T    . +  %DevExpress.Xpf.Editors.LookUpEditBase   AutoComplete .    DisplayMember$ NAME_TRANGTHAI��5�   q      ValueMember$ 	TRANGTHAI��6�    6,   �� *	TRANGTHAI+$ PropertyChanged=�6�   �� 5�      $��6��6   $��7��6)   $��Hệ số lương:��69   #��[ 6M   %	  DevExpress.Xpf.Editors.SpinEdit	  5�      -   5        $��txtHSL��5�   <   $��6��6   $��8��6,     SpinEditStyle#��[ 6J    . $
 Wrap=�5�   +    	  MinValue$ 0X�5�   +    	  MaxValue$ 10X�68    5�   ?   �� *
HE_SOLUONG+$ PropertyChanged=�5�   8   �� 5�      $��8��6   $��1��6)   $��Chức vụ:��69   #��[ 6I     5�      -   5        $��	cbbChucVu��5�   @   $��8��6#   $��2��60   #��[ 6Q    . $ 
TEN_CHUCVU��5�   /   $ 	ID_CHUCVU��6J    .  5�   /   �� *	ID_CHUCVU+$ PropertyChanged=�5�   b   �� 5�      $��8��6   $��3��6)   $��Khoa giảng dạy:��69   #��[ 6P     5�      -   5        $��cbbKhoa��5�   @   $��8��6#   $��4��60   #��[ 6O    . $ TEN_KHOA��5�   /   $ ID_KHOA��6H    .  5�   /   �� *	ID_KHOA+$ PropertyChanged=�5�   ^   �� 5�      $��8��6   $��5��6)   $��	Ghi chú:��69   #��[ 6I     5�      -   5        $��	txtGhiChu��5�   P   $��8��6   $��6��6,   $��3��6<   #��[ 6a    .  5�   /   �� *GHICHU+$ PropertyChanged=�5�      5�      � 5�   
   $��2��6   $��0��6   $��6��6,   .+�5�      %
  DevExpress.Xpf.Grid.GridControl
  -   5         
 Name$	 grd��5�   s   )  #DevExpress.Xpf.Grid.DataControlBase   AutoPopulateColumns . $��Stretch=�69   $��Stretch=�6W   &   DevExpress.Xpf.Core.ThemeManager   	ThemeName0  *DevExpress.Xpf.Core.ThemeNameTypeConverter$ MetropolisLight 5�       
  View 5�      #  DevExpress.Xpf.Grid.TableView  5�      -   5          Name$ grdViewNDung��5�   K      	AutoWidth . &   DevExpress.Xpf.Grid.DataViewBase   BorderBrush �#27415d   NavigationStyle$
 Cell=�6b     SelectedRowStyle   RowStyle# [ 5�   $   &   DevExpress.Xpf.Grid.GridViewBase   ShowGroupPanel .  "   VerticalScrollbarVisibility$ Visible=�5�   ;   5�      5�      5�      5�      5�      