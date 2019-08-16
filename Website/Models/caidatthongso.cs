using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace Website.Models
{
    [Table("cai_dat_thong_so")]
    public class caidatthongso
    {
        [Key]
        public string Kenh_1 { get; set; }
        public string Tag_1 { get; set; }
        public string Chot_tag1 { get; set; }
        public string Tag_2 { get; set; }
        public string Chot_tag2 { get; set; }
        public string Button_1 { get; set; }
        public string Chot_button1 { get; set; }

        public bool CheckBoxValue
        {
            get { return Boolean.Parse(Button_1); }
        }

    }
}