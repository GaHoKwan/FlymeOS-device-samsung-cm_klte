.class Lcom/igexin/push/config/g;
.super Lcom/igexin/push/b/d;


# instance fields
.field final synthetic a:Lcom/igexin/push/config/a;


# direct methods
.method constructor <init>(Lcom/igexin/push/config/a;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/push/config/g;->a:Lcom/igexin/push/config/a;

    invoke-direct {p0}, Lcom/igexin/push/b/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    sget-object v0, Lcom/igexin/push/config/l;->t:Lcom/igexin/push/core/bean/f;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/igexin/push/core/a/e;->a()Lcom/igexin/push/core/a/e;

    move-result-object v0

    sget-object v1, Lcom/igexin/push/config/l;->t:Lcom/igexin/push/core/bean/f;

    invoke-virtual {v0, v1}, Lcom/igexin/push/core/a/e;->a(Lcom/igexin/push/core/bean/f;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/push/config/g;->a:Lcom/igexin/push/config/a;

    iget-object v2, p0, Lcom/igexin/push/config/g;->c:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v3, 0x14

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sget-object v4, Lcom/igexin/push/core/g;->B:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/igexin/a/a/a/a;->b([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/igexin/push/config/a;->a(Lcom/igexin/push/config/a;Landroid/database/sqlite/SQLiteDatabase;I[B)V

    :cond_0
    return-void
.end method
