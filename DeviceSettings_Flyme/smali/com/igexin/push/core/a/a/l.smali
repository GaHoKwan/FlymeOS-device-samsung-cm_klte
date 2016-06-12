.class public Lcom/igexin/push/core/a/a/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/igexin/push/core/a/a/a;


# static fields
.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;

.field private static final d:Ljava/lang/String;


# instance fields
.field private a:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/igexin/push/core/a;->n:Ljava/lang/String;

    sput-object v0, Lcom/igexin/push/core/a/a/l;->b:Ljava/lang/String;

    sget-object v0, Lcom/igexin/push/core/a;->p:Ljava/lang/String;

    sput-object v0, Lcom/igexin/push/core/a/a/l;->c:Ljava/lang/String;

    sget-object v0, Lcom/igexin/push/core/a;->o:Ljava/lang/String;

    sput-object v0, Lcom/igexin/push/core/a/a/l;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/igexin/push/core/a/a/l;->a:Landroid/content/pm/PackageManager;

    return-void
.end method

.method static synthetic a(Lcom/igexin/push/core/a/a/l;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/igexin/push/core/a/a/l;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    :try_start_0
    sget-object v0, Lcom/igexin/push/core/g;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    sget-object v5, Lcom/igexin/push/core/a/a/l;->b:Ljava/lang/String;

    iget-object v6, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Lcom/igexin/push/core/a/a/l;->d:Ljava/lang/String;

    iget-object v6, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Lcom/igexin/push/core/a/a/l;->c:Ljava/lang/String;

    iget-object v6, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    iget-object v0, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(ILjava/lang/String;)Ljava/util/List;
    .locals 13

    const/4 v11, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    new-instance v4, Ljava/io/File;

    const-string v1, "/sdcard/libs"

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    move v1, v2

    :goto_1
    array-length v3, v5

    if-ge v1, v3, :cond_0

    aget-object v3, v5, v1

    const-string v6, ".db"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_2

    aget-object v3, v5, v1

    const-string v6, "app.db"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    aget-object v3, v5, v1

    const-string v6, "imsi.db"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    aget-object v3, v5, v1

    const-string v6, "com.igexin.sdk.deviceId.db"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    aget-object v3, v5, v1

    aget-object v6, v5, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x3

    invoke-virtual {v3, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    :try_start_0
    new-instance v3, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v5, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x400

    new-array v7, v7, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_2
    invoke-virtual {v8, v7}, Ljava/io/InputStream;->read([B)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_3

    const/4 v10, 0x0

    invoke-virtual {v3, v7, v10, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    :goto_3
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :try_start_3
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    sget-object v3, Lcom/igexin/push/core/g;->u:Ljava/lang/String;

    if-nez v3, :cond_5

    const-string v3, "cantgetimei"

    :goto_5
    invoke-static {v3}, Lcom/igexin/a/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v8, Ljava/lang/String;

    invoke-static {v7, v3}, Lcom/igexin/a/a/a/a;->a([BLjava/lang/String;)[B

    move-result-object v3

    invoke-direct {v8, v3}, Ljava/lang/String;-><init>([B)V

    const-string v3, "\\|"

    invoke-virtual {v8, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    aget-object v7, v3, v7

    const-string v8, "v"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x0

    aget-object v7, v3, v7

    const-string v8, "null"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_6

    const/4 v7, 0x0

    const/4 v8, 0x0

    aget-object v8, v3, v8

    const/4 v9, 0x7

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v7

    :cond_4
    :goto_6
    const/4 v7, 0x0

    aget-object v7, v3, v7

    invoke-static {v7}, Lcom/igexin/a/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez p1, :cond_7

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object v0, v3

    goto/16 :goto_0

    :cond_5
    :try_start_5
    sget-object v3, Lcom/igexin/push/core/g;->u:Ljava/lang/String;

    goto :goto_5

    :cond_6
    const/4 v7, 0x0

    const/4 v8, 0x0

    aget-object v8, v3, v8

    const/16 v9, 0x14

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v7

    goto :goto_6

    :cond_7
    array-length v7, v3

    if-le v7, v11, :cond_2

    const/4 v7, 0x1

    aget-object v3, v3, v7

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v0, :cond_8

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    :cond_8
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_4

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V

    goto/16 :goto_4

    :catch_2
    move-exception v0

    move-object v12, v0

    move-object v0, v3

    move-object v3, v12

    goto/16 :goto_3
.end method

.method static synthetic a(Lcom/igexin/push/core/a/a/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/igexin/push/core/a/a/l;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/igexin/push/core/g;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-1"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "30025"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/igexin/push/core/a/a/l;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "feedback actionId=30025 result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;ZLcom/igexin/push/core/bean/PushTaskBean;Lcom/igexin/push/core/bean/BaseAction;)V
    .locals 9

    const/4 v8, 0x1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/igexin/push/core/a/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lcom/igexin/push/core/bean/PushTaskBean;->getMessageId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Lcom/igexin/push/core/bean/PushTaskBean;->getTaskId()Ljava/lang/String;

    move-result-object v5

    move-object v0, p4

    check-cast v0, Lcom/igexin/push/core/bean/m;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/igexin/push/core/bean/m;->a()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1}, Lcom/igexin/push/core/a/a/l;->b(Ljava/lang/String;)V

    if-eqz v2, :cond_a

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v3, "messageId"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "taskId"

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "id"

    invoke-interface {v1, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "pkgName"

    invoke-interface {v1, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v3, Lcom/igexin/push/core/g;->g:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "#"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0, p1}, Lcom/igexin/push/core/a/a/l;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "#"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "/"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v3, Lcom/igexin/push/core/a/a/l;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/igexin/push/core/a/a/l;->b:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "#"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v3, Lcom/igexin/push/core/a/a/l;->b:Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/igexin/push/core/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v1, "0"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    :goto_0
    const-string v2, "30025"

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/igexin/push/core/a/a/l;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "feedback actionId=30025 result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_1
    if-ne p2, v8, :cond_3

    :try_start_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v3, p1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "action"

    const-string v8, "com.igexin.action.initialize.slave"

    invoke-virtual {v3, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "op_app"

    sget-object v8, Lcom/igexin/push/core/g;->e:Ljava/lang/String;

    invoke-virtual {v3, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "isSlave"

    const/4 v8, 0x1

    invoke-virtual {v3, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v2, Lcom/igexin/push/core/g;->g:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :try_start_2
    const-string v2, "serviceName"

    sget-object v3, Lcom/igexin/push/core/a/a/l;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v1}, Lcom/igexin/push/core/a/a/l;->a(Ljava/util/Map;)V

    const-string v1, "1"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V

    invoke-direct {p0, v7, v4, v5, v6}, Lcom/igexin/push/core/a/a/l;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1, v2}, Lcom/igexin/push/core/a/a/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, v7, v4, v5, v6}, Lcom/igexin/push/core/a/a/l;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    sget-object v3, Lcom/igexin/push/core/a/a/l;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    sget-object v3, Lcom/igexin/push/core/a/a/l;->d:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "#"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v3, Lcom/igexin/push/core/a/a/l;->d:Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/igexin/push/core/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v1, "0"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :cond_5
    invoke-direct {p0, p1, v2}, Lcom/igexin/push/core/a/a/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-direct {p0, v7, v4, v5, v6}, Lcom/igexin/push/core/a/a/l;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string v2, "serviceName"

    sget-object v3, Lcom/igexin/push/core/a/a/l;->d:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v1}, Lcom/igexin/push/core/a/a/l;->a(Ljava/util/Map;)V

    const-string v1, "1"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :cond_7
    sget-object v3, Lcom/igexin/push/core/a/a/l;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/igexin/push/core/a/a/l;->c:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "#"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v3, Lcom/igexin/push/core/a/a/l;->c:Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/igexin/push/core/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v1, "0"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :cond_8
    invoke-direct {p0, p1, v2}, Lcom/igexin/push/core/a/a/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-direct {p0, v7, v4, v5, v6}, Lcom/igexin/push/core/a/a/l;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    const-string v2, "serviceName"

    sget-object v3, Lcom/igexin/push/core/a/a/l;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v1}, Lcom/igexin/push/core/a/a/l;->a(Ljava/util/Map;)V

    const-string v1, "1"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :cond_a
    move-object v0, p4

    check-cast v0, Lcom/igexin/push/core/bean/m;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/igexin/push/core/bean/m;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    move-object v0, p4

    check-cast v0, Lcom/igexin/push/core/bean/m;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/igexin/push/core/bean/m;->d()Ljava/lang/String;

    move-result-object v7

    :goto_2
    move-object v0, p4

    check-cast v0, Lcom/igexin/push/core/bean/m;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/igexin/push/core/bean/m;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    check-cast p4, Lcom/igexin/push/core/bean/m;

    invoke-virtual {p4}, Lcom/igexin/push/core/bean/m;->c()Ljava/lang/String;

    move-result-object v8

    :goto_3
    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/igexin/push/core/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    const-string v7, ""

    goto :goto_2

    :cond_c
    const-string v8, ""
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3
.end method

.method private a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v0, "-1"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "30025"

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/igexin/push/core/a/a/l;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "feedback actionId=30025 result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/util/Map;)V
    .locals 4

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v0

    new-instance v1, Lcom/igexin/push/core/a/a/m;

    const-wide/32 v2, 0x2bf20

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/igexin/push/core/a/a/m;-><init>(Lcom/igexin/push/core/a/a/l;JLjava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/igexin/push/core/f;->a(Lcom/igexin/push/e/b/f;)Z

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v2, 0x0

    sget-object v0, Lcom/igexin/push/core/g;->g:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    move v1, v2

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method private b(Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0, p1}, Lcom/igexin/push/core/a/a/l;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/igexin/push/core/g;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://downloads."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/download"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/igexin/push/core/bean/PushTaskBean;

    invoke-direct {v0}, Lcom/igexin/push/core/bean/PushTaskBean;-><init>()V

    sget-object v1, Lcom/igexin/push/core/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/igexin/push/core/bean/PushTaskBean;->setAppid(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/igexin/push/core/bean/PushTaskBean;->setMessageId(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/igexin/push/core/bean/PushTaskBean;->setTaskId(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Lcom/igexin/push/core/bean/PushTaskBean;->setId(Ljava/lang/String;)V

    sget-object v1, Lcom/igexin/push/core/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/igexin/push/core/bean/PushTaskBean;->setAppKey(Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/push/core/a/e;->a()Lcom/igexin/push/core/a/e;

    move-result-object v1

    invoke-virtual {v1, v0, p1, p2}, Lcom/igexin/push/core/a/e;->a(Lcom/igexin/push/core/bean/PushTaskBean;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/igexin/push/core/g;->g:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/igexin/push/core/g;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/igexin/push/core/a/a/l;->a:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/igexin/push/core/a/a/l;->a:Landroid/content/pm/PackageManager;

    const/16 v2, 0x8

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    if-eqz v2, :cond_0

    array-length v1, v2

    if-eqz v1, :cond_0

    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    iget-object v5, v4, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    const-string v6, "com.igexin.download.DownloadProvider"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "downloads."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    :try_start_0
    sget-object v0, Lcom/igexin/push/core/g;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/push/core/a/a/l;->a:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/igexin/push/core/a/a/l;->a:Landroid/content/pm/PackageManager;

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "PUSH_APPID"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/igexin/push/core/bean/PushTaskBean;Lcom/igexin/push/core/bean/BaseAction;)Lcom/igexin/push/core/b;
    .locals 1

    sget-object v0, Lcom/igexin/push/core/b;->a:Lcom/igexin/push/core/b;

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/igexin/push/core/bean/BaseAction;
    .locals 2

    :try_start_0
    sget-boolean v0, Lcom/igexin/push/config/l;->r:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    const-string v0, "do"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "actionid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "pkgname"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "appid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "cid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    new-instance v0, Lcom/igexin/push/core/bean/m;

    invoke-direct {v0}, Lcom/igexin/push/core/bean/m;-><init>()V

    const-string v1, "wakeupsdk"

    invoke-virtual {v0, v1}, Lcom/igexin/push/core/bean/m;->setType(Ljava/lang/String;)V

    const-string v1, "actionid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/push/core/bean/m;->setActionId(Ljava/lang/String;)V

    const-string v1, "do"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/push/core/bean/m;->setDoActionId(Ljava/lang/String;)V

    const-string v1, "pkgname"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "pkgname"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/push/core/bean/m;->b(Ljava/lang/String;)V

    :cond_1
    :goto_0
    const-string v1, "is_forcestart"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "is_forcestart"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/igexin/push/core/bean/m;->a(Z)V

    :cond_2
    const-string v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/push/core/bean/m;->a(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-object v0

    :cond_4
    const-string v1, "cid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "cid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/push/core/bean/m;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/a/a/c/a;->b(Ljava/lang/String;)V

    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    :try_start_1
    const-string v1, "appid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "appid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/push/core/bean/m;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public b(Lcom/igexin/push/core/bean/PushTaskBean;Lcom/igexin/push/core/bean/BaseAction;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    move-object v0, p2

    check-cast v0, Lcom/igexin/push/core/bean/m;

    invoke-virtual {v0}, Lcom/igexin/push/core/bean/m;->c()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    invoke-virtual {v0}, Lcom/igexin/push/core/bean/m;->e()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v0}, Lcom/igexin/push/core/bean/m;->e()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/igexin/push/core/a/a/l;->a(ILjava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v6, :cond_2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move v2, v6

    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/igexin/push/core/bean/m;->b()Z

    move-result v0

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/igexin/push/core/a/a/l;->a(Ljava/lang/String;ZLcom/igexin/push/core/bean/PushTaskBean;Lcom/igexin/push/core/bean/BaseAction;)V

    move v0, v2

    :goto_1
    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getTaskId()Ljava/lang/String;

    move-result-object v2

    move-object v0, p2

    check-cast v0, Lcom/igexin/push/core/bean/m;

    invoke-virtual {v0}, Lcom/igexin/push/core/bean/m;->a()Ljava/lang/String;

    move-result-object v3

    move-object v0, p2

    check-cast v0, Lcom/igexin/push/core/bean/m;

    invoke-virtual {v0}, Lcom/igexin/push/core/bean/m;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    move-object v0, p2

    check-cast v0, Lcom/igexin/push/core/bean/m;

    invoke-virtual {v0}, Lcom/igexin/push/core/bean/m;->d()Ljava/lang/String;

    move-result-object v4

    :goto_2
    move-object v0, p2

    check-cast v0, Lcom/igexin/push/core/bean/m;

    invoke-virtual {v0}, Lcom/igexin/push/core/bean/m;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    move-object v0, p2

    check-cast v0, Lcom/igexin/push/core/bean/m;

    invoke-virtual {v0}, Lcom/igexin/push/core/bean/m;->c()Ljava/lang/String;

    move-result-object v5

    :goto_3
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/igexin/push/core/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p2}, Lcom/igexin/push/core/bean/BaseAction;->getDoActionId()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/igexin/push/core/a/e;->a()Lcom/igexin/push/core/a/e;

    move-result-object v0

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/igexin/push/core/bean/BaseAction;->getDoActionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/igexin/push/core/a/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    return v6

    :cond_2
    move v2, v3

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/igexin/push/core/bean/m;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/igexin/push/core/bean/m;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v6, v1}, Lcom/igexin/push/core/a/a/l;->a(ILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_5

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/igexin/push/core/bean/m;->b()Z

    move-result v4

    invoke-direct {p0, v1, v4, p1, p2}, Lcom/igexin/push/core/a/a/l;->a(Ljava/lang/String;ZLcom/igexin/push/core/bean/PushTaskBean;Lcom/igexin/push/core/bean/BaseAction;)V

    goto :goto_4

    :cond_4
    move v0, v2

    goto/16 :goto_1

    :cond_5
    move v0, v3

    goto/16 :goto_1

    :cond_6
    const-string v4, ""

    goto :goto_2

    :cond_7
    const-string v5, ""

    goto :goto_3

    :cond_8
    move v0, v2

    goto/16 :goto_1

    :cond_9
    move v2, v6

    goto/16 :goto_0
.end method
