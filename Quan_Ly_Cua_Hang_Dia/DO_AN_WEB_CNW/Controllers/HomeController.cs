using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DO_AN_WEB_CNW.Models;
namespace DO_AN_WEB_CNW.Controllers
{
    public class HomeController : Controller
    {
        //
        // GET: /Home/
        DataClasses1DataContext data = new DataClasses1DataContext();
        public ActionResult Index()
        {
            List<BANGDIA> ds = data.BANGDIAs.Take(10).OrderByDescending(x => x.MABD).ToList();
            return View(ds);
        }
        public ActionResult DanhSach_ChuDe()
        {
            List<TheLoai> dscd = data.TheLoais.ToList();
            return PartialView(dscd);
        }
        public ActionResult DanhSach_HangSanXuat()
        {
            List<HANGSANXUAT> dscd = data.HANGSANXUATs.Take(10).ToList();
            return PartialView(dscd);
        }
        public ActionResult Hien_Thi_DS_The_Loai(int id)
        {
            List<BANGDIA> tl = data.BANGDIAs.Where(m=>m.ma_THELOAI_Bang_Dia==id).ToList();
            return View(tl);
        }
        public ActionResult Hien_Thi_DS_Hang_San_Xuat(int id)
        {
            List<BANGDIA> tl = data.BANGDIAs.Where(m => m.HANGSANXUAT == id).ToList();
            return View(tl);
        }
    }
}
