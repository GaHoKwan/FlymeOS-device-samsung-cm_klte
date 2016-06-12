.class public Lcom/igexin/push/core/c/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/igexin/push/core/c/a;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/igexin/push/core/c/f;


# instance fields
.field private c:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/igexin/push/config/k;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_RuntimeDataManager"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/igexin/push/core/c/f;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/igexin/push/core/c/f;->c:Ljava/util/Map;

    return-void
.end method

.method public static a()Lcom/igexin/push/core/c/f;
    .locals 1

    sget-object v0, Lcom/igexin/push/core/c/f;->b:Lcom/igexin/push/core/c/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/igexin/push/core/c/f;

    invoke-direct {v0}, Lcom/igexin/push/core/c/f;-><init>()V

    sput-object v0, Lcom/igexin/push/core/c/f;->b:Lcom/igexin/push/core/c/f;

    :cond_0
    sget-object v0, Lcom/igexin/push/core/c/f;->b:Lcom/igexin/push/core/c/f;

    return-object v0
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

    const-string v1, "runtime"

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

    const-string v1, "runtime"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method

.method static synthetic a(Lcom/igexin/push/core/c/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/igexin/push/core/c/f;->f()V

    return-void
.end method

.method static synthetic a(Lcom/igexin/push/core/c/f;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/igexin/push/core/c/f;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/igexin/push/core/c/f;Landroid/database/sqlite/SQLiteDatabase;I[B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/igexin/push/core/c/f;->a(Landroid/database/sqlite/SQLiteDatabase;I[B)V

    return-void
.end method

.method static synthetic a(Lcom/igexin/push/core/c/f;Ljava/lang/String;)[B
    .locals 1

    invoke-direct {p0, p1}, Lcom/igexin/push/core/c/f;->e(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private d(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "select value from runtime where id=25"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "value"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    sget-object v3, Lcom/igexin/push/core/g;->g:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/igexin/a/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/igexin/a/a/a/a;->a([BLjava/lang/String;)[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v2, Lcom/igexin/push/core/g;->B:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    sget-object v0, Lcom/igexin/push/core/g;->B:Ljava/lang/String;

    if-nez v0, :cond_2

    sget-object v0, Lcom/igexin/push/core/g;->u:Ljava/lang/String;

    if-nez v0, :cond_4

    const-string v0, "cantgetimei"

    :goto_1
    invoke-static {v0}, Lcom/igexin/a/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/igexin/push/core/g;->B:Ljava/lang/String;

    :cond_2
    return-void

    :catch_0
    move-exception v1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :cond_4
    sget-object v0, Lcom/igexin/push/core/g;->u:Ljava/lang/String;

    goto :goto_1

    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_2
.end method

.method private e()Z
    .locals 4

    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v0

    new-instance v1, Lcom/igexin/push/core/c/o;

    invoke-direct {v1, p0}, Lcom/igexin/push/core/c/o;-><init>(Lcom/igexin/push/core/c/f;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/igexin/a/a/b/d;->a(Lcom/igexin/a/a/d/d;ZZ)Z

    move-result v0

    return v0
.end method

.method private e(Ljava/lang/String;)[B
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/push/f/d;->a([B)[B

    move-result-object v0

    return-object v0
.end method

.method private f()V
    .locals 2

    invoke-static {}, Lcom/igexin/push/f/b;->a()V

    invoke-static {}, Lcom/igexin/push/f/b;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/igexin/push/f/b;->e()V

    :cond_1
    return-void
.end method

.method private g()Ljava/lang/String;
    .locals 6

    const-string v1, ""

    new-instance v2, Ljava/util/Random;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Random;-><init>(J)V

    const/4 v0, 0x0

    :goto_0
    const/16 v3, 0xf

    if-ge v0, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    return-void
.end method

.method public a(I)Z
    .locals 4

    const/4 v3, 0x1

    sput p1, Lcom/igexin/push/core/g;->U:I

    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v0

    new-instance v1, Lcom/igexin/push/core/c/n;

    invoke-direct {v1, p0}, Lcom/igexin/push/core/c/n;-><init>(Lcom/igexin/push/core/c/f;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/igexin/a/a/b/d;->a(Lcom/igexin/a/a/d/d;ZZ)Z

    return v3
.end method

.method public a(J)Z
    .locals 5

    const/4 v3, 0x1

    invoke-static {p1, p2}, Lcom/igexin/push/core/g;->a(J)V

    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v0

    new-instance v1, Lcom/igexin/push/core/c/q;

    invoke-direct {v1, p0}, Lcom/igexin/push/core/c/q;-><init>(Lcom/igexin/push/core/c/f;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/igexin/a/a/b/d;->a(Lcom/igexin/a/a/d/d;ZZ)Z

    return v3
.end method

.method public a(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    sput-object p1, Lcom/igexin/push/core/g;->x:Ljava/lang/String;

    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v1

    new-instance v2, Lcom/igexin/push/core/c/p;

    invoke-direct {v2, p0}, Lcom/igexin/push/core/c/p;-><init>(Lcom/igexin/push/core/c/f;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/igexin/a/a/b/d;->a(Lcom/igexin/a/a/d/d;ZZ)Z

    move-result v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 1

    sput-wide p3, Lcom/igexin/push/core/g;->r:J

    sget-object v0, Lcom/igexin/push/core/g;->z:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sput-object p2, Lcom/igexin/push/core/g;->z:Ljava/lang/String;

    :cond_0
    sput-object p1, Lcom/igexin/push/core/g;->s:Ljava/lang/String;

    invoke-direct {p0}, Lcom/igexin/push/core/c/f;->e()Z

    move-result v0

    return v0
.end method

.method public a(Z)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-boolean v2, Lcom/igexin/push/core/g;->N:Z

    if-eq v2, p1, :cond_0

    sput-boolean p1, Lcom/igexin/push/core/g;->N:Z

    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v2

    new-instance v3, Lcom/igexin/push/core/c/k;

    invoke-direct {v3, p0}, Lcom/igexin/push/core/c/k;-><init>(Lcom/igexin/push/core/c/f;)V

    invoke-virtual {v2, v3, v1, v0}, Lcom/igexin/a/a/b/d;->a(Lcom/igexin/a/a/d/d;ZZ)Z

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public b()V
    .locals 4

    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v0

    new-instance v1, Lcom/igexin/push/core/c/g;

    invoke-direct {v1, p0}, Lcom/igexin/push/core/c/g;-><init>(Lcom/igexin/push/core/c/f;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/igexin/a/a/b/d;->a(Lcom/igexin/a/a/d/d;ZZ)Z

    return-void
.end method

.method public b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 11

    const/4 v6, 0x0

    const/16 v9, 0x14

    const/4 v7, 0x1

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    invoke-direct {p0, p1}, Lcom/igexin/push/core/c/f;->d(Landroid/database/sqlite/SQLiteDatabase;)V

    :try_start_0
    const-string v0, "select id, value from runtime order by id"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    if-eqz v0, :cond_21

    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_21

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eq v8, v7, :cond_1

    const/16 v2, 0xe

    if-eq v8, v2, :cond_1

    const/16 v2, 0x13

    if-eq v8, v2, :cond_1

    if-eq v8, v9, :cond_1

    const/16 v2, 0x19

    if-ne v8, v2, :cond_d

    :cond_1
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    move-object v3, v2

    move-object v2, v1

    :goto_1
    packed-switch v8, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    new-instance v2, Ljava/lang/String;

    sget-object v8, Lcom/igexin/push/core/g;->B:Ljava/lang/String;

    invoke-static {v3, v8}, Lcom/igexin/a/a/a/a;->a([BLjava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    :try_start_2
    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    :cond_2
    move-wide v2, v4

    :goto_2
    sput-wide v2, Lcom/igexin/push/core/g;->r:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-wide/16 v2, 0x0

    :try_start_3
    sput-wide v2, Lcom/igexin/push/core/g;->r:J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v2

    :goto_3
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_4
    sget-wide v2, Lcom/igexin/push/core/g;->r:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_4

    invoke-static {}, Lcom/igexin/push/f/b;->d()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    sput-wide v2, Lcom/igexin/push/core/g;->r:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/push/f/d;->a([B)[B

    move-result-object v0

    invoke-direct {p0, p1, v7, v0}, Lcom/igexin/push/core/c/f;->a(Landroid/database/sqlite/SQLiteDatabase;I[B)V

    :cond_4
    sget-object v0, Lcom/igexin/push/core/g;->s:Ljava/lang/String;

    if-nez v0, :cond_5

    invoke-static {}, Lcom/igexin/push/f/b;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    sput-object v0, Lcom/igexin/push/core/g;->t:Ljava/lang/String;

    sput-object v0, Lcom/igexin/push/core/g;->s:Ljava/lang/String;

    sget-object v0, Lcom/igexin/push/core/g;->s:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/push/f/d;->a([B)[B

    move-result-object v0

    invoke-direct {p0, p1, v9, v0}, Lcom/igexin/push/core/c/f;->a(Landroid/database/sqlite/SQLiteDatabase;I[B)V

    :cond_5
    sget-object v0, Lcom/igexin/push/core/g;->s:Ljava/lang/String;

    if-nez v0, :cond_6

    sget-wide v2, Lcom/igexin/push/core/g;->r:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_6

    sget-wide v2, Lcom/igexin/push/core/g;->r:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/a/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/igexin/push/core/g;->t:Ljava/lang/String;

    sget-wide v2, Lcom/igexin/push/core/g;->r:J

    invoke-static {v2, v3}, Lcom/igexin/push/core/g;->a(J)V

    sget-object v0, Lcom/igexin/push/core/g;->s:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/push/f/d;->a([B)[B

    move-result-object v0

    invoke-direct {p0, p1, v9, v0}, Lcom/igexin/push/core/c/f;->a(Landroid/database/sqlite/SQLiteDatabase;I[B)V

    :cond_6
    const-string v0, "cfcd208495d565ef66e7dff9f98764da"

    sget-object v2, Lcom/igexin/push/core/g;->s:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-wide v2, Lcom/igexin/push/core/g;->r:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_22

    invoke-static {}, Lcom/igexin/push/core/c/f;->a()Lcom/igexin/push/core/c/f;

    move-result-object v0

    sget-wide v2, Lcom/igexin/push/core/g;->r:J

    invoke-virtual {v0, v2, v3}, Lcom/igexin/push/core/c/f;->a(J)Z

    sget-object v0, Lcom/igexin/push/core/g;->s:Ljava/lang/String;

    sput-object v0, Lcom/igexin/push/core/g;->t:Ljava/lang/String;

    invoke-static {}, Lcom/igexin/push/f/b;->f()V

    :cond_7
    :goto_5
    sget-object v0, Lcom/igexin/push/core/g;->au:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "null"

    sget-object v1, Lcom/igexin/push/core/g;->au:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    const/16 v0, 0x20

    invoke-static {v0}, Lcom/igexin/a/b/a;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/igexin/push/core/g;->au:Ljava/lang/String;

    const/16 v0, 0xe

    sget-object v1, Lcom/igexin/push/core/g;->au:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/igexin/push/f/d;->a([B)[B

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/igexin/push/core/c/f;->a(Landroid/database/sqlite/SQLiteDatabase;I[B)V

    :cond_9
    invoke-static {}, Lcom/igexin/push/f/b;->c()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/igexin/push/core/g;->z:Ljava/lang/String;

    if-nez v1, :cond_a

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_a

    sput-object v0, Lcom/igexin/push/core/g;->z:Ljava/lang/String;

    const/4 v0, 0x2

    sget-object v1, Lcom/igexin/push/core/g;->z:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/igexin/push/core/c/f;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    :cond_a
    sget-object v0, Lcom/igexin/push/core/g;->A:Ljava/lang/String;

    if-nez v0, :cond_c

    sget-object v0, Lcom/igexin/push/core/g;->u:Ljava/lang/String;

    if-nez v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "V"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/igexin/push/core/c/f;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/igexin/push/core/g;->A:Ljava/lang/String;

    const/4 v0, 0x3

    sget-object v1, Lcom/igexin/push/core/g;->A:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/igexin/push/core/c/f;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    :cond_c
    return-void

    :cond_d
    :try_start_4
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v2

    move-object v3, v1

    goto/16 :goto_1

    :cond_e
    :try_start_5
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-wide v2

    goto/16 :goto_2

    :pswitch_2
    :try_start_6
    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    move v2, v7

    :goto_6
    sput-boolean v2, Lcom/igexin/push/core/g;->l:Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_7
    if-eqz v1, :cond_f

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_f
    throw v0

    :cond_10
    :try_start_7
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    goto :goto_6

    :pswitch_3
    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    move-object v2, v1

    :cond_11
    sput-object v2, Lcom/igexin/push/core/g;->z:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_4
    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    move-wide v2, v4

    :goto_8
    sput-wide v2, Lcom/igexin/push/core/g;->H:J

    goto/16 :goto_0

    :cond_12
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_8

    :pswitch_5
    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    move-wide v2, v4

    :goto_9
    sput-wide v2, Lcom/igexin/push/core/g;->G:J

    goto/16 :goto_0

    :cond_13
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_9

    :pswitch_6
    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    move-wide v2, v4

    :goto_a
    sput-wide v2, Lcom/igexin/push/core/g;->F:J

    goto/16 :goto_0

    :cond_14
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_a

    :pswitch_7
    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    move-wide v2, v4

    :goto_b
    sput-wide v2, Lcom/igexin/push/core/g;->P:J

    goto/16 :goto_0

    :cond_15
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_b

    :pswitch_8
    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    move-wide v2, v4

    :goto_c
    sput-wide v2, Lcom/igexin/push/core/g;->Q:J

    goto/16 :goto_0

    :cond_16
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_c

    :pswitch_9
    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    move-object v2, v1

    :cond_17
    sput-object v2, Lcom/igexin/push/core/g;->A:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_a
    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    move-wide v2, v4

    :goto_d
    sput-wide v2, Lcom/igexin/push/core/g;->K:J

    goto/16 :goto_0

    :cond_18
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_d

    :pswitch_b
    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    move-wide v2, v4

    :goto_e
    sput-wide v2, Lcom/igexin/push/core/g;->L:J

    goto/16 :goto_0

    :cond_19
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_e

    :pswitch_c
    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    move-object v2, v1

    :cond_1a
    sput-object v2, Lcom/igexin/push/core/g;->M:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_d
    new-instance v2, Ljava/lang/String;

    sget-object v8, Lcom/igexin/push/core/g;->B:Ljava/lang/String;

    invoke-static {v3, v8}, Lcom/igexin/a/a/a/a;->a([BLjava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    sput-object v2, Lcom/igexin/push/core/g;->au:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_e
    new-instance v2, Ljava/lang/String;

    sget-object v8, Lcom/igexin/push/core/g;->B:Ljava/lang/String;

    invoke-static {v3, v8}, Lcom/igexin/a/a/a/a;->a([BLjava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    move-object v2, v1

    :cond_1b
    sput-object v2, Lcom/igexin/push/core/g;->x:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_f
    new-instance v2, Ljava/lang/String;

    sget-object v8, Lcom/igexin/push/core/g;->B:Ljava/lang/String;

    invoke-static {v3, v8}, Lcom/igexin/a/a/a/a;->a([BLjava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    move-object v2, v1

    :cond_1c
    sput-object v2, Lcom/igexin/push/core/g;->t:Ljava/lang/String;

    sput-object v2, Lcom/igexin/push/core/g;->s:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_10
    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/igexin/push/core/g;->N:Z

    goto/16 :goto_0

    :pswitch_11
    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    move-wide v2, v4

    :goto_f
    sput-wide v2, Lcom/igexin/push/core/g;->O:J

    goto/16 :goto_0

    :cond_1d
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_f

    :pswitch_12
    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    move-object v2, v1

    :cond_1e
    sput-object v2, Lcom/igexin/push/core/g;->S:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_13
    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    move v2, v6

    :goto_10
    sput v2, Lcom/igexin/push/core/g;->U:I

    goto/16 :goto_0

    :cond_1f
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_10

    :pswitch_14
    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    move-wide v2, v4

    :goto_11
    sput-wide v2, Lcom/igexin/push/core/g;->aw:J

    goto/16 :goto_0

    :cond_20
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-wide v2

    goto :goto_11

    :cond_21
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    :cond_22
    sput-object v1, Lcom/igexin/push/core/g;->t:Ljava/lang/String;

    sput-object v1, Lcom/igexin/push/core/g;->s:Ljava/lang/String;

    sput-wide v4, Lcom/igexin/push/core/g;->r:J

    goto/16 :goto_5

    :catchall_1
    move-exception v0

    goto/16 :goto_7

    :catch_2
    move-exception v0

    move-object v0, v1

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_e
        :pswitch_f
        :pswitch_14
    .end packed-switch
.end method

.method public b(J)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-wide v2, Lcom/igexin/push/core/g;->P:J

    cmp-long v2, v2, p1

    if-eqz v2, :cond_0

    sput-wide p1, Lcom/igexin/push/core/g;->P:J

    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v2

    new-instance v3, Lcom/igexin/push/core/c/s;

    invoke-direct {v3, p0}, Lcom/igexin/push/core/c/s;-><init>(Lcom/igexin/push/core/c/f;)V

    invoke-virtual {v2, v3, v1, v0}, Lcom/igexin/a/a/b/d;->a(Lcom/igexin/a/a/d/d;ZZ)Z

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x1

    sput-object p1, Lcom/igexin/push/core/g;->z:Ljava/lang/String;

    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v0

    new-instance v1, Lcom/igexin/push/core/c/r;

    invoke-direct {v1, p0}, Lcom/igexin/push/core/c/r;-><init>(Lcom/igexin/push/core/c/f;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/igexin/a/a/b/d;->a(Lcom/igexin/a/a/d/d;ZZ)Z

    return v3
.end method

.method public c(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    sget-wide v0, Lcom/igexin/push/core/g;->r:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sget-object v1, Lcom/igexin/push/core/g;->B:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/igexin/a/a/a/a;->b([BLjava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v0}, Lcom/igexin/push/core/c/f;->a(Landroid/database/sqlite/SQLiteDatabase;I[B)V

    const/4 v0, 0x4

    sget-boolean v1, Lcom/igexin/push/core/g;->l:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/igexin/push/core/c/f;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    const/16 v0, 0x8

    sget-wide v2, Lcom/igexin/push/core/g;->H:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/igexin/push/core/c/f;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    const/4 v0, 0x7

    sget-wide v2, Lcom/igexin/push/core/g;->G:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/igexin/push/core/c/f;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    const/4 v0, 0x6

    sget-wide v2, Lcom/igexin/push/core/g;->F:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/igexin/push/core/c/f;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    const/16 v0, 0x9

    sget-wide v2, Lcom/igexin/push/core/g;->P:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/igexin/push/core/c/f;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    const/16 v0, 0xa

    sget-wide v2, Lcom/igexin/push/core/g;->Q:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/igexin/push/core/c/f;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    const/4 v0, 0x3

    sget-object v1, Lcom/igexin/push/core/g;->A:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/igexin/push/core/c/f;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    const/16 v0, 0xb

    sget-wide v2, Lcom/igexin/push/core/g;->K:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/igexin/push/core/c/f;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    const/16 v0, 0xc

    sget-wide v2, Lcom/igexin/push/core/g;->L:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/igexin/push/core/c/f;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    const/16 v0, 0x14

    sget-object v1, Lcom/igexin/push/core/g;->s:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    sget-object v2, Lcom/igexin/push/core/g;->B:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/igexin/a/a/a/a;->b([BLjava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/igexin/push/core/c/f;->a(Landroid/database/sqlite/SQLiteDatabase;I[B)V

    const/4 v0, 0x2

    sget-object v1, Lcom/igexin/push/core/g;->z:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/igexin/push/core/c/f;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    const/16 v0, 0x19

    sget-object v1, Lcom/igexin/push/core/g;->B:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    sget-object v2, Lcom/igexin/push/core/g;->g:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/igexin/a/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/igexin/a/a/a/a;->b([BLjava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/igexin/push/core/c/f;->a(Landroid/database/sqlite/SQLiteDatabase;I[B)V

    return-void
.end method

.method public c()Z
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/igexin/push/core/g;->r:J

    const/4 v0, 0x0

    sput-object v0, Lcom/igexin/push/core/g;->s:Ljava/lang/String;

    invoke-direct {p0}, Lcom/igexin/push/core/c/f;->e()Z

    move-result v0

    return v0
.end method

.method public c(J)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-wide v2, Lcom/igexin/push/core/g;->L:J

    cmp-long v2, v2, p1

    if-eqz v2, :cond_0

    sput-wide p1, Lcom/igexin/push/core/g;->L:J

    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v2

    new-instance v3, Lcom/igexin/push/core/c/t;

    invoke-direct {v3, p0}, Lcom/igexin/push/core/c/t;-><init>(Lcom/igexin/push/core/c/f;)V

    invoke-virtual {v2, v3, v1, v0}, Lcom/igexin/a/a/b/d;->a(Lcom/igexin/a/a/d/d;ZZ)Z

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    sget-object v2, Lcom/igexin/push/core/g;->M:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sput-object p1, Lcom/igexin/push/core/g;->M:Ljava/lang/String;

    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v2

    new-instance v3, Lcom/igexin/push/core/c/j;

    invoke-direct {v3, p0}, Lcom/igexin/push/core/c/j;-><init>(Lcom/igexin/push/core/c/f;)V

    invoke-virtual {v2, v3, v1, v0}, Lcom/igexin/a/a/b/d;->a(Lcom/igexin/a/a/d/d;ZZ)Z

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public d()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/igexin/push/core/c/f;->c:Ljava/util/Map;

    return-object v0
.end method

.method public d(J)Z
    .locals 5

    const/4 v3, 0x1

    sput-wide p1, Lcom/igexin/push/core/g;->aw:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/igexin/push/core/c/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " save idc config failed time : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v0

    new-instance v1, Lcom/igexin/push/core/c/u;

    invoke-direct {v1, p0, p1, p2}, Lcom/igexin/push/core/c/u;-><init>(Lcom/igexin/push/core/c/f;J)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/igexin/a/a/b/d;->a(Lcom/igexin/a/a/d/d;ZZ)Z

    return v3
.end method

.method public d(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcom/igexin/push/core/g;->S:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sput-object p1, Lcom/igexin/push/core/g;->S:Ljava/lang/String;

    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v2

    new-instance v3, Lcom/igexin/push/core/c/m;

    invoke-direct {v3, p0}, Lcom/igexin/push/core/c/m;-><init>(Lcom/igexin/push/core/c/f;)V

    invoke-virtual {v2, v3, v1, v0}, Lcom/igexin/a/a/b/d;->a(Lcom/igexin/a/a/d/d;ZZ)Z

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public e(J)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-wide v2, Lcom/igexin/push/core/g;->Q:J

    cmp-long v2, v2, p1

    if-eqz v2, :cond_0

    sput-wide p1, Lcom/igexin/push/core/g;->Q:J

    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v2

    new-instance v3, Lcom/igexin/push/core/c/v;

    invoke-direct {v3, p0}, Lcom/igexin/push/core/c/v;-><init>(Lcom/igexin/push/core/c/f;)V

    invoke-virtual {v2, v3, v1, v0}, Lcom/igexin/a/a/b/d;->a(Lcom/igexin/a/a/d/d;ZZ)Z

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public f(J)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-wide v2, Lcom/igexin/push/core/g;->G:J

    cmp-long v2, v2, p1

    if-eqz v2, :cond_0

    sput-wide p1, Lcom/igexin/push/core/g;->G:J

    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v2

    new-instance v3, Lcom/igexin/push/core/c/h;

    invoke-direct {v3, p0}, Lcom/igexin/push/core/c/h;-><init>(Lcom/igexin/push/core/c/f;)V

    invoke-virtual {v2, v3, v1, v0}, Lcom/igexin/a/a/b/d;->a(Lcom/igexin/a/a/d/d;ZZ)Z

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public g(J)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-wide v2, Lcom/igexin/push/core/g;->K:J

    cmp-long v2, v2, p1

    if-eqz v2, :cond_0

    sput-wide p1, Lcom/igexin/push/core/g;->K:J

    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v2

    new-instance v3, Lcom/igexin/push/core/c/i;

    invoke-direct {v3, p0}, Lcom/igexin/push/core/c/i;-><init>(Lcom/igexin/push/core/c/f;)V

    invoke-virtual {v2, v3, v1, v0}, Lcom/igexin/a/a/b/d;->a(Lcom/igexin/a/a/d/d;ZZ)Z

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public h(J)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-wide v2, Lcom/igexin/push/core/g;->O:J

    cmp-long v2, v2, p1

    if-eqz v2, :cond_0

    sput-wide p1, Lcom/igexin/push/core/g;->O:J

    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v2

    new-instance v3, Lcom/igexin/push/core/c/l;

    invoke-direct {v3, p0}, Lcom/igexin/push/core/c/l;-><init>(Lcom/igexin/push/core/c/f;)V

    invoke-virtual {v2, v3, v1, v0}, Lcom/igexin/a/a/b/d;->a(Lcom/igexin/a/a/d/d;ZZ)Z

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
