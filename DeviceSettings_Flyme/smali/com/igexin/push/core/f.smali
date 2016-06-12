.class public Lcom/igexin/push/core/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/igexin/a/a/d/a/c;


# static fields
.field private static l:Lcom/igexin/push/core/f;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/igexin/push/core/h;

.field private c:Landroid/os/Handler;

.field private d:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field private e:Lcom/igexin/push/core/a/e;

.field private f:Landroid/net/ConnectivityManager;

.field private g:Lcom/igexin/a/a/b/d;

.field private h:Lcom/igexin/a/a/b/c;

.field private i:Lcom/igexin/push/d/j;

.field private j:Lcom/igexin/push/d/c;

.field private k:Lcom/igexin/push/b/b;

.field private final m:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/igexin/push/core/f;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/igexin/push/core/f;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Lcom/igexin/push/core/h;

    invoke-direct {v0}, Lcom/igexin/push/core/h;-><init>()V

    iput-object v0, p0, Lcom/igexin/push/core/f;->b:Lcom/igexin/push/core/h;

    return-void
.end method

.method public static a()Lcom/igexin/push/core/f;
    .locals 1

    sget-object v0, Lcom/igexin/push/core/f;->l:Lcom/igexin/push/core/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/igexin/push/core/f;

    invoke-direct {v0}, Lcom/igexin/push/core/f;-><init>()V

    sput-object v0, Lcom/igexin/push/core/f;->l:Lcom/igexin/push/core/f;

    :cond_0
    sget-object v0, Lcom/igexin/push/core/f;->l:Lcom/igexin/push/core/f;

    return-object v0
.end method

.method private q()V
    .locals 10

    :try_start_0
    invoke-virtual {p0}, Lcom/igexin/push/core/f;->p()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/igexin/push/core/f;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/igexin/push/core/f;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    const/4 v5, 0x1

    if-ne v1, v5, :cond_2

    :cond_3
    iget-object v5, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v5, :cond_2

    array-length v1, v5

    if-eqz v1, :cond_2

    array-length v6, v5

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v6, :cond_2

    aget-object v7, v5, v1

    sget-object v8, Lcom/igexin/push/core/a;->o:Ljava/lang/String;

    iget-object v9, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    sget-object v8, Lcom/igexin/push/core/a;->n:Ljava/lang/String;

    iget-object v9, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    sget-object v8, Lcom/igexin/push/core/a;->p:Ljava/lang/String;

    iget-object v9, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    :cond_4
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/igexin/push/core/c/f;->a()Lcom/igexin/push/core/c/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igexin/push/core/c/f;->d()Ljava/util/Map;

    move-result-object v1

    iget-object v5, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method

