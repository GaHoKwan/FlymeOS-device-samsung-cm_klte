.class Lcom/luo2888/flymesettings/DeviceSettings$2;
.super Ljava/lang/Thread;
.source "DeviceSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luo2888/flymesettings/DeviceSettings;->Root_ProgressDialog()V
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
    .line 1304
    iput-object p1, p0, Lcom/luo2888/flymesettings/DeviceSettings$2;->this$0:Lcom/luo2888/flymesettings/DeviceSettings;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1310
    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 1311
    invoke-static {}, Lcom/luo2888/flymesettings/utils/Tools;->CheckRoot()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1315
    :goto_0
    iget-object v1, p0, Lcom/luo2888/flymesettings/DeviceSettings$2;->this$0:Lcom/luo2888/flymesettings/DeviceSettings;

    # getter for: Lcom/luo2888/flymesettings/DeviceSettings;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/luo2888/flymesettings/DeviceSettings;->access$000(Lcom/luo2888/flymesettings/DeviceSettings;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1316
    return-void

    .line 1312
    :catch_0
    move-exception v0

    .line 1313
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
