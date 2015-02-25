package com.patent.demo;

import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ProductController {

	@Autowired
	private MongoTemplate mgtemplate;

	public MongoTemplate getMgtemplate() {
		return mgtemplate;
	}

	public void setMgtemplate(MongoTemplate mgtemplate) {
		this.mgtemplate = mgtemplate;
	}

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String prepareAddProductPage(Model model) {
		model.addAttribute("product", new Product());
		return "index";
	}

	@RequestMapping(value = "/", method = RequestMethod.POST)
	public String prepareAddProductPage(@ModelAttribute Product product,
			Model model) {
		product.setId(UUID.randomUUID().toString());
		mgtemplate.insert(product, "product");
		return "result";
	}

	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public String prepareUpdateProductPage(@RequestParam String id,
			Model model) {
		Query query = new Query();
		query.addCriteria(Criteria.where("id").is(id));
		model.addAttribute("product", mgtemplate.findOne(query, Product.class));
		return "update";
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String submitUpdateProductPage(@ModelAttribute Product product,
			Model model) {
		mgtemplate.save(product, "product");
		return "result";
	}

}
