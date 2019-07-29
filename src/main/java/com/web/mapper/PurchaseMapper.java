package com.web.mapper;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.web.domain.Purchase;
import com.web.domain.User;

@Repository("PurchaseMapper")
public interface PurchaseMapper {
	public boolean addPurchase(Purchase purchase);
	
	public List<Purchase> getPurchaseAll();
	public List<Purchase> getPurchase(User user);
	public boolean updateStatus(Map<String, Object> m);
	/*public boolean updatePurchase(Purchase Purchase);*/
	
}
