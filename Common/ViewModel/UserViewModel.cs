using System;
using System.Collections.Generic;
using System.Text;

namespace Common.ViewModel
{
    public class UserViewModel
    {
        public long UserId { get; set; }       
        public string Name { get; set; }        
        public string UserNo { get; set; }        
        public string Sex { get; set; }       
        public DateTime Birthday { get; set; }       
        public string Phone { get; set; }       
        public string Address { get; set; }        
        public string UserType { get; set; }
        public string UserTypeName { get; set; }
    }
}
