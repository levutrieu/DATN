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
using System.Windows.Navigation;
using System.Windows.Shapes;
using CustomMessage;
using DATN.TTS.BUS;
using DATN.TTS.BUS.Resource;
using DevExpress.Data;
using DevExpress.Utils;
using DevExpress.Utils.Zip.Internal;
using DevExpress.Xpf.Editors;
using DevExpress.Xpf.Editors.Settings;
using DevExpress.Xpf.Grid;
using DevExpress.Xpf.Grid.LookUp;

namespace DATN.TTS.TVMH
{
    /// <summary>
    /// Interaction logic for frm_KhungNganhDaoTaoKhoa.xaml
    /// </summary>
    /// 
    public partial class frm_KhungNganhDaoTaoKhoa : UserControl
    {
        public DataTable iDataSoure = null;
        private DataTable iGridDataMonHoc = null;
        public DataTable iGridDataSoureNganhCT = null;
        bus_LapKeHoachDaoTaoKhoa client = new bus_LapKeHoachDaoTaoKhoa();
        public frm_KhungNganhDaoTaoKhoa()
        {
            InitializeComponent();
            this.iDataSoure = TableSchemaBinding();
            this.DataContext = iDataSoure;
            this.iDataSoure.Rows[0]["USER"] = UserCommon.UserName;
            InitGridMonHoc();
            InitGridKhoaNganhCT();
        }

        DataTable TableSchemaBinding()
        {
            try
            {
                DataTable dt = null;
                Dictionary<string, Type> dic = new Dictionary<string, Type>();
                dic.Add("USER", typeof(string));
                dic.Add("ID_HE_DAOTAO", typeof(Decimal));
                dic.Add("TEN_HE_DAOTAO", typeof(string));
                dic.Add("ID_KHOAHOC", typeof(Decimal));
                dic.Add("TEN_KHOAHOC", typeof(string));
                dic.Add("ID_NGANH", typeof(Decimal));
                dic.Add("TEN_NGANH", typeof(string));
                dic.Add("ID_BOMON", typeof(Decimal));
                dic.Add("TEN_BM", typeof(string));
                dic.Add("ID_LOAI_MONHOC", typeof(Decimal));
                dic.Add("TEN_LOAI_MONHOC", typeof(string));
                dic.Add("ID_KHOAHOC_NGANH", typeof(Decimal));
                dic.Add("KHOAHOC_NGANH", typeof(string));
                dic.Add("TEN_MONHOC", typeof(string));
                dic.Add("ID_MONHOC", typeof(Decimal));
                dic.Add("SO_TC", typeof(Decimal));
                dt = TableUtil.ConvertToTable(dic);
                return dt;
            }
            catch (Exception ex)
            {
                CTMessagebox.Show("Lỗi", "Lỗi", ex.Message, CTICON.Error, CTBUTTON.OK);
            }
            return null;
        }

        DataTable TableSchemaBinding_Grid()
        {
            try
            {
                DataTable dt = new DataTable();
                Dictionary<string, Type> dic = new Dictionary<string, Type>();
                dic.Add("ID_KHOAHOC_NGANH_CTIET", typeof(Decimal));
                dic.Add("ID_MONHOC", typeof(Decimal));
                dic.Add("TEN_MONHOC", typeof(string));
                dic.Add("ID_HE_DAOTAO", typeof(Decimal));
                dic.Add("TEN_HE_DAOTAO", typeof(string));
                dic.Add("ID_KHOAHOC_NGANH", typeof(Decimal));
                dic.Add("SO_TC", typeof(Decimal));
                dic.Add("HOCKY", typeof(Decimal));
                dic.Add("SOTIET_LT", typeof(Decimal));
                dic.Add("SOTIET_TH", typeof(Decimal));
                dic.Add("ID_MONHOC_TRUOC", typeof(Decimal));
                dic.Add("ID_MONHOC_SONGHANH", typeof(Decimal));
                dic.Add("MONHOC_TIENQUYET", typeof(Decimal));
                dic.Add("CHK", typeof(bool));
                dt = TableUtil.ConvertDictionaryToTable(dic, false);
                return dt;
            }
            catch (Exception ex)
            {
                CTMessagebox.Show("Lỗi", "Lỗi", ex.Message, CTICON.Error, CTBUTTON.OK);
            }
            return null;
        }

