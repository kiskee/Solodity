// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract PoemaNFT is ERC721 {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIdCounter;

    struct Poema {
        string texto;
        string titulo;
        address autor;
    }

    mapping(uint256 => Poema) public poemas;

    constructor() ERC721("PoemasNFT", "PNFT") {}

    function mintPoema(string memory _texto, string memory _titulo) public returns (uint256) {
        _tokenIdCounter.increment();
        uint256 newItemId = _tokenIdCounter.current();

        poemas[newItemId] = Poema(_texto, _titulo, msg.sender);
        _mint(msg.sender, newItemId);
        return newItemId;
    }

    function getPoema(uint256 _tokenId) public view returns (string memory, string memory, address) {
        Poema storage poema = poemas[_tokenId];
        return (poema.texto, poema.titulo, poema.autor);
    }
}