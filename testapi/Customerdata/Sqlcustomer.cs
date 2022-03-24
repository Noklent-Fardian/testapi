using System.Collections.Generic;
using System.Linq;
using testapi.Models;


namespace testapi.Customerdata
{
    
        public class Sqlcustoemr : Icustomer
        {
            private Customercontext _customercontext;

            public Sqlcustoemr(Customercontext customercontext)
            {
                _customercontext = customercontext;
            }


            public Customer AddCustomer(Customer customer)
            {
                _customercontext.customer.Add(customer);
                _customercontext.SaveChanges();
                return customer;
            }

            public void DeleteCustomer(Customer customer)
            {
                _customercontext.customer.Remove(customer);
                _customercontext.SaveChanges();

            }

            public Customer Getcustomer(int id)
            {
                var customer = _customercontext.customer.Find(id);
                return customer;
            }

            public List<Customer> Getcustomers()
            {
                return _customercontext.customer.ToList();
            }

            public Customer UpdateCustomer(Customer customer)
            {
                var existing = _customercontext.customer.Find(customer.id);
                if (existing != null)
                {
                    existing.email = customer.email;
                    existing.name = customer.name;
                    existing.password = customer.password;
                    existing.Address = customer.Address;
                    existing.phonenumber = customer.phonenumber;
                    _customercontext.customer.Update(existing);
                    _customercontext.SaveChanges();
                }
                return customer;
            }
        }
}
