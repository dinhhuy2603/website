using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Website.Models;

namespace Website.Controllers
{
    public class HomeController : Controller
    {
        // GET: Menu
        
        public ActionResult Index()
        {
            //DBModel entites = new DBModel();
            //List<User> list = new List<User>();

            //list = entites.user.ToList<User>();
            //foreach (User item in list) // Loop through List with foreach
            //{
            //    Console.WriteLine(item);
            //}
            if (Session["UserID"] != null)
            {
                using (DBModel db = new DBModel())
                {
                    var caidat = db.caidat.ToList();
                    ViewBag.Caidat = caidat;
                    return View();
                }
            }
            else
            {
                return RedirectToAction("Login", "Account");
            }
            //return View();
        }

        public ActionResult Map()
        {
            if (Session["UserID"] != null)
            {
                string markers = "[";
                using (DBModel db = new DBModel())
                {
                    var locations = db.location.ToList();
                    foreach (var item in locations)
                    {
                        markers += "{";
                        markers += string.Format("'title': '{0}',", item.Name);
                        markers += string.Format("'lat': '{0}',", item.Latitude);
                        markers += string.Format("'lng': '{0}',", item.Longitude);
                        markers += string.Format("'description': '{0}'", item.Description);
                        markers += "},";
                    }
                }

                markers += "];";
                ViewBag.Markers = markers;
                return View();
            }
            else
            {
                return RedirectToAction("Login", "Account");
            }
        }

        public ActionResult TableList()
        {
            if (Session["UserID"] != null)
            {
                using (DBModel db = new DBModel())
                {
                    var users = db.user.ToList();
                    ViewBag.Users = users;
                    return View(users);
                }
                
            }
            else
            {
                return RedirectToAction("Login", "Account");
            }
        }
    }
}