using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProbaIT
{
    public class Product
    {
        public string ProductType { get; set; }
        public string ModelName { get; set; }
        public int Quantity { get; set; }

        public Product(string productType, string modelName, int quantity)
        {
            ProductType = productType;
            ModelName = modelName;
            Quantity = quantity;
        }

        // override object.Equals
        public override bool Equals(object obj)
        {
            Product product = obj as Product;

            if (obj == null)
            {
                return false;
            }

            return ModelName.Equals(product.ModelName);
        }

        public override int GetHashCode()
        {
            return ModelName.GetHashCode();
        }
    }
}