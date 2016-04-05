using System;
using System.Collections.Generic; 
using System.Text;

namespace Utility.View
{
    public class ViewInfo
    {
        public ViewInfo(string viewname, string keyname)
        {
            _viewname = viewname;
            _keyname = keyname;
        }
        private string _viewname = "";
        private string _keyname = "";
        public string ViewName { get { return _viewname; } set { _viewname = value; } }
        public string KeyName { get { return _keyname; } set { _keyname = value; } } 
    }
}
