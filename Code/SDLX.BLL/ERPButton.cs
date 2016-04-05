using System;
using System.Collections.Generic;
using System.Text;

namespace SDLX.BLL
{
    public class ERPButton
    {
        public string _id;
        public string _icon;
        public string _name;

        /// <summary>
        /// 
        /// </summary>
        public string ID
        {
            set { _id = value; }
            get { return _id; }
        }
        /// <summary>
        /// 
        /// </summary>
        public string Icon
        {
            set { _icon = value; }
            get { return _icon; }
        }
        /// <summary>
        /// 
        /// </summary>
        public string Name
        {
            set { _name = value; }
            get { return _name; }
        }

    }
}
