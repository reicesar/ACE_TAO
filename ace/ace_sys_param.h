/* -*- C++ -*- */

//=============================================================================
/**
 *  @file    ace_sys_param.h
 *
 *  $Id$
 *
 *  @author Douglas C. Schmidt (schmidt@cs.wustl.edu)
 *  @author etc
 */
//=============================================================================

#ifndef ACE_ACE_SYS_PARAM_H
# define ACE_ACE_SYS_PARAM_H
# include "ace/pre.h"

# include "ace/config-all.h"

# if !defined (ACE_LACKS_PRAGMA_ONCE)
#   pragma once
# endif /* ACE_LACKS_PRAGMA_ONCE */

# if !defined (ACE_LACKS_SYS_PARAM_H)
#   include /**/ <sys/param.h>
# endif /* !ACE_LACKS_SYS_PARAM_H */

// Need to note why this is included.
//# include "ace/ace_limits.h"

// _MAX_PATH is in stdlib.h on windows...
# include "ace/ace_stdlib.h"

# if !defined (MAXPATHLEN)
#   if defined (ACE_WIN32)
#     define MAXPATHLEN  _MAX_PATH
#   elif defined (_POSIX_PATH_MAX)
#     define MAXPATHLEN _POSIX_PATH_MAX
#   else
#     define MAXPATHLEN 1024
#   endif /* ACE_WIN32 */
# endif /* MAXPATHLEN */

#endif /* ACE_ACE_SYS_PARAM_H */
