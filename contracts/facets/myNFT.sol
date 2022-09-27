// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "./ERC721URIstorage.sol";
import "../libraries/LibERC721.sol";


contract myNFT is ERC721URIStorage {
    
    using Counters for Counters.Counter;

    string uri = "https://gateway.pinata.cloud/ipfsQmT5xJf2XUatNJQ28fJu77bbB3erpUnJonEBLko1AuwL4e";
    function safeMint(address to )public{

        uint256 tokenId = s._myCounter.current();
        require(tokenId <= s.MAX_SUPPLY, "Sorry, all NFTs have been minted!");
        s._myCounter.increment();
        _safeMint(to, tokenId);
        _setTokenURI(tokenId, uri);
    }


}