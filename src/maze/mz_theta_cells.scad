use <_impl/_mz_theta_cells.scad>;

function mz_theta_cells(rows, begining_columns, start = [0, 0], seed) =
    let(
		divided_ratio = 1.5,
	    before_traveled = config_nbrs(init_theta_maze(rows, begining_columns, divided_ratio)), 
        s = set_visited(before_traveled[start[0]][start[1]])
	)
	backtracker(
	    update_maze(before_traveled, s), start, rows);
