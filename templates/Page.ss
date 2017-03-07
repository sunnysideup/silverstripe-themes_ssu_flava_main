<!DOCTYPE html>
<html lang="$ContentLocale">
<head>
<% if HasItsOwnExtendedMetatags %>
    <!-- has its own ExtendedMetaTags in Page.php -->
<% else %>
    <% if ExtendedMetaTags %>
    $ExtendedMetaTags
    <% else %>
    <% base_tag %>
    <title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    $MetaTags(false)
    <% require themedCSS('reset') %>
    <% require themedCSS('typography') %>
    <% require themedCSS('form') %>
    <% require themedCSS('layout') %>
    <% require javascript('framework/thirdparty/jquery/jquery.js') %>
    <link rel="shortcut icon" href="$ThemeDir/images/favicon.ico" />
    <% end_if %>
<% end_if %>
</head>
<body id="Body$ClassName" class="mobileBrowsing">
<div id="Wrapper">
    <% include Navigation %>
    <a href="#" class="menuButton">menu</a>
    <div id="Layout">
        <% include Breadcrumbs %>
        <div id="PageSpecificHolder">
        <% if $IsStandardPage %>
            <main class="main-section content-container with-sidebar">
                <div class="typography content-padding">
                $Layout
                </div>
            </main>

            <aside>
                <div id="Sidebar" class="typography content-padding">
                    <div class="sidebarTop"></div>
                    <% include Sidebar %>
                    <div class="sidebarBottom"></div>
                </div>
            </aside>

        <% else %>
            $Layout
        <% end_if %>

        </div>

        <footer class="typography">
            <p class="backToTop"><a href="#Wrapper">back to top</a></p>
            <div id="CopyrightMessage">$SiteConfig.CopyrightNotice</div>
        </footer>

    </div>
</div>

<!-- include TemplateOverviewPageDevelopmentFooter -->
<!-- include Analytics -->
</body>
</html>
