.class public final Lcom/igexin/a/a/b/a/a/e;
.super Lcom/igexin/a/a/b/f;


# static fields
.field static volatile k:Lcom/igexin/a/a/b/a/a/e;


# instance fields
.field e:Ljava/nio/channels/Selector;

.field f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field volatile h:Z

.field final i:J

.field j:I

.field volatile l:J

.field volatile m:J

.field volatile n:J

.field o:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field p:Ljava/util/List;

.field q:Lcom/igexin/a/a/b/a/a/d;

.field r:Ljava/nio/ByteBuffer;

.field s:Z

.field t:I

.field final u:Ljava/util/Comparator;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/igexin/a/a/b/c;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/igexin/a/a/b/f;-><init>(ILjava/lang/String;Lcom/igexin/a/a/b/c;)V

    const-wide/16 v0, 0x3a98

    iput-wide v0, p0, Lcom/igexin/a/a/b/a/a/e;->i:J

    iput v2, p0, Lcom/igexin/a/a/b/a/a/e;->j:I

    iput-wide v4, p0, Lcom/igexin/a/a/b/a/a/e;->l:J

    iput-wide v4, p0, Lcom/igexin/a/a/b/a/a/e;->m:J

    iput-wide v4, p0, Lcom/igexin/a/a/b/a/a/e;->n:J

    iput-boolean v2, p0, Lcom/igexin/a/a/b/a/a/e;->s:Z

    new-instance v0, Lcom/igexin/a/a/b/a/a/f;

    invoke-direct {v0, p0}, Lcom/igexin/a/a/b/a/a/f;-><init>(Lcom/igexin/a/a/b/a/a/e;)V

    iput-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->u:Ljava/util/Comparator;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->o:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->p:Ljava/util/List;

    const v0, 0xf000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->r:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/igexin/a/a/b/c;)Lcom/igexin/a/a/b/a/a/e;
    .locals 2

    sget-object v0, Lcom/igexin/a/a/b/a/a/e;->k:Lcom/igexin/a/a/b/a/a/e;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/igexin/a/a/b/a/a/e;->k:Lcom/igexin/a/a/b/a/a/e;

    iget-boolean v0, v0, Lcom/igexin/a/a/b/a/a/e;->E:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/igexin/a/a/b/a/a/e;->k:Lcom/igexin/a/a/b/a/a/e;

    iget-boolean v0, v0, Lcom/igexin/a/a/b/a/a/e;->w:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/igexin/a/a/b/a/a/e;->k:Lcom/igexin/a/a/b/a/a/e;

    iget-object v0, v0, Lcom/igexin/a/a/b/a/a/e;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NioSocketTask|IllegalArgumentException socket.url"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/igexin/a/a/b/a/a/e;->k:Lcom/igexin/a/a/b/a/a/e;

    iget-object v1, v1, Lcom/igexin/a/a/b/a/a/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " != "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    sget-object v0, Lcom/igexin/a/a/b/a/a/e;->k:Lcom/igexin/a/a/b/a/a/e;

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NioSocketTask|getInstance, new niosocket url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/igexin/a/a/b/a/a/e;

    const/16 v1, -0x7ff

    invoke-direct {v0, v1, p0, p1}, Lcom/igexin/a/a/b/a/a/e;-><init>(ILjava/lang/String;Lcom/igexin/a/a/b/c;)V

    sput-object v0, Lcom/igexin/a/a/b/a/a/e;->k:Lcom/igexin/a/a/b/a/a/e;

    goto :goto_0
.end method

.method public static h()Lcom/igexin/a/a/b/a/a/e;
    .locals 1

    sget-object v0, Lcom/igexin/a/a/b/a/a/e;->k:Lcom/igexin/a/a/b/a/a/e;

    return-object v0
.end method


