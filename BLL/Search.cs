using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class Search
    {
        public static List<Model.Feature> search(Model.Search search)
        {
            switch (search.Mode)
            {
                case 1:
                    return DAL.Search.byName(search);
                case 2:
                    return DAL.Search.byTag(search);
                case 3:
                    return DAL.Search.distByName(search);
                case 4:
                    return DAL.Search.distByNameWithTag(search);
                case 5:
                    return DAL.Search.distByLoc(search);
                case 6:
                    return DAL.Search.distByLocWithTag(search);
            }
            return null;
        }
    }
}
