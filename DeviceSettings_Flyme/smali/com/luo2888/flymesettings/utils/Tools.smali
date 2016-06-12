.class public Lcom/luo2888/flymesettings/utils/Tools;
.super Ljava/lang/Object;
.source "Tools.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "StockSettings"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IsInstall(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 42
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    .line 43
    .local v2, "pinfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 45
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 46
    const/4 v3, 0x1

    .line 48
    :goto_1
    return v3

    .line 43
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v3, v4

    .line 48
    goto :goto_1
.end method

.method public static Shell(Ljava/lang/String;)I
    .locals 6
    .param p0, "paramString"    # Ljava/lang/String;

    .prologue
    .line 20
    :try_start_0
    const-string v4, "StockSettings"

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    const-string v5, "su"

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 22
    .local v2, "localProcess":Ljava/lang/Process;
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 24
    .local v0, "localDataOutputStream":Ljava/io/DataOutputStream;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 25
    .local v3, "str":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 27
    const-string v4, "exit\n"

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 29
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    .line 30
    invoke-virtual {v2}, Ljava/lang/Process;->exitValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 35
    .end local v0    # "localDataOutputStream":Ljava/io/DataOutputStream;
    .end local v2    # "localProcess":Ljava/lang/Process;
    .end local v3    # "str":Ljava/lang/String;
    :goto_0
    return v4

    .line 32
    :catch_0
    move-exception v1

    .line 33
    .local v1, "localException":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 35
    const/4 v4, 0x1

    goto :goto_0
.end method
