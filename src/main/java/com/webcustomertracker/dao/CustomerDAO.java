package com.webcustomertracker.dao;
import com.webcustomertracker.entity.Customer;
import java.util.List;

public interface CustomerDAO {
    List<Customer> getCustomers();
}
