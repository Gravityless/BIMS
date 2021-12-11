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

        public static bool update(Model.Feature feature)
        {
            return DAL.Feature.update(feature);
        }

        public static bool del(int fid)
        {
            return DAL.Feature.del(fid);
        }

        public static Model.Feature GetFeatureByName(string title)
        {
            return DAL.Feature.GetFeatureByName(title);
        }
    }
}
