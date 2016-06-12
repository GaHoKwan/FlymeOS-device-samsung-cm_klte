.class public Lcom/luo2888/providers/devicesettings/Tools;
.super Ljava/lang/Object;
.source "Tools.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DeviceSettingsProvider"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 28
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Shell(Ljava/lang/String;)I
    .locals 10

    .prologue
    .line 12
    move-object v0, p0

    :try_start_0
    const-string v6, "DeviceSettingsProvider"

    move-object v7, v0

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 13
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    const-string v7, "su"

    invoke-virtual {v6, v7}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    move-object v2, v6

    .line 14
    new-instance v6, Ljava/io/DataOutputStream;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v2

    invoke-virtual {v8}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v3, v6

    .line 16
    new-instance v6, Ljava/lang/StringBuffer;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 17
    move-object v6, v3

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 18
    move-object v6, v3

    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V

    .line 19
    move-object v6, v3

    const-string v7, "exit\n"

    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 20
    move-object v6, v3

    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V

    .line 21
    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/Process;->waitFor()I

    move-result v6

    .line 22
    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/Process;->exitValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    move v0, v6

    .line 27
    :goto_0
    return v0

    .line 22
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 25
    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 27
    const/4 v6, 0x1

    move v0, v6

    goto :goto_0
.end method
