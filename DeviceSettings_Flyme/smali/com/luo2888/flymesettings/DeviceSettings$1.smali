.class Lcom/luo2888/flymesettings/DeviceSettings$1;
.super Ljava/lang/Object;
.source "DeviceSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luo2888/flymesettings/DeviceSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
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
    .line 287
    iput-object p1, p0, Lcom/luo2888/flymesettings/DeviceSettings$1;->this$0:Lcom/luo2888/flymesettings/DeviceSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 289
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 290
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.android.fileexplorer"

    const-string v3, "com.android.fileexplorer.FileExplorerTabActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    .local v0, "filemanager":Landroid/content/ComponentName;
    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    const-string v2, "*/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 296
    :try_start_0
    iget-object v2, p0, Lcom/luo2888/flymesettings/DeviceSettings$1;->this$0:Lcom/luo2888/flymesettings/DeviceSettings;

    const-string v3, "ZIP"

    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/luo2888/flymesettings/DeviceSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    :goto_0
    return-void

    .line 299
    :catch_0
    move-exception v2

    goto :goto_0
.end method
