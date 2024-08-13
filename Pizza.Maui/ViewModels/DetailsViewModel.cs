namespace Pizza.Maui.ViewModels
{

    [QueryProperty(nameof(Pizza), nameof(Pizza))]
    public partial class DetailsViewModel : ObservableObject, IDisposable
    {
        private readonly CartViewModel _cartViewModel;
        public DetailsViewModel(CartViewModel cartViewModel)
        {
            _cartViewModel = cartViewModel;
            _cartViewModel.CartClear += OnCartCleared;
            _cartViewModel.CartItemRemoved += OnCartItemRemoved;
            _cartViewModel.CartItemUpdated += OnCartItemUpdated;
        }

        private void OnCartCleared(object? sender, EventArgs e) => Pizza.CartQuantity = 0;
        private void OnCartItemRemoved(object? sender, Models.Pizza pizza) => OnCartItemChanged(pizza, 0);
        private void OnCartItemUpdated(object? sender, Models.Pizza pizza) => OnCartItemChanged(pizza, pizza.CartQuantity);
        private void OnCartItemChanged(Models.Pizza pizza, int quantiry)
        {
            if (pizza.Name == Pizza.Name)
            {
                Pizza.CartQuantity = quantiry;
            }
        }


        [ObservableProperty]
        private Models.Pizza _pizza;

        [RelayCommand]
        private void AddToCart()
        {
            Pizza.CartQuantity++;
            _cartViewModel.UpdateCartItemsCommand.Execute(Pizza);
        }

        [RelayCommand]
        private void RemoveFromCart()
        {
            if (Pizza.CartQuantity > 0)
            {
                Pizza.CartQuantity--;
                _cartViewModel.UpdateCartItemsCommand.Execute(Pizza);
            }
        }

        [RelayCommand]
        private async Task ViewCart()
        {
            if (Pizza.CartQuantity > 0)
            {
                await Shell.Current.GoToAsync(nameof(CartPage), animate: true);
            }
            else
            {
                await Toast.Make("Please select the quantity using the plus (+) button !", ToastDuration.Short).Show();
            }

        }

        public void Dispose()
        {
            _cartViewModel.CartClear -= OnCartCleared;
            _cartViewModel.CartItemRemoved -= OnCartItemRemoved;
            _cartViewModel.CartItemUpdated -= OnCartItemUpdated;
        }
    }
}
