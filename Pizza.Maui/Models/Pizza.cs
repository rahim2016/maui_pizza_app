﻿using CommunityToolkit.Mvvm.ComponentModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Pizza.Maui.Models
{
    public partial class Pizza : ObservableObject
    {
        public string Name { get; set; }
        public string Image { get; set; }
        public double Price { get; set; }

        [ObservableProperty, NotifyPropertyChangedFor(nameof(Amount))]
        private int _cartQuantity;

        public double Amount => CartQuantity * Price;

        public Pizza? Clone() => MemberwiseClone() as Pizza;


        
    }
}
