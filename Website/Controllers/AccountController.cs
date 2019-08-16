using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Website.Models;

namespace Website.Controllers
{
    public class AccountController : Controller
    {
        // GET: Account
        public ActionResult Login()
        {
            return View();
        }

        // POST: /Account/Login
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Login(UserLogin objUser)
        {
            if (ModelState.IsValid)
            {
                using (DBModel db = new DBModel())
                {
                    var obj = db.user.Where(a => a.Email.Equals(objUser.Email) && a.Password.Equals(objUser.Password)).FirstOrDefault();
                    if (obj != null)
                    {
                        Session["UserID"] = obj.Id.ToString();
                        Session["Email"] = obj.Email.ToString();
                        return RedirectToAction("Index", "Home");
                    }
                    else
                    {
                        ViewBag.Message = "Email hoặc mật khẩu không chính xác.";
                        return View();
                    }
                }
            }
           
            return View(objUser);
        }

        public ActionResult Register()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Register(User objUser)
        {
            if (ModelState.IsValid)
            {
                using (DBModel db = new DBModel())
                {
                    var obj = db.user.Where(a => a.Email.Equals(objUser.Email)).FirstOrDefault();
                    if (obj != null)
                    {
                        ViewBag.Message = "Email đã tồn tại.";
                        return View();
                    }
                    else
                    {
                        try
                        {
                            db.user.Add(objUser);
                            db.SaveChanges();
                            return RedirectToAction("Login", "Account");
                        } 
                        catch(Exception exception)
                        {
                            ViewBag.Message = exception;
                            return View();
                        }
                    }
                }
            }
            return View(objUser);
        }
    }
}