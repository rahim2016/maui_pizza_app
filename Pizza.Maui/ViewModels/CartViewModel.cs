namespace Pizza.Maui.ViewModels
{
    public partial class CartViewModel : ObservableObject
    {
        public event EventHandler<Models.Pizza> CartItemRemoved;
        public event EventHandler<Models.Pizza> CartItemUpdated;
        public event EventHandler CartClear;
        public CartViewModel()
        {
            items = new ObservableCollection<Models.Pizza>();
        }

        public ObservableCollection<Models.Pizza> items { get; set; }

        [ObservableProperty]
        private double _totalAmount;

        private void RecalculateTotalAmount() => TotalAmount = items.Sum(x => x.Amount);

        [RelayCommand]
        private void UpdateCartItems(Models.Pizza pizza)
        {
            var item = items.FirstOrDefault(x => x.Name == pizza.Name);
            if (item is not null)
            {
                item.CartQuantity = pizza.CartQuantity;
            }
            else
            {
                items.Add(pizza.Clone());
            }
            RecalculateTotalAmount();

        }

        [RelayCommand]
        private async void RemoveCartItem(string name)
        {
            var item = items.FirstOrDefault(x => x.Name == name);
            if (item is not null)
            {
                items.Remove(item);
                RecalculateTotalAmount();

                // inform the subscribers that an item is removed from the cart
                CartItemRemoved?.Invoke(this, item);

                var snackbarOptions = new SnackbarOptions
                {
                    CornerRadius = 10,
                    BackgroundColor = Colors.PaleGoldenrod
                };

                var snackbar = Snackbar.Make($"'{item.Name}' removed from cart", () =>
                  {
                      items.Add(item);
                      RecalculateTotalAmount();
                      CartItemUpdated?.Invoke(this, item);
                  }, "Undo", TimeSpan.FromSeconds(5), snackbarOptions);

                await snackbar.Show();
            }
        }

        [RelayCommand]
        private async void ClearCart()
        {
            if (await Shell.Current.DisplayAlert("Confirm Clear Cart", "Are you sure you want to clear the cart?", "Yes", "No"))
            {
                items.Clear();
                RecalculateTotalAmount();

                // Inform the subscribers that the cart is cleared
                CartClear?.Invoke(this, EventArgs.Empty);

                await Toast.Make("Cart cleared successfully", ToastDuration.Short).Show();
            };

        }

        [RelayCommand]
        private async Task PlaceOrder()
        {

            items.Clear();

            // Inform the subscribers that the cart is cleared
            CartClear?.Invoke(this, EventArgs.Empty);

            RecalculateTotalAmount();
            await Shell.Current.GoToAsync(nameof(CheckoutPage), animate: true);
        }
    }
}
