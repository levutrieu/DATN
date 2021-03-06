﻿using System;
using System.Collections.Generic;
using System.Data;
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
using DATN.TTS.BUS.Resource;
using DevExpress.Utils;
using DevExpress.Xpf.Editors.Settings;
using DevExpress.Xpf.Grid;

namespace DATN.TTS.TVMH
{
    /// <summary>
    /// Interaction logic for frm_MoLopHocPopUp.xaml
    /// </summary>
    public partial class frm_MoLopHocPopUp : Window
    {
        bus_LopHoc client = new bus_LopHoc();
        private DataTable iDataSoure = null;
        private DataTable iGridDataSoure = null;
        private bool flagsave = true;
        public frm_MoLopHocPopUp(params object[] oParams)
        {
            InitializeComponent();

            if (oParams != null)
            {
                DataTable dt = (DataTable) oParams[0];
                DataRow r = dt.Rows[0];
                this.iDataSoure = TableSchemaBinding();
                this.DataContext = iDataSoure;
                SetComBo();
                this.iDataSoure.Rows[0]["ID_KHOAHOC_NGANH"] = r["ID_KHOAHOC_NGANH"];
                this.iDataSoure.Rows[0]["USER"] = UserCommon.UserName;
                InitGrid();
            }
        }

        void InitGrid()
        {
            GridColumn col = null;
            col = new GridColumn();
            col.FieldName = "ID_LOPHOC";
            col.Header = string.Empty;
            col.Width = 50;
            col.HorizontalHeaderContentAlignment = HorizontalAlignment.Center;
            col.AllowEditing = DefaultBoolean.False;
            col.Visible = false;
            
            grd.Columns.Add(col);

            col = new GridColumn();
            col.FieldName = "MA_LOP";
            col.Header = "Mã lớp";
            col.Width = 50;
            col.HorizontalHeaderContentAlignment = HorizontalAlignment.Center;
            col.AllowEditing = DefaultBoolean.False;
            col.Visible = true;
            
            col.EditSettings = new TextEditSettings();
            col.EditSettings.HorizontalContentAlignment = DevExpress.Xpf.Editors.Settings.EditSettingsHorizontalAlignment.Center;
            grd.Columns.Add(col);

            col = new GridColumn();
            col.FieldName = "TEN_LOP";
            col.Header = "Lớp";
            col.Width = 50;
            col.HorizontalHeaderContentAlignment = HorizontalAlignment.Center;
            col.AllowEditing = DefaultBoolean.False;
            col.Visible = true;
            
            grd.Columns.Add(col);

            col = new GridColumn();
            col.FieldName = "SOLUONG_SV";
            col.Header = "Sỉ số";
            col.Width = 30;
            col.HorizontalHeaderContentAlignment = HorizontalAlignment.Center;
            col.AllowEditing = DefaultBoolean.False;
            col.Visible = true;
            
            col.EditSettings = new TextEditSettings();
            col.EditSettings.HorizontalContentAlignment = DevExpress.Xpf.Editors.Settings.EditSettingsHorizontalAlignment.Center;
            grd.Columns.Add(col);

            col = new GridColumn();
            col.FieldName = "ID_GIANGVIEN_CN";
            col.Header = string.Empty;
            col.Width = 50;
            col.HorizontalHeaderContentAlignment = HorizontalAlignment.Center;
            col.AllowEditing = DefaultBoolean.False;
            col.Visible = false;
            
            grd.Columns.Add(col);

            col = new GridColumn();
            col.FieldName = "TEN_GIANGVIEN";
            col.Header = "Chủ nhiệm";
            col.Width = 50;
            col.HorizontalHeaderContentAlignment = HorizontalAlignment.Center;
            col.AllowEditing = DefaultBoolean.False;
            col.Visible = true;
            
            grd.Columns.Add(col);

            col = new GridColumn();
            col.FieldName = "GHICHU";
            col.Header = "Ghi chú";
            col.Width = 50;
            col.HorizontalHeaderContentAlignment = HorizontalAlignment.Center;
            col.AllowEditing = DefaultBoolean.False;
            col.Visible = true;
            
            grd.Columns.Add(col);


            GetGrid();
        }

        void SetIsNull()
        {
            this.iDataSoure.Rows[0]["ID_GIANGVIEN"] = "0";
            this.iDataSoure.Rows[0]["MA_LOP"] = string.Empty;
            this.iDataSoure.Rows[0]["TEN_LOP"] = string.Empty;
            this.iDataSoure.Rows[0]["SOLUONG_SV"] = 0;
            this.iDataSoure.Rows[0]["GHICHU"] = string.Empty;
        }

        void SetComBo()
        {
            cbbKhoaNganh.ItemsSource = client.GetAllKhoaNganh();
            cbbGiangVienCN.ItemsSource = client.GetGV();
        }

        void GetGrid()
        {
            if (this.iDataSoure.Rows[0]["ID_KHOAHOC_NGANH"].ToString() != string.Empty)
            {
                this.iGridDataSoure = client.GetAllLopWhere(Convert.ToInt32(this.iDataSoure.Rows[0]["ID_KHOAHOC_NGANH"].ToString()));
                this.grd.ItemsSource = iGridDataSoure.Copy();
            }
        }

