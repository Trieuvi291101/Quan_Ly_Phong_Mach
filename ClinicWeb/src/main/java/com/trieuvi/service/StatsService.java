/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.trieuvi.service;

import java.util.Date;
import java.util.List;

/**
 *
 * @author Star
 */
public interface StatsService {
    List<Object[]> totalPriceMonthStats(String kw, Date fromDate, Date toDate);
}
