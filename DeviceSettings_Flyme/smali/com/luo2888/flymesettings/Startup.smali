.class public Lcom/luo2888/flymesettings/Startup;
.super Landroid/content/BroadcastReceiver;
.source "Startup.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bootintent"    # Landroid/content/Intent;

    .prologue
    .line 27
    invoke-static {p1}, Lcom/luo2888/flymesettings/CABC;->restore(Landroid/content/Context;)V

    .line 28
    invoke-static {p1}, Lcom/luo2888/flymesettings/mDNIeScenario;->restore(Landroid/content/Context;)V

    .line 29
    invoke-static {p1}, Lcom/luo2888/flymesettings/mDNIeMode;->restore(Landroid/content/Context;)V

    .line 30
    invoke-static {p1}, Lcom/luo2888/flymesettings/VibratorTuningPreference;->restore(Landroid/content/Context;)V

    .line 31
    return-void
.end method
