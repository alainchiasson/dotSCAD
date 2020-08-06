/**
* px_from.scad
*
* @copyright Justin Lin, 2019
* @license https://opensource.org/licenses/lgpl-3.0.html
*
* @see https://openhome.cc/eGossip/OpenSCAD/lib2x-px_from.html
*
**/ 

use <_impl/_px_from_impl.scad>;

function px_from(binaries, center = false, invert = false) = 
    let(
        _ = echo("<b><i>pixel/px_from</i> is deprecated: use <i>voxel/vx_from</i> instead.</b>")
    )
    _px_from_impl(binaries, center, invert);