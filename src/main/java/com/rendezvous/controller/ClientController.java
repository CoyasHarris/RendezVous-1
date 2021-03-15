/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rendezvous.controller;

import com.rendezvous.entity.Client;
import com.rendezvous.entity.Company;
import com.rendezvous.model.SearchResult;
import com.rendezvous.repository.CompanyRepository;
import com.rendezvous.service.ClientService;
import java.security.Principal;
import java.util.LinkedList;
import java.util.List;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/client")
public class ClientController {

    @Autowired
    ClientService clientService;
    @Autowired 
    CompanyRepository companyRepository;

    @ModelAttribute
    public void addAttributes(Principal principal, Model model) {

        if (principal != null) {
            Client client = clientService.findClientByEmail(principal.getName());
            model.addAttribute("username", client.getFname() + " " + client.getLname());
            model.addAttribute("client", client);
        }
    }

    @GetMapping("/")
    public String redirectToDashboard() {
        return "redirect:/client/dashboard";
    }

    @GetMapping("/dashboard")
    public String showDashboard() {
        return "client/dashboard_client";
    }

    @GetMapping("/profile")
    public String showProfile() {
        return "client/profile_client";
    }

    @PostMapping("/profile")
    public String updateProfile(@Valid @ModelAttribute("client") Client client, BindingResult bindingResult, Model model) {
        Client loggedUser = (Client) model.getAttribute("client");

        if (bindingResult.hasErrors()) {
            return "client/profile_client";
        }
        
        client.setUser(loggedUser.getUser()); //making sure user havent malformed his credentials
        
        clientService.updateClient(client);
 
        return "redirect:/client/dashboard";
    }

    @GetMapping("/comp-select")
    public String showCompanySelect() {
        return "client/company_search";
    }

    @PostMapping("/comp-select") 
    public String showCompanySelect(@RequestParam int companyId, Model model) {
        model.addAttribute("comp_id", companyId); //comp_id will be used by company_date_pick
        return "client/company_date_pick";
    }
    
    
    @GetMapping("/date-select")
    public String showDateSelect(@RequestParam int companyId, Model model) {
        model.addAttribute("comp_id", companyId);
        return "client/company_date_pick";
    }
    
    @GetMapping("/comp-search")
    public ResponseEntity<List<SearchResult>> findCompanies (@RequestParam String searchTerm) {
        
        List<Company> companies = companyRepository.findByDisplayNameContainingIgnoreCase(searchTerm);
        List<SearchResult> results = new LinkedList<>();
        for (Company comp:companies) {
            results.add(new SearchResult(comp.getId(),comp.getDisplayName(),comp.getAddrStr(),comp.getAddrNo(),comp.getAddrCity(), comp.getTel()));
        }
        
    return new ResponseEntity<>(results, HttpStatus.OK); 
    }
}
