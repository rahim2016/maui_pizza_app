namespace Pizza.Maui.Pages;

public partial class CheckoutPage : ContentPage
{
    public CheckoutPage()
    {
        InitializeComponent();
    }

    protected override async void OnAppearing()
    {
        base.OnAppearing();

        img.ScaleTo(1.5);
        msg.ScaleTo(1);

        await img.ScaleTo(0.5);
        await img.ScaleTo(1.5);
        await img.ScaleTo(0.5);
        await img.ScaleTo(1.5);
        await img.ScaleTo(0.5);
        await img.ScaleTo(1.5);
        await img.ScaleTo(1);

        homeBtn.FadeTo(1, length: 500);
        homeBtn.ScaleTo(1);
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

    private async void homeBtn_Clicked(object sender, EventArgs e)
    {

#if IOS
        await Shell.Current.GoToAsync(nameof(AllPizzasPage), animate: true);
        CommunityToolkit.Maui.Core.Platform.StatusBar.SetColor(Color.FromHex("B8860B"));
        CommunityToolkit.Maui.Core.Platform.StatusBar.SetStyle(StatusBarStyle.LightContent);
#elif ANDROID
        await Shell.Current.GoToAsync(nameof(HomePage), animate: true);
        CommunityToolkit.Maui.Core.Platform.StatusBar.SetColor(Color.FromHex("B8860B"));
        CommunityToolkit.Maui.Core.Platform.StatusBar.SetStyle(StatusBarStyle.LightContent);
#endif

    }
}