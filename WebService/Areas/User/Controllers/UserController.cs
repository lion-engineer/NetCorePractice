using Microsoft.AspNetCore.Mvc;

namespace WebService.Areas.User
{
    [Area("User")]
    public class UserController : Controller
    {
        
        public UserController()
        {
           
        }
        public IActionResult Index()
        {
            return View();
        }
    }
}
