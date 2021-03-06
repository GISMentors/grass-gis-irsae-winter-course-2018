#!/usr/bin/env python

#%module
#% description: Computes LST stats for given period (limited to Germany and 2017).
#%end
#%option G_OPT_STRDS_INPUT
#%end
#%option 
#% key: start
#% description: Start date 2017 (eg. 2017-03-01)
#% type: string
#% required: yes
#%end
#%option 
#% key: end
#% description: End date 2017 (eg. 2017-04-01)
#% type: string
#% required: yes
#%end
#%option G_OPT_R_OUTPUT
#% description: Name for output raster map with statistics
#%end

import os
import sys
import atexit
from datetime import datetime
from subprocess import PIPE

import grass.script as gs
from grass.pygrass.modules import Module
from grass.exceptions import CalledModuleError
    
def check_date(date_str):
    d = datetime.strptime(date_str, '%Y-%m-%d')
    if d.year != 2017:
        gs.fatal("Only year 2017 allowed")

def main():
    check_date(options['start'])
    check_date(options['end'])

    # be silent
    os.environ['GRASS_VERBOSE'] = '0'
    
    try:
        Module('t.rast.series',
               input=options['input'],
               output=options['output'],
               method='average',
               where="start_time > '{start}' and start_time < '{end}'".format(
                   start=options['start'], end=options['end']
        ))
    except CalledModuleError:
        gs.fatal('Unable to compute statistics')
        
    ret = Module('r.univar',
                 flags='g',
                 map=options['output'],
                 stdout_=PIPE
    )
    stats = gs.parse_key_val(ret.outputs.stdout)
    print('Min: {0:.1f}'.format(float(stats['min'])))
    print('Max: {0:.1f}'.format(float(stats['max'])))
    print('Mean: {0:.1f}'.format(float(stats['mean'])))
        
if __name__ == "__main__":
    options, flags = gs.parser()

    sys.exit(main())
