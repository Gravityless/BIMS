using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;
using DAL;


namespace BLL
{
    public class Feature
    {
        public static bool add(Model.Feature feature)
        {
            return DAL.Feature.add(feature);
        }

        public static List<Model.Feature> list()
        {
            return DAL.Feature.list();
        }

        public static Model.Feature GetFeature(int fid)
        {
            return DAL.Feature.GetFeature(fid);
        }
    }
}
