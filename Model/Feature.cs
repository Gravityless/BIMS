using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    public class Feature
    {
        private int fid;
        private string title;
        private string tag;
        private float locx;
        private float locy;
        private string fimg;
        private string detail;

        public int Fid { get => fid; set => fid = value; }
        public string Title { get => title; set => title = value; }
        public string Tag { get => tag; set => tag = value; }
        public float Locx { get => locx; set => locx = value; }
        public float Locy { get => locy; set => locy = value; }
        public string Fimg { get => fimg; set => fimg = value; }
        public string Detail { get => detail; set => detail = value; }
    }
}
