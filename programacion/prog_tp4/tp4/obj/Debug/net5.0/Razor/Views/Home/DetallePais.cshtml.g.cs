#pragma checksum "D:\Cosas Importantes Agus\programacion\prog_tp4\tp4\Views\Home\DetallePais.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "7a436a2e60208d55c763ab0b2015694eb0251bda"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Home_DetallePais), @"mvc.1.0.view", @"/Views/Home/DetallePais.cshtml")]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#nullable restore
#line 1 "D:\Cosas Importantes Agus\programacion\prog_tp4\tp4\Views\_ViewImports.cshtml"
using tp4;

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "D:\Cosas Importantes Agus\programacion\prog_tp4\tp4\Views\_ViewImports.cshtml"
using tp4.Models;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"7a436a2e60208d55c763ab0b2015694eb0251bda", @"/Views/Home/DetallePais.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"2ff177f6cf9366499dbf066c3dfd92c2b1022882", @"/Views/_ViewImports.cshtml")]
    #nullable restore
    public class Views_Home_DetallePais : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<dynamic>
    #nullable disable
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral("<div class=\"text-center\">\r\n    <h1>");
#nullable restore
#line 2 "D:\Cosas Importantes Agus\programacion\prog_tp4\tp4\Views\Home\DetallePais.cshtml"
   Write(ViewBag.Pais.Nombre);

#line default
#line hidden
#nullable disable
            WriteLiteral("</h1>\r\n    <h2>Poblacion: ");
#nullable restore
#line 3 "D:\Cosas Importantes Agus\programacion\prog_tp4\tp4\Views\Home\DetallePais.cshtml"
              Write(ViewBag.Pais.Poblacion);

#line default
#line hidden
#nullable disable
            WriteLiteral("</h2>\r\n    <h2>Fecha De Independencia ");
#nullable restore
#line 4 "D:\Cosas Importantes Agus\programacion\prog_tp4\tp4\Views\Home\DetallePais.cshtml"
                          Write(ViewBag.Pais.FechaIndependencia);

#line default
#line hidden
#nullable disable
            WriteLiteral("</h2>\r\n    <h2>Atractivos Turisticos ");
#nullable restore
#line 5 "D:\Cosas Importantes Agus\programacion\prog_tp4\tp4\Views\Home\DetallePais.cshtml"
                         Write(ViewBag.Pais.AtractivosTuristicos);

#line default
#line hidden
#nullable disable
            WriteLiteral("</h2>\r\n</div>");
        }
        #pragma warning restore 1998
        #nullable restore
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; } = default!;
        #nullable disable
        #nullable restore
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; } = default!;
        #nullable disable
        #nullable restore
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; } = default!;
        #nullable disable
        #nullable restore
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; } = default!;
        #nullable disable
        #nullable restore
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<dynamic> Html { get; private set; } = default!;
        #nullable disable
    }
}
#pragma warning restore 1591