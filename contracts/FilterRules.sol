// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FilterRules {
    struct Rules{
        string website;
        bool open;
    }
    Rules[] public rules;
    mapping(string => bool) public websiteStatus;
    function setRules() public {
        
        for (uint i = 0; i < rules.length; i++) {
            websiteStatus[rules[i].website] = rules[i].open;
            
        }
    }
    function addRules() public {}
    function getRules(string memory _website) public view returns (bool){
        return websiteStatus[_website];
        
        
    }

    
        
    }
