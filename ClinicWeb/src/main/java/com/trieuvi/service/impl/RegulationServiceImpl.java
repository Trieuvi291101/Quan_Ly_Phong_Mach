/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.trieuvi.service.impl;

import com.trieuvi.pojos.Regulation;
import com.trieuvi.repository.RegulationRepository;
import com.trieuvi.service.RegulationService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Star
 */
@Service
public class RegulationServiceImpl implements RegulationService{
    @Autowired
    private RegulationRepository regulationRepository;

    @Override
    public List<Regulation> getRegulations() {
        return this.regulationRepository.getRegulations();
    }
}
