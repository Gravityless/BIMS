﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MSH;
using System.Data;


namespace DAL
{
    public class Feature
    {
        public static bool add(Model.Feature feature)
        {
            bool result = false;
            
            string strsql = "insert into t_feature(title, tag, locx, locy, fimg, detail) values ('" + feature.Title + "','" + feature.Tag + "'," + feature.Locx + "," + feature.Locy + ",'" + feature.Fimg + "','" + feature.Detail + "')";
            int i = MsSqlHelper.ExecuteSql(strsql);
            
            if (i > 0)
            {
                result = true;
            }

            return result;
        }

        public static List<Model.Feature> dotoList(DataTable dt)
        {
            List<Model.Feature> list = new List<Model.Feature>();
            for(int i = 0; i < dt.Rows.Count; i++)
            {
                Model.Feature feature = new Model.Feature();

                feature.Fid = int.Parse(dt.Rows[i]["fid"].ToString());
                feature.Title = dt.Rows[i]["title"].ToString();
                feature.Tag = dt.Rows[i]["tag"].ToString();
                feature.Locx = float.Parse(dt.Rows[i]["locx"].ToString());
                feature.Locy = float.Parse(dt.Rows[i]["locy"].ToString());
                feature.Fimg = dt.Rows[i]["fimg"].ToString();
                feature.Detail = dt.Rows[i]["detail"].ToString();

                list.Add(feature);

            }

            return list;
        }

        public static List<Model.Feature> list()
        {
            string strsql = "select * from t_feature";
            DataTable dt = MSH.MsSqlHelper.Query(strsql).Tables[0];
            return dotoList(dt);
        }

        public static List<Model.Feature> ListbyTag(string tag)
        {
            string strsql = "select * from t_feature where tag='"+ tag + "' ORDER BY title ASC";
            DataTable dt = MSH.MsSqlHelper.Query(strsql).Tables[0];
            return dotoList(dt);
        }

        public static Model.Feature GetFeature(int fid)
        {
            string strsql = "select * from t_feature where fid=" + fid + " ORDER BY title ASC";

            DataTable dt = MSH.MsSqlHelper.Query(strsql).Tables[0];
            List<Model.Feature> list = dotoList(dt);

            return list[0];
        }

        public static bool update(Model.Feature feature)
        {
            bool result = false;

            string strsql = "update t_feature set title='" + feature.Title + "',tag='" + feature.Tag + "',locx=" + feature.Locx + " , locy=" + feature.Locy + ", detail='" + feature.Detail + "',fimg='" + feature.Fimg + "' where fid=" + feature.Fid + "";
            int i = MsSqlHelper.ExecuteSql(strsql);

            if (i > 0)
            {
                result = true;
            }

            return result;
        }

        public static bool del(int fid)
        {
            bool result = false;
            string strsql = "delete from t_feature where fid=" + fid + "";

            int i = MSH.MsSqlHelper.ExecuteSql(strsql);
            if (i > 0)
            {
                result = true;
            }

            return result;
        }

        public static Model.Feature GetFeatureByName(string title)
        {
            Model.Feature feature = new Model.Feature();

            string strsql = "select * from t_feature where title='" + title + "'ORDER BY title ASC";
            DataTable dt = MSH.MsSqlHelper.Query(strsql).Tables[0];

            if (dt.Rows.Count != 0)
            {
                feature.Locx = float.Parse(dt.Rows[0]["locx"].ToString());
                feature.Locy = float.Parse(dt.Rows[0]["locy"].ToString());
                feature.Fid = int.Parse(dt.Rows[0]["fid"].ToString());
            }

            return feature;
        }
    }
}
