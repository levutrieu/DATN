﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using CustomMessage;
using DATN.TTS.BUS;
using DATN.TTS.TVMH.Resource;
using DevExpress.Spreadsheet;
using DevExpress.Spreadsheet.Functions;
using DevExpress.Utils;
using DevExpress.Xpf.Editors;
using DevExpress.Xpf.Grid;
using DevExpress.XtraSpreadsheet;
using Color = System.Drawing.Color;
using Range = DevExpress.Spreadsheet.Range;
using Excel = Microsoft.Office.Interop.Excel;
namespace DATN.TTS.TVMH
{
    /// <summary>
    /// Interaction logic for frm_ThoiKhoaBieuSinhVien.xaml
    /// </summary>
    public partial class frm_ThoiKhoaBieuSinhVien : Page
    {
        bus_DangKyHocPhan client = new bus_DangKyHocPhan();
        private IWorkbook workbook = null;
        private Worksheet worksheet = null;
        private Range range = null;
        private DataTable iDataSoure = null;
        DateTime ngaytem;
        private string datetemp = "";
        private int id_hocky_htai = 0;
        private DataTable iDataSource = null;

        public frm_ThoiKhoaBieuSinhVien()
        {
            InitializeComponent();
            #region Excels
            XepTKB.ShowTabSelector = false;
            XepTKB.Options.Behavior.Selection.AllowExtendSelection = true;
            XepTKB.Options.Behavior.Selection.AllowMultiSelection = true;
            this.XepTKB.Options.Behavior.ShowPopupMenu = DocumentCapability.Hidden;
            XepTKB.ActiveWorksheet.Rows.Hide(15, 1048576 - 1);
            XepTKB.ActiveWorksheet.Columns.Hide(9, 16384 - 1);
            XepTKB.AllowDrop = false;
            XepTKB.Focusable = false; 
            #endregion
            LoadHeader();
            this.iDataSoure = TableSchemaBinding();
            this.DataContext = iDataSoure;

            //this.iDataSoure.Rows[0]["ID_SINHVIEN"] = 1;
            SetComBobox();
        }

        private void ClearFormat()
        {
            XepTKB.BeginUpdate();
            range = worksheet.Range["C2:I15"];
            worksheet.ClearContents(range);
            worksheet.UnMergeCells(range);
            range.ClearFormats();
            XepTKB.EndUpdate();
        }

