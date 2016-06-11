﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DATN.C45
{
    public class Attribute
    {
        List<double> _value;
        string _name;
        string _label;

        public List<double> Value
        {
            get { return _value; }
            set { _value = value; }
        }

        public string Name
        {
            get { return _name; }
            set { _name = value; }
        }

        public string Label
        {
            get { return _label; }
            set { _label = value; }
        }

        public Attribute()
        {
            this.Name = "";
            this.Label = "";
            this.Value = new List<double>();
        }

        public Attribute(List<double> Value, string Name)
        {
            this.Value = Value;
            this.Name = Name;
            this.Label = "";
        }

        public Attribute(string Label)
        {
            this.Label = Label;
            this.Name = string.Empty;
            Value = new List<double>();
        }

        public void AddValue(double Value)
        {
            if (!_value.Contains(Value))
                _value.Add(Value);
        }
    }
}
