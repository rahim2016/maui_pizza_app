#if IOS
using UIKit;
#endif

namespace Pizza.Maui.Pages;

public partial class DetailsPage : ContentPage
{
    private readonly DetailsViewModel _detailsViewModel;
    public DetailsPage(DetailsViewModel detailsViewModel)
    {
        _detailsViewModel = detailsViewModel;
        InitializeComponent();
        BindingContext = _detailsViewModel;
    }

    protected override void OnAppearing()
    {
        base.OnAppearing();

#if IOS
        var bottom = UIApplication.SharedApplication.Delegate.GetWindow().SafeAreaInsets.Bottom;

        bottomBox.Margin = new Thickness(-1, 0, -1, (bottom + 1) * -1);

#endif
    }
}