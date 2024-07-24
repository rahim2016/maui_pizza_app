namespace Pizza.Maui.ViewModels
{
    public partial class HomeViewModel : ObservableObject
    {
        private readonly PizzaService _pizzaService;
        public HomeViewModel(PizzaService pizzaService)
        {
            _pizzaService = pizzaService;
            Pizzas = new(_pizzaService.GetPopularPizzas());
        }

        public ObservableCollection<Models.Pizza> Pizzas { get; set; }

        [RelayCommand]
        private async Task GoToAllPizzasPage(bool fromSeach = false)
        {
            var parameters = new Dictionary<string, object>
            {
                [nameof(AllPizzasViewModel.FromSearch)] = fromSeach
            };
            await Shell.Current.GoToAsync(nameof(AllPizzasPage), animate: true, parameters);
        }

        [RelayCommand]
        private async Task GoToDetailsPage(Models.Pizza pizza)
        {

            var parameters = new Dictionary<string, object>
            {
                [nameof(DetailsViewModel.Pizza)] = pizza
            };
            await Shell.Current.GoToAsync(nameof(DetailsPage), animate: true, parameters);
        }

    }
}
