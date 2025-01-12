// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "./default-rules/AlwaysBlocked.sol";

contract FilterRules {
    struct Rules{
        string website;
        uint256 status;  }
    Rules[] public rules;
    mapping(string => uint256) websiteStatus;
    AlwaysBlocked public alwaysBlocked;
    bool whitelist = true;
    constructor() {
        alwaysBlocked = new AlwaysBlocked();
        if (whitelist) {

            setRulesFromAlwaysBlocked();
        }
        setRulesFromAlwaysBlocked();
    }
    function setRules() public {
        
        for (uint i = 0; i < rules.length; i++) {
            websiteStatus[rules[i].website] = rules[i].status;
            
        }
    }
    function setRulesFromAlwaysBlocked() internal {
        for (uint i = 0; i < alwaysBlocked.getRulesLength(); i++) {
            (string memory website, uint256 status) = alwaysBlocked.rules(i);
            Rules memory rule = Rules(website, status);
            rules.push(rule);
            websiteStatus[rule.website] = rule.status;
        }
    }
    function addRules() public {}
    function getRules(string memory _website) public view returns (uint256) {
        return websiteStatus[_website];
        
                
            }    
}

