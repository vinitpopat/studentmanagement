package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.entity.BatchEntity;
import com.repository.BatchRepository;

@Controller
public class BatchController {

    @Autowired
    private BatchRepository batchRepo;

    @GetMapping("/addbatches")
    public String addBatchPage() {
        return "addbatch"; // JSP page name
    }

    @PostMapping("savebatch")
    public String saveBatch(BatchEntity batch) {
           
        batchRepo.save(batch); // ✅ Simply saves the batch data to DB
        return "listbatch";    // After saving, go to list page (or success page)
    }
}
