.class public Lcom/igexin/push/e/b/e;
.super Lcom/igexin/push/e/b/f;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/igexin/push/e/b/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/igexin/push/config/k;->a:Ljava/lang/String;

    sput-object v0, Lcom/igexin/push/e/b/e;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const-wide/32 v0, 0x36ee80

    invoke-direct {p0, v0, v1}, Lcom/igexin/push/e/b/f;-><init>(J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igexin/push/e/b/e;->z:Z

    return-void
.end method

.method public static g()Lcom/igexin/push/e/b/e;
    .locals 1

    sget-object v0, Lcom/igexin/push/e/b/e;->b:Lcom/igexin/push/e/b/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/igexin/push/e/b/e;

    invoke-direct {v0}, Lcom/igexin/push/e/b/e;-><init>()V

    sput-object v0, Lcom/igexin/push/e/b/e;->b:Lcom/igexin/push/e/b/e;

    :cond_0
    sget-object v0, Lcom/igexin/push/e/b/e;->b:Lcom/igexin/push/e/b/e;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 4

    invoke-static {}, Lcom/igexin/push/core/a/e;->a()Lcom/igexin/push/core/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/a/e;->B()V

    invoke-static {}, Lcom/igexin/push/core/a/e;->a()Lcom/igexin/push/core/a/e;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/igexin/push/core/a/e;->a(J)Z

    move-result v0

    invoke-static {}, Lcom/igexin/push/f/a;->b()Z

    move-result v1

    sget-boolean v2, Lcom/igexin/push/core/g;->i:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/igexin/push/core/g;->j:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/igexin/push/core/g;->k:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/igexin/push/core/g;->m:Z

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    sget-boolean v0, Lcom/igexin/push/core/g;->m:Z

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "ReconnectTimerTask|doTaskMethod|stop"

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V

    const-wide/32 v0, 0x36ee80

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lcom/igexin/push/e/b/e;->a(JLjava/util/concurrent/TimeUnit;)I

    :goto_0
    return-void

    :cond_1
    const-string v0, "ReconnectTimerTask|doTaskMethod|do login before"

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/f;->i()Lcom/igexin/push/core/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/a/e;->d()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReconnectTimerTask|doTaskMethod|do login result|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    :cond_2
    :goto_1
    const-wide/32 v0, 0x1b7740

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lcom/igexin/push/e/b/e;->a(JLjava/util/concurrent/TimeUnit;)I

    goto :goto_0

    :cond_3
    if-nez v0, :cond_2

    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v0

    new-instance v1, Lcom/igexin/push/c/b/a;

    invoke-direct {v1}, Lcom/igexin/push/c/b/a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/igexin/a/a/b/d;->a(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/a/b/d;->d()V

    goto :goto_1
.end method

.method public final b()I
    .locals 1

    const v0, -0x7ffffff9

    return v0
.end method

.method public c()V
    .locals 0

    invoke-super {p0}, Lcom/igexin/push/e/b/f;->c()V

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public h()V
    .locals 4

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/f;->g()Lcom/igexin/push/d/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/d/j;->c()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ReconnectTimerTask|refreshDelayTime|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lcom/igexin/push/e/b/e;->a(JLjava/util/concurrent/TimeUnit;)I

    return-void
.end method