        void InitGridMonHoc()
        {
            try
            {
                GridColumn col;
                #region 
                col = new GridColumn();
                col.FieldName = "CHK";
                col.Header = "Chọn";
                col.Width = 70;
                col.HorizontalHeaderContentAlignment = HorizontalAlignment.Center;
                col.AllowEditing = DefaultBoolean.True;
                col.Visible = true;
                CheckEditSettings chkSettings = new CheckEditSettings();
                col.EditSettings = chkSettings;
                col.ShowInColumnChooser = true;
                col.UnboundType = UnboundColumnType.Boolean;
                col.EditSettings.HorizontalContentAlignment = DevExpress.Xpf.Editors.Settings.EditSettingsHorizontalAlignment.Center;
                grdMonHoc.Columns.Add(col);

                col = new GridColumn();
                col.FieldName = "ID_MONHOC";
                col.Header = string.Empty;
                col.Width = 50;
                col.HorizontalHeaderContentAlignment = HorizontalAlignment.Center;
                col.AllowEditing = DefaultBoolean.False;
                col.Visible = false;
                
                grdMonHoc.Columns.Add(col); 
                #endregion

                col = new GridColumn();
                col.FieldName = "MA_MONHOC";
                col.Header = "Mã môn học";
                col.Width = 80;
                col.HorizontalHeaderContentAlignment = HorizontalAlignment.Center;
                col.AllowEditing = DefaultBoolean.False;
                col.Visible = true;
                
                col.EditSettings = new TextEditSettings();
                col.EditSettings.HorizontalContentAlignment = DevExpress.Xpf.Editors.Settings.EditSettingsHorizontalAlignment.Center;
                grdMonHoc.Columns.Add(col);

                col = new GridColumn();
                col.FieldName = "TEN_MONHOC";
                col.Header = "Tên môn học";
                col.Width = 200;
                col.HorizontalHeaderContentAlignment = HorizontalAlignment.Center;
                col.AllowEditing = DefaultBoolean.False;
                col.Visible = true;
                
                grdMonHoc.Columns.Add(col);

                col = new GridColumn();
                col.FieldName = "SOTIET_LT";
                col.Header = "Số tiết LT";
                col.Width = 60;
                col.HorizontalHeaderContentAlignment = HorizontalAlignment.Center;
                col.AllowEditing = DefaultBoolean.False;
                col.Visible = true;
                
                TextEditSettings txtSTLT = new TextEditSettings();
                txtSTLT.MaskType = MaskType.Numeric;
                txtSTLT.MaskAutoComplete = AutoCompleteType.Default;
                col.EditSettings = txtSTLT;
                col.EditSettings.HorizontalContentAlignment = DevExpress.Xpf.Editors.Settings.EditSettingsHorizontalAlignment.Center;
                grdMonHoc.Columns.Add(col);

                col = new GridColumn();
                col.FieldName = "SOTIET_TH";
                col.Header = "Số tiết TH";
                col.Width = 60;
                col.HorizontalHeaderContentAlignment = HorizontalAlignment.Center;
                col.AllowEditing = DefaultBoolean.False;
                col.Visible = true;
                
                TextEditSettings txtSTTH = new TextEditSettings();
                txtSTTH.MaskType = MaskType.Numeric;
                txtSTTH.MaskAutoComplete = AutoCompleteType.Default;
                col.EditSettings = txtSTTH;
                col.EditSettings.HorizontalContentAlignment = DevExpress.Xpf.Editors.Settings.EditSettingsHorizontalAlignment.Center;
                grdMonHoc.Columns.Add(col);

                col = new GridColumn();
                col.FieldName = "SO_TC";
                col.Header = "Số TC";
                col.Width = 80;
                col.HorizontalHeaderContentAlignment = HorizontalAlignment.Center;
                col.AllowEditing = DefaultBoolean.False;
                col.Visible = true;
                
                SpinEditSettings txtSTC = new SpinEditSettings();
                col.EditSettings = txtSTC;
                col.EditSettings.HorizontalContentAlignment = DevExpress.Xpf.Editors.Settings.EditSettingsHorizontalAlignment.Center;
                grdMonHoc.Columns.Add(col);


                col = new GridColumn();
                col.FieldName = "KY_HIEU";
                col.Header = "Ký hiệu";
                col.Width = 80;
                col.HorizontalHeaderContentAlignment = HorizontalAlignment.Center;
                col.AllowEditing = DefaultBoolean.False;
                col.Visible = true;
                
                col.EditSettings = new TextEditSettings();
                col.EditSettings.HorizontalContentAlignment = DevExpress.Xpf.Editors.Settings.EditSettingsHorizontalAlignment.Center;
                grdMonHoc.Columns.Add(col);

                col = new GridColumn();
                col.FieldName = "ISBATBUOC";
                col.Header = "Bắt buộc";
                col.Width = 80;
                col.HorizontalHeaderContentAlignment = HorizontalAlignment.Center;
                col.AllowEditing = DefaultBoolean.False;
                col.Visible = true;
                
                col.EditSettings = new CheckEditSettings();
                col.EditSettings.HorizontalContentAlignment = DevExpress.Xpf.Editors.Settings.EditSettingsHorizontalAlignment.Center;
                grdMonHoc.Columns.Add(col);

                col = new GridColumn();
                col.FieldName = "IS_THUHOCPHI";
                col.Header = "Thu học phí";
                col.Width = 80;
                col.HorizontalHeaderContentAlignment = HorizontalAlignment.Center;
                col.AllowEditing = DefaultBoolean.False;
                col.Visible = true;
                
                col.EditSettings = new CheckEditSettings();
                col.EditSettings.HorizontalContentAlignment = DevExpress.Xpf.Editors.Settings.EditSettingsHorizontalAlignment.Center;
                grdMonHoc.Columns.Add(col);

                col = new GridColumn();
                col.FieldName = "IS_THUCHANH";
                col.Header = "Thực hành";
                col.Width = 80;
                col.HorizontalHeaderContentAlignment = HorizontalAlignment.Center;
                col.AllowEditing = DefaultBoolean.False;
                col.Visible = true;
                
                col.EditSettings = new CheckEditSettings();
                col.EditSettings.HorizontalContentAlignment = DevExpress.Xpf.Editors.Settings.EditSettingsHorizontalAlignment.Center;
                grdMonHoc.Columns.Add(col);

                col = new GridColumn();
                col.FieldName = "IS_LYTHUYET";
                col.Header = "Lý thuyết";
                col.Width = 80;
                col.HorizontalHeaderContentAlignment = HorizontalAlignment.Center;
                col.AllowEditing = DefaultBoolean.False;
                col.Visible = true;
                
                col.EditSettings = new CheckEditSettings();
                col.EditSettings.HorizontalContentAlignment = DevExpress.Xpf.Editors.Settings.EditSettingsHorizontalAlignment.Center;
                grdMonHoc.Columns.Add(col);

                col = new GridColumn();
                col.FieldName = "IS_TINHDIEM";
                col.Header = "Tính điểm";
                col.Width = 80;
                col.HorizontalHeaderContentAlignment = HorizontalAlignment.Center;
                col.AllowEditing = DefaultBoolean.False;
                col.Visible = true;
                
                col.EditSettings = new CheckEditSettings();
                col.EditSettings.HorizontalContentAlignment = DevExpress.Xpf.Editors.Settings.EditSettingsHorizontalAlignment.Center;
                grdMonHoc.Columns.Add(col);
            }
            catch (Exception ex)
            {
                CTMessagebox.Show("Lỗi", "Lỗi", ex.Message, CTICON.Error, CTBUTTON.OK);
            }
        }

