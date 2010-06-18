﻿<%@ Control Language="C#" AutoEventWireup="true" Inherits="ViewUserControl<FeedModel>" %>
<div class="popular">
    <h3><%= Model.Feed.Title.Text %></h3>
    <% if (Model.EntryCount > 0) { %>
      <ul>
	     <% foreach (AtomEntry entry in Model.Feed.Entries) { %>
		    <li><a href="<%= Url.RouteIdUrl("BlogEntry", entry.Id) %>"><%= entry.Title.ToString() %></a>
		    <br /><span>updated <%= Html.DateTimeAgoAbbreviation(entry.Updated) %></span></li>
	     <% } %>
      </ul>
    <% } else { %>
        <div style="color:Red;">There is nothing to display.</div><br />
    <% } %>
</div>
