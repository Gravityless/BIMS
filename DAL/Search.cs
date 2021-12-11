using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace DAL
{
    public class Search
    {
        /// <summary>
        /// 通过要素名搜索
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        public static List<Model.Feature> byName(Model.Search search)
        {
            string strsql = "select * from t_feature where title='"+ search.Title +"'";
            DataTable dt = MSH.MsSqlHelper.Query(strsql).Tables[0];
            return DAL.Feature.dotoList(dt);
        }
        /// <summary>
        /// 通过标签搜索
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        public static List<Model.Feature> byTag(Model.Search search)
        {
            string strsql = "select * from t_feature where tag='"+ search.Tag +"'";
            DataTable dt = MSH.MsSqlHelper.Query(strsql).Tables[0];
            return DAL.Feature.dotoList(dt);
        }
        /// <summary>
        /// 通过名称建立缓冲区
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        public static List<Model.Feature> distByName(Model.Search search)
        {
            Model.Feature feature = DAL.Feature.GetFeatureByName(search.Title);
            float locx = feature.Locx;
            float locy = feature.Locy;
            float dist = search.Dist;

            string strsql = "select * from t_feature where locx between " + (locx - dist) + " and " + (locx + dist) + " and locy between " + (locy - dist) + " and " + (locy + dist) + "";
            DataTable dt = MSH.MsSqlHelper.Query(strsql).Tables[0];
            return DAL.Feature.dotoList(dt);
        }
        /// <summary>
        /// 通过名称建立缓冲区后用tag筛选
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        public static List<Model.Feature> distByNameWithTag(Model.Search search)
        {
            Model.Feature feature = DAL.Feature.GetFeatureByName(search.Title);
            float locx = feature.Locx;
            float locy = feature.Locy;
            float dist = search.Dist;

            string strsql = "select * from t_feature where locx between " + (locx - dist) + " and " + (locx + dist) + " and locy between " + (locy - dist) + " and " + (locy + dist) + " and tag='"+ search.Tag +"'";
            DataTable dt = MSH.MsSqlHelper.Query(strsql).Tables[0];
            return DAL.Feature.dotoList(dt);
        }
        /// <summary>
        /// 通过经纬度建立缓冲区
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        public static List<Model.Feature> distByLoc(Model.Search search)
        {
            float locx = search.Locx;
            float locy = search.Locy;
            float dist = search.Dist;

            string strsql = "select * from t_feature where locx between " + (locx - dist) + " and " + (locx + dist) + " and locy between " + (locy - dist) + " and " + (locy + dist) + "";
            DataTable dt = MSH.MsSqlHelper.Query(strsql).Tables[0];
            return DAL.Feature.dotoList(dt);
        }
        /// <summary>
        /// 通过经纬度建立缓冲区后用tag筛选
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        public static List<Model.Feature> distByLocWithTag(Model.Search search)
        {
            float locx = search.Locx;
            float locy = search.Locy;
            float dist = search.Dist;

            string strsql = "select * from t_feature where locx between " + (locx - dist) + " and " + (locx + dist) + " and locy between " + (locy - dist) + " and " + (locy + dist) + " and tag='"+ search.Tag +"'";
            DataTable dt = MSH.MsSqlHelper.Query(strsql).Tables[0];
            return DAL.Feature.dotoList(dt);
        }

    }
}
