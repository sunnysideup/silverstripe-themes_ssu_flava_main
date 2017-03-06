
<% if $Siblings || $MenuChildren %>
<div class="sidebarBox" id="SidebarChildren">
<% if Siblings %>
    <h3>For Also See Peeps</h3>
    <% if Parent %>
    <p class="parentPageInfo">Other pages in the <% with Parent %><a href="$Link">$Title</a><% end_with %> section.</p>
    <% end_if %>
    <ul>
        <% loop Siblings %><li class="$FirstLast $LinkingMode"><a href="$Link">$MenuTitle</a></li><% end_loop %>
    </ul>
<% end_if %>
<% if MenuChildren %>
    <h3>For <strong>$MenuTitle</strong> enthusiasts</h3>
    <ul>
        <% loop MenuChildren %><li class="$FirstLast $LinkingMode"><a href="$Link">$MenuTitle</a></li><% end_loop %>
    </ul>
<% end_if %>
</div>
<% end_if %>


<% if SearchForm %>
<div class="sidebarBox" id="SidebarSearch">
    <h3>For Searchers</h3>
    <div class="searchFormOuter">$SearchForm</div>
</div>
<% end_if %>


<div class="sidebarBox" id="RandomImage">
    <h3>For Developers</h3>
    <p>
        Sunny Side Up has a few small sites - each with its own audience:
    </p>
    <ul>
        <li><a href="http://www.silverstripe-ecommerce.com/">silverstripe-ecommerce.com</a>: our e-commerce demo;</li>
        <li><a href="http://www.ssmods.com/">ssmods.com</a>: find the world's best Silverstripe themes and modules;</li>
        <li><a href="http://www.upgradesilverstripe.com/">upgradesilverstripe.com</a>: help with upgrading your silverstripe sites; and</li>
        <li><a href="http://www.silverstripe-webdevelopment.com/">silverstripe-webdevelopment.com</a>: notes for developers.</li>
    </ul>
    <% if RandomImage %>
    <h3 id="RandomVisualThoughtHeader">For Hipsters</h3>
    <div id="RandomVisualThought" style="background-image: url($RandomImage);" rel="$RandomImage"></div>
    <p id="RandomVisualThoughtExplanation">
        Prefer dark web / hipster / random?
    <p>
<% end_if %>
</div>
