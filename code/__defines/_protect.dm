#define GENERAL_PROTECT_DATUM(Path)\
##Path/CanProcCall(procname){\
    return FALSE;\
}