.method private r()Z
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.igexin.sdk.action.snlrefresh"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.igexin.sdk.action.snlretire"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/igexin/push/core/g;->W:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.igexin.sdk.action.execute"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.igexin.sdk.action.doaction"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/push/f/a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/igexin/push/core/f;->a:Landroid/content/Context;

    invoke-static {}, Lcom/igexin/push/core/n;->a()Lcom/igexin/push/core/n;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "CoreLogic|InternalPublicReceiver|null"

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V

    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/igexin/push/core/f;->a:Landroid/content/Context;

    invoke-static {}, Lcom/igexin/push/core/m;->a()Lcom/igexin/push/core/m;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "CoreLogic|InternalPackageReceiver|null"

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public a(Lcom/igexin/push/core/e;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/push/core/f;->c:Landroid/os/Handler;

    return-void
.end method

.method public a(Landroid/content/Context;)Z
    .locals 2

    const/4 v1, 0x1

    iput-object p1, p0, Lcom/igexin/push/core/f;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/igexin/push/core/f;->b:Lcom/igexin/push/core/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/igexin/push/core/f;->b:Lcom/igexin/push/core/h;

    invoke-virtual {v0}, Lcom/igexin/push/core/h;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/igexin/push/core/f;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/igexin/push/core/f;->b:Lcom/igexin/push/core/h;

    invoke-virtual {v0}, Lcom/igexin/push/core/h;->start()V

    goto :goto_0
.end method

.method public a(Landroid/content/Intent;)Z
    .locals 1

    sget-object v0, Lcom/igexin/push/core/g;->g:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/igexin/push/core/g;->g:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/os/Message;)Z
    .locals 2

    const/4 v1, 0x1

    sget-object v0, Lcom/igexin/push/core/g;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/igexin/push/core/f;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/igexin/push/core/f;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(Lcom/igexin/a/a/d/a/f;Lcom/igexin/a/a/d/e;)Z
    .locals 1

    iget-object v0, p0, Lcom/igexin/push/core/f;->e:Lcom/igexin/push/core/a/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igexin/push/core/f;->e:Lcom/igexin/push/core/a/e;

    invoke-virtual {v0, p1}, Lcom/igexin/push/core/a/e;->a(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/igexin/a/a/d/d;Lcom/igexin/a/a/d/e;)Z
    .locals 1

    iget-object v0, p0, Lcom/igexin/push/core/f;->e:Lcom/igexin/push/core/a/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igexin/push/core/f;->e:Lcom/igexin/push/core/a/e;

    invoke-virtual {v0, p1}, Lcom/igexin/push/core/a/e;->a(Lcom/igexin/a/a/d/d;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/igexin/push/e/b/f;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Lcom/igexin/a/a/b/d;->a(Lcom/igexin/a/a/d/d;ZZ)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/igexin/push/core/a/e;->a()Lcom/igexin/push/core/a/e;

    move-result-object v0

    const-string v1, "ss"

    invoke-virtual {v0, v1}, Lcom/igexin/push/core/a/e;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/igexin/push/core/g;->g:Landroid/content/Context;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/igexin/push/core/f;->j:Lcom/igexin/push/d/c;

    if-eqz v1, :cond_3

    new-instance v1, Lcom/igexin/sdk/a/d;

    sget-object v2, Lcom/igexin/push/core/g;->g:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/igexin/sdk/a/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/igexin/sdk/a/d;->b()V

    sput-boolean v3, Lcom/igexin/push/core/g;->j:Z

    sput-boolean v3, Lcom/igexin/push/core/g;->n:Z

    new-instance v1, Lcom/igexin/push/d/a;

    invoke-direct {v1}, Lcom/igexin/push/d/a;-><init>()V

    sget-object v2, Lcom/igexin/push/core/c;->g:Lcom/igexin/push/core/c;

    invoke-virtual {v1, v2}, Lcom/igexin/push/d/a;->a(Lcom/igexin/push/core/c;)V

    iget-object v2, p0, Lcom/igexin/push/core/f;->j:Lcom/igexin/push/d/c;

    invoke-virtual {v2, v1}, Lcom/igexin/push/d/c;->a(Lcom/igexin/push/d/a;)V

    if-eqz v0, :cond_3

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "ps"

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v1, Lcom/igexin/push/core/g;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v5, "\\s+"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/files/gdaemon"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    array-length v4, v5

    if-lez v4, :cond_0

    const/4 v1, 0x1

    aget-object v1, v5, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    :cond_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/igexin/push/core/f;->e()V

    :cond_3
    return v8

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Z)Z
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Lcom/igexin/push/core/g;->g:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/igexin/push/core/f;->j:Lcom/igexin/push/d/c;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/igexin/sdk/a/d;

    sget-object v1, Lcom/igexin/push/core/g;->g:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/igexin/sdk/a/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/igexin/sdk/a/d;->a()V

    sput-boolean v2, Lcom/igexin/push/core/g;->j:Z

    new-instance v0, Lcom/igexin/sdk/a/b;

    sget-object v1, Lcom/igexin/push/core/g;->g:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/igexin/sdk/a/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/igexin/sdk/a/b;->b()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/igexin/sdk/a/c;

    sget-object v1, Lcom/igexin/push/core/g;->g:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/igexin/sdk/a/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/igexin/sdk/a/c;->a()V

    sput-boolean v2, Lcom/igexin/push/core/g;->k:Z

    new-instance v0, Lcom/igexin/sdk/a/b;

    sget-object v1, Lcom/igexin/push/core/g;->g:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/igexin/sdk/a/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/igexin/sdk/a/b;->a()V

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Lcom/igexin/sdk/a/c;

    sget-object v1, Lcom/igexin/push/core/g;->g:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/igexin/sdk/a/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/igexin/sdk/a/c;->a()V

    sput-boolean v2, Lcom/igexin/push/core/g;->k:Z

    :cond_1
    new-instance v0, Lcom/igexin/push/d/a;

    invoke-direct {v0}, Lcom/igexin/push/d/a;-><init>()V

    sget-object v1, Lcom/igexin/push/core/c;->a:Lcom/igexin/push/core/c;

    invoke-virtual {v0, v1}, Lcom/igexin/push/d/a;->a(Lcom/igexin/push/core/c;)V

    iget-object v1, p0, Lcom/igexin/push/core/f;->j:Lcom/igexin/push/d/c;

    invoke-virtual {v1, v0}, Lcom/igexin/push/d/c;->a(Lcom/igexin/push/d/a;)V

    :cond_2
    return v2
