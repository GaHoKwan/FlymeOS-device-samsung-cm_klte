.class Lcom/luo2888/flymesettings/DeviceSettings$3;
.super Landroid/os/Handler;
.source "DeviceSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/luo2888/flymesettings/DeviceSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/luo2888/flymesettings/DeviceSettings;


# direct methods
.method constructor <init>(Lcom/luo2888/flymesettings/DeviceSettings;)V
    .locals 0

    .prologue
    .line 1320
    iput-object p1, p0, Lcom/luo2888/flymesettings/DeviceSettings$3;->this$0:Lcom/luo2888/flymesettings/DeviceSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1326
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings$3;->this$0:Lcom/luo2888/flymesettings/DeviceSettings;

    # getter for: Lcom/luo2888/flymesettings/DeviceSettings;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/luo2888/flymesettings/DeviceSettings;->access$100(Lcom/luo2888/flymesettings/DeviceSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 1327
    invoke-static {}, Lcom/luo2888/flymesettings/utils/Tools;->CheckRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1328
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings$3;->this$0:Lcom/luo2888/flymesettings/DeviceSettings;

    invoke-virtual {v0}, Lcom/luo2888/flymesettings/DeviceSettings;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f07006d

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1332
    :goto_0
    return-void

    .line 1330
    :cond_0
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings$3;->this$0:Lcom/luo2888/flymesettings/DeviceSettings;

    invoke-virtual {v0}, Lcom/luo2888/flymesettings/DeviceSettings;->DialogAttentionRoot()V

    goto :goto_0
.end method