        private void LoadHeader()
        {
            try
            {
                #region Create Header
                XepTKB.BeginUpdate();
                workbook = XepTKB.Document;
                worksheet = workbook.Worksheets[0];
                workbook.Worksheets[0].ActiveView.ShowHeadings = false;
                XepTKB.ReadOnly = true;
                worksheet.Columns[0].Width = 70;
                worksheet.Columns[1].Width = 90;
                worksheet.Columns[2].Width = 140;
                worksheet.Columns[3].Width = 140;
                worksheet.Columns[4].Width = 140;
                worksheet.Columns[5].Width = 140;
                worksheet.Columns[6].Width = 140;
                worksheet.Columns[7].Width = 140;
                worksheet.Columns[8].Width = 140;

                range = worksheet.Range["A1:A1"];
                range.Value = "Ca";
                range.Alignment.Horizontal = SpreadsheetHorizontalAlignment.Center;
                range.Font.Bold = true;
                range.Font.Color = DXColor.Red;
                range.Alignment.Vertical = SpreadsheetVerticalAlignment.Center;

                range = worksheet.Range["A2:A6"];
                range.Alignment.Horizontal = SpreadsheetHorizontalAlignment.Center;
                range.Font.Bold = true;
                range.Font.Color = DXColor.Red;
                range.Alignment.Vertical = SpreadsheetVerticalAlignment.Center;
                range.Merge();
                range.Value = "S";

                range = worksheet.Range["A7:A11"];
                range.Alignment.Horizontal = SpreadsheetHorizontalAlignment.Center;
                range.Font.Bold = true;
                range.Font.Color = DXColor.Red;
                range.Alignment.Vertical = SpreadsheetVerticalAlignment.Center;
                range.Merge();
                range.Value = "C";

                range = worksheet.Range["A12:A15"];
                range.Alignment.Horizontal = SpreadsheetHorizontalAlignment.Center;
                range.Font.Bold = true;
                range.Font.Color = DXColor.Red;
                range.Alignment.Vertical = SpreadsheetVerticalAlignment.Center;
                range.Merge();
                range.Value = "T";

                #region Tiet hoc

                range = worksheet.Range["B1:B1"];
                range.Value = "Tiết";

                range = worksheet.Range["B2:B2"];
                range.Value = "1";
                range.Alignment.Vertical = SpreadsheetVerticalAlignment.Center;
                range.Alignment.Horizontal = SpreadsheetHorizontalAlignment.Center;

                range = worksheet.Range["B3:B3"];
                range.Value = "2";
                range.Alignment.Vertical = SpreadsheetVerticalAlignment.Center;
                range.Alignment.Horizontal = SpreadsheetHorizontalAlignment.Center;

                range = worksheet.Range["B4:B4"];
                range.Value = "3";
                range.Alignment.Vertical = SpreadsheetVerticalAlignment.Center;
                range.Alignment.Horizontal = SpreadsheetHorizontalAlignment.Center;

                range = worksheet.Range["B5:B5"];
                range.Value = "4";
                range.Alignment.Vertical = SpreadsheetVerticalAlignment.Center;
                range.Alignment.Horizontal = SpreadsheetHorizontalAlignment.Center;

                range = worksheet.Range["B6:B6"];
                range.Value = "5";
                range.Alignment.Vertical = SpreadsheetVerticalAlignment.Center;
                range.Alignment.Horizontal = SpreadsheetHorizontalAlignment.Center;

                range = worksheet.Range["B7:B7"];
                range.Value = "6";
                range.Alignment.Vertical = SpreadsheetVerticalAlignment.Center;
                range.Alignment.Horizontal = SpreadsheetHorizontalAlignment.Center;

                range = worksheet.Range["B8:B8"];
                range.Value = "7";
                range.Alignment.Vertical = SpreadsheetVerticalAlignment.Center;
                range.Alignment.Horizontal = SpreadsheetHorizontalAlignment.Center;

                range = worksheet.Range["B9:B9"];
                range.Value = "8";
                range.Alignment.Vertical = SpreadsheetVerticalAlignment.Center;
                range.Alignment.Horizontal = SpreadsheetHorizontalAlignment.Center;

                range = worksheet.Range["B10:B10"];
                range.Value = "9";
                range.Alignment.Vertical = SpreadsheetVerticalAlignment.Center;
                range.Alignment.Horizontal = SpreadsheetHorizontalAlignment.Center;

                range = worksheet.Range["B11:B11"];
                range.Value = "10";
                range.Alignment.Vertical = SpreadsheetVerticalAlignment.Center;
                range.Alignment.Horizontal = SpreadsheetHorizontalAlignment.Center;

                range = worksheet.Range["B12:B12"];
                range.Value = "11";
                range.Alignment.Vertical = SpreadsheetVerticalAlignment.Center;
                range.Alignment.Horizontal = SpreadsheetHorizontalAlignment.Center;

                range = worksheet.Range["B13:B13"];
                range.Value = "12";
                range.Alignment.Vertical = SpreadsheetVerticalAlignment.Center;
                range.Alignment.Horizontal = SpreadsheetHorizontalAlignment.Center;

                range = worksheet.Range["B14:B14"];
                range.Value = "13";
                range.Alignment.Vertical = SpreadsheetVerticalAlignment.Center;
                range.Alignment.Horizontal = SpreadsheetHorizontalAlignment.Center;

                range = worksheet.Range["B15:B15"];
                range.Value = "14";
                range.Alignment.Vertical = SpreadsheetVerticalAlignment.Center;
                range.Alignment.Horizontal = SpreadsheetHorizontalAlignment.Center;

                #endregion

                #region Thứ
                range = worksheet.Range["C1:C1"];
                range.Value = "Thứ 2";

                range = worksheet.Range["D1:D1"];
                range.Value = "Thứ 3";

                range = worksheet.Range["E1:E1"];
                range.Value = "Thứ 4";

                range = worksheet.Range["F1:F1"];
                range.Value = "Thứ 5";

                range = worksheet.Range["G1:G1"];
                range.Value = "Thứ 6";

                range = worksheet.Range["H1:H1"];
                range.Value = "Thứ 7";

                range = worksheet.Range["I1:I1"];
                range.Value = "Chủ nhật"; 
                #endregion

                #region Format
                Formatting rangeFormatting = range.BeginUpdateFormatting();

                //rangeFormatting.Font.Color = Color.Black;
                rangeFormatting.Font.Size = 10;
                //rangeFormatting.Font.FontStyle = SpreadsheetFontStyle.Regular;
                range = worksheet.Range["C1:I1"];
                range.ColumnWidth = 480;
                range = worksheet.Range["C2:C15"];
                range.RowHeight = 120;

                range = worksheet.Range["A1:I15"];

                range.EndUpdateFormatting(rangeFormatting);

                range = worksheet.Range["A1:I1"];

                rangeFormatting = range.BeginUpdateFormatting();

                rangeFormatting.Font.Color = Color.White;
                rangeFormatting.Font.Bold = true;
                rangeFormatting.Font.Size = 12;
                rangeFormatting.Font.FontStyle = SpreadsheetFontStyle.Regular;
                rangeFormatting.Fill.BackgroundColor = Color.FromArgb(20, 11, 200);
                rangeFormatting.Alignment.Vertical = SpreadsheetVerticalAlignment.Center;
                rangeFormatting.Alignment.Horizontal = SpreadsheetHorizontalAlignment.Center;

               range.EndUpdateFormatting(rangeFormatting);
                XepTKB.EndUpdate();


                #endregion
                #endregion
            }
            catch (Exception ex)
            {
                CTMessagebox.Show("Lỗi", "Lỗi", ex.Message, CTICON.Error, CTBUTTON.OK);
            }
        }

