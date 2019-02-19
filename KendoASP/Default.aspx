<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="KendoASP._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    
    <div class="Well">

        <div id="Grid">

        </div>

    </div>
    <script src="Scripts/Kendo/jquery.min.js"></script>
    <script src="Scripts/Kendo/kendo.all.min.js"></script>

    <link href="Content/kendo.default.min.css" rel="stylesheet" />
    <link href="Content/kendo.common.min.css" rel="stylesheet" />
    <link href="Content/kendo.default.mobile.min.css" rel="stylesheet" />
    <script src="Scripts/product.js"></script>
    <script>
                $(document).ready(function() {
                    $("#Grid").kendoGrid({
                        dataSource: {
                            data: products,
                            schema: {
                                model: {
                                    fields: {
                                        ProductName: { type: "string" },
                                        UnitPrice: { type: "number" },
                                        UnitsInStock: { type: "number" },
                                        Discontinued: { type: "boolean" },
                                        ReorderLevel: {type : "number"}
                                    }
                                }
                            },
                            pageSize: 20
                        },
                        height: 550,
                        scrollable: true,
                        sortable: true,
                        filterable: true,
                        pageable: {
                            input: true,
                            numeric: false
                        },
                        columns: [
                            "ProductName",
                            { field: "UnitPrice", title: "Unit Price", format: "{0:c}", width: "130px" },
                            { field: "UnitsInStock", title: "Units In Stock", width: "130px" },
                            { field: "ReorderLevel", title: "Reorder Level", width:"190px" },
                            { field: "Discontinued", width: "130px" }
                        ]
                    });
                });
            </script>

</asp:Content>