        void InitGridKhoaNganhCT()
        {
            try
            {
                GridColumn col;
                #region 
                col = new GridColumn();
                col.FieldName = "CHK";
                col.Header = "Xóa";
                col.Width = 70;
                col.HorizontalHeaderContentAlignment = HorizontalAlignment.Center;
                col.AllowEditing = DefaultBoolean.True;
                col.Visible = true;
                
                col.EditSettings = new CheckEditSettings();
                col.UnboundType = UnboundColumnType.Boolean;
                col.EditSettings.HorizontalContentAlignment = DevExpress.Xpf.Editors.Settings.EditSettingsHorizontalAlignment.Center;
                grdKhoaNganhCT.Columns.Add(col); 
                #endregion

                #region Properties hide
                col = new GridColumn();
                col.FieldName = "ID_KHOAHOC_NGANH_CTIET";
                col.Header = string.Empty;
                col.Width = 50;
                col.HorizontalHeaderContentAlignment = HorizontalAlignment.Center;
                col.AllowEditing = DefaultBoolean.False;
                col.Visible = false;
                
                grdKhoaNganhCT.Columns.Add(col);

                col = new GridColumn();
                col.FieldName = "ID_MONHOC";
                col.Header = "ID_MONHOC";
                col.Width = 150;
                col.HorizontalHeaderContentAlignment = HorizontalAlignment.Center;
                col.AllowEditing = DefaultBoolean.False;
                col.Visible = false;
                
                col.EditSettings = new TextEditSettings();
                col.EditSettings.HorizontalContentAlignment = DevExpress.Xpf.Editors.Settings.EditSettingsHorizontalAlignment.Center;
                grdKhoaNganhCT.Columns.Add(col);



                col = new GridColumn();
                col.FieldName = "ID_HE_DAOTAO";
                col.Header = "ID_HE_DAOTAO";
                col.Width = 250;
                col.HorizontalHeaderContentAlignment = HorizontalAlignment.Center;
                col.AllowEditing = DefaultBoolean.False;
                col.Visible = false;
                
                grdKhoaNganhCT.Columns.Add(col);

                col = new GridColumn();
                col.FieldName = "ID_KHOAHOC_NGANH";
                col.Header = "ID_KHOAHOC_NGANH";
                col.Width = 80;
                col.HorizontalHeaderContentAlignment = HorizontalAlignment.Center;
                col.AllowEditing = DefaultBoolean.False;
                col.Visible = false;
                
                col.EditSettings = new TextEditSettings();
                col.EditSettings.HorizontalContentAlignment = DevExpress.Xpf.Editors.Settings.EditSettingsHorizontalAlignment.Center;
                grdKhoaNganhCT.Columns.Add(col);
                #endregion

                #region môn học
                col = new GridColumn();
                col.FieldName = "TEN_MONHOC";
                col.Header = "Tên môn học";
                col.Width = 250;
                col.HorizontalHeaderContentAlignment = HorizontalAlignment.Center;
                col.AllowEditing = DefaultBoolean.False;
                col.Visible = true;
                
                grdKhoaNganhCT.Columns.Add(col);

                col = new GridColumn();
                col.FieldName = "SO_TC";
                col.Header = "Số TC";
                col.Width = 80;
                col.HorizontalHeaderContentAlignment = HorizontalAlignment.Center;
                col.AllowEditing = DefaultBoolean.False;
                col.Visible = true;
                
                SpinEditSettings txtSTC = new SpinEditSettings();
                txtSTC.MaskType = MaskType.Numeric;
                txtSTC.MinValue = 0;
                txtSTC.MaskAutoComplete = AutoCompleteType.Default;
                col.EditSettings = new TextEditSettings();
                col.EditSettings.HorizontalContentAlignment = DevExpress.Xpf.Editors.Settings.EditSettingsHorizontalAlignment.Center;
                grdKhoaNganhCT.Columns.Add(col); 
                #endregion

                col = new GridColumn();
                col.FieldName = "HOCKY";
                col.Header = "Học kỳ";
                col.Width = 80;
                col.HorizontalHeaderContentAlignment = HorizontalAlignment.Center;
                col.AllowEditing = DefaultBoolean.True;
                col.Visible = true;
                
                TextEditSettings txtHK = new TextEditSettings();
                txtHK.MaskType = MaskType.Numeric;
                txtHK.MaskAutoComplete = AutoCompleteType.Default;
                col.EditSettings = txtHK;
                col.EditSettings.HorizontalContentAlignment = DevExpress.Xpf.Editors.Settings.EditSettingsHorizontalAlignment.Center;
                grdKhoaNganhCT.Columns.Add(col);

                col = new GridColumn();
                col.FieldName = "SOTIET_LT";
                col.Header = "Số tiết LT";
                col.Width = 80;
                col.HorizontalHeaderContentAlignment = HorizontalAlignment.Center;
                col.AllowEditing = DefaultBoolean.False;
                col.Visible = true;
                
                TextEditSettings txtSTLT = new TextEditSettings();
                txtSTLT.MaskType = MaskType.Numeric;
                txtSTLT.MaskAutoComplete = AutoCompleteType.Default;
                col.EditSettings = txtSTLT;
                col.EditSettings.HorizontalContentAlignment = DevExpress.Xpf.Editors.Settings.EditSettingsHorizontalAlignment.Center;
                grdKhoaNganhCT.Columns.Add(col);

                col = new GridColumn();
                col.FieldName = "SOTIET_TH";
                col.Header = "Số tiết TH";
                col.Width = 80;
                col.HorizontalHeaderContentAlignment = HorizontalAlignment.Center;
                col.AllowEditing = DefaultBoolean.False;
                col.Visible = true;
                
                TextEditSettings txtSTTH = new TextEditSettings();
                txtSTTH.MaskType = MaskType.Numeric;
                txtSTTH.MaskAutoComplete = AutoCompleteType.Default;
                col.EditSettings = txtSTTH;
                col.EditSettings.HorizontalContentAlignment = DevExpress.Xpf.Editors.Settings.EditSettingsHorizontalAlignment.Center;
                grdKhoaNganhCT.Columns.Add(col);

                #region
                col = new GridColumn();
                col.Header = "Môn học trước";
                col.FieldName = "ID_MONHOC_TRUOC";
                col.Width = 130;
                col.HorizontalHeaderContentAlignment = HorizontalAlignment.Center;
                col.AllowEditing = DefaultBoolean.True;
                col.Visible = true;
                
                LookUpEditSettings cboMonHocTruoc = new LookUpEditSettings();
                col.EditSettings = cboMonHocTruoc;
                cboMonHocTruoc.ItemsSource = client.GetMonHocTruoc();
                cboMonHocTruoc.DisplayMember = "TEN_MONHOC";
                cboMonHocTruoc.ValueMember = "ID_MONHOC_TRUOC";
                col.EditSettings.HorizontalContentAlignment = DevExpress.Xpf.Editors.Settings.EditSettingsHorizontalAlignment.Center;
                grdKhoaNganhCT.Columns.Add(col);

                col = new GridColumn();
                col.Header = "Môn học song hành";
                col.FieldName = "ID_MONHOC_SONGHANH";
                col.Width = 150;
                col.HorizontalHeaderContentAlignment = HorizontalAlignment.Center;
                col.AllowEditing = DefaultBoolean.True;
                col.Visible = true;
                
                LookUpEditSettings cbbMonHocSongHanh = new LookUpEditSettings();
                col.EditSettings = cbbMonHocSongHanh;
                cbbMonHocSongHanh.ItemsSource = client.GetMonHocSongHanh();
                cbbMonHocSongHanh.DisplayMember = "TEN_MONHOC";
                cbbMonHocSongHanh.ValueMember = "ID_MONHOC_SONGHANH";
                col.EditSettings.HorizontalContentAlignment = DevExpress.Xpf.Editors.Settings.EditSettingsHorizontalAlignment.Center;
                grdKhoaNganhCT.Columns.Add(col); 
                #endregion
            }
            catch (Exception ex)
            {
                CTMessagebox.Show("Lỗi", "Lỗi", ex.Message, CTICON.Error, CTBUTTON.OK);
            }
        }

