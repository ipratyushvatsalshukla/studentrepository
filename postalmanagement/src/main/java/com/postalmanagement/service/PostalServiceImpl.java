package com.postalmanagement.service;



import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.postalmanagement.models.Postal;
import com.postalmanagement.repository.PostalRepository;

@Service
public class PostalServiceImpl implements PostalService {
	@Autowired
	private PostalRepository repo;

	@Override
	public Postal insertPostman(Postal h) {

		Postal ho = repo.save(h);
		return ho;
	}

	public Postal getPostman(int pId) {
		Postal h = repo.getById(pId);
		return h;
	}

	public List<Postal> getAllPostmen() {
		return repo.findAll();
	}

	public void deletePostman(Integer id) {
		// TODO Auto-generated method stub
		repo.deleteById(id);

	}

}
