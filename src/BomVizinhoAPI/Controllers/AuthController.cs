using System;
using System.Collections.Generic;
using System.Linq;
using Microsoft.AspNet.Mvc;
using System.Threading.Tasks;


/**
* Generic AuthController that retrieves the user and allows user registration
*/

namespace BomVizinhoAPI.Controllers
{
    [Route("api/[controller]")]
    public class AuthController : Controller
    { 
        private List<string> users = new List<string>(){"surbias"};
        

        // GET: api/auth
        [HttpGet]
        public IActionResult Get()
        {
            return new ObjectResult(users);
        }
        
        [HttpPost]
        public IActionResult Create([FromBody] string user)
        {
            if (user == null)
            {
                return HttpBadRequest("Invalid Request");
            }
            users.Add(user);
            return CreatedAtRoute("GetTAuth", new { controller = "Auth", user = user }, user);
        }
        
// 
//         // GET api/values/5
//         [HttpGet("{id}")]
//         public string Get(int id)
//         {
//             return id + "";
//         }
// 
//         // POST api/values
//         [HttpPost]
//         public void Post([FromBody]string value)
//         {
//         }
// 
//         // PUT api/values/5
//         [HttpPut("{id}")]
//         public void Put(int id, [FromBody]string value)
//         {
//         }
// 
//         // DELETE api/values/5
//         [HttpDelete("{id}")]
//         public void Delete(int id)
//         {
//         }
    }
}
