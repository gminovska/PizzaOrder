using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ITC110Assignment10
{
    public class Pizza
    {
        public string PizzaSize { get; set; }
        public int SizeCost
        {
            get
            {
                int sizeCost = 0;
                switch (this.PizzaSize)
                {
                    case "small":
                        sizeCost = 6;
                        break;
                    case "medium":
                        sizeCost = 8;
                        break;
                    case "large":
                        sizeCost = 10;
                        break;
                    default:
                        sizeCost = 8;
                        break;
                }
                return sizeCost;
            }

        }
        public List<string> Toppings { get; set; }
        public int ToppingsCost
        {
            get
            {
                int toppingsCost = 0;
                foreach (var topping in Toppings)
                {
                    toppingsCost++;
                }
                return toppingsCost;
            }
        }

        public Pizza(string size, List<string> toppings)
        {
            PizzaSize = size;
            Toppings = toppings;
        }

        public int CalculatePrice()
        {
            int total = SizeCost + ToppingsCost;
            return total;
        }
    }
}