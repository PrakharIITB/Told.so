// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

// Uncomment this line to use console.log
// import "hardhat/console.sol";

contract ToldSo {
    struct Post {
        string title;
        string body;
        uint256 timestamp;
    }

    mapping(address => Post[]) private authorToPosts;

    function createPost(string memory title, string memory body) external{
        Post memory post = Post(title, body, block.timestamp);
        authorToPosts[msg.sender].push(post);
    }

    function getPostByAuthor(address author) external view
     returns(Post[] memory){
        return authorToPosts[author];
    }
}



