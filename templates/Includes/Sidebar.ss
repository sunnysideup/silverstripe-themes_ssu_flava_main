
<div class="sidebarBox" id="SidebarChildren">
<% if Siblings %>
    <h3>Sibling Pages</h3>
    <% if Parent %>
    <p class="parentPageInfo">Other pages in the <% with Parent %><a href="$Link">$Title</a><% end_with %> section.</p>
    <% end_if %>
    <ul>
        <% loop Siblings %><li class="$FirstLast $LinkingMode"><a href="$Link">$MenuTitle</a></li><% end_loop %>
    </ul>
<% end_if %>
<% if MenuChildren %>
    <h3>In the <strong>$MenuTitle</strong> section</h3>
    <ul>
        <% loop MenuChildren %><li class="$FirstLast $LinkingMode"><a href="$Link">$MenuTitle</a></li><% end_loop %>
    </ul>
<% end_if %>
</div>


<% if SearchForm %>
<div class="sidebarBox" id="SidebarSearch">
    <h3>Still looking?</h3>
    <div class="searchFormOuter">$SearchForm</div>
</div>
<% end_if %>


<div class="sidebarBox" id="RandomImage">
    <h3>our web presence</h3>
    <p>
        Sunny Side Up has a few small sites - each with its own audience:
    </p>
    <ul>
        <li><a href="http://www.sunnysideup.co.nz/">www.sunnysideup.co.nz</a>: about Sunny Side Up;</li>
        <li><a href="http://www.silverstripe-ecommerce.com/">silverstripe-ecommerce.com</a>: our e-commerce demo;</li>
        <li><a href="http://www.ssmods.com/">ssmods.com</a>: find the world's best Silverstripe themes and modules;</li>
        <li><a href="http://www.upgradesilverstripe.com/">upgradesilverstripe.com</a>: help with upgrading your silverstripe sites; and</li>
        <li><a href="http://www.silverstripe-webdevelopment.com/">silverstripe-webdevelopment.com</a>: notes for developers.</li>
    </ul>
    <h3 id="RandomVisualThoughtHeader">Looking for more?</h3>
<% if RandomImage %>
    <p id="RandomVisualThoughtExplanation">
        Prefer dark web / hipster / random?
    <p>
    <div id="RandomVisualThought" style="background-image: url($RandomImage);" rel="$RandomImage"></div>
<% end_if %>
</div>