# virtual methods
.method final a(Ljava/nio/channels/SocketChannel;)V
    .locals 8

    const-string v0, "niosockettask|toRead"

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->a(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->r:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    if-gez v0, :cond_1

    const-string v0, "niosockettask|socketread|-1|"

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->a(Ljava/lang/String;)V

    iget v0, p0, Lcom/igexin/a/a/b/a/a/e;->t:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/igexin/a/a/b/a/a/e;->t:I

    iget v0, p0, Lcom/igexin/a/a/b/a/a/e;->t:I

    const/16 v1, 0x14

    if-le v0, v1, :cond_2

    const/4 v0, 0x0

    iput v0, p0, Lcom/igexin/a/a/b/a/a/e;->t:I

    new-instance v0, Ljava/io/EOFException;

    const-string v1, "NioConnection Read EOF!"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "niosockettask|read exception|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/EOFException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez v0, :cond_3

    :try_start_1
    const-string v0, "niosockettask|socketread|0|"

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->a(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 v1, 0x0

    iput v1, p0, Lcom/igexin/a/a/b/a/a/e;->j:I

    iget-object v1, p0, Lcom/igexin/a/a/b/a/a/e;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/igexin/a/a/b/a/a/e;->l:J

    iget-object v1, p0, Lcom/igexin/a/a/b/a/a/e;->r:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/igexin/a/a/b/a/a/e;->r:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    sget-boolean v2, Lcom/igexin/a/a/b/d;->f:Z

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v2

    iget-wide v4, v2, Lcom/igexin/a/a/b/d;->d:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, v2, Lcom/igexin/a/a/b/d;->d:J

    :goto_1
    iget-object v1, p0, Lcom/igexin/a/a/b/a/a/e;->b:Lcom/igexin/a/a/b/c;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/igexin/a/a/b/a/a/e;->b:Lcom/igexin/a/a/b/c;

    iget-object v2, p0, Lcom/igexin/a/a/b/a/a/e;->d:Lcom/igexin/a/a/b/e;

    iget-object v3, p0, Lcom/igexin/a/a/b/a/a/e;->r:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p0, v2, v3}, Lcom/igexin/a/a/b/c;->c(Lcom/igexin/a/a/b/f;Lcom/igexin/a/a/b/e;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v1, p0, Lcom/igexin/a/a/b/a/a/e;->r:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v2

    iget-wide v4, v2, Lcom/igexin/a/a/b/d;->b:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, v2, Lcom/igexin/a/a/b/d;->b:J
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "niosockettask|read exception|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V

    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
.end method

.method public a_()V
    .locals 9

    const/4 v2, 0x1

    const/4 v8, 0x0

    const-wide/16 v6, 0x0

    invoke-super {p0}, Lcom/igexin/a/a/b/f;->a_()V

    const-string v0, "niosockettask|run"

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->d:Lcom/igexin/a/a/b/e;

    if-nez v0, :cond_3

    :try_start_0
    invoke-virtual {p0}, Lcom/igexin/a/a/b/a/a/e;->l()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "niosockettask|wakelock|connect|off"

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/igexin/a/a/b/a/a/e;->l()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    invoke-virtual {p0}, Lcom/igexin/a/a/b/a/a/e;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/igexin/a/a/b/a/a/e;->l()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/igexin/a/a/b/a/a/e;->l()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const-string v0, "niosockettask|wakelock|connect|on"

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->a(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/igexin/a/a/b/a/a/e;->l()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/igexin/a/a/b/a/a/e;->l()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const-string v1, "niosockettask|wakelock|connect|on"

    invoke-static {v1}, Lcom/igexin/a/a/c/a;->a(Ljava/lang/String;)V

    :cond_2
    throw v0

    :cond_3
    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->q:Lcom/igexin/a/a/b/a/a/d;

    iget-boolean v0, v0, Lcom/igexin/a/a/b/a/a/d;->b:Z

    if-eqz v0, :cond_6

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "niosockettask|close|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/a/a/b/a/a/e;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/a/a/b/a/a/e;->q:Lcom/igexin/a/a/b/a/a/d;

    iget-boolean v1, v1, Lcom/igexin/a/a/b/a/a/d;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/igexin/a/a/b/a/a/b;

    invoke-direct {v0}, Lcom/igexin/a/a/b/a/a/b;-><init>()V

    iput v2, v0, Lcom/igexin/a/a/b/a/a/b;->a:I

    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/igexin/a/a/b/d;->a(Ljava/lang/Object;)Z

    const-string v0, "NioSocketTask|DisConnectResult responseTask"

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V

    :cond_5
    const-string v0, "NioSocketTask|ClosedChannelException"

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V

    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0

    :cond_6
    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->o:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->q:Lcom/igexin/a/a/b/a/a/d;

    invoke-virtual {v0, v2}, Lcom/igexin/a/a/b/a/a/d;->b(Z)V

    :cond_7
    iget-wide v0, p0, Lcom/igexin/a/a/b/a/a/e;->l:J

    cmp-long v0, v0, v6

    if-gez v0, :cond_8

    iput-wide v6, p0, Lcom/igexin/a/a/b/a/a/e;->l:J

    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/igexin/a/a/b/a/a/e;->m:J

    :try_start_1
    invoke-virtual {p0}, Lcom/igexin/a/a/b/a/a/e;->l()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    if-eqz v0, :cond_9

    const-string v0, "niosockettask|wakelock|select|off"

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/igexin/a/a/b/a/a/e;->l()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_9
    iget-wide v0, p0, Lcom/igexin/a/a/b/a/a/e;->l:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_b

    sget-object v0, Lcom/igexin/a/a/b/a/a/e;->P:Lcom/igexin/a/a/d/e;

    iget-wide v2, p0, Lcom/igexin/a/a/b/a/a/e;->m:J

    iget-wide v4, p0, Lcom/igexin/a/a/b/a/a/e;->l:J

    add-long/2addr v2, v4

    sget-wide v4, Lcom/igexin/a/a/d/e;->x:J

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/igexin/a/a/d/e;->b(J)V

    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->e:Ljava/nio/channels/Selector;

    iget-wide v2, p0, Lcom/igexin/a/a/b/a/a/e;->l:J

    invoke-virtual {v0, v2, v3}, Ljava/nio/channels/Selector;->select(J)I

    move-result v0

    sget-object v1, Lcom/igexin/a/a/b/a/a/e;->P:Lcom/igexin/a/a/d/e;

    invoke-virtual {v1}, Lcom/igexin/a/a/d/e;->f()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    invoke-virtual {p0}, Lcom/igexin/a/a/b/a/a/e;->l()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lcom/igexin/a/a/b/a/a/e;->l()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const-string v1, "niosockettask|wakelock|select|on"

    invoke-static {v1}, Lcom/igexin/a/a/c/a;->a(Ljava/lang/String;)V

    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/igexin/a/a/b/a/a/e;->m:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/igexin/a/a/b/a/a/e;->n:J

    iget v1, p0, Lcom/igexin/a/a/b/a/a/e;->j:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/igexin/a/a/b/a/a/e;->j:I

    iget v1, p0, Lcom/igexin/a/a/b/a/a/e;->j:I

    const/16 v2, 0x1e

    if-le v1, v2, :cond_d

    const-string v0, "niosockettask|selectorexception"

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V

    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0

    :cond_b
    :try_start_2
    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->e:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->select()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Lcom/igexin/a/a/b/a/a/e;->l()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {p0}, Lcom/igexin/a/a/b/a/a/e;->l()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const-string v1, "niosockettask|wakelock|select|on"

    invoke-static {v1}, Lcom/igexin/a/a/c/a;->a(Ljava/lang/String;)V

    :cond_c
    throw v0

    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "niosockettask|selectedCount|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/igexin/a/a/c/a;->a(Ljava/lang/String;)V

    if-lez v0, :cond_11

    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->e:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SocketChannel;

    invoke-virtual {p0, v1}, Lcom/igexin/a/a/b/a/a/e;->b(Ljava/nio/channels/SocketChannel;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/igexin/a/a/b/a/a/e;->l:J

    :cond_f
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    invoke-virtual {p0, v0}, Lcom/igexin/a/a/b/a/a/e;->a(Ljava/nio/channels/SocketChannel;)V

    goto :goto_2

    :cond_10
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectionKey;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_11
    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->p:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/a/a/b/a/a/g;

    iget-object v1, v0, Lcom/igexin/a/a/b/a/a/g;->O:Lcom/igexin/a/a/d/a/g;

    if-eqz v1, :cond_13

    iget-object v1, v0, Lcom/igexin/a/a/b/a/a/g;->O:Lcom/igexin/a/a/d/a/g;

    invoke-interface {v1}, Lcom/igexin/a/a/d/a/g;->b()Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, v0, Lcom/igexin/a/a/b/a/a/g;->O:Lcom/igexin/a/a/d/a/g;

    invoke-interface {v1, v2, v3, v0}, Lcom/igexin/a/a/d/a/g;->a(JLcom/igexin/a/a/d/d;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v1, "niosockettask|timerTasks timeout"

    invoke-static {v1}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/igexin/a/a/b/a/a/g;->o()V

    iget-object v1, v0, Lcom/igexin/a/a/b/a/a/g;->O:Lcom/igexin/a/a/d/a/g;

    invoke-interface {v1, v0}, Lcom/igexin/a/a/d/a/g;->a(Lcom/igexin/a/a/d/d;)V

    new-instance v0, Ljava/net/SocketTimeoutException;

    const-string v1, "SocketTask do timeOut!"

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    iget-object v1, v0, Lcom/igexin/a/a/b/a/a/g;->O:Lcom/igexin/a/a/d/a/g;

    invoke-interface {v1, v2, v3, v0}, Lcom/igexin/a/a/d/a/g;->b(JLcom/igexin/a/a/d/d;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/igexin/a/a/b/a/a/e;->l:J

    iget-wide v0, p0, Lcom/igexin/a/a/b/a/a/e;->l:J

    cmp-long v0, v0, v6

    if-gez v0, :cond_1

    iput-wide v6, p0, Lcom/igexin/a/a/b/a/a/e;->l:J

    goto/16 :goto_0

    :cond_13
    invoke-virtual {v0}, Lcom/igexin/a/a/b/a/a/g;->o()V

    goto/16 :goto_0
.end method

.method public final b()I
    .locals 1

    const/16 v0, -0x7ff

    return v0
.end method

.method final b(Ljava/nio/channels/SocketChannel;)J
    .locals 10

    const/4 v2, 0x0

    const-string v0, "niosockettask|toWrite"

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->o:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    :cond_0
    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->o:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/a/a/b/a/a/g;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "niosockettask|toWrite|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/igexin/a/a/c/a;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/igexin/a/a/b/a/a/e;->d:Lcom/igexin/a/a/b/e;

    iput-object v1, v0, Lcom/igexin/a/a/b/a/a/g;->d:Lcom/igexin/a/a/b/e;

    iget-object v1, v0, Lcom/igexin/a/a/b/a/a/g;->f:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/igexin/a/a/b/a/a/g;->f:Ljava/nio/ByteBuffer;

    move v3, v2

    move-object v2, v0

    :goto_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_6

    :try_start_1
    invoke-virtual {p1, v2}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    const/4 v1, 0x0

    iput v1, p0, Lcom/igexin/a/a/b/a/a/e;->j:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-lez v0, :cond_3

    :try_start_2
    sget-boolean v1, Lcom/igexin/a/a/b/d;->f:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v1

    iget-wide v6, v1, Lcom/igexin/a/a/b/d;->e:J

    int-to-long v8, v0

    add-long/2addr v6, v8

    iput-wide v6, v1, Lcom/igexin/a/a/b/d;->e:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    iget-object v2, p0, Lcom/igexin/a/a/b/a/a/e;->q:Lcom/igexin/a/a/b/a/a/d;

    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->o:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v2, v0}, Lcom/igexin/a/a/b/a/a/d;->b(Z)V

    throw v1

    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/igexin/a/a/b/a/a/e;->b:Lcom/igexin/a/a/b/c;

    iget-object v3, p0, Lcom/igexin/a/a/b/a/a/e;->d:Lcom/igexin/a/a/b/e;

    iget-object v6, v0, Lcom/igexin/a/a/b/a/a/g;->c:Ljava/lang/Object;

    invoke-virtual {v1, v0, v3, v6}, Lcom/igexin/a/a/b/c;->d(Lcom/igexin/a/a/b/f;Lcom/igexin/a/a/b/e;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v0, Lcom/igexin/a/a/b/a/a/g;->f:Ljava/nio/ByteBuffer;

    move v3, v2

    move-object v2, v1

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, -0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "niosockettask|write exception|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V

    move v0, v1

    goto :goto_1

    :catch_1
    move-exception v0

    const/4 v1, -0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "niosockettask|write exception|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V

    move v0, v1

    goto :goto_1

    :catch_2
    move-exception v0

    const/4 v1, -0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "niosockettask|write throwable|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_1

    :cond_2
    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v1

    iget-wide v6, v1, Lcom/igexin/a/a/b/d;->c:J

    int-to-long v8, v0

    add-long/2addr v6, v8

    iput-wide v6, v1, Lcom/igexin/a/a/b/d;->c:J

    goto/16 :goto_0

    :cond_3
    if-gez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "niosockettask|socketwrite|-1|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V

    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0

    :cond_4
    if-nez v0, :cond_5

    add-int/lit8 v0, v3, 0x1

    const/16 v1, 0x8c

    if-ge v3, v1, :cond_5

    const-wide/16 v6, 0xc8

    invoke-virtual {p0, v6, v7}, Ljava/lang/Object;->wait(J)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "niosockettask|socketwrite|0|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/igexin/a/a/c/a;->a(Ljava/lang/String;)V

    move v3, v0

    goto/16 :goto_0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "niosockettask|socketwrite|-2|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/net/SocketTimeoutException;

    const-string v1, "write data error!"

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->o:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/a/a/b/a/a/g;

    iget v1, v0, Lcom/igexin/a/a/b/a/a/g;->J:I

    if-lez v1, :cond_8

    iget-object v1, v0, Lcom/igexin/a/a/b/a/a/g;->O:Lcom/igexin/a/a/d/a/g;

    if-eqz v1, :cond_8

    invoke-virtual {v0, v4, v5}, Lcom/igexin/a/a/b/a/a/g;->a(J)V

    iget-object v1, p0, Lcom/igexin/a/a/b/a/a/e;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/igexin/a/a/b/a/a/e;->p:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->o:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    if-eqz v0, :cond_9

    const-wide/16 v0, -0x1

    :goto_4
    iget-object v3, p0, Lcom/igexin/a/a/b/a/a/e;->q:Lcom/igexin/a/a/b/a/a/d;

    iget-object v2, p0, Lcom/igexin/a/a/b/a/a/e;->o:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    const/4 v2, 0x1

    :goto_5
    invoke-virtual {v3, v2}, Lcom/igexin/a/a/b/a/a/d;->b(Z)V

    :goto_6
    return-wide v0

    :cond_7
    :try_start_4
    invoke-virtual {v0}, Lcom/igexin/a/a/b/a/a/g;->o()V

    goto :goto_3

    :cond_8
    invoke-virtual {v0}, Lcom/igexin/a/a/b/a/a/g;->o()V

    goto :goto_3

    :cond_9
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->p:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/a/a/b/a/a/g;

    iget v0, v0, Lcom/igexin/a/a/b/a/a/g;->J:I

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-wide v0

    goto :goto_4

    :cond_a
    const/4 v2, 0x0

    goto :goto_5

    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_c
    const-wide/16 v0, -0x1

    goto :goto_6
.end method

.method public final d()V
    .locals 2

    const/4 v1, 0x1

    const-string v0, "niosockettask|initTask"

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->a(Ljava/lang/String;)V

    const-string v0, "niosockettask|initTask"

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/igexin/a/a/b/f;->d()V

    iput-boolean v1, p0, Lcom/igexin/a/a/b/a/a/e;->y:Z

    iput-boolean v1, p0, Lcom/igexin/a/a/b/a/a/e;->z:Z

    iput-boolean v1, p0, Lcom/igexin/a/a/b/a/a/e;->T:Z

    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method protected e()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/igexin/a/a/b/a/a/e;->k:Lcom/igexin/a/a/b/a/a/e;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NioSocketTask|dispose url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/igexin/a/a/b/a/a/e;->k:Lcom/igexin/a/a/b/a/a/e;

    iget-object v1, v1, Lcom/igexin/a/a/b/a/a/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->q:Lcom/igexin/a/a/b/a/a/d;

    invoke-virtual {v0}, Lcom/igexin/a/a/b/a/a/d;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->e:Ljava/nio/channels/Selector;

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->e:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectNow()I

    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->e:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_1
    iput-object v2, p0, Lcom/igexin/a/a/b/a/a/e;->e:Ljava/nio/channels/Selector;

    iput-object v2, p0, Lcom/igexin/a/a/b/a/a/e;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->o:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->o:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/a/a/b/a/a/g;

    invoke-virtual {v0}, Lcom/igexin/a/a/b/a/a/g;->o()V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->o:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    :cond_3
    iput-object v2, p0, Lcom/igexin/a/a/b/a/a/e;->o:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/a/a/b/a/a/g;

    invoke-virtual {v0}, Lcom/igexin/a/a/b/a/a/g;->o()V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_5
    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->r:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iput-object v2, p0, Lcom/igexin/a/a/b/a/a/e;->r:Ljava/nio/ByteBuffer;

    iput-object v2, p0, Lcom/igexin/a/a/b/a/a/e;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object v2, p0, Lcom/igexin/a/a/b/a/a/e;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v0, Lcom/igexin/a/a/b/a/a/e;->k:Lcom/igexin/a/a/b/a/a/e;

    if-ne v0, p0, :cond_6

    sput-object v2, Lcom/igexin/a/a/b/a/a/e;->k:Lcom/igexin/a/a/b/a/a/e;

    const-string v0, "NioSocketTask|dispose singleInstanece = this, singleInstanece = null"

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V

    :goto_4
    invoke-super {p0}, Lcom/igexin/a/a/b/f;->f()V

    return-void

    :cond_6
    const-string v0, "NioSocketTask|dispose singleInstanece != this"

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method final g()V
    .locals 8

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->e:Ljava/nio/channels/Selector;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->e:Ljava/nio/channels/Selector;

    :cond_0
    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->q:Lcom/igexin/a/a/b/a/a/d;

    if-nez v0, :cond_1

    new-instance v0, Lcom/igexin/a/a/b/a/a/d;

    iget-object v1, p0, Lcom/igexin/a/a/b/a/a/e;->e:Ljava/nio/channels/Selector;

    invoke-direct {v0, v1}, Lcom/igexin/a/a/b/a/a/d;-><init>(Ljava/nio/channels/Selector;)V

    iput-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->q:Lcom/igexin/a/a/b/a/a/d;

    :cond_1
    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->q:Lcom/igexin/a/a/b/a/a/d;

    invoke-virtual {v0}, Lcom/igexin/a/a/b/a/a/d;->b()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->q:Lcom/igexin/a/a/b/a/a/d;

    iget-object v1, p0, Lcom/igexin/a/a/b/a/a/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/igexin/a/a/b/a/a/d;->a(Ljava/lang/String;)Z

    :cond_2
    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->e:Ljava/nio/channels/Selector;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v2, v3}, Ljava/nio/channels/Selector;->select(J)I

    move-result v0

    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->e:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectionKey;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isConnectable()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->finishConnect()Z

    move-result v1

    if-eqz v1, :cond_3

    iput-boolean v7, p0, Lcom/igexin/a/a/b/a/a/e;->h:Z

    new-instance v1, Lcom/igexin/a/a/b/e;

    invoke-direct {v1}, Lcom/igexin/a/a/b/e;-><init>()V

    iput-object v1, p0, Lcom/igexin/a/a/b/a/a/e;->d:Lcom/igexin/a/a/b/e;

    iget-object v1, p0, Lcom/igexin/a/a/b/a/a/e;->d:Lcom/igexin/a/a/b/e;

    iget-object v4, p0, Lcom/igexin/a/a/b/a/a/e;->q:Lcom/igexin/a/a/b/a/a/d;

    invoke-virtual {v1, v4}, Lcom/igexin/a/a/b/e;->a(Lcom/igexin/a/a/b/b;)V

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v1}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "niosockettask|connected|"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->getPort()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "|"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v5, :cond_5

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalPort()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const-string v1, "0.0.0.0"

    goto :goto_1

    :cond_5
    const-string v1, "0.0.0.0"

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->d:Lcom/igexin/a/a/b/e;

    if-nez v0, :cond_7

    :goto_3
    return-void

    :cond_7
    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->e:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectNow()I

    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->e:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->e:Ljava/nio/channels/Selector;

    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->e:Ljava/nio/channels/Selector;

    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->q:Lcom/igexin/a/a/b/a/a/d;

    iget-object v1, p0, Lcom/igexin/a/a/b/a/a/e;->e:Ljava/nio/channels/Selector;

    invoke-virtual {v0, v1}, Lcom/igexin/a/a/b/a/a/d;->a(Ljava/nio/channels/Selector;)V

    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->q:Lcom/igexin/a/a/b/a/a/d;

    iget-object v1, p0, Lcom/igexin/a/a/b/a/a/e;->q:Lcom/igexin/a/a/b/a/a/d;

    invoke-virtual {v1}, Lcom/igexin/a/a/b/a/a/d;->c()Ljava/nio/channels/SocketChannel;

    move-result-object v1

    iget-object v2, p0, Lcom/igexin/a/a/b/a/a/e;->e:Ljava/nio/channels/Selector;

    invoke-virtual {v1, v2, v7}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object v1

    iput-object v1, v0, Lcom/igexin/a/a/b/a/a/d;->e:Ljava/nio/channels/SelectionKey;

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "niosockettask|disConnect event"

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/igexin/a/a/b/a/a/b;

    invoke-direct {v0}, Lcom/igexin/a/a/b/a/a/b;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Lcom/igexin/a/a/b/a/a/b;->a:I

    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/igexin/a/a/b/d;->a(Ljava/lang/Object;)Z

    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0

    :cond_9
    const-string v0, "niosockettask|connect timeout"

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V

    new-instance v0, Ljava/net/SocketTimeoutException;

    invoke-direct {v0}, Ljava/net/SocketTimeoutException;-><init>()V

    throw v0
.end method

.method public i()V
    .locals 3

    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->e:Ljava/nio/channels/Selector;

    if-nez v0, :cond_0

    const-string v0, "NioSocketTask|wakeUp, selector = null"

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->e:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "NioSocketTask|wakeUp, wakeUp, selector.isOpen = false"

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "NioSocketTask|wakeUp +++++"

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/a/a/b/a/a/e;->e:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    :cond_2
    return-void
.end method
