
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
    <h3>In the <i>$MenuTitle</i> section</h3>
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
        Sunny Side Up is a Wellington, Aotearoa (NZ) based web development company.
        Our web-sites include:
    </p>
    <ul>
        <li><a href="http://www.sunnysideup.co.nz/">www.sunnysideup.co.nz</a>: about Sunny Side Up;</li>
        <li><a href="http://www.ssmods.com/">ssmods.com</a>: find the world's best Silverstripe Modules;</li>
        <li><a href="http://www.silverstripe-ecommerce.com/">silverstripe-ecommerce.com</a>: our e-commerce demo;</li>
        <li><a href="http://www.upgradesilverstripe.com/">upgradesilverstripe.com</a>: helps you to upgrade your silverstripe sites; and</li>
        <li><a href="http://www.silverstripe-webdevelopment.com/">silverstripe-webdevelopment.com</a>: some developer notes.</li>
    </ul>
<% if RandomImage %>
    <p>
        To make web-tech speak a bit more flavoursome, here is a picture from the real world to spice it up:
    </p>
    <div id="RandomVisualThought" style="background-image: url($RandomImage.URL); width: 200px; height: 200px;" rel="$RandomImage.URL"></div>
<% end_if %>
</div>
