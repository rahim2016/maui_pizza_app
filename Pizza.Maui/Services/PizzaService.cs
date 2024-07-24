namespace Pizza.Maui.Services
{
    public class PizzaService
    {
        private readonly static IEnumerable<Models.Pizza> _pizzas = new List<Models.Pizza> {
            new Models.Pizza { Name = "Margherita", Image = "pizza1.png", Price = 5.99 },
            new Models.Pizza { Name = "Pepperoni", Image = "pizza2.png", Price = 7.99 },
            new Models.Pizza { Name = "Hawaiian", Image = "pizza3.png", Price = 8.99 },
            new Models.Pizza { Name = "Meat Feast", Image = "pizza4.png", Price = 9.99 },
            new Models.Pizza { Name = "Veggie Supreme", Image = "pizza5.png", Price = 8.99 },
            new Models.Pizza { Name = "Vegan", Image = "pizza6.png", Price = 9.99 },
            new Models.Pizza { Name = "BBQ Chicken", Image = "pizza7.png", Price = 9.99 },
            new Models.Pizza { Name = "Seafood", Image = "pizza8.png", Price = 10.99 },
            new Models.Pizza { Name = "Cheeze", Image = "pizza9.png", Price = 7.99 },
            new Models.Pizza { Name = "kmc pizza", Image = "pizza10.png", Price = 7.99 }
        };

        public IEnumerable<Models.Pizza> GetPizzas() => _pizzas;

        public IEnumerable<Models.Pizza> GetAllPizzas() => _pizzas;
        public IEnumerable<Models.Pizza> GetPopularPizzas(int count = 6) => _pizzas.OrderBy(p => Guid.NewGuid()).Take(count);
        public IEnumerable<Models.Pizza> SearchPizzas(string searchTerm) => string.IsNullOrWhiteSpace(searchTerm)
            ? _pizzas
            : _pizzas.Where(p => p.Name.Contains(searchTerm, StringComparison.OrdinalIgnoreCase));
    }
}
