#if IOS
using UIKit;
#endif

using CommunityToolkit.Maui.Core;

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

    protected override bool OnBackButtonPressed()
    {
        base.OnBackButtonPressed();

        Behaviors.Add(new CommunityToolkit.Maui.Behaviors.StatusBarBehavior
        {
            StatusBarColor = Colors.DarkGoldenrod,
            StatusBarStyle = CommunityToolkit.Maui.Core.StatusBarStyle.LightContent
        });

        return false;
    }


    private async void ImageButton_Clicked(object sender, EventArgs e)
    {
        await Shell.Current.GoToAsync("..", animate: true);

        CommunityToolkit.Maui.Core.Platform.StatusBar.SetColor(Color.FromHex("B8860B"));
        CommunityToolkit.Maui.Core.Platform.StatusBar.SetStyle(StatusBarStyle.LightContent);
    }
}