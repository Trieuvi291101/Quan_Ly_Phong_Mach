/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.trieuvi.repository;

import java.util.Date;
import java.util.List;

/**
 *
 * @author Star
 */
public interface StatsRepository {
    List<Object[]> totalPriceMonthStats(String kw, Date fromDate, Date toDate);
    List<Object[]> examinationStats(String kw, Date fromDate, Date toDate);
}
