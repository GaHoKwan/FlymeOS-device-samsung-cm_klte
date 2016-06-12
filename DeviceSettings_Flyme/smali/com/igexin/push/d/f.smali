.class Lcom/igexin/push/d/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/igexin/push/d/c;


# direct methods
.method constructor <init>(Lcom/igexin/push/d/c;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/push/d/f;->a:Lcom/igexin/push/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/igexin/push/d/f;->a:Lcom/igexin/push/d/c;

    invoke-static {v0}, Lcom/igexin/push/d/c;->b(Lcom/igexin/push/d/c;)Lcom/igexin/push/core/d;

    move-result-object v0

    sget-object v1, Lcom/igexin/push/core/d;->b:Lcom/igexin/push/core/d;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/igexin/push/d/f;->a:Lcom/igexin/push/d/c;

    invoke-static {v0}, Lcom/igexin/push/d/c;->c(Lcom/igexin/push/d/c;)Lcom/igexin/push/d/b;

    move-result-object v0

    invoke-static {p2}, Lcom/igexin/sdk/aidl/c;->a(Landroid/os/IBinder;)Lcom/igexin/sdk/aidl/IGexinMsgService;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/push/d/b;->a(Lcom/igexin/sdk/aidl/IGexinMsgService;)V

    new-instance v0, Lcom/igexin/push/d/a;

    invoke-direct {v0}, Lcom/igexin/push/d/a;-><init>()V

    sget-object v1, Lcom/igexin/push/core/c;->d:Lcom/igexin/push/core/c;

    invoke-virtual {v0, v1}, Lcom/igexin/push/d/a;->a(Lcom/igexin/push/core/c;)V

    iget-object v1, p0, Lcom/igexin/push/d/f;->a:Lcom/igexin/push/d/c;

    invoke-virtual {v1, v0}, Lcom/igexin/push/d/c;->a(Lcom/igexin/push/d/a;)V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/igexin/push/d/f;->a:Lcom/igexin/push/d/c;

    invoke-static {v0}, Lcom/igexin/push/d/c;->b(Lcom/igexin/push/d/c;)Lcom/igexin/push/core/d;

    move-result-object v0

    sget-object v1, Lcom/igexin/push/core/d;->d:Lcom/igexin/push/core/d;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/f;->g()Lcom/igexin/push/d/j;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/igexin/push/d/j;->b(Z)V

    iget-object v0, p0, Lcom/igexin/push/d/f;->a:Lcom/igexin/push/d/c;

    invoke-static {v0}, Lcom/igexin/push/d/c;->d(Lcom/igexin/push/d/c;)V

    :cond_0
    return-void
.end method
