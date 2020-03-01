pragma solidity^0.4.*;

contract Election
{
    struct Candidate
    {
        uint id;
        string name;
        uint voteCount;
    }
    
    mapping(uint=>Candidate) public candidates;
    
    uint public candidatesCount;

    function Election() public
    {
        addCandidate("Niranjan Malya");
        addCandidate("Praneeth R.K");
        addCandidate("Shashank K Bhat");
    }

    function addCandidate(string _name) private
    {
        candidatesCount++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }

    function vote(uint _candidateId) public
    {
        require(_candidateId > 0 && _candidateId <= candidatesCount);
        candidates[_candidateId].voteCount ++;
    }
}