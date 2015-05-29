#ifndef SCY_Dllexport_H
#define SCY_Dllexport_H

#ifdef _WIN32
# ifdef SCY_DLL
#  define SCYAPI __declspec(dllexport)
# else
#  define SCYAPI __declspec(dllimport)
# endif
#else
# define SCYAPI
#endif

#endif