.end method

.method public b()V
    .locals 4

    :try_start_0
    const-string v0, "CoreLogic|init starts"

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/push/core/f;->a:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/igexin/push/core/f;->f:Landroid/net/ConnectivityManager;

    iget-object v0, p0, Lcom/igexin/push/core/f;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/igexin/push/core/g;->a(Landroid/content/Context;)Z

    new-instance v0, Lcom/igexin/push/b/b;

    iget-object v1, p0, Lcom/igexin/push/core/f;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/igexin/push/b/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/igexin/push/core/f;->k:Lcom/igexin/push/b/b;

    const-string v0, "CoreLogic|init config"

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/push/config/j;->a()Lcom/igexin/push/config/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/config/j;->b()Z

    const-string v0, "CoreLogic|init receiver"

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/igexin/push/core/f;->r()Z

    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/push/core/f;->g:Lcom/igexin/a/a/b/d;

    new-instance v0, Lcom/igexin/push/c/a;

    iget-object v1, p0, Lcom/igexin/push/core/f;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/igexin/push/core/f;->j()Landroid/net/ConnectivityManager;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/igexin/push/c/a;-><init>(Landroid/content/Context;Landroid/net/ConnectivityManager;)V

    iget-object v1, p0, Lcom/igexin/push/core/f;->g:Lcom/igexin/a/a/b/d;

    invoke-virtual {v1, v0}, Lcom/igexin/a/a/b/d;->a(Lcom/igexin/a/a/d/a/b;)V

    iget-object v0, p0, Lcom/igexin/push/core/f;->g:Lcom/igexin/a/a/b/d;

    invoke-virtual {v0, p0}, Lcom/igexin/a/a/b/d;->a(Lcom/igexin/a/a/d/a/c;)Z

    iget-object v0, p0, Lcom/igexin/push/core/f;->g:Lcom/igexin/a/a/b/d;

    iget-object v1, p0, Lcom/igexin/push/core/f;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/igexin/a/a/b/d;->a(Landroid/content/Context;)V

    new-instance v0, Lcom/igexin/push/b/a;

    invoke-direct {v0}, Lcom/igexin/push/b/a;-><init>()V

    invoke-static {}, Lcom/igexin/push/core/c/f;->a()Lcom/igexin/push/core/c/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/push/b/a;->a(Lcom/igexin/push/core/c/a;)V

    invoke-static {}, Lcom/igexin/push/core/c/c;->a()Lcom/igexin/push/core/c/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/push/b/a;->a(Lcom/igexin/push/core/c/a;)V

    invoke-static {}, Lcom/igexin/push/core/c/b;->a()Lcom/igexin/push/core/c/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/push/b/a;->a(Lcom/igexin/push/core/c/a;)V

    invoke-static {}, Lcom/igexin/push/core/b/e;->a()Lcom/igexin/push/core/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/push/b/a;->a(Lcom/igexin/push/core/c/a;)V

    invoke-static {}, Lcom/igexin/push/config/a;->a()Lcom/igexin/push/config/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/push/b/a;->a(Lcom/igexin/push/core/c/a;)V

    iget-object v1, p0, Lcom/igexin/push/core/f;->g:Lcom/igexin/a/a/b/d;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/igexin/a/a/b/d;->a(Lcom/igexin/a/a/d/d;ZZ)Z

    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v0

    sget-object v1, Lcom/igexin/push/core/g;->A:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/igexin/a/b/a;->a([B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/a/a/b/d;->a([B)V

    iget-object v0, p0, Lcom/igexin/push/core/f;->g:Lcom/igexin/a/a/b/d;

    invoke-static {}, Lcom/igexin/push/e/b/c;->g()Lcom/igexin/push/e/b/c;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/igexin/a/a/b/d;->a(Lcom/igexin/a/a/d/d;ZZ)Z

    move-result v0

    sput-boolean v0, Lcom/igexin/push/core/g;->af:Z

    iget-object v0, p0, Lcom/igexin/push/core/f;->g:Lcom/igexin/a/a/b/d;

    invoke-static {}, Lcom/igexin/push/e/b/e;->g()Lcom/igexin/push/e/b/e;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/igexin/a/a/b/d;->a(Lcom/igexin/a/a/d/d;ZZ)Z

    move-result v0

    sput-boolean v0, Lcom/igexin/push/core/g;->ag:Z

    invoke-virtual {p0}, Lcom/igexin/push/core/f;->c()Lcom/igexin/push/e/b/a;

    invoke-static {}, Lcom/igexin/push/core/a/e;->a()Lcom/igexin/push/core/a/e;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/push/core/f;->e:Lcom/igexin/push/core/a/e;

    invoke-virtual {p0}, Lcom/igexin/push/core/f;->d()V

    new-instance v0, Lcom/igexin/push/d/j;

    invoke-direct {v0}, Lcom/igexin/push/d/j;-><init>()V

    iput-object v0, p0, Lcom/igexin/push/core/f;->i:Lcom/igexin/push/d/j;

    iget-object v0, p0, Lcom/igexin/push/core/f;->i:Lcom/igexin/push/d/j;

    iget-object v1, p0, Lcom/igexin/push/core/f;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/igexin/push/core/f;->g:Lcom/igexin/a/a/b/d;

    iget-object v3, p0, Lcom/igexin/push/core/f;->e:Lcom/igexin/push/core/a/e;

    invoke-virtual {v0, v1, v2, v3}, Lcom/igexin/push/d/j;->a(Landroid/content/Context;Lcom/igexin/a/a/b/d;Lcom/igexin/push/d/k;)V

    new-instance v0, Lcom/igexin/push/d/c;

    invoke-direct {v0}, Lcom/igexin/push/d/c;-><init>()V

    iput-object v0, p0, Lcom/igexin/push/core/f;->j:Lcom/igexin/push/d/c;

    iget-object v0, p0, Lcom/igexin/push/core/f;->j:Lcom/igexin/push/d/c;

    iget-object v1, p0, Lcom/igexin/push/core/f;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/igexin/push/d/c;->a(Landroid/content/Context;)V

    new-instance v0, Lcom/igexin/push/d/a;

    invoke-direct {v0}, Lcom/igexin/push/d/a;-><init>()V

    sget-object v1, Lcom/igexin/push/core/c;->a:Lcom/igexin/push/core/c;

    invoke-virtual {v0, v1}, Lcom/igexin/push/d/a;->a(Lcom/igexin/push/core/c;)V

    iget-object v1, p0, Lcom/igexin/push/core/f;->j:Lcom/igexin/push/d/c;

    invoke-virtual {v1, v0}, Lcom/igexin/push/d/c;->a(Lcom/igexin/push/d/a;)V

    invoke-static {}, Lcom/igexin/push/a/a/c;->c()Lcom/igexin/push/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/a/a/c;->d()V

    sget-object v0, Lcom/igexin/push/core/g;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/igexin/push/core/f;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    iget-object v2, p0, Lcom/igexin/push/core/f;->c:Landroid/os/Handler;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/igexin/push/core/f;->c:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "CoreLogic|init|failed"

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/igexin/push/core/a/e;->a()Lcom/igexin/push/core/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/a/e;->t()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iget-object v1, p0, Lcom/igexin/push/core/f;->e:Lcom/igexin/push/core/a/e;

    invoke-virtual {v1, v0}, Lcom/igexin/push/core/a/e;->a(I)V

    invoke-direct {p0}, Lcom/igexin/push/core/f;->q()V

    const-string v0, "CoreLogic|init extensions"

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/push/extension/a;->a()Lcom/igexin/push/extension/a;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/push/core/f;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/igexin/push/extension/a;->a(Landroid/content/Context;)Z

    const-string v0, "CoreLogic|init finished"

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public b(Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/igexin/push/core/g;->g:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igexin/push/core/f;->j:Lcom/igexin/push/d/c;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/igexin/sdk/a/c;

    sget-object v1, Lcom/igexin/push/core/g;->g:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/igexin/sdk/a/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/igexin/sdk/a/c;->b()V

    sput-boolean v2, Lcom/igexin/push/core/g;->k:Z

    sput-boolean v2, Lcom/igexin/push/core/g;->n:Z

    new-instance v0, Lcom/igexin/push/d/a;

    invoke-direct {v0}, Lcom/igexin/push/d/a;-><init>()V

    sget-object v1, Lcom/igexin/push/core/c;->g:Lcom/igexin/push/core/c;

    invoke-virtual {v0, v1}, Lcom/igexin/push/d/a;->a(Lcom/igexin/push/core/c;)V

    iget-object v1, p0, Lcom/igexin/push/core/f;->j:Lcom/igexin/push/d/c;

    invoke-virtual {v1, v0}, Lcom/igexin/push/d/c;->a(Lcom/igexin/push/d/a;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public c()Lcom/igexin/push/e/b/a;
    .locals 4

    invoke-static {}, Lcom/igexin/push/e/b/a;->g()Lcom/igexin/push/e/b/a;

    move-result-object v0

    new-instance v1, Lcom/igexin/push/a/a/a;

    invoke-direct {v1}, Lcom/igexin/push/a/a/a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/igexin/push/e/b/a;->a(Lcom/igexin/push/e/b/d;)Z

    new-instance v1, Lcom/igexin/push/a/a/b;

    invoke-direct {v1}, Lcom/igexin/push/a/a/b;-><init>()V

    invoke-virtual {v0, v1}, Lcom/igexin/push/e/b/a;->a(Lcom/igexin/push/e/b/d;)Z

    new-instance v1, Lcom/igexin/push/a/a/d;

    invoke-direct {v1}, Lcom/igexin/push/a/a/d;-><init>()V

    invoke-virtual {v0, v1}, Lcom/igexin/push/e/b/a;->a(Lcom/igexin/push/e/b/d;)Z

    invoke-static {}, Lcom/igexin/push/a/a/c;->c()Lcom/igexin/push/a/a/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/push/e/b/a;->a(Lcom/igexin/push/e/b/d;)Z

    iget-object v1, p0, Lcom/igexin/push/core/f;->g:Lcom/igexin/a/a/b/d;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/igexin/a/a/b/d;->a(Lcom/igexin/a/a/d/d;ZZ)Z

    move-result v1

    sput-boolean v1, Lcom/igexin/push/core/g;->ah:Z

    iget-object v1, p0, Lcom/igexin/push/core/f;->a:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-object v0
.end method

.method public d()V
    .locals 2

    sget-object v0, Lcom/igexin/push/core/g;->x:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/igexin/push/f/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igexin/push/core/f;->a:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/igexin/push/core/c/f;->a()Lcom/igexin/push/core/c/f;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/igexin/push/core/c/f;->a(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public e()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/igexin/push/core/f;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/igexin/sdk/PushService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "action"

    const-string v2, "stopUserService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/igexin/push/core/f;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/igexin/push/core/f;->a:Landroid/content/Context;

    const-class v2, Lcom/igexin/sdk/PushService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/igexin/push/core/f;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method

.method public f()Lcom/igexin/a/a/b/c;
    .locals 1

    iget-object v0, p0, Lcom/igexin/push/core/f;->h:Lcom/igexin/a/a/b/c;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/igexin/push/c/a/c;->a()Lcom/igexin/a/a/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/push/core/f;->h:Lcom/igexin/a/a/b/c;

    :cond_0
    iget-object v0, p0, Lcom/igexin/push/core/f;->h:Lcom/igexin/a/a/b/c;

    return-object v0
.end method

.method public g()Lcom/igexin/push/d/j;
    .locals 1

    iget-object v0, p0, Lcom/igexin/push/core/f;->i:Lcom/igexin/push/d/j;

    return-object v0
.end method

.method public h()Lcom/igexin/push/d/c;
    .locals 1

    iget-object v0, p0, Lcom/igexin/push/core/f;->j:Lcom/igexin/push/d/c;

    return-object v0
.end method

.method public i()Lcom/igexin/push/core/a/e;
    .locals 1

    iget-object v0, p0, Lcom/igexin/push/core/f;->e:Lcom/igexin/push/core/a/e;

    return-object v0
.end method

.method public j()Landroid/net/ConnectivityManager;
    .locals 1

    iget-object v0, p0, Lcom/igexin/push/core/f;->f:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method public k()Lcom/igexin/push/b/b;
    .locals 1

    iget-object v0, p0, Lcom/igexin/push/core/f;->k:Lcom/igexin/push/b/b;

    return-object v0
.end method

.method public l()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/igexin/push/core/f;->a:Landroid/content/Context;

    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/igexin/push/core/f;->a:Landroid/content/Context;

    invoke-static {}, Lcom/igexin/push/core/m;->a()Lcom/igexin/push/core/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/igexin/push/core/f;->a:Landroid/content/Context;

    invoke-static {}, Lcom/igexin/push/core/n;->a()Lcom/igexin/push/core/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    invoke-static {}, Lcom/igexin/push/extension/a;->a()Lcom/igexin/push/extension/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/extension/a;->b()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method public m()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/igexin/push/core/f;->f:Landroid/net/ConnectivityManager;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/igexin/push/core/f;->f:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const-string v0, "wifi"

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "mobile"

    goto :goto_0
.end method

.method public n()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o()J
    .locals 2

    const-wide/32 v0, 0x17258

    return-wide v0
.end method

.method public p()Z
    .locals 10

    const/4 v1, 0x0

    :try_start_0
    sget-object v0, Lcom/igexin/push/core/g;->g:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v4, v2, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    iget-boolean v0, v2, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    if-eqz v0, :cond_0

    const-string v0, "CoreLogic"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "system in lowMemory, available menmory = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "M"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v8

    sub-long/2addr v2, v6

    add-long/2addr v2, v8

    const-wide/16 v6, 0x400

    div-long/2addr v2, v6

    const-wide/16 v6, 0x400

    div-long/2addr v2, v6
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v6, 0x1e

    cmp-long v0, v2, v6

    if-lez v0, :cond_1

    const-wide/16 v2, 0x64

    cmp-long v0, v4, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method
