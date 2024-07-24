namespace Pizza.Maui.ViewModels
{

    [QueryProperty(nameof(Pizza), nameof(Pizza))]
    public partial class DetailsViewModel : ObservableObject
    {
        public DetailsViewModel()
        {

        }

        [ObservableProperty]
        private Models.Pizza _pizza;
    }
}
