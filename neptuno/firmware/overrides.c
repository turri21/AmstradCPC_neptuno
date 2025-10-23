#include "diskimg.h"

const char *bootrom_name="AMSTRAD ROM";

char *autoboot()
{
        char *result=0;
        LoadROM(bootrom_name);
        return(result);
}
