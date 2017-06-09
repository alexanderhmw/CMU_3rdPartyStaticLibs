/*
 *
 * NMEA library
 * URL: http://nmea.sourceforge.net
 * Author: Tim (xtimor@gmail.com)
 * Licence: http://www.gnu.org/licenses/lgpl.html
 * $Id: info.c 17 2008-03-11 11:56:11Z xtimor $
 *
 */

#include <string.h>
#include <stdbool.h>

#include "nmea/info.h"

void nmea_zero_INFO(nmeaINFO *info)
{
    memset(info, 0, sizeof(nmeaINFO));
    nmea_time_now(&info->utc);
    info->sig = NMEA_SIG_BAD;
    info->fix = NMEA_FIX_BAD;
}

double convertNDEGToDegree(double ndeg)
{
    bool flag=ndeg<0;
    if(flag)
    {
        ndeg=-ndeg;
    }
    int degmin=ndeg;
    double sec=(ndeg-degmin)*60.0;
    int min=degmin%100;
    int deg=degmin/100;
    double result=deg+min/60.0+sec/3600.0;
    if(flag)
    {
        result=-result;
    }
    return result;
}
