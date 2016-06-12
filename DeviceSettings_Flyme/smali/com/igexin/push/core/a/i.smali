.class public Lcom/igexin/push/core/a/i;
.super Lcom/igexin/push/core/a/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/igexin/push/core/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/igexin/a/a/d/d;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 10

    const/4 v0, 0x0

    const-wide/32 v8, 0x5265c00

    const/4 v1, 0x1

    const-wide/16 v6, 0x0

    instance-of v2, p1, Lcom/igexin/push/c/c/k;

    if-eqz v2, :cond_8

    sput-wide v6, Lcom/igexin/push/core/g;->D:J

    sget-boolean v2, Lcom/igexin/push/core/g;->m:Z

    if-nez v2, :cond_8

    invoke-static {}, Lcom/igexin/push/core/c/w;->c()V

    check-cast p1, Lcom/igexin/push/c/c/k;

    iget-boolean v2, p1, Lcom/igexin/push/c/c/k;->a:Z

    if-eqz v2, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loginRsp|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/igexin/push/core/g;->s:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|success"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCidBroadcast|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/igexin/push/core/g;->n:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V

    sget-boolean v2, Lcom/igexin/push/core/g;->n:Z

    if-nez v2, :cond_0

    invoke-static {}, Lcom/igexin/push/core/a/e;->a()Lcom/igexin/push/core/a/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/igexin/push/core/a/e;->l()V

    sput-boolean v1, Lcom/igexin/push/core/g;->n:Z

    :cond_0
    sput-boolean v1, Lcom/igexin/push/core/g;->m:Z

    invoke-static {}, Lcom/igexin/push/core/a/e;->a()Lcom/igexin/push/core/a/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/igexin/push/core/a/e;->m()V

    invoke-static {}, Lcom/igexin/push/core/a/e;->a()Lcom/igexin/push/core/a/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/igexin/push/core/a/e;->g()V

    sget-object v2, Lcom/igexin/push/core/g;->z:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "LoginResultAction device id is empty, get device id from server ++++++++++++"

    invoke-static {v2}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/push/core/a/e;->a()Lcom/igexin/push/core/a/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/igexin/push/core/a/e;->h()V

    :cond_1
    invoke-static {}, Lcom/igexin/push/f/b;->f()V

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/igexin/push/core/g;->H:J

    sub-long/2addr v2, v4

    invoke-static {}, Lcom/igexin/push/core/a/e;->a()Lcom/igexin/push/core/a/e;

    move-result-object v4

    const-string v5, "ua"

    invoke-virtual {v4, v5}, Lcom/igexin/push/core/a/e;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    const-string v5, "1"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    :goto_0
    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/igexin/push/config/l;->h:Z

    if-eqz v0, :cond_3

    const-wide/32 v4, 0xf731400

    sub-long/2addr v2, v4

    cmp-long v0, v2, v6

    if-lez v0, :cond_3

    invoke-static {}, Lcom/igexin/push/core/a/e;->a()Lcom/igexin/push/core/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/a/e;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/igexin/push/core/a/e;->a()Lcom/igexin/push/core/a/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/igexin/push/core/a/e;->p()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/igexin/a/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-wide v2, Lcom/igexin/push/core/g;->H:J

    cmp-long v0, v2, v6

    if-nez v0, :cond_3

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/igexin/push/core/g;->H:J

    invoke-static {}, Lcom/igexin/push/core/a/e;->a()Lcom/igexin/push/core/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/a/e;->o()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :cond_3
    :goto_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/igexin/push/core/g;->G:J

    sub-long/2addr v2, v4

    sub-long/2addr v2, v8

    cmp-long v0, v2, v6

    if-lez v0, :cond_4

    invoke-static {}, Lcom/igexin/push/core/a/e;->a()Lcom/igexin/push/core/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/a/e;->j()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/igexin/push/core/g;->F:J

    sub-long/2addr v2, v4

    sub-long/2addr v2, v8

    cmp-long v0, v2, v6

    if-lez v0, :cond_6

    sget-object v0, Lcom/igexin/push/core/g;->z:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/igexin/push/core/g;->av:Lcom/igexin/push/e/b/f;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/igexin/push/core/g;->av:Lcom/igexin/push/e/b/f;

    invoke-virtual {v0}, Lcom/igexin/push/e/b/f;->t()V

    const/4 v0, 0x0

    sput-object v0, Lcom/igexin/push/core/g;->av:Lcom/igexin/push/e/b/f;

    :cond_5
    new-instance v0, Lcom/igexin/push/core/a/j;

    const-wide/16 v2, 0x7530

    invoke-direct {v0, p0, v2, v3}, Lcom/igexin/push/core/a/j;-><init>(Lcom/igexin/push/core/a/i;J)V

    sput-object v0, Lcom/igexin/push/core/g;->av:Lcom/igexin/push/e/b/f;

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v0

    sget-object v2, Lcom/igexin/push/core/g;->av:Lcom/igexin/push/e/b/f;

    invoke-virtual {v0, v2}, Lcom/igexin/push/core/f;->a(Lcom/igexin/push/e/b/f;)Z

    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/igexin/push/core/g;->F:J

    :cond_6
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/igexin/push/core/g;->K:J

    sub-long/2addr v2, v4

    sub-long/2addr v2, v8

    cmp-long v0, v2, v6

    if-lez v0, :cond_7

    new-instance v0, Lcom/igexin/push/e/a/c;

    new-instance v2, Lcom/igexin/push/core/d/g;

    invoke-static {}, Lcom/igexin/push/config/SDKUrlConfig;->getConfigServiceUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/igexin/push/core/d/g;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lcom/igexin/push/e/a/c;-><init>(Lcom/igexin/push/e/a/b;)V

    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Lcom/igexin/a/a/b/d;->a(Lcom/igexin/a/a/d/d;ZZ)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_7
    :goto_4
    invoke-static {}, Lcom/igexin/push/core/c/f;->a()Lcom/igexin/push/core/c/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/c/f;->b()V

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/f;->h()Lcom/igexin/push/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/d/c;->a()Z

    :cond_8
    :goto_5
    return v1

    :cond_9
    invoke-static {}, Lcom/igexin/push/core/a/e;->a()Lcom/igexin/push/core/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/a/e;->i()V

    goto :goto_3

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loginRsp|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/igexin/push/core/g;->s:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "|failed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V

    const-string v0, "LoginResultAction login failed, clear session or cid"

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/push/core/c/f;->a()Lcom/igexin/push/core/c/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/c/f;->c()Z

    invoke-static {}, Lcom/igexin/push/core/a/e;->a()Lcom/igexin/push/core/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/a/e;->e()V

    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v0

    new-instance v2, Lcom/igexin/push/c/b/b;

    invoke-direct {v2}, Lcom/igexin/push/c/b/b;-><init>()V

    invoke-virtual {v0, v2}, Lcom/igexin/a/a/b/d;->a(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/a/b/d;->d()V

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto/16 :goto_2

    :catch_2
    move-exception v0

    goto/16 :goto_1

    :cond_b
    move v0, v1

    goto/16 :goto_0
.end method
