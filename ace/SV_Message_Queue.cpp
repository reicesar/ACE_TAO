// SV_Message_Queue.cpp
// $Id$

#include "ace/SV_Message_Queue.h"

#if defined (ACE_LACKS_INLINE_FUNCTIONS)
#include "ace/SV_Message_Queue.i"
#endif

#include "ace/Log_Msg.h"

ACE_RCSID(ace, SV_Message_Queue, "$Id$")

ACE_ALLOC_HOOK_DEFINE(ACE_SV_Message_Queue)

void
ACE_SV_Message_Queue::dump (void) const
{
  ACE_TRACE ("ACE_SV_Message_Queue::dump");
}

ACE_SV_Message_Queue::ACE_SV_Message_Queue (void)
{
  ACE_TRACE ("ACE_SV_Message_Queue::ACE_SV_Message_Queue");
}

ACE_SV_Message_Queue::~ACE_SV_Message_Queue (void)
{
  ACE_TRACE ("ACE_SV_Message_Queue::~ACE_SV_Message_Queue");
}

ACE_SV_Message_Queue::ACE_SV_Message_Queue (key_t external_id,
					    int create,
					    int perms)
{
  ACE_TRACE ("ACE_SV_Message_Queue::ACE_SV_Message_Queue");
  if (this->open (external_id, create, perms) == -1)
    ACE_ERROR ((LM_ERROR, ACE_LIB_TEXT ("%p\n"),
		ACE_LIB_TEXT ("ACE_SV_Message_Queue::ACE_SV_Message_Queue")));
}
