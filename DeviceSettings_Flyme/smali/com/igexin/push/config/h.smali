.class Lcom/igexin/push/config/h;
.super Lcom/igexin/push/b/d;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/igexin/push/config/a;


# direct methods
.method constructor <init>(Lcom/igexin/push/config/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/push/config/h;->b:Lcom/igexin/push/config/a;

    iput-object p2, p0, Lcom/igexin/push/config/h;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/igexin/push/b/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    iget-object v0, p0, Lcom/igexin/push/config/h;->b:Lcom/igexin/push/config/a;

    iget-object v1, p0, Lcom/igexin/push/config/h;->c:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v2, 0x18

    iget-object v3, p0, Lcom/igexin/push/config/h;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    sget-object v4, Lcom/igexin/push/core/g;->B:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/igexin/a/a/a/a;->b([BLjava/lang/String;)[B

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/igexin/push/config/a;->a(Lcom/igexin/push/config/a;Landroid/database/sqlite/SQLiteDatabase;I[B)V

    return-void
.end method
