   M S B A M L   `   `   `  ����  DATN.TTS.TVMH    DATN.TTS.TVMH.Menu   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   c _DevExpress.Xpf.NavBar.v15.2, Version=15.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a>dxn4http://schemas.devexpress.com/winfx/2008/xaml/navbar  5   	   a ]DevExpress.Xpf.Core.v15.2, Version=15.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a;dx2http://schemas.devexpress.com/winfx/2008/xaml/core  5   	   &   DevExpress.Xpf.Core.ThemeManager    	ThemeName0  *DevExpress.Xpf.Core.ThemeNameTypeConverter$  Azeze 5   	    � Title$ Manager��5   	   $	��700��6   $
��1200��6&    � WindowStartupLocation$ CenterScreen=�63    � WindowState$ 	Maximized=�6X    � 	Resources 5
         
groupImage H� Drawing � Geometry @� Center @� RadiusX	 @� RadiusY

 � Pen >� 	Thickness >� Brush  	itemImage��%�  &	        &	 �     H� 5   
    5      � 5       5      � 5      .��5      @� $ 24,24&�6.   $ 12Q�6=   $	 12Q�6J   5      
 5      >� 5      $ 10Q�6    �#27415d6-   5      5      H� 5   
    5      � 5       5      � 5      .��5      @� $ 24,24&�6.   $ 12Q�6=   $	 12Q�6J   5      
 5!      >� 5"      $ 24Q�6    �#2979ce6-   5$      5&      5'      .��5)      � .+�5*   
   � -   5        $��MainBody��5*       � RowDefinitions 5+      �� 5,      $��30 �6    �� 5-      $��* �6    .+�51      � $��0��6   
������� � ColumnDefinitions 52      �� 53      $��* �6'   �� 54      $��30 �6'   .+�56      �� -   5        $��txtThongTin��56   ,   $��0��6   
���  ��$��Center=�6T   
�������$��0 0 5 0q�6�   $��15(�6�   $��Right=�6�   �� 57      -   5        $��btnUser��57   )   $��1��6   
�������$��0q�6N   $��Right=�6z   .��58      �� $��Images/user.png��6   $
��Fill=�65   59      5:      � 5=      $��1��6    5>      �� 5?      $
��Auto �6'   �� 5@      .+�5D      ]� $��0��6   .+�5E      )  #DevExpress.Xpf.NavBar.NavBarControl  -   5          Name$ navBar��5E   (   $	��240��68    5F       �� Source�� 5G      $ Resource/StyleMenu.xaml?�61   %       Groups 5I      '  !DevExpress.Xpf.NavBar.NavBarGroup  5J      -   5         �Name$ 	MenuGroup��5J   .      Header)  #DevExpress.Xpf.Core.ObjectConverter$
 Menu 6?      ImageSource# [  6M      NavigationPaneVisible .     Items. 5K   "   &   DevExpress.Xpf.NavBar.NavBarItem     Content$ Trang chủ 61      ImageSource$ Images/home.png��5L   )   5M         View 5O      .  (DevExpress.Xpf.NavBar.NavigationPaneView  5P       J� IsHitTestVisible .    IsOverflowPanelVisible .     IsPopupOpen .  J� IsManipulationEnabled .    IsSplitterVisible .  6�   5R      5S      � 5V      $��1��6   .+�5W      �� -   5         ��Name$ tabMenu��5W   !     TabControlStyle#��[ 62   $y�Visible=�5X   O   5Y      5Z      5[      5]      � 5_   
   -   5        $��
MenuChange��5_      $	��200��6!   $	��120��6-   
�������$y�Hidden=�5`      $��Right=�6#   $	��Top=�6?   $��	0 30 10 0q�6W    5a      �� 5b      $��40 �6    �� 5c      $��40 �6    �� 5d      $��40 �6    .+�5f      �� -   5        $��btnDangXuat��5f      $��0��6(   $��0q�65   
�������.��5g      ��   �� Orientation$  
Horizontal=�6   $	��200��67   $��5 5 0 5q�6C   .+�5h      �� $��Images/log_out.png��6   $
��Fill=�68   $��0 0 5 0q�6G   $
��Left=�6X   �� 5i      $��0 0 5 0q�6   $��0q�6-   $��Đăng xuất��69   $��Center=�6M   $��15(�6h   5j      5k      �� 5l      -	   5        $��btnDoiMK��5l      $��1��6%   $��0q�62   
�������.��5m      �� $  
Horizontal=�6   $	��200��66   $��5 5 0 5q�6B   .+�5n      �� $��Images/change_pass.png��6   $
��Fill=�6<   $��0 0 5 0q�6K   $
��Left=�6\   �� 5o      $��0 0 5 0q�6   $��0q�6-   $��Đổi mật khẩu��69   $��Center=�6P   $��15(�6l   5p      5q      �� 5r      -
   5        $��btnThoat��5r      $��2��6%   $��0q�62   
�������.��5s      �� $  
Horizontal=�6   $	��200��66   $��5 5 0 5q�6B   .+�5t      �� $��Images/exit.png��6   $
��Fill=�65   $��1 1 5 1q�6D   $
��Left=�6U   �� 5u      $��0 0 5 0q�6   $��0q�6-   $��Thoát��69   $��Center=�6I   $��15(�6e   5v      5w      5x      5z      5|      