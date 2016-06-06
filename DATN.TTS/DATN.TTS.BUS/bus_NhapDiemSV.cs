﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DATN.TTS.DATA;

namespace DATN.TTS.BUS
{
    public class bus_NhapDiemSV
    {
        db_ttsDataContext db = new db_ttsDataContext();
        public DataTable GetAll_DiemSV()
        {
            try
            {
                DataTable dt = null;
                var query = from Tbl_DIEM_SINHVIEN in db.tbl_DIEM_SINHVIENs
                    where
                        Tbl_DIEM_SINHVIEN.IS_DELETE != 1 ||
                        Tbl_DIEM_SINHVIEN.IS_DELETE == null
                    select new
                    {
                        Tbl_DIEM_SINHVIEN.ID_KETQUA,
                        Tbl_DIEM_SINHVIEN.ID_SINHVIEN,
                        TEN_SINHVIEN =
                              ((from m in db.tbL_SINHVIENs
                                where
                                  m.ID_SINHVIEN == Tbl_DIEM_SINHVIEN.ID_SINHVIEN
                                select new
                                {
                                    m.TEN_SINHVIEN
                                }).First().TEN_SINHVIEN),
                        Tbl_DIEM_SINHVIEN.ID_LOPHOCPHAN,
                        MA_LOP_HOCPHAN =
                              ((from m in db.tbl_LOP_HOCPHANs
                                where
                                  m.ID_LOPHOCPHAN == Tbl_DIEM_SINHVIEN.ID_LOPHOCPHAN
                                select new
                                {
                                    m.MA_LOP_HOCPHAN
                                }).First().MA_LOP_HOCPHAN),
                        TEN_LOP_HOCPHAN =
                              ((from m in db.tbl_LOP_HOCPHANs
                                where
                                  m.ID_LOPHOCPHAN == Tbl_DIEM_SINHVIEN.ID_LOPHOCPHAN
                                select new
                                {
                                    m.TEN_LOP_HOCPHAN
                                }).First().TEN_LOP_HOCPHAN),
                        Tbl_DIEM_SINHVIEN.ID_KHOAHOC,
                        TEN_KHOAHOC =
                              ((from m in db.tbl_KHOAHOCs
                                where
                                  m.ID_KHOAHOC == Tbl_DIEM_SINHVIEN.ID_KHOAHOC
                                select new
                                {
                                    m.TEN_KHOAHOC
                                }).First().TEN_KHOAHOC),
                        Tbl_DIEM_SINHVIEN.ID_HOCKY,
                        Tbl_DIEM_SINHVIEN.DIEM_BT,
                        Tbl_DIEM_SINHVIEN.DIEM_GK,
                        Tbl_DIEM_SINHVIEN.DIEM_CK,
                        Tbl_DIEM_SINHVIEN.DIEM_TONG,
                        Tbl_DIEM_SINHVIEN.DIEM_HE4,
                        Tbl_DIEM_SINHVIEN.DIEM_CHU,
                        Tbl_DIEM_SINHVIEN.GHICHU
                    };
                dt = TableUtil.LinqToDataTable(query);
                return dt;
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        public int InsertObject_Excel(DataTable idatasource, string pUser)
        {
            try
            {
                int i = 0;
                foreach (DataRow dr in idatasource.Rows)
                {
                    double diembt = 0;
                    double diemgk = 0;
                    double diemck = 0;
                    double diemtk = 0;
                    double diemhe4 = 0;
                    if (!string.IsNullOrEmpty(dr["f_diembt"].ToString()))
                    {
                        diembt = Convert.ToDouble(dr["f_diembt"]);
                    }
                    if (!string.IsNullOrEmpty(dr["f_diem1"].ToString()))
                    {
                        diemgk = Convert.ToDouble(dr["f_diem1"]);
                    }
                    if (!string.IsNullOrEmpty(dr["f_diem2"].ToString()))
                    {
                        diemck = Convert.ToDouble(dr["f_diem2"]);
                    }
                    if (!string.IsNullOrEmpty(dr["f_diemtk1"].ToString()))
                    {
                        diemtk = Convert.ToDouble(dr["f_diemtk1"]);
                    }
                    if (!string.IsNullOrEmpty(dr["f_diemstk1"].ToString()))
                    {
                        diemhe4 = Convert.ToDouble(dr["f_diemstk1"]);
                    }
                    tbl_DIEM_SINHVIEN query = new tbl_DIEM_SINHVIEN
                    {
                        ID_SINHVIEN =Convert.ToInt32(dr["ID_SINHVIEN"]),
                        ID_LOPHOCPHAN = Convert.ToInt32(dr["ID_LOPHOCPHAN"]),
                        DIEM_BT = diembt,
                        DIEM_GK = diemgk,
                        DIEM_CK = diemck,
                        DIEM_TONG = diemtk,
                        DIEM_HE4 = diemhe4,
                        DIEM_CHU = dr["f_diemch1"].ToString(),
                        CREATE_USER = pUser,
                        CREATE_TIME = DateTime.Now,
                    };
                    db.tbl_DIEM_SINHVIENs.InsertOnSubmit(query);
                    db.SubmitChanges();
                    i = query.ID_KETQUA;
                }
                return i;
            }
            catch (Exception ex)
            {
                return 0;
            }
        }
    }
}
