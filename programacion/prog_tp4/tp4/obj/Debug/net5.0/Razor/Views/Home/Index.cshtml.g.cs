#pragma checksum "D:\Cosas Importantes Agus\programacion\prog_tp4\tp4\Views\Home\Index.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "e206ca5919aac36943a66fdbf29bbd6a951782a3"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Home_Index), @"mvc.1.0.view", @"/Views/Home/Index.cshtml")]
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
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"e206ca5919aac36943a66fdbf29bbd6a951782a3", @"/Views/Home/Index.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"2ff177f6cf9366499dbf066c3dfd92c2b1022882", @"/Views/_ViewImports.cshtml")]
    #nullable restore
    public class Views_Home_Index : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<dynamic>
    #nullable disable
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
#nullable restore
#line 1 "D:\Cosas Importantes Agus\programacion\prog_tp4\tp4\Views\Home\Index.cshtml"
  
    ViewData["Title"] = "Home Page";

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n<div class=\"row\">\r\n");
#nullable restore
#line 6 "D:\Cosas Importantes Agus\programacion\prog_tp4\tp4\Views\Home\Index.cshtml"
      
        foreach (Pais objPais in ViewBag.Paises){

#line default
#line hidden
#nullable disable
            WriteLiteral("            <div class=\"col-md-4\">\r\n                <div class=\"card\" >\r\n                    <img class=\"card-img-top\"");
            BeginWriteAttribute("src", " src=\"", 243, "\"", 268, 1);
#nullable restore
#line 10 "D:\Cosas Importantes Agus\programacion\prog_tp4\tp4\Views\Home\Index.cshtml"
WriteAttributeValue("", 249, objPais.imgBandera, 249, 19, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral(" alt=\"Card image cap\">\r\n                    <div class=\"card-body\">\r\n                        <h5 class=\"card-title\">");
#nullable restore
#line 12 "D:\Cosas Importantes Agus\programacion\prog_tp4\tp4\Views\Home\Index.cshtml"
                                          Write(objPais.Nombre);

#line default
#line hidden
#nullable disable
            WriteLiteral("</h5>\r\n                        <button type=\"button\" class=\"btn btn-primary\" data-toggle=\"modal\" data-target=\"#ModalPais\"");
            BeginWriteAttribute("onclick", " onclick=\"", 521, "\"", 568, 3);
            WriteAttributeValue("", 531, "MostrarInformacion(\'", 531, 20, true);
#nullable restore
#line 13 "D:\Cosas Importantes Agus\programacion\prog_tp4\tp4\Views\Home\Index.cshtml"
WriteAttributeValue("", 551, objPais.Nombre, 551, 15, false);

#line default
#line hidden
#nullable disable
            WriteAttributeValue("", 566, "\')", 566, 2, true);
            EndWriteAttribute();
            WriteLiteral(">Ver info</button>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n");
#nullable restore
#line 17 "D:\Cosas Importantes Agus\programacion\prog_tp4\tp4\Views\Home\Index.cshtml"
        }
    

#line default
#line hidden
#nullable disable
            WriteLiteral(@"</div>


<!-- Modal -->
<div class=""modal fade"" id=""ModalPais"" tabindex=""-1"" role=""dialog"" aria-labelledby=""exampleModalLabel"" aria-hidden=""true"">
  <div class=""modal-dialog"" role=""document"">
    <div class=""modal-content"">
      <div class=""modal-header"">
        <h5 class=""modal-title"" id=""Titulo-Modal"">Modal Title</h5>
        <button type=""button"" class=""close"" data-dismiss=""modal"" aria-label=""Close"">
          <span aria-hidden=""true"">&times;</span>
        </button>
      </div>
      <div class=""modal-body"">
        <div id=""Poblacion""></div>
        <div id=""FechaIndependencia""></div>
        <div id=""AtractivosTuristicos""></div>
        <br>
      </div>
      <div class=""modal-footer"">
        <button type=""button"" class=""btn btn-secondary"" data-dismiss=""modal"">Close</button>
      </div>
    </div>
  </div>
</div>
");
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
