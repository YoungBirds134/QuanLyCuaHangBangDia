using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DO_AN_WEB_CNW.Models;
namespace DO_AN_WEB_CNW.Controllers
{
    public class DatHangController : Controller
    {
        //
        // GET: /DatHang/
        DataClasses1DataContext data = new DataClasses1DataContext();
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult ChiTietSP(string id)
        {
           BANGDIA bangdia = data.BANGDIAs.SingleOrDefault(x=>x.MABD==id);
           List<BANGDIA> ds_theloai = data.BANGDIAs.Where(s => s.ma_THELOAI_Bang_Dia == bangdia.ma_THELOAI_Bang_Dia).Take(3).ToList();
           List<BANGDIA> ds_hxs = data.BANGDIAs.Where(s => s.HANGSANXUAT == bangdia.HANGSANXUAT).Take(3).ToList();
            ViewBag.BangDia = bangdia;
            ViewBag.ds_TL = ds_theloai;
            ViewBag.ds_HSX = ds_hxs;
            return View(bangdia);
        }
        public ActionResult XemGioHang()
        {
            GioHang gh = (GioHang)Session["gh"];
            return View(gh);
        }
    }
}
