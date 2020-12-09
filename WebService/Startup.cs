using Common.Helper;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.HttpsPolicy;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Newtonsoft.Json.Serialization;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Threading.Tasks;
using Web.Common;
using Web.Repository;
using Web.Service;

namespace WebService
{
    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            services.AddControllersWithViews()
                .AddJsonOptions(options => options.JsonSerializerOptions.PropertyNamingPolicy = null);
            
            services.AddDbContext<WebContext>(options =>
                        options.UseSqlServer(Configuration.GetConnectionString("DefaultConnection")));

            var filterEndsWithDlls = new List<string> { ".Service.dll", ".Repository.dll" };
            var assemblies = AssemblyHelper.GetAssemblies(AppDomain.CurrentDomain.BaseDirectory, filterEndsWithDlls);
            RegisteServices(services, assemblies);
            RegisteRepositories(services, assemblies);
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }
            else
            {
                app.UseExceptionHandler("/Home/Error");
                // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
                app.UseHsts();
            }
            app.UseHttpsRedirection();
            app.UseStaticFiles();

            app.UseRouting();

            app.UseAuthorization();

            app.UseEndpoints(endpoints =>
            {
                endpoints.MapControllerRoute(
                    name: "Area",
                    pattern: "{area:exists}/{controller=Home}/{action=Index}/{id?}");
                endpoints.MapControllerRoute(
                    name: "default",
                    pattern: "{controller=Home}/{action=Index}/{id?}");
            });
        }

        private void RegisteServices(IServiceCollection services, IEnumerable<Assembly> assemblies)
        {
            var asmServices = (from a in assemblies
                               where a.FullName.Contains(".Service")
                               select a);
            foreach (var asmService in asmServices)
            {
                var types = (from t in asmService.GetTypes()
                             where t.Name.EndsWith("Service")
                             && t.IsClass
                             && t.IsPublic
                             select t).ToArray<Type>();

                foreach (var type in types)
                {
                    foreach (var interfaceType in type.GetInterfaces())
                    {
                        services.AddScoped(interfaceType, type);
                    }
                }
            }
        }

        private void RegisteRepositories(IServiceCollection services, IEnumerable<Assembly> assemblies)
        {
            assemblies.Where(i => i.FullName.Contains(".Repository"))
                     .SelectMany(i => i.GetTypes())
                     .Where(i => i.IsPublic && i.Name.EndsWith("Repository"))
                     .ToList().ForEach(i => i.GetInterfaces().ToList().ForEach(j => services.AddTransient(j, i)));
            //var asmRepositories = (from a in assemblies
            //                       where a.FullName.Contains(".Repository")
            //                       select a);
            //foreach (var asmRepository in asmRepositories)
            //{
            //    var types = (from t in asmRepository.GetTypes()
            //                 where t.Name.EndsWith("Repository")
            //                 && t.IsPublic
            //                 select t).ToArray<Type>();

            //    foreach (var type in types)
            //    {
            //        foreach (var interfaceType in type.GetInterfaces())
            //        {
            //            services.AddTransient(interfaceType, type);
            //        }
            //    }
            //}
        }
    }
}