        public void LoadMonHoc(int idkhoanganh, int idhedaotao)
        {
            try
            {
                iGridDataMonHoc = client.GetData_1(idkhoanganh, idhedaotao);
                iGridDataMonHoc.Columns.Add("CHK");
                this.grdMonHoc.ItemsSource = iGridDataMonHoc;
            }
            catch (Exception ex)
            {
                CTMessagebox.Show("Lỗi", "Lỗi", ex.Message, CTICON.Error, CTBUTTON.OK);
            }
        }

        public void LoadKhoaNganhCT()
        {
            int pID_KHOAHOC_NGANH = Convert.ToInt32(this.iDataSoure.Rows[0]["ID_KHOAHOC_NGANH"].ToString());
            iGridDataSoureNganhCT = client.GetAllKhoaNganhCT(pID_KHOAHOC_NGANH);
            iGridDataSoureNganhCT.Columns.Add("CHK");
            this.grdKhoaNganhCT.ItemsSource = iGridDataSoureNganhCT;
        }

        List<int>lstViTri = new List<int>(); 

        private void BtnThemMH_OnClick(object sender, RoutedEventArgs e)
        {
            try
            {

                Mouse.OverrideCursor = Cursors.Wait;

                lstViTri.Clear();

                if (iGridDataSoureNganhCT.Rows.Count == 0)
                {
                    iGridDataSoureNganhCT = TableSchemaBinding_Grid();
                }
                DataTable dt =null;
                if (iGridDataMonHoc.Rows.Count > 0)
                {
                    DataRow[] check = (from temp in iGridDataMonHoc.AsEnumerable().Where(t => t.Field<string>("CHK") == "True") select temp).ToArray();
                    if (check.Count() > 0)
                    {
                        dt = check.CopyToDataTable();
                    }
                }
                if (dt != null && dt.Rows.Count > 0)
                {
                    foreach (DataRow dr in dt.Rows)
                    {
                        DataRow r = iGridDataSoureNganhCT.NewRow();
                        r["ID_KHOAHOC_NGANH_CTIET"] = "0";
                        r["ID_MONHOC"] = dr["ID_MONHOC"];
                        r["TEN_MONHOC"] = dr["TEN_MONHOC"];
                        r["SO_TC"] = dr["SO_TC"];
                        r["ID_HE_DAOTAO"] = this.iDataSoure.Rows[0]["ID_HE_DAOTAO"];
                        r["ID_KHOAHOC_NGANH"] = this.iDataSoure.Rows[0]["ID_KHOAHOC_NGANH"];
                        r["HOCKY"] = "0";
                        r["SOTIET_LT"] = (dr["SOTIET_LT"].ToString() == "" ? "0" : dr["SOTIET_LT"].ToString());
                        r["SOTIET_TH"] = (dr["SOTIET_TH"].ToString() == "" ? "0" : dr["SOTIET_TH"].ToString());
                        r["ID_MONHOC_TRUOC"] = "0";
                        r["ID_MONHOC_SONGHANH"] = "0";
                        r["MONHOC_TIENQUYET"] = "0";
                        iGridDataSoureNganhCT.Rows.Add(r);
                        iGridDataSoureNganhCT.AcceptChanges();

                        lstViTri.Add(Convert.ToInt32(r["ID_MONHOC"].ToString()));
                    }
                }
                this.grdKhoaNganhCT.ItemsSource = iGridDataSoureNganhCT;

                for (int i = 0; i < lstViTri.Count; i++)
                {
                    for (int j = 0; j < iGridDataMonHoc.Rows.Count; j++)
                    {
                        if (lstViTri[i] == Convert.ToInt32(iGridDataMonHoc.Rows[j]["ID_MONHOC"].ToString()))
                        {
                            iGridDataMonHoc.Rows.RemoveAt(j);
                        }
                    }
                    //lstViTri.Remove(i);
                }

                grdMonHoc.ItemsSource = iGridDataMonHoc;
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

        private void BtnXoaMH_OnClick(object sender, RoutedEventArgs e)
        {

            try
            {
                Mouse.OverrideCursor = Cursors.Wait;
                int count = 0;
                foreach (DataRow r in iGridDataSoureNganhCT.Rows)
                {
                    if (r["CHK"].ToString() == "True")
                        count++;
                }
                //DataTable xdt = (from temp in iGridDataSoureNganhCT.AsEnumerable() where (temp.Field<string>("CHK") == "True") select temp).CopyToDataTable();

                if (count == 0)
                {
                    CTMessagebox.Show("Bạn chưa chọn môn học nào để xóa!", "Thông báo", "", CTICON.Information, CTBUTTON.OK);
                    return;
                }
                DataTable dt = null;
                DataRow[] check = (from temp in iGridDataSoureNganhCT.AsEnumerable() where temp.Field<string>("CHK") == "True" select temp).ToArray();
                if (check.Count() > 0)
                {
                    dt = check.CopyToDataTable();
                }
                if (dt != null && dt.Rows.Count > 0)
                {
                    bool res = client.Delete_KhoaNganhCT(dt.Copy(), UserCommon.UserName);
                    if (!res)
                    {
                        CTMessagebox.Show("Xóa chi tiết ngành không thành công", "Xóa", "", CTICON.Error, CTBUTTON.OK);
                        LoadKhoaNganhCT();
                        return;
                    }
                    else
                    {
                        CTMessagebox.Show("Xóa chi tiết ngành thành công", "Xóa", "", CTICON.Information, CTBUTTON.OK);
                        LoadKhoaNganhCT();
                        LoadMonHoc(Convert.ToInt32(this.iDataSoure.Rows[0]["ID_KHOAHOC_NGANH"].ToString()), Convert.ToInt32(this.iDataSoure.Rows[0]["ID_HE_DAOTAO"]));
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

        public void BtnThemMHKhoaNganh_OnClick(object sender, RoutedEventArgs e)
        {
            try
            {
                Mouse.OverrideCursor = Cursors.Wait;
                if (iGridDataSoureNganhCT != null && iGridDataSoureNganhCT.Rows.Count > 0)
                {
                    bool res = client.Insert_KhoaNganhCT(this.iGridDataSoureNganhCT.Copy(), UserCommon.UserName);
                    if (!res)
                    {
                        CTMessagebox.Show("Lưu khóa ngành không thành công", "Lưu", "", CTICON.Error, CTBUTTON.OK);
                        LoadKhoaNganhCT();
                        return;
                    }
                    else
                    {
                        CTMessagebox.Show("Lưu khóa ngành thành công", "Lưu", "", CTICON.Information, CTBUTTON.OK);
                        LoadKhoaNganhCT();
                        LoadMonHoc(Convert.ToInt32(this.iDataSoure.Rows[0]["ID_KHOAHOC_NGANH"].ToString()), Convert.ToInt32(this.iDataSoure.Rows[0]["ID_HE_DAOTAO"]));
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

        private void BtnCapNhat_OnClick(object sender, RoutedEventArgs e)
        {
            try
            {
                Mouse.OverrideCursor = Cursors.Wait;
                int count = 0;
                foreach (DataRow r in iGridDataSoureNganhCT.Rows)
                {
                    if (r["ID_KHOAHOC_NGANH_CTIET"].ToString().Trim() == "0")
                    {
                        count++;
                    }
                }
                if (count > 0)
                {
                    if (
                        CTMessagebox.Show("Có " + count + " dòng chưa lưu. Bạn có muốn lưu không?", "Thông báo", "",
                            CTICON.Warning, CTBUTTON.YesNo) == CTRESPONSE.Yes)
                    {
                        BtnThemMHKhoaNganh_OnClick(null, null);
                        LoadKhoaNganhCT();
                        LoadMonHoc(Convert.ToInt32(this.iDataSoure.Rows[0]["ID_KHOAHOC_NGANH"].ToString()), Convert.ToInt32(this.iDataSoure.Rows[0]["ID_HE_DAOTAO"]));
                    }
                }
                LoadKhoaNganhCT();
                LoadMonHoc(Convert.ToInt32(this.iDataSoure.Rows[0]["ID_KHOAHOC_NGANH"].ToString()), Convert.ToInt32(this.iDataSoure.Rows[0]["ID_HE_DAOTAO"]));
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

        private void BtnKeThua_OnClick(object sender, RoutedEventArgs e)
        {
            try
            {
                frm_KeThuaKhoaNganhCT frm = new frm_KeThuaKhoaNganhCT();
                lstViTri.Clear();
                frm.Owner = Window.GetWindow(this);
                frm.ShowDialog();
                DataTable xdt = frm.iDataReturn.Copy();
                if (xdt != null && xdt.Rows.Count > 0)
                {
                    #region close
                    if (iGridDataSoureNganhCT.Rows.Count == 0)
                    {
                        iGridDataSoureNganhCT = TableSchemaBinding_Grid();
                        if (xdt.Rows.Count > 0)
                        {
                            foreach (DataRow dr in xdt.Rows)
                            {
                                DataRow r = iGridDataSoureNganhCT.NewRow();
                                r["ID_KHOAHOC_NGANH_CTIET"] = "0";
                                r["ID_MONHOC"] = dr["ID_MONHOC"];
                                r["TEN_MONHOC"] = dr["TEN_MONHOC"];
                                r["SO_TC"] = dr["SO_TC"];
                                r["ID_HE_DAOTAO"] = this.iDataSoure.Rows[0]["ID_HE_DAOTAO"];
                                r["ID_KHOAHOC_NGANH"] = this.iDataSoure.Rows[0]["ID_KHOAHOC_NGANH"];
                                r["HOCKY"] = dr["HOCKY"];
                                r["SOTIET_LT"] = dr["SOTIET_LT"];
                                r["SOTIET_TH"] = dr["SOTIET_TH"];
                                r["ID_MONHOC_TRUOC"] = dr["ID_MONHOC_TRUOC"];
                                r["ID_MONHOC_SONGHANH"] = dr["ID_MONHOC_SONGHANH"];
                                r["MONHOC_TIENQUYET"] = dr["MONHOC_TIENQUYET"];

                                iGridDataSoureNganhCT.Rows.Add(r);
                                iGridDataSoureNganhCT.AcceptChanges();
                            }
                        }

                    }
                    #endregion
                    else
                    {
                        #region
                        DataTable dt = new DataTable();
                        if (iGridDataSoureNganhCT.Rows.Count > 0)
                        {
                            dt = xdt.Clone();
                            foreach (DataRow r in xdt.Rows)
                            {
                                foreach (DataRow xdr in iGridDataSoureNganhCT.Rows)
                                {
                                    int x = Convert.ToInt32(xdr["ID_MONHOC"].ToString());
                                    int y = Convert.ToInt32(r["ID_MONHOC"].ToString());
                                    if (y != x)
                                    {
                                        dt.ImportRow(r);
                                    }
                                }
                            }
                            foreach (DataRow dr in dt.Rows)
                            {
                                DataRow r = iGridDataSoureNganhCT.NewRow();
                                r["ID_KHOAHOC_NGANH_CTIET"] = "0";
                                r["ID_MONHOC"] = dr["ID_MONHOC"];
                                r["TEN_MONHOC"] = dr["TEN_MONHOC"];
                                r["SO_TC"] = dr["SO_TC"];
                                r["ID_HE_DAOTAO"] = this.iDataSoure.Rows[0]["ID_HE_DAOTAO"];
                                r["ID_KHOAHOC_NGANH"] = this.iDataSoure.Rows[0]["ID_KHOAHOC_NGANH"];
                                r["HOCKY"] = dr["HOCKY"];
                                r["SOTIET_LT"] = dr["SOTIET_LT"];
                                r["SOTIET_TH"] = dr["SOTIET_TH"];
                                r["ID_MONHOC_TRUOC"] = dr["ID_MONHOC_TRUOC"];
                                r["ID_MONHOC_SONGHANH"] = dr["ID_MONHOC_SONGHANH"];
                                r["MONHOC_TIENQUYET"] = dr["MONHOC_TIENQUYET"];

                                iGridDataSoureNganhCT.Rows.Add(r);
                                iGridDataSoureNganhCT.AcceptChanges();
                            }
                            DataTable xdtTable = (iGridDataSoureNganhCT.AsEnumerable().GroupBy(t => t.Field<int>("ID_MONHOC")).Select(b => b.First())).CopyToDataTable();
                            iGridDataSoureNganhCT = xdtTable.Copy();
                        }
                        #endregion
                    }
                    this.grdKhoaNganhCT.ItemsSource = iGridDataSoureNganhCT;
                }
                foreach (DataRow r in iGridDataSoureNganhCT.Rows)
                {
                    lstViTri.Add(Convert.ToInt32(r["ID_MONHOC"].ToString()));
                }

                for (int i = 0; i < lstViTri.Count; i++)
                {
                    for (int j = 0; j < iGridDataMonHoc.Rows.Count; j++)
                    {
                        if (lstViTri[i] == Convert.ToInt32(iGridDataMonHoc.Rows[j]["ID_MONHOC"].ToString()))
                        {
                            iGridDataMonHoc.Rows.RemoveAt(j);
                        }
                    }
                    //lstViTri.Remove(i);
                }

                grdMonHoc.ItemsSource = iGridDataMonHoc;
               
            }
            catch (Exception ex)
            {
                CTMessagebox.Show("Lỗi", "Lỗi", ex.Message, CTICON.Error, CTBUTTON.OK);
            }
        }

        private void BtnExcel_OnClick(object sender, RoutedEventArgs e)
        {
            try
            {
                DataTable dt = iDataSoure;
                if (File.Exists(@"D:\DataExport") == false)
                {
                    Directory.CreateDirectory(@"D:\DataExport");
                }
                Stopwatch sw = new Stopwatch();
                sw.Start();
                DevExpress.XtraPrinting.XlsExportOptions options = new DevExpress.XtraPrinting.XlsExportOptions();
                options.TextExportMode = DevExpress.XtraPrinting.TextExportMode.Value;
                options.ExportMode = DevExpress.XtraPrinting.XlsExportMode.SingleFile;
                ((TableView)grdKhoaNganhCT.View).ExportToXls(@"D:\DataExport\KhoaHocNganhCT.xls", options);
                sw.Stop();
                CTMessagebox.Show("File đã được lưu trên D:DataExport");
            }
            catch (Exception ex)
            {
                CTMessagebox.Show("Lỗi", "Lỗi", ex.Message, CTICON.Error, CTBUTTON.OK);
            }
        }

        private void GrdViewKhoaNganhCT_OnCellValueChanged(object sender, CellValueChangedEventArgs e)
        {

        }

        private void GrdViewMonHoc_OnMouseDown(object sender, MouseButtonEventArgs e)
        {
            try
            {
                Mouse.OverrideCursor = Cursors.Wait;
                if (this.grdMonHoc.GetFocusedRow() == null)
                    return;
                DataRow row = ((DataRowView)this.grdMonHoc.GetFocusedRow()).Row;
                int index = Convert.ToInt32(row["ID_MONHOC"].ToString());
                int vtri = -1;
                for (int i = 0; i < iGridDataMonHoc.Rows.Count; i++)
                {
                    int idnganh = Convert.ToInt32(iGridDataMonHoc.Rows[i]["ID_MONHOC"].ToString());
                    if (index == idnganh)
                    {
                        vtri = i;
                        break;
                    }
                }
                if (iGridDataMonHoc.Rows[vtri]["CHK"].ToString() == "True")
                {
                    iGridDataMonHoc.Rows[vtri]["CHK"] = "False";
                }
                else
                {
                    iGridDataMonHoc.Rows[vtri]["CHK"] = "True";
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
    }
}
