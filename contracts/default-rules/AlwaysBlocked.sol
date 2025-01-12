// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AlwaysBlocked {
    struct Rules {
        string website;
        uint256 status;
    }

    Rules[] public rules;

    constructor() {
        rules.push(Rules("facebook.com", 1));
        rules.push(Rules("twitter.com", 1));
        rules.push(Rules("instagram.com", 1));
        rules.push(Rules("linkedin.com", 1));
        rules.push(Rules("snapchat.com", 1));
        rules.push(Rules("tiktok.com", 1));
        rules.push(Rules("youtube.com", 1));
        rules.push(Rules("whatsapp.com", 1));
    }
       function getRulesLength() public view returns (uint256) {
        return rules.length;
    }
}