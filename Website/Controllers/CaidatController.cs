using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Website.Models;

namespace Website.Controllers
{
    public class CaidatController : Controller
    {
        // GET: Caidat
        public ActionResult Create()
        {
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(caidatthongso objCaidat)
        {
            if (ModelState.IsValid)
            {
                using (DBModel db = new DBModel())
                {
                    var obj = db.caidat.Where(a => a.Kenh_1.Equals(objCaidat.Kenh_1)).FirstOrDefault();
                    if (obj != null)
                    {
                        ViewBag.Message = "Kênh đã tồn tại.";
                        return View();
                    }
                    else
                    {
                        try
                        {
                            db.caidat.Add(objCaidat);
                            db.SaveChanges();
                            return RedirectToAction("Login", "Account");
                        }
                        catch (Exception exception)
                        {
                            ViewBag.Message = exception;
                            return View();
                        }
                    }
                }
            }
            return View(objCaidat);
        }

    }
}