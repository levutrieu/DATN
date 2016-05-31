﻿using System;
using System.Windows;
using System.Windows.Controls;
using DevExpress.Utils;
using DevExpress.Xpf.Grid;
using CustomMessage;


namespace DATN.TTS.TVMH
{
    /// <summary>
    /// Interaction logic for Main.xaml
    /// </summary>
    public partial class Main : Page
    {
        public Main()
        {
            InitializeComponent();
            Init_Grid();
        }

        private void Init_Grid()
        {
            GridColumn xcolumn = new GridColumn();
            xcolumn.Header = "Ma sinh vien";
            xcolumn.Width = 50;
            xcolumn.HorizontalHeaderContentAlignment = HorizontalAlignment.Center;
            xcolumn.AllowEditing = DefaultBoolean.False;
            xcolumn.Visible = true;

            xcolumn.HeaderStyle = FindResource("ColumnsHeaderStyle") as Style;
            grd.Columns.Add(xcolumn);

            GridColumn xxcolumn = new GridColumn();
            xxcolumn.Header = "Ten sinh vien";
            xxcolumn.Width = 50;
            xxcolumn.HorizontalHeaderContentAlignment = HorizontalAlignment.Center;
            xxcolumn.AllowEditing = DefaultBoolean.False;
            xxcolumn.Visible = true;
            xxcolumn.HeaderStyle = FindResource("ColumnsHeaderStyle") as Style;
            grd.Columns.Add(xxcolumn);

            GridColumn xxxcolumn = new GridColumn();
            xxxcolumn.Header = "Ngay sinh";
            xxxcolumn.Width = 50;
            xxxcolumn.HorizontalHeaderContentAlignment = HorizontalAlignment.Center;
            xxxcolumn.AllowEditing = DefaultBoolean.False;
            xxxcolumn.Visible = true;
            xxxcolumn.HeaderStyle = FindResource("ColumnsHeaderStyle") as Style;
            grd.Columns.Add(xxxcolumn);
        }

        private void BtnSetNamHienTai_OnClick(object sender, RoutedEventArgs e)
        {
            CTMessagebox.Show("Thong bao me gi", "Thong bao", "");
        }
    }
}
