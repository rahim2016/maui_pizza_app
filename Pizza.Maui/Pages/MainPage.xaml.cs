namespace Pizza.Maui.Pages
{
    public partial class MainPage : ContentPage
    {
        int count = 0;

        public MainPage()
        {
            InitializeComponent();
        }

        protected override void OnAppearing()
        {
            base.OnAppearing();

#if ANDROID
 
#endif
        }

        async private void TapGestureRecognizer_Tapped(object sender, TappedEventArgs e)
        {
            await Shell.Current.GoToAsync($"{nameof(HomePage)}");
        }
    }

}
