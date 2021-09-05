// SPDX-License-Identifier: MIT
pragma solidity >=0.8.7;

contract Knight {
    int8 private x;
    int8 private y;

    function isValidPosition() internal view returns (bool) {
        return x >= 0 && x < 8 && y >= 0 && y < 8;
    }

    function move1() public {
        x += 1;
        y += 2;
        require(isValidPosition());
    }

    function move2() public {
        x += 2;
        y += 1;
        require(isValidPosition());
    }

    function move3() public {
        x += 2;
        y -= 1;
        require(isValidPosition());
    }

    function move4() public {
        x -= 1;
        y -= 2;
        require(isValidPosition());
    }

    function move5() public {
        x -= 1;
        y += 2;
        require(isValidPosition());
    }

    function move6() public {
        x -= 2;
        y += 1;
        require(isValidPosition());
    }

    function move7() public {
        x -= 2;
        y -= 1;
        require(isValidPosition());
    }

    function move8() public {
        x -= 1;
        y -= 2;
        require(isValidPosition());
    }

    function get_to_7_7() public view {
        assert(!(x == 7 && y == 7));
    }
}
