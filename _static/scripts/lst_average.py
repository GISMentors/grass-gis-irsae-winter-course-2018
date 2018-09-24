#!/usr/bin/env python

#%module
#% description: Computes aggregation for maps 
#%end
#%option G_OPT_STRDS_INPUT
#%end
#%option G_OPT_STRDS_OUTPUT
#%end
#%option
#% key: basename
#% description: Basename for output raster maps
#% required: yes
#%end
#%option
#% key: method
#% description: Aggregate operation to be performed on the raster maps
#
#% required: yes
#% multiple: no
#% answer: average
#% type: string
#%end
#%option
#% key: nprocs
#% description: Number of processes
#% answer: 1
#% type: integer
#%end

import os
import sys
import atexit
import grass.script as gcore
from grass.pygrass.modules import Module, MultiModule, ParallelModuleQueue

date_format = "%Y-%m-%d %H:%M:%S"

def calculate(inp, dat, out, out_rast, met):
	modules = []
	
	modules.append(
	    Module('t.rast.series',
	        input=inp.get_name(),
	        method=met,
	        output=out_rast,
	        where="start_time >= '{st}' and end_time <= '{se}'".format(
                        st=dat[0].strftime(date_format),
	                se=dat[1].strftime(date_format)),
	        run_ = False
	    )
	)
	queue.put(MultiModule(modules, sync=False))


def main():
    import grass.temporal as tgis

    tgis.init()
    
    dbif = tgis.SQLDatabaseInterfaceConnection()
    dbif.connect()

    inp = tgis.open_old_stds(options['input'], 'raster')
    temp_type, sem_type, title, descr = inp.get_initial_values()
    out = tgis.open_new_stds(options['output'], 'strds', temp_type,
                             title, descr, sem_type, dbif=dbif, 
                             overwrite=gcore.overwrite())
    dates = []
    for mapp in inp.get_registered_maps_as_objects():
		if mapp.get_absolute_time() not in dates:
		    dates.append(mapp.get_absolute_time())
    dates.sort()
    idx = 1
    out_maps = []

    for dat in dates:
        outraster = "{ba}_{su}".format(ba=options['basename'], su=idx)
        out_maps.append(outraster)
        calculate(inp, dat, out, outraster, options['method'])
        idx += 1
    queue.wait()
    times = inp.get_absolute_time()

    tgis.register_maps_in_space_time_dataset('raster', out.get_name(),
                                             ','.join(out_maps),
                                             start=times[0].strftime(date_format),
                                             end=times[1].strftime(date_format),
                                             dbif=dbif)
	
    
if __name__ == "__main__":
    options, flags = gcore.parser()

    # queue for parallel jobs
    queue = ParallelModuleQueue(int(options['nprocs']))

    sys.exit(main())
