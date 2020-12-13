package com.web.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.domain.Purchase;
import com.web.domain.User;
import com.web.mapper.PurchaseMapper;

@Service
public class PurchaseService {
	@Autowired private PurchaseMapper purchaseMapper;
	public boolean addPurchase(Purchase purchase) {
		return purchaseMapper.addPurchase(purchase);
	}
	
	public List<Purchase> getPurchaseAll() {
		return purchaseMapper.getPurchaseAll();
	}
	public List<Purchase> getPurchase(User user) {
		return purchaseMapper.getPurchase(user);
	}
	public boolean updateStatus(String status, int id) {
		Map<String, Object> m = new HashMap<>();
		m.put("status", status);
		m.put("id", id);
		return purchaseMapper.updateStatus(m);
	}
}
