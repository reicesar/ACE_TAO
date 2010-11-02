/**
 * @author William R. Otte <wotte@dre.vanderbilt.edu>
 * @author Johnny Willemsen <jwillemsen@remedy.nl>
 *
 * $Id$
 *
 * Wrapper facade for NDDS.
 */

#ifndef DDSSUBSCRIBERLISTENER_T_H_
#define DDSSUBSCRIBERLISTENER_T_H_

#include "dds4ccm/idl/dds_rtf2_dcpsEC.h"

#include "dds4ccm/idl/dds_rtf2_dcpsC.h"
#include "dds4ccm/impl/dds4ccm_conf.h"

#include "ndds/ndds_cpp.h"

namespace CIAO
{
  namespace DDS4CCM
  {
    template <typename DDS_TYPE>
    class DataReader_T;

    template <typename DDS_TYPE>
    class DDS_Subscriber_T;

    template <typename DDS_TYPE>
    class DDS_SubscriberListener_T :
      public virtual ::DDSSubscriberListener
    {
    typedef DDS_Subscriber_T<DDS_TYPE> Subscriber_type;
    typedef DataReader_T<DDS_TYPE> DataReader_type;
    public:
      /// Constructor
      DDS_SubscriberListener_T ( ::DDS::SubscriberListener_ptr s);

      /// Destructor
      virtual ~DDS_SubscriberListener_T (void);

      virtual void
      on_requested_deadline_missed (
        ::DDSDataReader* the_reader,
        const ::DDS_RequestedDeadlineMissedStatus & status);

      virtual void
      on_requested_incompatible_qos (
        ::DDSDataReader* the_reader,
        const ::DDS_RequestedIncompatibleQosStatus & status);

      virtual void
      on_sample_rejected (
        ::DDSDataReader* the_reader,
        const ::DDS_SampleRejectedStatus & status);

      virtual void
      on_liveliness_changed (
        ::DDSDataReader* the_reader,
        const ::DDS_LivelinessChangedStatus & status);

      virtual void
      on_data_available (
        ::DDSDataReader* the_reader);

      virtual void
      on_subscription_matched (
        ::DDSDataReader* the_reader,
        const ::DDS_SubscriptionMatchedStatus & status);

      virtual void
      on_sample_lost (
        ::DDSDataReader* the_reader,
        const ::DDS_SampleLostStatus & status);

      virtual void
      on_data_on_readers (
        ::DDSSubscriber* the_subscriber);

      ::DDS::SubscriberListener_ptr get_subscriber_listener (void);
    private:
      ::DDS::SubscriberListener_var impl_;

      ::DDS::DataReader_ptr
      get_datareader_proxy (::DDSDataReader * the_reader);
    };
  }
}

#include "dds4ccm/impl/ndds/DDSSubscriberListener_T.cpp"

#endif /* DDSSUBSCRIBERLISTENER_T_H_ */
