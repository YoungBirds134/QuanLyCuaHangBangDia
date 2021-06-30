using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DO_AN_WEB_CNW.Models
{
    public class GioHang
    {
        public List<CartItem> dsSach;
        //Khoi tao
        public GioHang()
        {
            dsSach = new List<CartItem>();
        }
        public GioHang(List<CartItem> lst)
        {
            dsSach = lst;
        }
        //pp Tinh toan
        public int Somathang()
        {
            if (dsSach == null)
                return 0;
            return dsSach.Count();
        }
        public int Tongsoluong()
        {
            if (dsSach == null)
                return 0;
            return dsSach.Sum(t => t.iSoLuong);
        }
        public double TongThanhTien()
        {
            if (dsSach == null)
                return 0;
            return dsSach.Sum(t => t.ThanhTien);
        }
        //pp Xu Ly
        public int Them(string ms)
        {
            //tim sp co trong ds gio hang hay khong
            CartItem a = dsSach.SingleOrDefault(i => i.iMaBD == ms);
            if (a == null)
            {
                CartItem sp = new CartItem(ms);
                if (sp == null)
                    return 0;
                dsSach.Add(sp);
            }
            else
            {
                a.iSoLuong += 1;
            }
            return 1;
        }
    }
}