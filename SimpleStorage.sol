// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8; //Tells which version of solidity to use

contract SimpleContract{

    uint256 favouriteNumber;

    mapping(string=>uint256) public filmsData;

    Films[] public filmsCollection;

    struct Films{
        string movieName;
        uint256 rating;
    }

    function rateMovie(string memory _movieName, uint256 _rating) public{
        filmsCollection.push(Films({rating: _rating, movieName : _movieName}));
        filmsData[_movieName] = _rating;
    }
}