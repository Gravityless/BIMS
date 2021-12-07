using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    public class Report
    {
        /// <summary>
        /// 要素id，用户id，报告id，反馈状态（0，1），添加时间
        /// </summary>
        private int fid;
        private int rid;
        private int uid;
        private string feedBack;
        private int status;
        private DateTime addate;
        public int Fid { get => fid; set => fid = value; }
        public int Rid { get => rid; set => rid = value; }
        public int Uid { get => uid; set => uid = value; }
        public int Status { get => status; set => status = value; }
        public DateTime Addate { get => addate; set => addate = value; }
        public string FeedBack { get => feedBack; set => feedBack = value; }
    }
}