        bool Validate()
        {
            if (this.iDataSoure.Rows[0]["MA_LOP"].ToString() == string.Empty)
            {
                CTMessagebox.Show("Vui lòng nhập mã lớp!", "Thông báo", "", CTICON.Information, CTBUTTON.YesNo);
                txtMaLop.Focus();
                return false;
            }
            if (this.iDataSoure.Rows[0]["TEN_LOP"].ToString() == string.Empty)
            {
                CTMessagebox.Show("Vui lòng nhập tên lớp!", "Thông báo", "", CTICON.Information, CTBUTTON.YesNo);
                txtTenLop.Focus();
                return false;
            }
            if (this.iDataSoure.Rows[0]["ID_GIANGVIEN"].ToString() == "0")
            {
                CTMessagebox.Show("Vui lòng chọn giảng viên chủ nhiệm", "Thông báo", "", CTICON.Information, CTBUTTON.YesNo);
                cbbGiangVienCN.Focus();
                return false;
            }
            if (this.iDataSoure.Rows[0]["SOLUONG_SV"].ToString() == string.Empty)
            {
                CTMessagebox.Show("Vui lòng nhập số sinh viên của lớp", "Thông báo", "", CTICON.Information, CTBUTTON.YesNo);
                txtSLSV.Focus();
                return false;
            }
            return true;
        }

        DataTable TableSchemaBinding()
        {
            try
            {
                DataTable dt = null;
                Dictionary<string, Type> dic = new Dictionary<string, Type>();
                dic.Add("ID_LOPHOC", typeof(int));
                dic.Add("ID_KHOAHOC_NGANH", typeof(int));
                dic.Add("KHOA_NGANH", typeof(string));
                dic.Add("ID_GIANGVIEN", typeof(int));
                dic.Add("MA_LOP", typeof(string));
                dic.Add("TEN_LOP", typeof(string));
                dic.Add("SOLUONG_SV", typeof(Decimal));
                dic.Add("GHICHU", typeof(string));
                dic.Add("USER", typeof(string));
                dic.Add("SO_LOP", typeof(Decimal));
                dt = TableUtil.ConvertToTable(dic);
                return dt;
            }
            catch (Exception ex)
            {
                CTMessagebox.Show("Lỗi", "Lỗi", ex.Message, CTICON.Error, CTBUTTON.OK);
            }
            return null;
        }

        private void btnAddNew_OnClick(object sender, RoutedEventArgs e)
        {
            try
            {
                GetGrid();
                SetIsNull();
                txtMaLop.Focus();
                flagsave = true;
            }
            catch (Exception ex)
            {
                CTMessagebox.Show("Lỗi", "Lỗi", ex.Message, CTICON.Error, CTBUTTON.OK);
            }
        }

        private void btnSave_OnClick(object sender, RoutedEventArgs e)
        {
            try
            {
                if (Validate())
                {
                    if (flagsave)
                    {
                        if (!client.CheckTrungMaLop(this.iDataSoure.Rows[0]["MA_LOP"].ToString()))
                        {
                            CTMessagebox.Show("Trùng mã lớp", "Thông báo", "", CTICON.Information, CTBUTTON.YesNo);
                            txtMaLop.Focus();
                            return;
                        }
                        bool res = client.Insert_Lop(this.iDataSoure.Copy());
                        if (!res)
                        {
                            CTMessagebox.Show("Thêm mới không thành công", "Thêm mới", "", CTICON.Information, CTBUTTON.YesNo);
                        }
                        GetGrid();
                        SetIsNull();
                        txtMaLop.Focus();
                    }
                    else
                    {
                        client.Update_Lop(this.iDataSoure.Copy());
                        GetGrid();
                        SetIsNull();
                        txtMaLop.Focus();
                    }
                }
            }
            catch (Exception ex)
            {
                CTMessagebox.Show("Lỗi", "Lỗi", ex.Message, CTICON.Error, CTBUTTON.OK);
            }
        }

        private void btnDelete_OnClick(object sender, RoutedEventArgs e)
        {
            try
            {
                if (CTMessagebox.Show("Bạn muốn xóa?", "Xóa", "", CTICON.Information, CTBUTTON.YesNo) == CTRESPONSE.Yes)
                {
                    client.Delete_Lop(this.iDataSoure.Copy());
                    GetGrid();
                    SetIsNull();
                    txtMaLop.Focus();
                }
            }
            catch (Exception ex)
            {
                CTMessagebox.Show("Lỗi", "Lỗi", ex.Message, CTICON.Error, CTBUTTON.OK);
            }
        }

        private void btnRefresh_OnClick(object sender, RoutedEventArgs e)
        {
            try
            {
                btnAddNew_OnClick(null, null);
            }
            catch (Exception ex)
            {
                CTMessagebox.Show("Lỗi", "Lỗi", ex.Message, CTICON.Error, CTBUTTON.OK);
            }
        }

        private void GrdViewNDung_OnFocusedRowChanged(object sender, DevExpress.Xpf.Grid.FocusedRowChangedEventArgs e)
        {
            try
            {
                Mouse.OverrideCursor = Cursors.Wait;
                DataRow r = null;
                if (this.grd.GetFocusedRow() == null)
                    return;
                r = ((DataRowView)this.grd.GetFocusedRow()).Row;
                this.iDataSoure.Rows[0]["ID_LOPHOC"] = r["ID_LOPHOC"];
                this.iDataSoure.Rows[0]["ID_GIANGVIEN"] = r["ID_GIANGVIEN_CN"];
                this.iDataSoure.Rows[0]["MA_LOP"] = r["MA_LOP"];
                this.iDataSoure.Rows[0]["TEN_LOP"] = r["TEN_LOP"];
                this.iDataSoure.Rows[0]["SOLUONG_SV"] = r["SOLUONG_SV"];
                this.iDataSoure.Rows[0]["GHICHU"] = r["GHICHU"];
                flagsave = false;
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
