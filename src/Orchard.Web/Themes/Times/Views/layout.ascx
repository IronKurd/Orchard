﻿<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<BaseViewModel>" %>
<%@ Import Namespace="Orchard.Mvc.ViewModels" %>
<%@ Import Namespace="Orchard.Mvc.Html" %>
<%Html.RegisterStyle("site.css");%>
<%--Top Navigation--%>
<%-- todo:(nheskew) this will need to be a generated menu --%>
<% Html.Include("menu"); %>
<div id="wrapper">
    <div id="header">
        <h1>
            My Orchard Site</h1>
        <%-- todo:(nheskew) this will need to all go in the header zone (user widget) --%>
        <% Html.Include("user"); %>
    </div>
    <div id="main">
        <div id="contentMain">
            <ul>
                <li>
                    <%--Main Content--%>
                    <%Html.ZoneBody("content");%>
                </li>
            </ul>
        </div>
        <div id="sideBar1">
            <ul>
                <li>
                    <h3>
                        Heading</h3>
                </li>
                <li>
                    <p class="small">
                        Paragraph - Small</p>
                </li>
            </ul>
        </div>
        <%-- End Content --%>
        <%Html.Zone("footer");%>
        <% Html.Include("footer"); %>
    </div>
</div>
