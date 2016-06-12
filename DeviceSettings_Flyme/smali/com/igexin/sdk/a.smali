.class Lcom/igexin/sdk/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/igexin/sdk/PushService;


# direct methods
.method constructor <init>(Lcom/igexin/sdk/PushService;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/sdk/a;->a:Lcom/igexin/sdk/PushService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/igexin/sdk/PushService;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bind user process service success"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/sdk/a;->a:Lcom/igexin/sdk/PushService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/igexin/sdk/PushService;->a(Lcom/igexin/sdk/PushService;Z)Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/igexin/sdk/PushService;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " user process service onServiceDisconnected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/sdk/a;->a:Lcom/igexin/sdk/PushService;

    invoke-static {v0, v2}, Lcom/igexin/sdk/PushService;->a(Lcom/igexin/sdk/PushService;Z)Z

    iget-object v0, p0, Lcom/igexin/sdk/a;->a:Lcom/igexin/sdk/PushService;

    invoke-static {v0}, Lcom/igexin/sdk/PushService;->a(Lcom/igexin/sdk/PushService;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/igexin/sdk/PushService;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " stop user process service by getui, onServiceDisconnected, not restart"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/sdk/a;->a:Lcom/igexin/sdk/PushService;

    invoke-static {v0, v2}, Lcom/igexin/sdk/PushService;->b(Lcom/igexin/sdk/PushService;Z)Z

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/igexin/sdk/PushService;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " stop user process service by usr, need restart #########"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/igexin/sdk/a;->a:Lcom/igexin/sdk/PushService;

    const-class v2, Lcom/igexin/sdk/PushServiceUser;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/igexin/sdk/a;->a:Lcom/igexin/sdk/PushService;

    iget-object v2, p0, Lcom/igexin/sdk/a;->a:Lcom/igexin/sdk/PushService;

    invoke-static {v2}, Lcom/igexin/sdk/PushService;->b(Lcom/igexin/sdk/PushService;)Landroid/content/ServiceConnection;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/igexin/sdk/PushService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
