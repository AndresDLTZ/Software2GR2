using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(DesarrolloWEB.Startup))]
namespace DesarrolloWEB
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
