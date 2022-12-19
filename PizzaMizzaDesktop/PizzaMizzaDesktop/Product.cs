using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PizzaMizzaDesktop
{
    internal class Product
    {
        public int Id { get; set; }
        public  string Name { get; set; }
        public int CategoryId { get; set; }
        public int TypeId { get; set; }
        public  int PriceId { get; set; }
        public int SizeId  { get; set; }
        public  List<Ingredient> Ingredients { get; set; }
    }
}
