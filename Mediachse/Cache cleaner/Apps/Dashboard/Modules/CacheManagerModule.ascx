<%@ Control Language="C#" AutoEventWireup="false"
    Inherits="Mediachase.Web.Console.BaseClasses.BaseUserControl" %>
<%@ Import Namespace="System.Linq" %>
<%@ Import Namespace="System.Web.Caching" %>
<%@ Import Namespace="EPiServer" %>
<script language="C#" runat="server">
    protected override void OnInit(EventArgs e)
    {
        CacheEntries.Text = HttpRuntime.Cache.Count.ToString();
    }

    protected void ClearCacheClick(Object sender, EventArgs e)
    {
        CacheManager.Clear();
        CacheEntries.Text = HttpRuntime.Cache.Count.ToString();
    }
</script>
<style>
    div.clearBtn input {
        border-radius: 3px;
        background-color: #ddd;
        background-image: url(../Shell/styles/Images/Uploader/delete2.png);
        background-position: left;
        background-repeat: no-repeat;
        cursor: pointer;
        width: 75px;
        border: none;
        margin-left: 10px;
        font-size: 10pt;
    }
</style>
<div class="db-panel-outer">
    <h1 style="margin-left: 15px;">Monitoring and clearing the cache on current site</h1>
    <div class="db-panel">
        <div class="summary-row" style="height: 25px;">
            <div class="summary-item">
                <div class="body">
                    <div class="stat">
                        <div class="image" style="margin-top: 2px;">
                            <asp:Image ID="Image1" runat="server" ImageUrl="~/Apps/Shell/styles/Images/metaclass.gif" />
                        </div>
                        <div class="name">
                            Cache entries:
                        </div>
                        <div class="value">
                            <asp:Label ID="CacheEntries" runat="server" />
                        </div>
                        <div style="float: left;" class="clearBtn">
                            <asp:Button ID="ClearButton" Text="Clear"
                                OnClick="ClearCacheClick"
                                runat="server" />
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
