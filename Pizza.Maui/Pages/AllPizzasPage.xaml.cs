namespace Pizza.Maui.Pages;

public partial class AllPizzasPage : ContentPage
{
    private readonly AllPizzasViewModel _allPizzasViewModel;
    public AllPizzasPage(AllPizzasViewModel allPizzasViewModel)
    {
        InitializeComponent();
        _allPizzasViewModel = allPizzasViewModel;
        BindingContext = _allPizzasViewModel;

    }

    protected override async void OnAppearing()
    {
        base.OnAppearing();

        // set search bar focus when navigating from search button
        if (_allPizzasViewModel.FromSearch)
        {
            await Task.Delay(100);
            searchBar.Focus();
        }
    }

    private void searchBar_TextChanged(object sender, TextChangedEventArgs e)
    {
        if (!string.IsNullOrEmpty(e.OldTextValue) && string.IsNullOrWhiteSpace(e.NewTextValue))
        {
            _allPizzasViewModel.SearchPizzasCommand.Execute(null);
        }
    }
}