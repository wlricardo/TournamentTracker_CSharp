using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TrackerLibrary
{
    public static class GlobalConfiguration
    {
        public static List<IDataConnection> Connections { get; private set; }

        public static void InitializeConnections(bool dataBaseAvailabe, bool textFileAvailable)
        {
            if (dataBaseAvailabe)
            {
                // TODO - Create the SQL Connection
            }

            if (textFileAvailable)
            {
                // TODO - Create the Text Connection
            }
        }
    }
}
