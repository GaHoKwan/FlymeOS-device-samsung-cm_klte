.class public Lcom/igexin/sdk/PushService;
.super Landroid/app/Service;


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Lcom/igexin/sdk/IPushCore;

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private d:Z

.field private e:Z

.field private f:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "PushSdk"

    sput-object v0, Lcom/igexin/sdk/PushService;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/igexin/sdk/PushService;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/igexin/sdk/a;

    invoke-direct {v0, p0}, Lcom/igexin/sdk/a;-><init>(Lcom/igexin/sdk/PushService;)V

    iput-object v0, p0, Lcom/igexin/sdk/PushService;->f:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/igexin/sdk/PushService;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/igexin/sdk/PushService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/igexin/sdk/PushService;->d:Z

    return v0
.end method

.method static synthetic a(Lcom/igexin/sdk/PushService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/igexin/sdk/PushService;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/igexin/sdk/PushService;)Landroid/content/ServiceConnection;
    .locals 1

    iget-object v0, p0, Lcom/igexin/sdk/PushService;->f:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method private b()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/igexin/sdk/PushService;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|startPushCore ++++"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/sdk/a/a;->a()Lcom/igexin/sdk/a/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/igexin/sdk/a/a;->a(Landroid/content/Context;)Z

    invoke-static {}, Lcom/igexin/sdk/a/a;->a()Lcom/igexin/sdk/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/sdk/a/a;->b()Lcom/igexin/sdk/IPushCore;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/sdk/PushService;->b:Lcom/igexin/sdk/IPushCore;

    iget-object v0, p0, Lcom/igexin/sdk/PushService;->b:Lcom/igexin/sdk/IPushCore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igexin/sdk/PushService;->b:Lcom/igexin/sdk/IPushCore;

    invoke-interface {v0, p0}, Lcom/igexin/sdk/IPushCore;->start(Landroid/content/Context;)Z

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/igexin/sdk/PushService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/igexin/sdk/PushService;->d:Z

    return p1
.end method

.method private c()V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/igexin/sdk/PushService;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bind user process service"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/igexin/sdk/PushServiceUser;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/igexin/sdk/PushService;->f:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/igexin/sdk/PushService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/igexin/sdk/PushService;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private d()V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/igexin/sdk/PushService;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " stop user process service by getui"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igexin/sdk/PushService;->d:Z

    iget-object v0, p0, Lcom/igexin/sdk/PushService;->f:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/igexin/sdk/PushService;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/igexin/sdk/PushService;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/igexin/sdk/PushService;->b:Lcom/igexin/sdk/IPushCore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igexin/sdk/PushService;->b:Lcom/igexin/sdk/IPushCore;

    invoke-interface {v0, p1}, Lcom/igexin/sdk/IPushCore;->onServiceBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/igexin/sdk/PushService;->b:Lcom/igexin/sdk/IPushCore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igexin/sdk/PushService;->b:Lcom/igexin/sdk/IPushCore;

    invoke-interface {v0}, Lcom/igexin/sdk/IPushCore;->onServiceDestroy()V

    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onLowMemory()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/igexin/sdk/PushService;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PushService Low Memory!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    const/4 v0, 0x1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    if-nez p1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/igexin/sdk/PushService;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/igexin/sdk/PushService;->c()V

    invoke-direct {p0}, Lcom/igexin/sdk/PushService;->b()V

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "action"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "stopUserService"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/igexin/sdk/PushService;->e:Z

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/igexin/sdk/PushService;->d()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/igexin/sdk/PushService;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v1, p0, Lcom/igexin/sdk/PushService;->b:Lcom/igexin/sdk/IPushCore;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/igexin/sdk/PushService;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|inInit = true, call onServiceStartCommand..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/igexin/sdk/PushService;->b:Lcom/igexin/sdk/IPushCore;

    invoke-interface {v1, p1, p2, p3}, Lcom/igexin/sdk/IPushCore;->onServiceStartCommand(Landroid/content/Intent;II)I

    move-result v0

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/igexin/sdk/PushService;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0}, Lcom/igexin/sdk/PushService;->c()V

    sget-object v2, Lcom/igexin/sdk/PushConsts;->ACTION_SERVICE_INITIALIZE:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/igexin/sdk/PushService;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|start from initialize..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/igexin/sdk/PushService;->b()V

    iget-object v1, p0, Lcom/igexin/sdk/PushService;->b:Lcom/igexin/sdk/IPushCore;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/igexin/sdk/PushService;->b:Lcom/igexin/sdk/IPushCore;

    invoke-interface {v1, p1, p2, p3}, Lcom/igexin/sdk/IPushCore;->onServiceStartCommand(Landroid/content/Intent;II)I

    move-result v0

    goto/16 :goto_0

    :cond_4
    invoke-static {p0}, Lcom/igexin/push/config/m;->a(Landroid/content/Context;)V

    const-string v1, "1"

    invoke-static {}, Lcom/igexin/push/core/g;->c()Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "ss"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Lcom/igexin/sdk/a/d;

    invoke-direct {v1, p0}, Lcom/igexin/sdk/a/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/igexin/sdk/a/d;->c()Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/igexin/sdk/PushService;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|is switch on == false, don\'t auto start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/igexin/sdk/PushService;->d()V

    invoke-virtual {p0}, Lcom/igexin/sdk/PushService;->stopSelf()V

    goto/16 :goto_0

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/igexin/sdk/PushService;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|is switch on == true, don\'t stopService"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V

    :cond_6
    invoke-direct {p0}, Lcom/igexin/sdk/PushService;->b()V

    iget-object v1, p0, Lcom/igexin/sdk/PushService;->b:Lcom/igexin/sdk/IPushCore;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/igexin/sdk/PushService;->b:Lcom/igexin/sdk/IPushCore;

    invoke-interface {v1, p1, p2, p3}, Lcom/igexin/sdk/IPushCore;->onServiceStartCommand(Landroid/content/Intent;II)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto/16 :goto_0
.end method
