.class public Lcom/igexin/push/core/d/f;
.super Lcom/igexin/push/e/a/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/igexin/push/e/a/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/igexin/push/core/d/f;->a()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 4

    invoke-static {}, Lcom/igexin/push/core/c/f;->a()Lcom/igexin/push/core/c/f;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/igexin/push/core/c/f;->d(J)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-> get idc config "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a([B)V
    .locals 4

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, v0}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/a/b/a;->c([B)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-> get idc config server resp data : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/igexin/push/config/a;->a()Lcom/igexin/push/config/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/igexin/push/config/a;->a(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/igexin/push/config/n;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/push/core/c/f;->a()Lcom/igexin/push/core/c/f;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/igexin/push/core/c/f;->d(J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/igexin/push/core/c/f;->a()Lcom/igexin/push/core/c/f;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/igexin/push/core/c/f;->d(J)Z

    throw v0
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
