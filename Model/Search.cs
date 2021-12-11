using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    public class Search
    {
        private string tag;
        private string title;
        private float locx;
        private float locy;
        private float dist;
        private int mode;

        public string Tag { get => tag; set => tag = value; }
        public string Title { get => title; set => title = value; }
        public float Locx { get => locx; set => locx = value; }
        public float Locy { get => locy; set => locy = value; }
        public float Dist { get => dist; set => dist = value; }
        public int Mode { get => mode; set => mode = value; }
    }
}
