.class public Lcom/igexin/push/core/d/k;
.super Lcom/igexin/push/e/a/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;[BI)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/igexin/push/e/a/b;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, p3}, Lcom/igexin/push/core/d/k;->a([BI)V

    return-void
.end method

.method private a([BI)V
    .locals 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "action"

    const-string v2, "upload_BI"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "BIType"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "cid"

    sget-object v2, Lcom/igexin/push/core/g;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "BIData"

    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, v3}, Lcom/igexin/a/a/b/g;->e([BI)[B

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/a/b/a;->b([B)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/igexin/push/core/d/k;->b([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a([B)V
    .locals 1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-void
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
