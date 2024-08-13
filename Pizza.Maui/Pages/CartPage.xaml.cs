namespace Pizza.Maui.Pages;

public partial class CartPage : ContentPage
{
    private readonly CartViewModel _cartViewModel;
    public CartPage(CartViewModel cartViewModel)
    {
        _cartViewModel = cartViewModel;
        InitializeComponent();
        BindingContext = _cartViewModel;
    }

    private async void Button_Clicked(object sender, EventArgs e)
    {
        await Shell.Current.GoToAsync(nameof(AllPizzasPage), animate: true);
    }
}