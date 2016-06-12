.class public Lcom/luo2888/flymesettings/utils/Tools;
.super Ljava/lang/Object;
.source "Tools.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "StockSettings"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CheckRoot()Z
    .locals 2

    .prologue
    .line 22
    const-string v0, "su"

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/luo2888/flymesettings/utils/Tools;->execute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "uid=0(root) gid=0(root)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static IsInstall(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 49
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    .line 50
    .local v2, "pinfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 52
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 53
    const/4 v3, 0x1

    .line 55
    :goto_1
    return v3

    .line 50
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v3, v4

    .line 55
    goto :goto_1
.end method

.method public static Shell(Ljava/lang/String;)I
    .locals 6
    .param p0, "paramString"    # Ljava/lang/String;

    .prologue
    .line 27
    :try_start_0
    const-string v4, "StockSettings"

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    const-string v5, "su"

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 29
    .local v2, "localProcess":Ljava/lang/Process;
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 31
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

    .line 32
    .local v3, "str":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 34
    const-string v4, "exit\n"

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 36
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    .line 37
    invoke-virtual {v2}, Ljava/lang/Process;->exitValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 42
    .end local v0    # "localDataOutputStream":Ljava/io/DataOutputStream;
    .end local v2    # "localProcess":Ljava/lang/Process;
    .end local v3    # "str":Ljava/lang/String;
    :goto_0
    return v4

    .line 39
    :catch_0
    move-exception v1

    .line 40
    .local v1, "localException":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 42
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static execute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "shell"    # Ljava/lang/String;
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 60
    const-string v4, "StockSettings"

    .line 63
    .local v4, "localObject":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    .line 64
    .local v6, "localProcess":Ljava/lang/Process;
    if-eqz v6, :cond_1

    .line 66
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {v6}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 68
    .local v1, "localDataOutputStream":Ljava/io/DataOutputStream;
    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 70
    .local v0, "localDataInputStream":Ljava/io/DataInputStream;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 72
    const-string v9, "exit\n"

    invoke-virtual {v1, v9}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 74
    invoke-virtual {v6}, Ljava/lang/Process;->waitFor()I

    .line 77
    :goto_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 78
    .local v7, "str1":Ljava/lang/String;
    if-nez v7, :cond_0

    move-object v5, v4

    .line 94
    .end local v0    # "localDataInputStream":Ljava/io/DataInputStream;
    .end local v1    # "localDataOutputStream":Ljava/io/DataOutputStream;
    .end local v4    # "localObject":Ljava/lang/String;
    .end local v6    # "localProcess":Ljava/lang/Process;
    .end local v7    # "str1":Ljava/lang/String;
    .local v5, "localObject":Ljava/lang/String;
    :goto_1
    return-object v5

    .line 81
    .end local v5    # "localObject":Ljava/lang/String;
    .restart local v0    # "localDataInputStream":Ljava/io/DataInputStream;
    .restart local v1    # "localDataOutputStream":Ljava/io/DataOutputStream;
    .restart local v4    # "localObject":Ljava/lang/String;
    .restart local v6    # "localProcess":Ljava/lang/Process;
    .restart local v7    # "str1":Ljava/lang/String;
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 82
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    .line 83
    .local v8, "str2":Ljava/lang/String;
    move-object v4, v8

    .line 84
    goto :goto_0

    .line 86
    .end local v0    # "localDataInputStream":Ljava/io/DataInputStream;
    .end local v1    # "localDataOutputStream":Ljava/io/DataOutputStream;
    .end local v6    # "localProcess":Ljava/lang/Process;
    .end local v7    # "str1":Ljava/lang/String;
    .end local v8    # "str2":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 88
    .local v2, "localIOException":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v4

    .line 89
    .end local v4    # "localObject":Ljava/lang/String;
    .restart local v5    # "localObject":Ljava/lang/String;
    goto :goto_1

    .line 90
    .end local v2    # "localIOException":Ljava/io/IOException;
    .end local v5    # "localObject":Ljava/lang/String;
    .restart local v4    # "localObject":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 92
    .local v3, "localInterruptedException":Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    .end local v3    # "localInterruptedException":Ljava/lang/InterruptedException;
    :cond_1
    move-object v5, v4

    .line 94
    .end local v4    # "localObject":Ljava/lang/String;
    .restart local v5    # "localObject":Ljava/lang/String;
    goto :goto_1
.end method
