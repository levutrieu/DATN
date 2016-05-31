﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DATN.TTS.DATA;

namespace DATN.TTS.BUS
{
    public class bus_Nganh
    {
        bus_KhoaHoc client = new bus_KhoaHoc();
        db_ttsDataContext db = new db_ttsDataContext();
        public DataTable GetAllHDT()
        {
            return client.GetAllHeDaoTao();
        }

        public DataTable GetAllKhoa()
        {
            try
            {
                DataTable dt = null;
                var khoa = from kh in db.tbl_KHOAs where kh.IS_DELETE == 0 select kh;
                dt = TableUtil.LinqToDataTable(khoa);
                return dt;
            }
            catch (Exception)
            {
                
                throw;
            }
        }

        public DataTable GetAllNganh()
        {
            try
            {
                DataTable dt = new DataTable();
                int flag = 0;
                var nganh = (from ng in db.tbl_NGANHs where ng.IS_DELETE == 0
                             join hdt in db.tbl_HEDAOTAOs on ng.ID_HE_DAOTAO equals hdt.ID_HE_DAOTAO
                             where hdt.IS_DELETE == 0
                            join k in db.tbl_KHOAs on ng.ID_KHOA equals k.ID_KHOA where k.IS_DELETE == 0
                            select new
                            {
                                ng.ID_NGANH,
                                ng.MA_NGANH,
                                ng.TEN_NGANH,
                                ng.KYHIEU,
                                ng.TRANGTHAI,
                                ng.GHICHU,
                                ng.CAP_NGANH,
                                ng.ID_KHOA,
                                ng.ID_HE_DAOTAO,
                                hdt.TEN_HE_DAOTAO,
                                k.TEN_KHOA
                            }
                            );

                dt = TableUtil.LinqToDataTable(nganh);
                return dt;
            }
            catch (Exception)
            {
                
                throw;
            }
        }

        public bool Insert_Nganh(params object[] oParams)
        {
            try
            {
                DataTable dt = (DataTable) oParams[0];
                DataRow r = dt.Rows[0];
                tbl_NGANH nganh = new tbl_NGANH();
                nganh.MA_NGANH = r["MA_NGANH"].ToString();
                nganh.TEN_NGANH = r["TEN_NGANH"].ToString();
                nganh.KYHIEU = r["KYHIEU"].ToString();
                nganh.GHICHU = r["GHICHU"].ToString();
                nganh.TRANGTHAI = r["TRANGTHAI"].ToString();
                nganh.ID_HE_DAOTAO = Convert.ToInt32(r["ID_HE_DAOTAO"].ToString());
                nganh.ID_KHOA = Convert.ToInt32(r["ID_KHOA"].ToString());
                nganh.CAP_NGANH = r["CAP_NGANH"].ToString();
                nganh.CREATE_USER = r["USER"].ToString();
                nganh.CREATE_TIME = System.DateTime.Today;
                nganh.IS_DELETE = 0;
                db.tbl_NGANHs.InsertOnSubmit(nganh);
                db.SubmitChanges();
                if(!nganh.ID_NGANH.GetTypeCode().Equals(TypeCode.DBNull))
                    return true;
                return false;
            }
            catch (Exception)
            {
                
                throw;
            }
        }

        public void Update_Nganh(params object[] oParams)
        {
            try
            {
                DataTable dt = (DataTable)oParams[0];
                DataRow r = dt.Rows[0];
                tbl_NGANH nganh = (db.tbl_NGANHs.Single(t=>t.ID_NGANH == Convert.ToInt32(r["ID_NGANH"].ToString())));
                nganh.MA_NGANH = r["MA_NGANH"].ToString();
                nganh.TEN_NGANH = r["TEN_NGANH"].ToString();
                nganh.KYHIEU = r["KYHIEU"].ToString();
                nganh.GHICHU = r["GHICHU"].ToString();
                nganh.TRANGTHAI = r["TRANGTHAI"].ToString();
                nganh.ID_HE_DAOTAO = Convert.ToInt32(r["ID_HE_DAOTAO"].ToString());
                nganh.ID_KHOA = Convert.ToInt32(r["ID_KHOA"].ToString());
                nganh.CAP_NGANH = r["CAP_NGANH"].ToString();
                nganh.UPDATE_USER = r["USER"].ToString();
                nganh.UPDATE_TIME = System.DateTime.Today;

                db.SubmitChanges();
            }
            catch (Exception)
            {
                
                throw;
            }
        }

        public void Delete_Nganh(params object[] oParams)
        {
            try
            {
                DataTable dt = (DataTable)oParams[0];
                DataRow r = dt.Rows[0];
                tbl_NGANH nganh = (db.tbl_NGANHs.Single(t => t.ID_NGANH == Convert.ToInt32(r["ID_NGANH"].ToString())));
                nganh.IS_DELETE = 1;
                nganh.UPDATE_USER = r["USER"].ToString();
                nganh.UPDATE_TIME = System.DateTime.Today;

                db.SubmitChanges();
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}
