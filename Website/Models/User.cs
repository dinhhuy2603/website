using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace Website.Models
{
    public class User
    {
        public int Id { get; set; }

        [Required(ErrorMessage = "Vui lòng nhập tên.")]
        public string Name { get; set; }

        [Required(ErrorMessage ="Vui lòng nhập Email.")]
        [EmailAddress]
        public string Email { get; set; }

        [Required]
        [StringLength(100, MinimumLength = 6)]
        [DataType(DataType.Password)]
        public string Password { get; set; }

        [Required]
        [DataType(DataType.Password)]
        [Compare("Password", ErrorMessage = "Password doesn't match.")]
        [NotMapped]
        public string ConfirmPassword { get; set; }
        public Nullable<System.DateTime> Create_date { get;set; }
        public Nullable<System.DateTime> Update_date { get; set; }
    }
    public class UserLogin
    {
        [Required(ErrorMessage = "Vui lòng email.")]
        [EmailAddress]
        public string Email { get; set; }

        [Required(ErrorMessage = "Vui lòng nhập mật khẩu.")]
        [StringLength(100, MinimumLength = 6)]
        [DataType(DataType.Password)]
        public string Password { get; set; }
    }
}