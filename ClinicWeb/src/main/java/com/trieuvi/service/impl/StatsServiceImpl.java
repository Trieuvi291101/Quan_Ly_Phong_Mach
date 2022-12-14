/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.trieuvi.service.impl;

import com.trieuvi.repository.StatsRepository;
import com.trieuvi.service.StatsService;
import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Star
 */
@Service
public class StatsServiceImpl implements StatsService {

    @Autowired
    private StatsRepository statsRepository;

    @Override
    public List<Object[]> totalPriceMonthStats(String kw, Date fromDate, Date toDate) {
        return this.statsRepository.totalPriceMonthStats(kw, fromDate, toDate);
    }

    @Override
    public List<Object[]> examinationStats(String string, Date date, Date date1) {
        return this.statsRepository.examinationStats(string, date, date1);
    }

}
