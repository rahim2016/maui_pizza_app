namespace Pizza.Maui
{
    public static class MauiProgram
    {
        public static MauiApp CreateMauiApp()
        {
            var builder = MauiApp.CreateBuilder();
            builder
                .UseMauiApp<App>()
                .UseMauiCommunityToolkit()
                .ConfigureFonts(fonts =>
                {
                    fonts.AddFont("OpenSans-Regular.ttf", "OpenSansRegular");
                    fonts.AddFont("OpenSans-Semibold.ttf", "OpenSansSemibold");
                });



#if DEBUG
            //builder.Logging.AddDebug();
#endif
            // Register services to the container.
            AddPizzaServices(builder.Services);

            return builder.Build();
        }

        // Method to register services , pages, viewmodels and routes to the container.
        private static IServiceCollection AddPizzaServices(IServiceCollection services)
        {
            services.AddSingleton<PizzaService>();
            services.AddSingletonWithShellRoute<HomePage, HomeViewModel>(nameof(HomePage));
            services.AddSingletonWithShellRoute<AllPizzasPage, AllPizzasViewModel>(nameof(AllPizzasPage));
            services.AddSingletonWithShellRoute<DetailsPage, DetailsViewModel>(nameof(DetailsPage));
            return services;
        }

    }
}
