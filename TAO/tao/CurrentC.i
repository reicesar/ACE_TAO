/* -*- C++ -*- */
// $Id$
// ******  Code generated by the The ACE ORB (TAO) IDL Compiler *******
// TAO ORB and the TAO IDL Compiler have been developed by Washington
// University Computer Science's Distributed Object Computing Group.
//
// Information on TAO is available at
//                 http://www.cs.wustl.edu/~schmidt/TAO.html

ACE_INLINE
CORBA_Current::CORBA_Current (void) // default constructor
{}

ACE_INLINE
CORBA_Current::CORBA_Current (TAO_Stub *objref, TAO_ServantBase *_tao_servant, CORBA::Boolean _tao_collocated) // constructor
  : CORBA_Object (objref, _tao_servant, _tao_collocated)
{}

ACE_INLINE
CORBA_Current::~CORBA_Current (void) // destructor
{}


#if !defined (_CORBA_CURRENT___VAR_CI_)
#define _CORBA_CURRENT___VAR_CI_

// *************************************************************
// Inline operations for class CORBA_Current_var
// *************************************************************

ACE_INLINE
CORBA_Current_var::CORBA_Current_var (void) // default constructor
  : ptr_ (CORBA_Current::_nil ())
{}

ACE_INLINE
CORBA_Current_var::CORBA_Current_var (CORBA_Current_ptr p)
  : ptr_ (p)
{}

ACE_INLINE CORBA_Current_ptr
CORBA_Current_var::ptr (void) const
{
  return this->ptr_;
}

ACE_INLINE
CORBA_Current_var::CORBA_Current_var (const CORBA_Current_var &p) // copy constructor
  : TAO_Base_var (),
    ptr_ (CORBA_Current::_duplicate (p.ptr ()))
{}

ACE_INLINE
CORBA_Current_var::~CORBA_Current_var (void) // destructor
{
  CORBA::release (this->ptr_);
}

ACE_INLINE CORBA_Current_var &
CORBA_Current_var::operator= (CORBA_Current_ptr p)
{
  CORBA::release (this->ptr_);
  this->ptr_ = p;
  return *this;
}

ACE_INLINE CORBA_Current_var &
CORBA_Current_var::operator= (const CORBA_Current_var &p)
{
  if (this != &p)
  {
    CORBA::release (this->ptr_);
    this->ptr_ = CORBA_Current::_duplicate (p.ptr ());
  }
  return *this;
}

ACE_INLINE
CORBA_Current_var::operator const CORBA_Current_ptr &() const // cast
{
  return this->ptr_;
}

ACE_INLINE
CORBA_Current_var::operator CORBA_Current_ptr &() // cast
{
  return this->ptr_;
}

ACE_INLINE CORBA_Current_ptr
CORBA_Current_var::operator-> (void) const
{
  return this->ptr_;
}

ACE_INLINE CORBA_Current_ptr
CORBA_Current_var::in (void) const
{
  return this->ptr_;
}

ACE_INLINE CORBA_Current_ptr &
CORBA_Current_var::inout (void)
{
  return this->ptr_;
}

ACE_INLINE CORBA_Current_ptr &
CORBA_Current_var::out (void)
{
  CORBA::release (this->ptr_);
  this->ptr_ = CORBA_Current::_nil ();
  return this->ptr_;
}

ACE_INLINE CORBA_Current_ptr
CORBA_Current_var::_retn (void)
{
  // yield ownership of managed obj reference
  CORBA_Current_ptr val = this->ptr_;
  this->ptr_ = CORBA_Current::_nil ();
  return val;
}


#endif /* end #if !defined */


#if !defined (_CORBA_CURRENT___OUT_CI_)
#define _CORBA_CURRENT___OUT_CI_

// *************************************************************
// Inline operations for class CORBA_Current_out
// *************************************************************

ACE_INLINE
CORBA_Current_out::CORBA_Current_out (CORBA_Current_ptr &p)
  : ptr_ (p)
{
  this->ptr_ = CORBA_Current::_nil ();
}

ACE_INLINE
CORBA_Current_out::CORBA_Current_out (CORBA_Current_var &p) // constructor from _var
  : ptr_ (p.out ())
{
  CORBA::release (this->ptr_);
  this->ptr_ = CORBA_Current::_nil ();
}

ACE_INLINE
CORBA_Current_out::CORBA_Current_out (CORBA_Current_out &p) // copy constructor
  : ptr_ (p.ptr_)
{}

ACE_INLINE CORBA_Current_out &
CORBA_Current_out::operator= (CORBA_Current_out &p)
{
  this->ptr_ = p.ptr_;
  return *this;
}

ACE_INLINE CORBA_Current_out &
CORBA_Current_out::operator= (const CORBA_Current_var &p)
{
  this->ptr_ = CORBA_Current::_duplicate (p.ptr ());
  return *this;
}

ACE_INLINE CORBA_Current_out &
CORBA_Current_out::operator= (CORBA_Current_ptr p)
{
  this->ptr_ = p;
  return *this;
}

ACE_INLINE
CORBA_Current_out::operator CORBA_Current_ptr &() // cast
{
  return this->ptr_;
}

ACE_INLINE CORBA_Current_ptr &
CORBA_Current_out::ptr (void) // ptr
{
  return this->ptr_;
}

ACE_INLINE CORBA_Current_ptr
CORBA_Current_out::operator-> (void)
{
  return this->ptr_;
}


#endif /* end #if !defined */
