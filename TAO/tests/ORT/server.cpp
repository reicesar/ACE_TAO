#include "ORT_test_i.h"
#include "ServerORBInitializer.h"

#include "tao/ORBInitializer_Registry.h"

#include "ace/Get_Opt.h"


ACE_RCSID (ORT,
           server,
           "$Id$")


const char *ior_output_file = 0;

int
parse_args (int argc, char *argv[])
{
  ACE_Get_Opt get_opts (argc, argv, "o:");
  int c;

  while ((c = get_opts ()) != -1)
    switch (c)
      {
      case 'o':
        ior_output_file = get_opts.opt_arg ();
        ACE_DEBUG ((LM_DEBUG, "FILE ==== %s\n", ior_output_file));
        break;
      default:
        ACE_ERROR_RETURN ((LM_ERROR,
                           "Usage: %s "
                           "-o <iorfile>"
                           "\n",
                           argv[0]),
                          -1);
      }

  // Indicates sucessful parsing of the command line
  return 0;
}

int main (int argc, char *argv[])
{
  ACE_DECLARE_NEW_CORBA_ENV;
  ACE_TRY
    {
      PortableInterceptor::ORBInitializer_ptr tmp;

      ACE_NEW_RETURN (tmp,
                      ServerORBInitializer,
                      -1); // No CORBA exceptions yet!

      PortableInterceptor::ORBInitializer_var orb_initializer = tmp;

      PortableInterceptor::register_orb_initializer (orb_initializer.in ()
                                                     ACE_ENV_ARG_PARAMETER);
      ACE_TRY_CHECK;

      // Initialize the ORB.
      CORBA::ORB_var orb = CORBA::ORB_init (argc,
                                            argv,
                                            "ORT Test ORB"
                                            ACE_ENV_ARG_PARAMETER);
      ACE_TRY_CHECK;

      if (parse_args (argc, argv) != 0)
        return -1;

      CORBA::Object_var obj =
        orb->resolve_initial_references ("RootPOA"
                                         ACE_ENV_ARG_PARAMETER);
      ACE_TRY_CHECK;

      // Narrow
      PortableServer::POA_var root_poa =
        PortableServer::POA::_narrow (obj.in ()
                                      ACE_ENV_ARG_PARAMETER);
      ACE_TRY_CHECK;

      // Check for nil references
      if (CORBA::is_nil (root_poa.in ()))
        ACE_ERROR_RETURN ((LM_ERROR,
                           "Unable to obtain RootPOA reference.\n"),
                          -1);

      // Get poa_manager reference
      PortableServer::POAManager_var poa_manager =
        root_poa->the_POAManager (ACE_ENV_SINGLE_ARG_PARAMETER);
      ACE_TRY_CHECK;

      // Activate it.
      poa_manager->activate (ACE_ENV_SINGLE_ARG_PARAMETER);
      ACE_TRY_CHECK;

      CORBA::PolicyList policies (0);
      policies.length (0);

      // Lets create some POA's
      PortableServer::POA_var first_poa =
        root_poa->create_POA ("FIRST_POA",
                              poa_manager.in (),
                              policies
                              ACE_ENV_ARG_PARAMETER);
      ACE_TRY_CHECK;

      PortableServer::POA_var second_poa =
        first_poa->create_POA ("SECOND_POA",
                               poa_manager.in (),
                               policies
                               ACE_ENV_ARG_PARAMETER);
      ACE_TRY_CHECK;

      PortableServer::POA_var third_poa =
        second_poa->create_POA ("THIRD_POA",
                                poa_manager.in (),
                                policies
                                ACE_ENV_ARG_PARAMETER);
      ACE_TRY_CHECK;

      PortableServer::POA_var fourth_poa =
        third_poa->create_POA ("FOURTH_POA",
                               poa_manager.in (),
                               policies
                               ACE_ENV_ARG_PARAMETER);
      ACE_TRY_CHECK;

      ORT_test_i ort_test_impl (orb.in ());

      PortableServer::ObjectId_var oid =
        fourth_poa->activate_object (&ort_test_impl
                                     ACE_ENV_ARG_PARAMETER);
      ACE_TRY_CHECK;

      obj = fourth_poa->servant_to_reference (&ort_test_impl
                                              ACE_ENV_ARG_PARAMETER);
      ACE_TRY_CHECK;

      // Convert the object reference to a string format.
      CORBA::String_var ior =
        orb->object_to_string (obj.in ()
                               ACE_ENV_ARG_PARAMETER);
      ACE_TRY_CHECK;

      // Dump it to a file.
      if (ior_output_file != 0)
        {
          FILE *output_file = ACE_OS::fopen (ior_output_file, "w");
          if (output_file == 0)
            ACE_ERROR_RETURN ((LM_ERROR,
                               "Cannot open output file for writing "
                               "IOR: %s",
                               ior_output_file),
                              1);
          ACE_OS::fprintf (output_file, "%s", ior.in ());
          ACE_OS::fclose (output_file);
        }

      orb->run (ACE_ENV_SINGLE_ARG_PARAMETER);
      ACE_TRY_CHECK;

      orb->destroy (ACE_ENV_SINGLE_ARG_PARAMETER);
      ACE_TRY_CHECK;
    }
  ACE_CATCHANY
    {
      ACE_PRINT_EXCEPTION (ACE_ANY_EXCEPTION,
                           "ORT test server:");
      return -1;
    }
  ACE_ENDTRY;

  return 0;
}
