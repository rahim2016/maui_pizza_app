using Android.App;
using Android.Content.PM;
using Android.OS;

namespace Pizza.Maui
{
    [Activity( //Theme = "@style/Maui.SplashTheme",
               Theme = "@style/SplashTheme", MainLauncher = true, ConfigurationChanges = ConfigChanges.ScreenSize | ConfigChanges.Orientation | ConfigChanges.UiMode | ConfigChanges.ScreenLayout | ConfigChanges.SmallestScreenSize | ConfigChanges.Density)]
    public class MainActivity : MauiAppCompatActivity
    {
        protected override void OnCreate(Bundle savedInstanceState)
        {
            // Window.SetStatusBarColor(Android.Graphics.Color.DarkGoldenrod);
            Window.SetNavigationBarColor(Android.Graphics.Color.DarkGoldenrod);

            base.OnCreate(savedInstanceState);
        }
    }
}
