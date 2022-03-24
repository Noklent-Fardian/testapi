using System.Collections.Generic;
using testapi.Models;

namespace testapi.Customerdata
{
    public interface Icustomer
    {
        List<Customer> Getcustomers();
        Customer Getcustomer(int id);
        Customer AddCustomer(Customer customer);
        void DeleteCustomer(Customer customer);
        Customer UpdateCustomer(Customer customer);
    }
}
