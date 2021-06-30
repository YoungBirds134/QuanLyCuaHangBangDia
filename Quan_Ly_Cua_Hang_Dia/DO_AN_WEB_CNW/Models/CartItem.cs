using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using DO_AN_WEB_CNW.Models;

namespace DO_AN_WEB_CNW.Models
{
    public class CartItem
    {
        public string iMaBD { get; set; }
        public string sTenBD { get; set; }
        public string sHinh { get; set; }
        public double sDonGia { get; set; }
        public int iSoLuong { get; set; }
        public double ThanhTien
        {
            get { return iSoLuong * sDonGia; }
        }
        DataClasses1DataContext data=new DataClasses1DataContext();
         public CartItem(string MaBangDia)
         {
            BANGDIA bangdia= data.BANGDIAs.Single(n => n.MABD == MaBangDia);
             if (bangdia != null)
             {
                 iMaBD = MaBangDia;
                 sTenBD = bangdia.TENBD;
                 sHinh = bangdia.HINH;
                 sDonGia = double.Parse(bangdia.DONGIA.ToString());
                 iSoLuong = 1;
             }
         }
        }
    }
