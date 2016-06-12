.class public Lcom/luo2888/providers/devicesettings/Startup;
.super Landroid/content/BroadcastReceiver;
.source "Startup.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 28
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 27
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const-string v4, "/system/bin/restore_devicesettings"

    invoke-static {v4}, Lcom/luo2888/providers/devicesettings/Tools;->Shell(Ljava/lang/String;)I

    move-result v4

    return-void
.end method
