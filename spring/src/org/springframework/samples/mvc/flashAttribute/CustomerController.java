package org.springframework.samples.mvc.flashAttribute;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class CustomerController {
	
	@RequestMapping(value="form", method=RequestMethod.GET)
	public String showForm(@ModelAttribute("customer") Customer customer) {
		System.out.println("idnex called");
		return "add_customer";	
	}
	
	@RequestMapping(value="addcustomer", method=RequestMethod.POST)
	public String addCustomer(@ModelAttribute("customer") Customer customer,
			final RedirectAttributes redirectAttributes) {

		redirectAttributes.addFlashAttribute("customer", customer);
		redirectAttributes.addFlashAttribute("message","Added successfully.");

		return "redirect:showcustomer.html";	
	}

	
	@RequestMapping(value="showcustomer", method=RequestMethod.GET)
	public String showCustomer(@ModelAttribute("customer") Customer customer) {
		System.out.println("cust:" + customer.getFirstname());
		return "show_customer";
	}
}