        DataTable TableSchemaBinding()
        {
            try
            {
                Dictionary<string, Type> dic = new Dictionary<string, Type>();
                dic.Add("ID_NAMHOC_HKY_HTAI", typeof(int));
                dic.Add("NAME_TUAN", typeof(string));
                dic.Add("TUAN", typeof(int));
                dic.Add("ID_SINHVIEN", typeof(Decimal));
                dic.Add("MA_SINHVIEN", typeof(string));
                dic.Add("TEN_SINHVIEN", typeof(string));
                dic.Add("TEN_NGANH", typeof(string));
                dic.Add("TEN_KHOAHOC", typeof(string));
                dic.Add("TEN_HE_DAOTAO", typeof(string));
                DataTable dt = null;
                dt = TableUtil.ConvertToTable(dic);
                return dt;
            }
            catch (Exception ex)
            {
                CTMessagebox.Show("Lỗi", "Lỗi", ex.Message, CTICON.Error, CTBUTTON.OK);
            }
            return null;
        }

        void SetComBobox()
        {
            DataTable dt = client.GetHocKyNamHoc();
            if (dt.Rows.Count > 0)
            {
                ComboBoxUtil.SetComboBoxEdit(cboXemTKB_HK, "TEN_HOKY_NH", "ID_NAMHOC_HKY_HTAI", dt, SelectionTypeEnum.Native);
                this.iDataSoure.Rows[0]["ID_NAMHOC_HKY_HTAI"] = cboXemTKB_HK.GetKeyValue(0);
            }
        }

        //get du lieu len excels
        private void SetColumnGrid(string HeadColumn, int BatDau, int KetThuc, string noidung)
        {
            XepTKB.BeginUpdate();
            range = worksheet.Range[HeadColumn + BatDau + ":" + HeadColumn + KetThuc];
            //range.Font.Size = 9F;
            range.Merge();
            System.Drawing.Color background = System.Drawing.Color.FromArgb(191, 238, 252);

            range.Borders.LeftBorder.LineStyle = BorderLineStyle.Medium;
            range.Borders.LeftBorder.Color = Color.Crimson;

            range.Borders.RightBorder.LineStyle = BorderLineStyle.Medium;
            range.Borders.RightBorder.Color = Color.Crimson;

            range.Borders.TopBorder.LineStyle = BorderLineStyle.Medium;
            range.Borders.TopBorder.Color = Color.Crimson;

            range.Borders.BottomBorder.LineStyle = BorderLineStyle.Medium;
            range.Borders.BottomBorder.Color = Color.Crimson;

            //range.AutoFitColumns();
            range.FillColor = background;
            range.SetValue(noidung);
            range = worksheet.Range["C2:I15"];
            range.Alignment.Horizontal = SpreadsheetHorizontalAlignment.Center;
            range.Alignment.Vertical = SpreadsheetVerticalAlignment.Center;
            range.Alignment.WrapText = true;
            XepTKB.EndUpdate();
        }

