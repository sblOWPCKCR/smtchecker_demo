// SPDX-License-Identifier: MIT
pragma solidity >=0.8.7;

contract LazyCounter {
    int8 private x;
    int8 private y;

    constructor(int8 _x, int8 _y) {
        // check that we're within the board boundaries
        require(_x >= 0 && _x < 8 && _y >= 0 && _y < 8);

        x = _x;
        y = _y;
    }

    /// @dev capture a piece at (_x, _y)
    function capture(int8 _x, int8 _y) public {
        require(_x >= 0 && _x < 8 && _y >= 0 && _y < 8);

        int8 deltaX = _x - x;
        int8 deltaY = _y - y;
        // check that we're capturing a diagonally adjacent piece
        require((deltaX == 1 || deltaX == -1) && (deltaY == 1 || deltaY == -1));

        // jump over
        x = _x + deltaX;
        y = _y + deltaY;
    }

    /// @dev can't leave the board under any conditions
    function invariant() public view {
        assert(x >= 0 && x < 8 && y >= 0 && y < 8);
    }
}
