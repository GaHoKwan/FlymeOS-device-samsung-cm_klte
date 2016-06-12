.class public Lcom/igexin/push/core/e;
.super Landroid/os/Handler;


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/igexin/push/config/k;->a:Ljava/lang/String;

    sput-object v0, Lcom/igexin/push/core/e;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/igexin/push/core/a;->c:I

    if-ne v0, v1, :cond_7

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    if-eqz v0, :cond_0

    const-string v1, "action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/igexin/sdk/PushConsts;->ACTION_SERVICE_INITIALIZE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/igexin/push/core/a/e;->a()Lcom/igexin/push/core/a/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/igexin/push/core/a/e;->a(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "com.igexin.action.initialize.slave"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/igexin/push/core/a/e;->a()Lcom/igexin/push/core/a/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/igexin/push/core/a/e;->b(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string v2, "com.igexin.sdk.action.refreshls"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-boolean v1, Lcom/igexin/push/config/l;->n:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/igexin/push/core/b/c;->a()Lcom/igexin/push/core/b/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/igexin/push/core/b/c;->b(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const-string v2, "com.igexin.sdk.action.pushmanager"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v1, "bundle"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/igexin/push/core/e;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " receive broadcast com.igexin.sdk.action.pushmanager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/push/core/a/e;->a()Lcom/igexin/push/core/a/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/igexin/push/core/a/e;->a(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_4
    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/igexin/push/core/g;->J:J

    invoke-static {}, Lcom/igexin/push/core/a/e;->a()Lcom/igexin/push/core/a/e;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/igexin/push/core/a/e;->a(J)Z

    move-result v1

    const/4 v0, 0x1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/igexin/push/core/a/e;->a()Lcom/igexin/push/core/a/e;

    move-result-object v1

    const-string v2, "ccs"

    invoke-virtual {v1, v2}, Lcom/igexin/push/core/a/e;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x0

    :cond_5
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/igexin/push/core/a/e;->a()Lcom/igexin/push/core/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/a/e;->y()V

    goto/16 :goto_0

    :cond_6
    const-string v2, "com.igexin.sdk.action.extdownloadsuccess"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/igexin/push/core/a/e;->a()Lcom/igexin/push/core/a/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/igexin/push/core/a/e;->d(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_7
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/igexin/push/core/a;->d:I

    if-ne v0, v1, :cond_8

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-static {}, Lcom/igexin/push/core/b/c;->a()Lcom/igexin/push/core/b/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/igexin/push/core/b/c;->a(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_8
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/igexin/push/core/a;->e:I

    if-ne v0, v1, :cond_9

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-static {}, Lcom/igexin/push/core/a/e;->a()Lcom/igexin/push/core/a/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/igexin/push/core/a/e;->c(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_9
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/igexin/push/core/a;->f:I

    if-ne v0, v1, :cond_a

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-static {}, Lcom/igexin/push/core/a/e;->a()Lcom/igexin/push/core/a/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/igexin/push/core/a/e;->c(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_a
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/igexin/push/core/a;->g:I

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/igexin/push/core/a;->h:I

    if-ne v0, v1, :cond_b

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "taskid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "messageid"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "actionid"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/igexin/push/core/a/e;->a()Lcom/igexin/push/core/a/e;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v0}, Lcom/igexin/push/core/a/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_b
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/igexin/push/core/a;->i:I

    if-ne v0, v1, :cond_c

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/igexin/push/core/bean/f;

    invoke-static {v0}, Lcom/igexin/push/f/a;->a(Lcom/igexin/push/core/bean/f;)V

    goto/16 :goto_0

    :cond_c
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/igexin/push/core/a;->j:I

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/igexin/push/core/a/e;->a()Lcom/igexin/push/core/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/a/e;->t()V

    goto/16 :goto_0
.end method
