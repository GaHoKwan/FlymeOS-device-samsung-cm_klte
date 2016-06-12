.class public Lcom/igexin/push/config/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/igexin/push/core/c/a;


# static fields
.field private static a:Lcom/igexin/push/config/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/igexin/push/config/a;
    .locals 1

    sget-object v0, Lcom/igexin/push/config/a;->a:Lcom/igexin/push/config/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/igexin/push/config/a;

    invoke-direct {v0}, Lcom/igexin/push/config/a;-><init>()V

    sput-object v0, Lcom/igexin/push/config/a;->a:Lcom/igexin/push/config/a;

    :cond_0
    sget-object v0, Lcom/igexin/push/config/a;->a:Lcom/igexin/push/config/a;

    return-object v0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 5

    const-string v0, "config"

    const-string v1, "id = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "value"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "config"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;I[B)V
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "value"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v1, "config"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method

.method static synthetic a(Lcom/igexin/push/config/a;Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/igexin/push/config/a;->a(Landroid/database/sqlite/SQLiteDatabase;I)V

    return-void
.end method

.method static synthetic a(Lcom/igexin/push/config/a;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/igexin/push/config/a;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/igexin/push/config/a;Landroid/database/sqlite/SQLiteDatabase;I[B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/igexin/push/config/a;->a(Landroid/database/sqlite/SQLiteDatabase;I[B)V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v0

    new-instance v1, Lcom/igexin/push/config/h;

    invoke-direct {v1, p0, p1}, Lcom/igexin/push/config/h;-><init>(Lcom/igexin/push/config/a;Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/igexin/a/a/b/d;->a(Lcom/igexin/a/a/d/d;ZZ)Z

    return-void
.end method

.method public b()V
    .locals 4

    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v0

    new-instance v1, Lcom/igexin/push/config/b;

    invoke-direct {v1, p0}, Lcom/igexin/push/config/b;-><init>(Lcom/igexin/push/config/a;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/igexin/a/a/b/d;->a(Lcom/igexin/a/a/d/d;ZZ)Z

    return-void
.end method

.method public b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "select id, value from config order by id"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    if-eqz v0, :cond_a

    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/16 v2, 0x14

    if-eq v4, v2, :cond_1

    const/16 v2, 0x15

    if-eq v4, v2, :cond_1

    const/16 v2, 0x16

    if-eq v4, v2, :cond_1

    const/16 v2, 0x18

    if-ne v4, v2, :cond_3

    :cond_1
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    move-object v3, v1

    :goto_1
    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v2, "null"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v2, v1

    :goto_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sput v2, Lcom/igexin/push/config/l;->a:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_3
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_4
    const-string v0, "2.7.0.0"

    sget-object v2, Lcom/igexin/push/core/g;->M:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Lcom/igexin/push/config/l;->t:Lcom/igexin/push/core/bean/f;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/igexin/push/config/l;->t:Lcom/igexin/push/core/bean/f;

    invoke-virtual {v0}, Lcom/igexin/push/core/bean/f;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_b

    sget-object v0, Lcom/igexin/push/config/l;->t:Lcom/igexin/push/core/bean/f;

    invoke-virtual {v0}, Lcom/igexin/push/core/bean/f;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/igexin/push/config/l;->t:Lcom/igexin/push/core/bean/f;

    invoke-virtual {v0}, Lcom/igexin/push/core/bean/f;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/push/core/bean/e;

    invoke-virtual {v0}, Lcom/igexin/push/core/bean/e;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/push/f/b;->a(Ljava/lang/String;)Z

    goto :goto_5

    :cond_3
    :try_start_2
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    move-object v2, v1

    goto :goto_1

    :cond_4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_2

    :pswitch_1
    const-string v2, "null"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object v2, v1

    :goto_6
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sput v2, Lcom/igexin/push/config/l;->b:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_7
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    :cond_6
    :try_start_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_6

    :pswitch_2
    const-string v2, "null"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object v2, v1

    :goto_8
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sput-wide v2, Lcom/igexin/push/config/l;->c:J

    goto/16 :goto_0

    :cond_7
    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    goto :goto_8

    :pswitch_3
    const-string v2, "null"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sput-boolean v2, Lcom/igexin/push/config/l;->f:Z

    goto/16 :goto_0

    :pswitch_4
    const-string v2, "null"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sput-boolean v2, Lcom/igexin/push/config/l;->g:Z

    goto/16 :goto_0

    :pswitch_5
    const-string v2, "null"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sput-boolean v2, Lcom/igexin/push/config/l;->h:Z

    goto/16 :goto_0

    :pswitch_6
    const-string v2, "null"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sput-boolean v2, Lcom/igexin/push/config/l;->i:Z

    goto/16 :goto_0

    :pswitch_7
    const-string v2, "null"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sput-boolean v2, Lcom/igexin/push/config/l;->j:Z

    goto/16 :goto_0

    :pswitch_8
    const-string v2, "null"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sput-boolean v2, Lcom/igexin/push/config/l;->k:Z

    goto/16 :goto_0

    :pswitch_9
    const-string v2, "null"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sput-boolean v2, Lcom/igexin/push/config/l;->n:Z

    goto/16 :goto_0

    :pswitch_a
    const-string v2, "null"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sput-boolean v2, Lcom/igexin/push/config/l;->o:Z

    goto/16 :goto_0

    :pswitch_b
    const-string v2, "null"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sput-wide v2, Lcom/igexin/push/config/l;->p:J

    goto/16 :goto_0

    :pswitch_c
    const-string v2, "null"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sput-boolean v2, Lcom/igexin/push/config/l;->l:Z

    goto/16 :goto_0

    :pswitch_d
    const-string v2, "null"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sput-boolean v2, Lcom/igexin/push/config/l;->m:Z

    goto/16 :goto_0

    :pswitch_e
    const-string v2, "null"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "null"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object v2, v1

    :goto_9
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sput v2, Lcom/igexin/push/config/l;->d:I

    goto/16 :goto_0

    :cond_8
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_9

    :pswitch_f
    const-string v2, "null"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "null"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object v2, v1

    :goto_a
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sput v2, Lcom/igexin/push/config/l;->e:I

    goto/16 :goto_0

    :cond_9
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_a

    :pswitch_10
    const-string v2, "null"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sput-boolean v2, Lcom/igexin/push/config/l;->q:Z

    goto/16 :goto_0

    :pswitch_11
    const-string v2, "null"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sput-boolean v2, Lcom/igexin/push/config/l;->r:Z

    goto/16 :goto_0

    :pswitch_12
    const-string v2, "null"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sput-boolean v2, Lcom/igexin/push/config/l;->s:Z

    goto/16 :goto_0

    :pswitch_13
    if-eqz v2, :cond_0

    new-instance v3, Ljava/lang/String;

    sget-object v4, Lcom/igexin/push/core/g;->B:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/igexin/a/a/a/a;->a([BLjava/lang/String;)[B

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/igexin/push/core/a/e;->a()Lcom/igexin/push/core/a/e;

    move-result-object v2

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/igexin/push/core/a/e;->a(Lorg/json/JSONObject;)Lcom/igexin/push/core/bean/f;

    move-result-object v2

    sput-object v2, Lcom/igexin/push/config/l;->t:Lcom/igexin/push/core/bean/f;

    goto/16 :goto_0

    :pswitch_14
    if-eqz v2, :cond_0

    new-instance v3, Ljava/lang/String;

    sget-object v4, Lcom/igexin/push/core/g;->B:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/igexin/a/a/a/a;->a([BLjava/lang/String;)[B

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    sput-object v3, Lcom/igexin/push/config/l;->u:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_15
    if-eqz v2, :cond_0

    new-instance v3, Ljava/lang/String;

    sget-object v4, Lcom/igexin/push/core/g;->B:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/igexin/a/a/a/a;->a([BLjava/lang/String;)[B

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    sput-object v3, Lcom/igexin/push/config/l;->v:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_16
    const-string v2, "null"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sput-boolean v2, Lcom/igexin/push/config/l;->w:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :pswitch_17
    if-eqz v2, :cond_0

    :try_start_4
    new-instance v3, Ljava/lang/String;

    sget-object v4, Lcom/igexin/push/core/g;->B:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/igexin/a/a/a/a;->a([BLjava/lang/String;)[B

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    if-eqz v3, :cond_0

    invoke-static {v3}, Lcom/igexin/push/config/n;->a(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :catch_1
    move-exception v2

    goto/16 :goto_0

    :cond_a
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    :cond_b
    sput-object v1, Lcom/igexin/push/config/l;->t:Lcom/igexin/push/core/bean/f;

    invoke-virtual {p0}, Lcom/igexin/push/config/a;->h()V

    :cond_c
    invoke-static {}, Lcom/igexin/push/core/c/f;->a()Lcom/igexin/push/core/c/f;

    move-result-object v0

    const-string v1, "2.7.0.0"

    invoke-virtual {v0, v1}, Lcom/igexin/push/core/c/f;->c(Ljava/lang/String;)Z

    invoke-static {}, Lcom/igexin/push/core/c/f;->a()Lcom/igexin/push/core/c/f;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/igexin/push/core/c/f;->g(J)Z

    :cond_d
    return-void

    :catchall_1
    move-exception v0

    goto/16 :goto_7

    :catch_2
    move-exception v0

    move-object v0, v1

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
    .end packed-switch
.end method

.method public c()V
    .locals 4

    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v0

    new-instance v1, Lcom/igexin/push/config/c;

    invoke-direct {v1, p0}, Lcom/igexin/push/config/c;-><init>(Lcom/igexin/push/config/a;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/igexin/a/a/b/d;->a(Lcom/igexin/a/a/d/d;ZZ)Z

    return-void
.end method

.method public c(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    const/4 v4, 0x3

    const/4 v0, 0x1

    sget v1, Lcom/igexin/push/config/l;->a:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/igexin/push/config/a;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    const/4 v0, 0x2

    sget v1, Lcom/igexin/push/config/l;->b:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/igexin/push/config/a;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    sget-wide v0, Lcom/igexin/push/config/l;->c:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v4, v0}, Lcom/igexin/push/config/a;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    const/4 v0, 0x4

    sget-boolean v1, Lcom/igexin/push/config/l;->f:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/igexin/push/config/a;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    const/4 v0, 0x5

    sget-boolean v1, Lcom/igexin/push/config/l;->g:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/igexin/push/config/a;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    const/4 v0, 0x6

    sget-boolean v1, Lcom/igexin/push/config/l;->h:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/igexin/push/config/a;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    const/4 v0, 0x7

    sget-boolean v1, Lcom/igexin/push/config/l;->i:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/igexin/push/config/a;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    const/16 v0, 0x8

    sget-boolean v1, Lcom/igexin/push/config/l;->j:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/igexin/push/config/a;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    const/16 v0, 0x9

    sget-boolean v1, Lcom/igexin/push/config/l;->k:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/igexin/push/config/a;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    const/16 v0, 0xa

    sget-boolean v1, Lcom/igexin/push/config/l;->n:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/igexin/push/config/a;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    const/16 v0, 0xb

    sget-boolean v1, Lcom/igexin/push/config/l;->o:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/igexin/push/config/a;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    const/16 v0, 0xc

    sget-wide v2, Lcom/igexin/push/config/l;->p:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/igexin/push/config/a;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    const/16 v0, 0xd

    sget-boolean v1, Lcom/igexin/push/config/l;->l:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/igexin/push/config/a;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    const/16 v0, 0xe

    sget-boolean v1, Lcom/igexin/push/config/l;->m:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/igexin/push/config/a;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    const/16 v0, 0xf

    sget v1, Lcom/igexin/push/config/l;->d:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/igexin/push/config/a;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    sget-wide v0, Lcom/igexin/push/config/l;->c:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v4, v0}, Lcom/igexin/push/config/a;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    const/16 v0, 0x11

    sget-boolean v1, Lcom/igexin/push/config/l;->q:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/igexin/push/config/a;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    const/16 v0, 0x12

    sget-boolean v1, Lcom/igexin/push/config/l;->r:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/igexin/push/config/a;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    const/16 v0, 0x13

    sget-boolean v1, Lcom/igexin/push/config/l;->s:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/igexin/push/config/a;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 4

    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v0

    new-instance v1, Lcom/igexin/push/config/d;

    invoke-direct {v1, p0}, Lcom/igexin/push/config/d;-><init>(Lcom/igexin/push/config/a;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/igexin/a/a/b/d;->a(Lcom/igexin/a/a/d/d;ZZ)Z

    return-void
.end method

.method public e()V
    .locals 4

    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v0

    new-instance v1, Lcom/igexin/push/config/e;

    invoke-direct {v1, p0}, Lcom/igexin/push/config/e;-><init>(Lcom/igexin/push/config/a;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/igexin/a/a/b/d;->a(Lcom/igexin/a/a/d/d;ZZ)Z

    return-void
.end method

.method public f()V
    .locals 4

    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v0

    new-instance v1, Lcom/igexin/push/config/f;

    invoke-direct {v1, p0}, Lcom/igexin/push/config/f;-><init>(Lcom/igexin/push/config/a;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/igexin/a/a/b/d;->a(Lcom/igexin/a/a/d/d;ZZ)Z

    return-void
.end method

.method public g()V
    .locals 4

    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v0

    new-instance v1, Lcom/igexin/push/config/g;

    invoke-direct {v1, p0}, Lcom/igexin/push/config/g;-><init>(Lcom/igexin/push/config/a;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/igexin/a/a/b/d;->a(Lcom/igexin/a/a/d/d;ZZ)Z

    return-void
.end method

.method public h()V
    .locals 4

    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v0

    new-instance v1, Lcom/igexin/push/config/i;

    invoke-direct {v1, p0}, Lcom/igexin/push/config/i;-><init>(Lcom/igexin/push/config/a;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/igexin/a/a/b/d;->a(Lcom/igexin/a/a/d/d;ZZ)Z

    return-void
.end method
