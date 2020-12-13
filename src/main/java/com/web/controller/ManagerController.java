package com.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.web.service.PurchaseService;

@Controller
public class ManagerController {
	@Autowired private PurchaseService purchaseService;
	
	@RequestMapping(value="/manager", method=RequestMethod.GET)
	public String manager() {
		return "manager/purchase";
	}
	@RequestMapping(value="/manager/purchase", method=RequestMethod.GET)
	public String purchase() {
		return "manager/purchase";
	}
	@RequestMapping(value="/manager/note", method=RequestMethod.GET)
	public String note() {
		return "manager/note";
	}
	@RequestMapping(value="/manager/msm", method=RequestMethod.GET)
	public String msm() {
		return "manager/msm";
	}
	@RequestMapping(value="/manager/log", method=RequestMethod.GET)
	public String log() {
		return "manager/log";
	}

	@RequestMapping(value = "/manager/purchase/all/json", method=RequestMethod.GET)
	@ResponseBody
	public String getPurchaseAll () {
		return new Gson().toJson(purchaseService.getPurchaseAll());
	}
	@RequestMapping(value = "/manager/purchase/update/json", method=RequestMethod.GET)
	@ResponseBody
	public String updateStatus (
			@RequestParam(value="status") String status,
			@RequestParam(value="id") int id) {
		return new Gson().toJson(purchaseService.updateStatus(status, id));
	}
}
