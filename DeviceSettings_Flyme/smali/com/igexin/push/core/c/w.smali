.class public Lcom/igexin/push/core/c/w;
.super Ljava/lang/Object;


# static fields
.field private static a:I

.field private static b:I

.field private static c:I

.field private static d:Ljava/util/List;

.field private static e:Lcom/igexin/push/core/c/y;

.field private static f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput v1, Lcom/igexin/push/core/c/w;->a:I

    sput v1, Lcom/igexin/push/core/c/w;->b:I

    sput v1, Lcom/igexin/push/core/c/w;->c:I

    sget-object v0, Lcom/igexin/push/core/c/y;->a:Lcom/igexin/push/core/c/y;

    sput-object v0, Lcom/igexin/push/core/c/w;->e:Lcom/igexin/push/core/c/y;

    sput v1, Lcom/igexin/push/core/c/w;->f:I

    return-void
.end method

.method public static a()V
    .locals 3

    invoke-static {}, Lcom/igexin/push/core/c/w;->e()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/igexin/push/config/l;->f:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/igexin/push/core/c/w;->e:Lcom/igexin/push/core/c/y;

    sget-object v1, Lcom/igexin/push/core/c/y;->b:Lcom/igexin/push/core/c/y;

    if-ne v0, v1, :cond_1

    sget v0, Lcom/igexin/push/core/c/w;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/igexin/push/core/c/w;->a:I

    sget-object v1, Lcom/igexin/push/config/SDKUrlConfig;->XFR_ADDRESS_IPS_BAK:[Ljava/lang/String;

    array-length v1, v1

    rem-int/2addr v0, v1

    sput v0, Lcom/igexin/push/core/c/w;->a:I

    sget-object v0, Lcom/igexin/push/config/SDKUrlConfig;->XFR_ADDRESS_IPS_BAK:[Ljava/lang/String;

    sget v1, Lcom/igexin/push/core/c/w;->a:I

    aget-object v0, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ServerAddressManager switch from backup domain, address : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V

    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ServerAddressManager SERVER_CM_Address changed : form ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/igexin/push/config/SDKUrlConfig;->getCmAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] to ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/igexin/push/config/SDKUrlConfig;->setCmAddress(Ljava/lang/String;)V

    return-void

    :cond_1
    sget v0, Lcom/igexin/push/core/c/w;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/igexin/push/core/c/w;->a:I

    sget-object v1, Lcom/igexin/push/config/SDKUrlConfig;->XFR_ADDRESS_IPS:[Ljava/lang/String;

    array-length v1, v1

    rem-int/2addr v0, v1

    sput v0, Lcom/igexin/push/core/c/w;->a:I

    sget-object v0, Lcom/igexin/push/config/SDKUrlConfig;->XFR_ADDRESS_IPS:[Ljava/lang/String;

    sget v1, Lcom/igexin/push/core/c/w;->a:I

    aget-object v0, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ServerAddressManager switch from normal domain, address : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "ServerAddressManager switch from normal domain!"

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V

    sget v0, Lcom/igexin/push/core/c/w;->b:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/igexin/push/core/c/w;->b:I

    sget v0, Lcom/igexin/push/core/c/w;->b:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_3

    const/4 v0, 0x0

    sput v0, Lcom/igexin/push/core/c/w;->b:I

    sget v0, Lcom/igexin/push/core/c/w;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/igexin/push/core/c/w;->a:I

    sget-object v1, Lcom/igexin/push/config/SDKUrlConfig;->XFR_ADDRESS_IPS:[Ljava/lang/String;

    array-length v1, v1

    rem-int/2addr v0, v1

    sput v0, Lcom/igexin/push/core/c/w;->a:I

    :cond_3
    sget-object v0, Lcom/igexin/push/config/SDKUrlConfig;->XFR_ADDRESS_IPS:[Ljava/lang/String;

    sget v1, Lcom/igexin/push/core/c/w;->a:I

    aget-object v0, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "retry connect to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/igexin/push/core/c/w;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " times"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static a(Lcom/igexin/push/core/c/y;)V
    .locals 4

    const/4 v3, 0x0

    sget-boolean v0, Lcom/igexin/push/config/l;->f:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/igexin/push/core/c/w;->e:Lcom/igexin/push/core/c/y;

    if-eq v0, p0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/igexin/push/core/c/w;->a(Ljava/util/List;)V

    :cond_0
    sget-object v0, Lcom/igexin/push/core/c/x;->a:[I

    invoke-virtual {p0}, Lcom/igexin/push/core/c/y;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    sput-object p0, Lcom/igexin/push/core/c/w;->e:Lcom/igexin/push/core/c/y;

    :cond_1
    return-void

    :pswitch_0
    sget-object v0, Lcom/igexin/push/core/c/w;->e:Lcom/igexin/push/core/c/y;

    if-eq v0, p0, :cond_2

    sput v3, Lcom/igexin/push/core/c/w;->f:I

    :cond_2
    :pswitch_1
    sget-object v0, Lcom/igexin/push/config/SDKUrlConfig;->XFR_ADDRESS_IPS:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-static {v0}, Lcom/igexin/push/config/SDKUrlConfig;->setCmAddress(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/igexin/push/core/c/w;->e:Lcom/igexin/push/core/c/y;

    if-eq v0, p0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/igexin/push/core/c/f;->a()Lcom/igexin/push/core/c/f;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/igexin/push/core/c/f;->e(J)Z

    :cond_3
    sget-object v0, Lcom/igexin/push/config/SDKUrlConfig;->XFR_ADDRESS_IPS_BAK:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-static {v0}, Lcom/igexin/push/config/SDKUrlConfig;->setCmAddress(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Ljava/util/List;)V
    .locals 1

    sput-object p0, Lcom/igexin/push/core/c/w;->d:Ljava/util/List;

    const/4 v0, 0x0

    sput v0, Lcom/igexin/push/core/c/w;->c:I

    return-void
.end method

.method public static b()V
    .locals 4

    sget-object v0, Lcom/igexin/push/core/c/x;->a:[I

    sget-object v1, Lcom/igexin/push/core/c/w;->e:Lcom/igexin/push/core/c/y;

    invoke-virtual {v1}, Lcom/igexin/push/core/c/y;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/igexin/push/core/g;->Q:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    sget-object v0, Lcom/igexin/push/core/c/y;->c:Lcom/igexin/push/core/c/y;

    invoke-static {v0}, Lcom/igexin/push/core/c/w;->a(Lcom/igexin/push/core/c/y;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static c()V
    .locals 3

    sget-object v0, Lcom/igexin/push/core/c/x;->a:[I

    sget-object v1, Lcom/igexin/push/core/c/w;->e:Lcom/igexin/push/core/c/y;

    invoke-virtual {v1}, Lcom/igexin/push/core/c/y;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/igexin/push/core/c/f;->a()Lcom/igexin/push/core/c/f;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/igexin/push/core/c/f;->b(J)Z

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/igexin/push/core/c/y;->a:Lcom/igexin/push/core/c/y;

    invoke-static {v0}, Lcom/igexin/push/core/c/w;->a(Lcom/igexin/push/core/c/y;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static d()V
    .locals 3

    invoke-static {}, Lcom/igexin/push/core/c/w;->f()V

    sget-boolean v0, Lcom/igexin/push/core/g;->m:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/igexin/push/core/c/f;->a()Lcom/igexin/push/core/c/f;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/igexin/push/core/c/f;->b(J)Z

    :cond_0
    sget-object v0, Lcom/igexin/push/core/c/x;->a:[I

    sget-object v1, Lcom/igexin/push/core/c/w;->e:Lcom/igexin/push/core/c/y;

    invoke-virtual {v1}, Lcom/igexin/push/core/c/y;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    sget v0, Lcom/igexin/push/core/c/w;->f:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/igexin/push/core/c/w;->f:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_1

    sget-object v0, Lcom/igexin/push/core/c/y;->b:Lcom/igexin/push/core/c/y;

    invoke-static {v0}, Lcom/igexin/push/core/c/w;->a(Lcom/igexin/push/core/c/y;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static e()Ljava/lang/String;
    .locals 6

    sget-object v0, Lcom/igexin/push/core/c/w;->d:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :goto_0
    sget-object v0, Lcom/igexin/push/core/c/w;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    sget v0, Lcom/igexin/push/core/c/w;->c:I

    sget-object v1, Lcom/igexin/push/core/c/w;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    sput v0, Lcom/igexin/push/core/c/w;->c:I

    :cond_0
    sget-object v0, Lcom/igexin/push/core/c/w;->d:Ljava/util/List;

    sget v1, Lcom/igexin/push/core/c/w;->c:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/push/core/c/z;

    iget-wide v4, v0, Lcom/igexin/push/core/c/z;->b:J

    cmp-long v1, v4, v2

    if-gez v1, :cond_1

    sget-object v1, Lcom/igexin/push/core/c/w;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget v1, Lcom/igexin/push/core/c/w;->c:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/igexin/push/core/c/w;->c:I

    iget-object v0, v0, Lcom/igexin/push/core/c/z;->a:Ljava/lang/String;

    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static f()V
    .locals 8

    const-wide/32 v6, 0x5265c00

    sget-object v0, Lcom/igexin/push/core/c/x;->a:[I

    sget-object v1, Lcom/igexin/push/core/c/w;->e:Lcom/igexin/push/core/c/y;

    invoke-virtual {v1}, Lcom/igexin/push/core/c/y;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/igexin/push/core/g;->P:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    sget-wide v2, Lcom/igexin/push/core/g;->P:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x4d3f6400

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    sget-wide v2, Lcom/igexin/push/core/g;->Q:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, v6

    if-lez v0, :cond_1

    sget-object v0, Lcom/igexin/push/core/c/y;->c:Lcom/igexin/push/core/c/y;

    invoke-static {v0}, Lcom/igexin/push/core/c/w;->a(Lcom/igexin/push/core/c/y;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/igexin/push/core/c/y;->b:Lcom/igexin/push/core/c/y;

    invoke-static {v0}, Lcom/igexin/push/core/c/w;->a(Lcom/igexin/push/core/c/y;)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/igexin/push/core/g;->Q:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, v6

    if-lez v0, :cond_0

    sget-object v0, Lcom/igexin/push/core/c/y;->c:Lcom/igexin/push/core/c/y;

    invoke-static {v0}, Lcom/igexin/push/core/c/w;->a(Lcom/igexin/push/core/c/y;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
