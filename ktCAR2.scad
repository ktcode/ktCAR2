//
// ktCAR2
//

gap1 = 0.001;
gap2 = 0.002;
h = 3;
l = 100;
w = 50;


translate( [w*0, 0, 0] ) base();
/*translate( [w*1, 0, 0] ) base();
translate( [w*2, 0, 0] ) base();
translate( [w*3, 0, 0] ) base();
translate( [w*4, 0, 0] ) base();*/


translate( [w*0, 0, 0] ) line();
/*translate( [w*1, 0, 0] ) line();
translate( [w*2, 0, 0] ) line();
translate( [w*3, 0, 0] ) line();
translate( [w*4, 0, 0] ) line();*/
module base()
{
    color( "Gray" ) difference()
    {
        cube( [w, l, h] );
        translate( [0, 0, 0] ) rotate( [20, 0, 0] ) cube( [w, 30, h] );
        line();
    }
}

module line()
{
    color( "White" ) translate( [3, 16+6, h-1] )
    {
        cube( [3, 73-6, 1] );
        translate( [-6+3, 0, 0] )
        {
            difference()
            {
                cylinder( r=6, h=1, $fn=50 );
                cylinder( r=3, h=1, $fn=50 );
                translate( [-7, 0, 0] ) cube( [14, 14, 1] );
                translate( [-14+0.5, -7, 0] ) cube( [14, 14, 1] );
            }
        }
    }
    color( "White" ) translate( [w-3-3, 16+6, h-1] ) 
    {
        cube( [3, 73-6, 1] );
        translate( [6, 0, 0] )
        {
            difference()
            {
                cylinder( r=6, h=1, $fn=50 );
                cylinder( r=3, h=1, $fn=50 );
                translate( [-3, 0, 0] ) cube( [14, 14, 1] );
                translate( [-0.5, -7, 0] ) cube( [14, 14, 1] );
            }
        }
    }

    color( "White" ) difference()
    {
        translate( [10, 82, h] )
        {
            union()
            {
                cube( [10, 3, 1.8] );
                translate( [0, -1.8, 0] ) rotate( [-45, 0, 0]) cube( [10, 3, 1.8*sqrt(2)] );
            }
        }
        translate( [10-2, 82-4, h-4] ) cube( [14, 10, 4] );
    }

    color( "White" ) difference()
    {
        translate( [w-10-10, 82, h] )
        {
            union()
            {
                cube( [10, 3, 1.8] );
                translate( [0, -1.8, 0] ) rotate( [-45, 0, 0]) cube( [10, 3, 1.8*sqrt(2)] );
            }
        }
        translate( [w-10-10-2, 82-4, h-4] ) cube( [14, 10, 4] );
    }
}
