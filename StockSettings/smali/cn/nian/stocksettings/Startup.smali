.class public Lcn/nian/stocksettings/Startup;
.super Landroid/content/BroadcastReceiver;
.source "Startup.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "paramContext"    # Landroid/content/Context;
    .param p2, "paramIntent"    # Landroid/content/Intent;

    .prologue
    .line 13
    invoke-static {p1}, Lcn/nian/stocksettings/StockSettingsActivity;->RestoreCABC(Landroid/content/Context;)V

    .line 33
    return-void
.end method
