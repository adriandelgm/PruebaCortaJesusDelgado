using PruebaCortaJesusDelgado.Context.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace PruebaCortaJesusDelgado.Context.Controllers
{
    public class ResortController
    {
        private MyDbContext _context = new MyDbContext();

        public ActionResult Index()
        {
            var resorts = _context.resorts.ToList();
            return view(resorts);
        }

        private ActionResult view(List<Resort> resorts)
        {
            throw new NotImplementedException();
        }
    }

    public class ActionResult
    {
    }
}