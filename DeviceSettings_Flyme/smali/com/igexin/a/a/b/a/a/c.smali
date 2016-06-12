.class public Lcom/igexin/a/a/b/a/a/c;
.super Lcom/igexin/a/a/b/f;


# instance fields
.field e:Lcom/igexin/a/a/b/a/a/e;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/igexin/a/a/b/f;-><init>(Ljava/lang/String;Lcom/igexin/a/a/b/c;)V

    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/c;->a:Ljava/lang/String;

    const-string v1, "disConnect"

    const-string v2, "socket"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/a/a/b/a/a/c;->a:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igexin/a/a/b/a/a/c;->C:Z

    return-void
.end method


# virtual methods
.method public a_()V
    .locals 4

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/igexin/a/a/b/f;->a_()V

    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/c;->e:Lcom/igexin/a/a/b/a/a/e;

    if-nez v0, :cond_1

    const-string v0, "DisSocketTask|run, nioSocketTask = null, return"

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DisSocketTask|run|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/igexin/a/a/b/a/a/c;->e:Lcom/igexin/a/a/b/a/a/e;

    iget-object v2, v2, Lcom/igexin/a/a/b/a/a/e;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/c;->e:Lcom/igexin/a/a/b/a/a/e;

    iget-object v0, v0, Lcom/igexin/a/a/b/a/a/e;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/igexin/a/a/b/a/a/c;->e:Lcom/igexin/a/a/b/a/a/e;

    iget-object v2, v2, Lcom/igexin/a/a/b/a/a/e;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-nez v2, :cond_2

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0xa

    if-le v0, v3, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisSocketTask|run2|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/a/a/b/a/a/c;->e:Lcom/igexin/a/a/b/a/a/e;

    iget-object v1, v1, Lcom/igexin/a/a/b/a/a/e;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/c;->e:Lcom/igexin/a/a/b/a/a/e;

    iget-object v0, v0, Lcom/igexin/a/a/b/a/a/e;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DisSocketTask|nioSocketTask wakeUp"

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/c;->e:Lcom/igexin/a/a/b/a/a/e;

    invoke-virtual {v0}, Lcom/igexin/a/a/b/a/a/e;->i()V

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public final b()I
    .locals 1

    const/16 v0, -0x7fd

    return v0
.end method

.method public d()V
    .locals 1

    invoke-super {p0}, Lcom/igexin/a/a/b/f;->d()V

    invoke-static {}, Lcom/igexin/a/a/b/a/a/e;->h()Lcom/igexin/a/a/b/a/a/e;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/a/a/b/a/a/c;->e:Lcom/igexin/a/a/b/a/a/e;

    const-string v0, "DisSocketTask|initTask"

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method protected e()V
    .locals 0

    return-void
.end method
