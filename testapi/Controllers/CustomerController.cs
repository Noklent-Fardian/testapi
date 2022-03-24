using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using testapi.Customerdata;
using testapi.Models;

namespace testapi.Controllers
{
    [ApiController]
    public class Customercontroller : ControllerBase
    {
        private Icustomer _customerdata;

        public Customercontroller(Icustomer customerdata)
        {
            _customerdata = customerdata;
        }
        [HttpGet]
        [Route("api/[controller]")]
        public IActionResult Getcustomer()
        {
            return Ok(_customerdata.Getcustomers());
        }
        [HttpGet]
        [Route("api/[controller]/{id}")]
        public IActionResult Getcustomer(int id)
        {
            var customer = _customerdata.Getcustomer(id);
            if (customer != null)
            {
                return Ok(customer);
            }
            else
                return NotFound($"Customer with id: {id} ot found");
        }

        [HttpPost]
        [Route("api/[controller]")]
        public IActionResult Getcustomer(Customer customer)
        {
            _customerdata.AddCustomer(customer);
            return Created(HttpContext.Request.Scheme + "://" + HttpContext.Request.Host + HttpContext.Request.Path + "/" + customer.id, customer);
        }

        [HttpDelete]
        [Route("api/[controller]/{id}")]
        public IActionResult Deletecustomer(int id)
        {
            var customer = _customerdata.Getcustomer(id);
            if (customer != null)
            {
                _customerdata.DeleteCustomer(customer);
                return Ok();
            }
            return NotFound($"Customer with id: {id} ot found");

        }
        [HttpPatch]
        [Route("api/[controller]/{id}")]
        public IActionResult Updatecustoner(int id, Customer customer)
        {
            var existing = _customerdata.Getcustomer(id);
            if (existing != null)
            {
                customer.id = existing.id;
                _customerdata.UpdateCustomer(customer);
                return Ok(customer);

            }
            return NotFound($"Customer with id: {id} ot found");
        }

    }
}