        private void Load_TKBHPCT(DataTable dt)
        {
            try
            {
                if (dt != null && dt.Rows.Count > 0)
                {
                    foreach (DataRow r in dt.Rows)
                    {
                        if (Convert.ToInt32(r["THU"].ToString()) == 2)
                        {
                            string HeadColumn = "C";
                            int TietBD = int.Parse(r["TIET_BD"].ToString());
                            int TietKT = int.Parse(r["TIET_KT"].ToString());

                            string temp = "MH: "+ r["TEN_MONHOC"].ToString();

                            string str =

                                temp + "\n"

                                + "Tiết" + " " + r["TIET_BD"].ToString() + "-" + r["TIET_KT"].ToString() + "\n"

                                + "Phòng:" + " " + r["TEN_PHONG"].ToString() + "\n"

                                + r["TEN_GIANGVIEN"].ToString();

                            SetColumnGrid(HeadColumn, TietBD + 1, TietKT + 1, str);
                        }
                        if (Convert.ToInt32(r["THU"].ToString()) == 3)
                        {
                            string HeadColumn = "D";
                            int TietBD = int.Parse(r["TIET_BD"].ToString());
                            int TietKT = int.Parse(r["TIET_KT"].ToString());

                            string temp = "MH: " + r["TEN_MONHOC"].ToString();

                            string str =

                                temp + "\n"

                                + "Tiết" + " " + r["TIET_BD"].ToString() + "-" + r["TIET_KT"].ToString() + "\n"

                                + "Phòng:" + " " + r["TEN_PHONG"].ToString() + "\n"

                                + r["TEN_GIANGVIEN"].ToString();

                            SetColumnGrid(HeadColumn, TietBD + 1, TietKT + 1, str);
                        }
                        if (Convert.ToInt32(r["THU"].ToString()) == 4)
                        {
                            string HeadColumn = "E";
                            int TietBD = int.Parse(r["TIET_BD"].ToString());
                            int TietKT = int.Parse(r["TIET_KT"].ToString());
                            string temp = "MH: " + r["TEN_MONHOC"].ToString();
                            string str =

                                temp + "\n"

                                + "Tiết" + " " + r["TIET_BD"].ToString() + "-" + r["TIET_KT"].ToString() + "\n"

                                + "Phòng:" + " " + r["TEN_PHONG"].ToString() + "\n"

                                + r["TEN_GIANGVIEN"].ToString();

                            SetColumnGrid(HeadColumn, TietBD + 1, TietKT + 1, str);
                        }
                        if (Convert.ToInt32(r["THU"].ToString()) == 5)
                        {
                            string HeadColumn = "F";
                            int TietBD = int.Parse(r["TIET_BD"].ToString());
                            int TietKT = int.Parse(r["TIET_KT"].ToString());

                            string temp = "MH: " + r["TEN_MONHOC"].ToString();

                            string str =

                                temp + "\n"

                                + "Tiết" + " " + r["TIET_BD"].ToString() + "-" + r["TIET_KT"].ToString() + "\n"

                                + "Phòng:" + " " + r["TEN_PHONG"].ToString() + "\n"

                                + r["TEN_GIANGVIEN"].ToString();

                            SetColumnGrid(HeadColumn, TietBD + 1, TietKT + 1, str);
                        }
                        if (Convert.ToInt32(r["THU"].ToString()) == 6)
                        {
                            string HeadColumn = "G";
                            int TietBD = int.Parse(r["TIET_BD"].ToString());
                            int TietKT = int.Parse(r["TIET_KT"].ToString());

                            string temp = "MH: " + r["TEN_MONHOC"].ToString();

                            string str =

                                temp + "\n"

                                + "Tiết" + " " + r["TIET_BD"].ToString() + "-" + r["TIET_KT"].ToString() + "\n"

                                + "Phòng:" + " " + r["TEN_PHONG"].ToString() + "\n"

                                + r["TEN_GIANGVIEN"].ToString();

                            SetColumnGrid(HeadColumn, TietBD + 1, TietKT + 1, str);
                        }
                        if (Convert.ToInt32(r["THU"].ToString()) == 7)
                        {
                            string HeadColumn = "H";
                            int TietBD = int.Parse(r["TIET_BD"].ToString());
                            int TietKT = int.Parse(r["TIET_KT"].ToString());

                            string temp = "MH: " + r["TEN_MONHOC"].ToString();

                            string str =

                                temp + "\n"

                                + "Tiết" + " " + r["TIET_BD"].ToString() + "-" + r["TIET_KT"].ToString() + "\n"

                                + "Phòng:" + " " + r["TEN_PHONG"].ToString() + "\n"

                                + r["TEN_GIANGVIEN"].ToString();

                            SetColumnGrid(HeadColumn, TietBD + 1, TietKT + 1, str);
                        }
                        if (Convert.ToInt32(r["THU"].ToString()) == 8)
                        {
                            string HeadColumn = "I";
                            int TietBD = int.Parse(r["TIET_BD"].ToString());
                            int TietKT = int.Parse(r["TIET_KT"].ToString());

                            string temp = "MH: " + r["TEN_MONHOC"].ToString();

                            string str =

                                temp + "\n"

                                + "Tiết" + " " + r["TIET_BD"].ToString() + "-" + r["TIET_KT"].ToString() + "\n"

                                + "Phòng:" + " " + r["TEN_PHONG"].ToString() + "\n"

                                + r["TEN_GIANGVIEN"].ToString();

                            SetColumnGrid(HeadColumn, TietBD + 1, TietKT + 1, str);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                CTMessagebox.Show("Lỗi", "Lỗi", ex.Message, CTICON.Error, CTBUTTON.OK);
            }
        }

        void SetComboTuanTheoNamHoc(int sotuan)
        {
            try
            {
                DataTable dt = client.GetNgay_SoTuan();
                DataTable xdt = new DataTable();
                xdt.Columns.Add("TUAN", typeof (int));
                xdt.Columns.Add("NAME_TUAN", typeof (string));
                int count = 0;
                //int sotuan = Convert.ToInt32(dt.Rows[0]["SO_TUAN"].ToString());
                DateTime ngay = Convert.ToDateTime(dt.Rows[0]["NGAY_BATDAU"].ToString());
                if (sotuan == 1)
                {
                    ngaytem = ngay.AddDays(-1);
                    datetemp = ngay.ToShortDateString();

                    for (int i = sotuan; i <= (sotuan + 23); i++)
                    {
                        count++;
                        DateTime addday = ngaytem.AddDays(i * 7);
                        DataRow r = xdt.NewRow();
                        r["TUAN"] = count;
                        r["NAME_TUAN"] = "Tuần " + count + " [Từ " + datetemp + "  Đến " + addday.ToShortDateString() + "]";
                        datetemp = addday.AddDays(1).ToShortDateString();

                        xdt.Rows.Add(r);
                        xdt.AcceptChanges();
                    }
                }
                if(sotuan == 24)
                {
                    ngaytem = ngay.AddDays((sotuan*7));
                    count = 23;
                    datetemp = ngaytem.ToShortDateString();
                    ngaytem = ngay.AddDays(-1 +(sotuan * 7));
                    int temp = 0;
                    for (int i = sotuan; i <= (sotuan + 23); i++)
                    {
                        count++;
                        temp++;
                        DateTime addday = ngaytem.AddDays(temp * 7);
                        DataRow r = xdt.NewRow();
                        r["TUAN"] = count;
                        r["NAME_TUAN"] = "Tuần " + count + " [Từ " + datetemp + "  Đến " + addday.ToShortDateString() + "]";
                        datetemp = addday.AddDays(1).ToShortDateString();

                        xdt.Rows.Add(r);
                        xdt.AcceptChanges();
                    }
                }
                if (sotuan == 48)
                {
                    ngaytem = ngay.AddDays((sotuan * 7));
                    count = 47;
                    datetemp = ngaytem.ToShortDateString();
                    ngaytem = ngay.AddDays(-1 + (sotuan * 7));
                    int temp = 0;
                    for (int i = sotuan; i < 52; i++)
                    {
                        count++;
                        temp++;
                        DateTime addday = ngaytem.AddDays(temp * 7);
                        DataRow r = xdt.NewRow();
                        r["TUAN"] = count;
                        r["NAME_TUAN"] = "Tuần " + count + " [Từ " + datetemp + "  Đến " + addday.ToShortDateString() + "]";
                        datetemp = addday.AddDays(1).ToShortDateString();

                        xdt.Rows.Add(r);
                        xdt.AcceptChanges();
                    }
                }

                
                if (xdt.Rows.Count > 0)
                {
                    ComboBoxUtil.SetComboBoxEdit(this.cboXemTuan, "NAME_TUAN", "TUAN", xdt, SelectionTypeEnum.Native);
                    this.iDataSoure.Rows[0]["TUAN"] = cboXemTuan.GetKeyValue(0);
                }
            }
            catch (Exception ex)
            {
                CTMessagebox.Show("Lỗi", "Lỗi", ex.Message, CTICON.Error, CTBUTTON.OK);
            }
        }

        private void CboXemTKB_HK_OnEditValueChanged(object sender, EditValueChangedEventArgs e)
        {
            try
            {
                Mouse.OverrideCursor = Cursors.Wait;
                ClearFormat();
                if (this.iDataSoure.Rows[0]["ID_NAMHOC_HKY_HTAI"].ToString() != string.Empty)
                {
                    id_hocky_htai = Convert.ToInt32(this.iDataSoure.Rows[0]["ID_NAMHOC_HKY_HTAI"].ToString());

                    int xxx = client.GetHocKy(id_hocky_htai);
                    if (xxx == 1)
                    {
                        SetComboTuanTheoNamHoc(1);
                    }
                    if (xxx == 2)
                    {
                        SetComboTuanTheoNamHoc(24);
                    }
                    if (xxx == 3)
                    {
                        SetComboTuanTheoNamHoc(48);
                    }
                }
            }
            catch (Exception ex)
            {
                CTMessagebox.Show("Lỗi", "Lỗi", ex.Message, CTICON.Error, CTBUTTON.OK);
            }
            finally
            {
                Mouse.OverrideCursor = Cursors.Arrow;
            }
        }

        private void CboXemTuan_OnEditValueChanged(object sender, EditValueChangedEventArgs e)
        {
            try
            {
                Mouse.OverrideCursor = Cursors.Wait;
                ClearFormat();
                int tuan = Convert.ToInt32(this.iDataSoure.Rows[0]["TUAN"].ToString());
                if (!string.IsNullOrEmpty(this.iDataSoure.Rows[0]["ID_SINHVIEN"].ToString()))
                {
                    DataTable dt = client.GetTKB(id_hocky_htai, Convert.ToInt32(this.iDataSoure.Rows[0]["ID_SINHVIEN"].ToString()), tuan);
                    if (dt.Rows.Count > 0)
                    {
                        Load_TKBHPCT(dt);
                    }
                }
            }
            catch (Exception ex)
            {
                CTMessagebox.Show("Lỗi", "Lỗi", ex.Message, CTICON.Error, CTBUTTON.OK);
            }
            finally
            {
                Mouse.OverrideCursor = Cursors.Arrow;
            }
        }

        private void UIElement_OnPreviewMouseWheel(object sender, MouseWheelEventArgs e)
        {
            e.Handled = true;
        }

        private void BtnXem_OnClick(object sender, RoutedEventArgs e)
        {
            try
            {
                Mouse.OverrideCursor = Cursors.Wait;
                if (this.iDataSoure.Rows[0]["MA_SINHVIEN"].ToString() == string.Empty)
                {
                    CTMessagebox.Show("Vui lòng nhập mã sinh viên để thực hiện các thao tác tiếp theo!!", "Thông báo", "", CTICON.Information, CTBUTTON.YesNo);
                    txtMASV.Focus();
                    return;
                }
                int idsinhvien = client.GetIDSinhVien(this.iDataSoure.Rows[0]["MA_SINHVIEN"].ToString());
                if (idsinhvien == 0)
                {
                    CTMessagebox.Show("Không tìm thấy sinh viên này trong hệ thống!!" + "\n" + "Vui lòng thử lại.!!", "Thông báo", "", CTICON.Information, CTBUTTON.YesNo);
                    txtMASV.Focus();
                    return;
                }
                this.iDataSoure.Rows[0]["ID_SINHVIEN"] = idsinhvien;

                DataTable iDataThongTin = client.GetThongTinSinhVien(idsinhvien);
                if (iDataThongTin.Rows.Count > 0)
                {
                    this.iDataSoure.Rows[0]["MA_SINHVIEN"] = iDataThongTin.Rows[0]["MA_SINHVIEN"];
                    this.iDataSoure.Rows[0]["TEN_SINHVIEN"] = iDataThongTin.Rows[0]["TEN_SINHVIEN"];
                    this.iDataSoure.Rows[0]["TEN_NGANH"] = iDataThongTin.Rows[0]["TEN_NGANH"];
                    this.iDataSoure.Rows[0]["TEN_KHOAHOC"] = iDataThongTin.Rows[0]["TEN_KHOAHOC"];
                    this.iDataSoure.Rows[0]["TEN_HE_DAOTAO"] = iDataThongTin.Rows[0]["TEN_HE_DAOTAO"];
                }
                CboXemTuan_OnEditValueChanged(sender, null);
            }
            catch (Exception ex)
            {
                CTMessagebox.Show("Lỗi", "Lỗi", ex.Message, CTICON.Error, CTBUTTON.OK);
            }
            finally
            {
                Mouse.OverrideCursor = Cursors.Arrow;
            }
        }
        private string _MaSinhVien = "";
        private string _SinhVien = "";
        private string _Lop = "";
        private string _Nganh = "";
        private string _HeDaoTao = "";
        private string _KhoaHoc = "";
        private void BtnIN_TKB_OnClick(object sender, RoutedEventArgs e)
        {
            try
            {
                Mouse.OverrideCursor = Cursors.Wait;
                XepTKB.SaveDocumentAs();
            }
            catch (Exception ex)
            {
                CTMessagebox.Show("Lỗi", "Lỗi", ex.Message, CTICON.Error, CTBUTTON.OK);
            }
            finally
            {
                Mouse.OverrideCursor = Cursors.Arrow;
            }
        }

        void XuatThoiKhoaBieu()
        {
            Excel.Application excels = new Microsoft.Office.Interop.Excel.Application();
            Excel.Workbooks workbook = null;
            Excel.Workbook oBook = null;
            Excel.Worksheet worksheet = null;
            Excel.Borders boders = null;
            System.Drawing.Color background = System.Drawing.Color.FromArgb(0, 176, 240);
            excels.Application.SheetsInNewWorkbook = 1;
            workbook = excels.Workbooks;
            oBook = (Excel.Workbook)(excels.Workbooks.Add(Type.Missing));
            worksheet = oBook.Worksheets[1];
            worksheet.Name = "ThoiKhoaBieu";
            worksheet.PageSetup.Orientation = Excel.XlPageOrientation.xlLandscape;
            Excel.Range headRange = worksheet.get_Range("B1", "D1");

            #region Title
            headRange.MergeCells = true;
            headRange.Resize.RowHeight = 25;
            headRange.ColumnWidth = 35;
            headRange.Font.Name = "Times New Roman";
            headRange.Value = "BỘ CÔNG THƯƠNG";
            headRange.Font.Size = 11;

            headRange = worksheet.get_Range("B2", "D2");
            headRange.MergeCells = true;
            headRange.Resize.RowHeight = 35;
            headRange.ColumnWidth = 43;
            headRange.Font.Name = "Times New Roman";
            headRange.Value = "TRƯỜNG ĐẠI HỌC CÔNG NGHIỆP THỰC PHẨM";
            headRange.Font.Size = 10;
            headRange.Font.Bold = true;

            headRange = worksheet.get_Range("E1", "K1");
            headRange.MergeCells = true;
            headRange.Resize.RowHeight = 25;
            headRange.Font.Name = "Times New Roman";
            headRange.Value = "CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM";
            headRange.Font.Size = 11;

            headRange = worksheet.get_Range("E2", "K2");
            headRange.MergeCells = true;
            headRange.Resize.RowHeight = 25;
            headRange.Font.Name = "Times New Roman";
            headRange.Value = "Độc lập - Tự do - Hạnh phúc";
            headRange.Font.Size = 11;
            headRange.Font.Bold = true;


            headRange = worksheet.get_Range("E4", "H4");
            headRange.MergeCells = true;
            headRange.Resize.RowHeight = 25;
            headRange.Font.Name = "Times New Roman";
            headRange.Value = "PHIẾU ĐĂNG KÝ MÔN HỌC";
            headRange.Font.Size = 11;
            headRange.Font.Bold = true;

            headRange = worksheet.get_Range("C5", "D5");
            headRange.MergeCells = true;
            headRange.Resize.RowHeight = 18;
            //headRange.ColumnWidth = 25;
            headRange.Font.Name = "Times New Roman";
            headRange.Value = "MSSV:  " + _MaSinhVien;
            headRange.Font.Size = 11;
            headRange.Font.Bold = true;

            headRange = worksheet.get_Range("E5", "F5");
            headRange.MergeCells = true;
            headRange.Resize.RowHeight = 18;
            //headRange.ColumnWidth = 25;
            headRange.Font.Name = "Times New Roman";
            headRange.Value = "Sinh viên:  " + _SinhVien;
            headRange.Font.Size = 11;
            headRange.Font.Bold = true;

            headRange = worksheet.get_Range("G5", "H5");
            headRange.MergeCells = true;
            headRange.Resize.RowHeight = 18;
            //headRange.ColumnWidth = 30;
            headRange.Font.Name = "Times New Roman";
            headRange.Value = "Lớp:   " + _Lop;
            headRange.Font.Size = 11;
            headRange.Font.Bold = true;

            headRange = worksheet.get_Range("I5", "J5");
            headRange.MergeCells = true;
            headRange.Resize.RowHeight = 18;
            headRange.ColumnWidth = 25;
            headRange.Font.Name = "Times New Roman";
            headRange.Value = "Hệ đào tạo:   " + _HeDaoTao;
            headRange.Font.Size = 11;
            headRange.Font.Bold = true;

            headRange = worksheet.get_Range("D6", "E6");
            headRange.MergeCells = true;
            headRange.Resize.RowHeight = 18;
            headRange.ColumnWidth = 25;
            headRange.Font.Name = "Times New Roman";
            headRange.Value = "Khóa học:   " + _KhoaHoc;
            headRange.Font.Size = 11;
            headRange.Font.Bold = true;

            headRange = worksheet.get_Range("G6", "I6");
            headRange.MergeCells = true;
            headRange.Resize.RowHeight = 18;
            headRange.ColumnWidth = 25;
            headRange.Font.Name = "Times New Roman";
            headRange.Value = "Ngành học:   " + _Nganh;
            headRange.Font.Size = 11;
            headRange.Font.Bold = true;
            #endregion

            #region Header

            worksheet.Range["B8:K9"].Interior.Color = background;
            headRange = worksheet.get_Range("B8", "K9");
            headRange.Borders[Excel.XlBordersIndex.xlEdgeBottom].LineStyle = Excel.XlLineStyle.xlContinuous;
            headRange.Borders[Excel.XlBordersIndex.xlEdgeLeft].LineStyle = Excel.XlLineStyle.xlContinuous;
            headRange.Borders[Excel.XlBordersIndex.xlEdgeRight].LineStyle = Excel.XlLineStyle.xlContinuous;
            headRange.Borders[Excel.XlBordersIndex.xlEdgeTop].LineStyle = Excel.XlLineStyle.xlContinuous;
            headRange.Borders[Excel.XlBordersIndex.xlInsideHorizontal].LineStyle = Excel.XlLineStyle.xlContinuous;
            headRange.Borders[Excel.XlBordersIndex.xlInsideVertical].LineStyle = Excel.XlLineStyle.xlContinuous;

            headRange = worksheet.get_Range("B8", "B9");
            headRange.MergeCells = true;
            headRange.ColumnWidth = 3;
            headRange.Value = "STT";
            headRange.VerticalAlignment = Microsoft.Office.Interop.Excel.XlHAlign.xlHAlignCenter;
            headRange.HorizontalAlignment = Microsoft.Office.Interop.Excel.XlHAlign.xlHAlignCenter;

            headRange = worksheet.get_Range("C8", "C9");
            headRange.MergeCells = true;
            headRange.ColumnWidth = 15;
            headRange.Value = "Mã môn học";
            headRange.VerticalAlignment = Microsoft.Office.Interop.Excel.XlHAlign.xlHAlignCenter;
            headRange.HorizontalAlignment = Microsoft.Office.Interop.Excel.XlHAlign.xlHAlignCenter;

            headRange = worksheet.get_Range("D8", "D9");
            headRange.MergeCells = true;
            headRange.ColumnWidth = 20;
            headRange.Value = "Tên môn học";
            headRange.VerticalAlignment = Microsoft.Office.Interop.Excel.XlHAlign.xlHAlignCenter;
            headRange.HorizontalAlignment = Microsoft.Office.Interop.Excel.XlHAlign.xlHAlignCenter;

            headRange = worksheet.get_Range("E8", "E9");
            headRange.MergeCells = true;
            headRange.ColumnWidth = 15;
            headRange.Value = "Mã học phần";
            headRange.VerticalAlignment = Microsoft.Office.Interop.Excel.XlHAlign.xlHAlignCenter;
            headRange.HorizontalAlignment = Microsoft.Office.Interop.Excel.XlHAlign.xlHAlignCenter;

            headRange = worksheet.get_Range("F8", "F9");
            headRange.MergeCells = true;
            headRange.ColumnWidth = 20;
            headRange.Value = "Tên học phần";
            headRange.VerticalAlignment = Microsoft.Office.Interop.Excel.XlHAlign.xlHAlignCenter;
            headRange.HorizontalAlignment = Microsoft.Office.Interop.Excel.XlHAlign.xlHAlignCenter;

            headRange = worksheet.get_Range("G8", "G9");
            headRange.MergeCells = true;
            headRange.ColumnWidth = 15;
            headRange.Value = "STC";
            headRange.VerticalAlignment = Microsoft.Office.Interop.Excel.XlHAlign.xlHAlignCenter;
            headRange.HorizontalAlignment = Microsoft.Office.Interop.Excel.XlHAlign.xlHAlignCenter;

            headRange = worksheet.get_Range("H8", "H9");
            headRange.MergeCells = true;
            headRange.ColumnWidth = 25;
            headRange.Value = "Học phí/TC";
            headRange.VerticalAlignment = Microsoft.Office.Interop.Excel.XlHAlign.xlHAlignCenter;
            headRange.HorizontalAlignment = Microsoft.Office.Interop.Excel.XlHAlign.xlHAlignCenter;

            headRange = worksheet.get_Range("I8", "I9");
            headRange.MergeCells = true;
            headRange.ColumnWidth = 20;
            headRange.Value = "Học phí";
            headRange.VerticalAlignment = Microsoft.Office.Interop.Excel.XlHAlign.xlHAlignCenter;
            headRange.HorizontalAlignment = Microsoft.Office.Interop.Excel.XlHAlign.xlHAlignCenter;

            headRange = worksheet.get_Range("J8", "J9");
            headRange.MergeCells = true;
            headRange.ColumnWidth = 20;
            headRange.Value = "Ngày đăng ký";
            headRange.VerticalAlignment = Microsoft.Office.Interop.Excel.XlHAlign.xlHAlignCenter;
            headRange.HorizontalAlignment = Microsoft.Office.Interop.Excel.XlHAlign.xlHAlignCenter;

            headRange = worksheet.get_Range("K8", "K9");
            headRange.MergeCells = true;
            headRange.ColumnWidth = 15;
            headRange.Value = "Ghi chú";
            headRange.VerticalAlignment = Microsoft.Office.Interop.Excel.XlHAlign.xlHAlignCenter;
            headRange.HorizontalAlignment = Microsoft.Office.Interop.Excel.XlHAlign.xlHAlignCenter;
            #endregion

            #region design table

            headRange = worksheet.get_Range("A1", "Z6");
            headRange.HorizontalAlignment = Excel.XlHAlign.xlHAlignCenter;
            headRange.VerticalAlignment = Excel.XlHAlign.xlHAlignCenter;

            headRange = worksheet.get_Range("A5", "Z6");
            headRange.WrapText = true;
            //headRange.Font.Size = 10;
            headRange.Font.Bold = true;

            headRange = worksheet.get_Range("K6", "X6");
            headRange.Font.Bold = false;

            #endregion

            #region
            DataTable dt = new DataTable();
            if (dt != null && dt.Rows.Count > 0)
            {
                int row = 0;
                int col = 0;
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    worksheet.Cells[(i + 10), 2] = i + 1;
                    row = i + 10;
                    for (int j = 0; j < dt.Columns.Count - 7; j++)
                    {
                        worksheet.Cells[(i + 10), (j + 3)] = dt.Rows[i][j];
                        if ((i + 10) < (dt.Rows.Count + 9))
                        {
                            headRange = worksheet.get_Range("B" + row, "K" + row);
                            headRange.Borders[Excel.XlBordersIndex.xlEdgeBottom].LineStyle = Excel.XlLineStyle.xlContinuous;
                            headRange.Borders[Excel.XlBordersIndex.xlEdgeLeft].LineStyle = Excel.XlLineStyle.xlContinuous;
                            headRange.Borders[Excel.XlBordersIndex.xlEdgeRight].LineStyle = Excel.XlLineStyle.xlContinuous;
                            headRange.Borders[Excel.XlBordersIndex.xlEdgeTop].LineStyle = Excel.XlLineStyle.xlContinuous;
                        }
                    }
                }
                if (row != 0)
                {
                    headRange = worksheet.get_Range("B10", "K" + row);
                    headRange.Borders[Excel.XlBordersIndex.xlEdgeBottom].LineStyle = Excel.XlLineStyle.xlContinuous;
                    headRange.Borders[Excel.XlBordersIndex.xlEdgeLeft].LineStyle = Excel.XlLineStyle.xlContinuous;
                    headRange.Borders[Excel.XlBordersIndex.xlEdgeRight].LineStyle = Excel.XlLineStyle.xlContinuous;
                }
            }
            #endregion
            excels.Application.Visible = true;
        }
    }
}
