.class public Lcom/igexin/push/f/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/igexin/push/core/bean/f;)V
    .locals 9

    const/4 v3, 0x1

    const/4 v4, 0x0

    sput v4, Lcom/igexin/push/core/g;->ap:I

    sput v4, Lcom/igexin/push/core/g;->aq:I

    sput-object p0, Lcom/igexin/push/core/g;->as:Lcom/igexin/push/core/bean/f;

    invoke-virtual {p0}, Lcom/igexin/push/core/bean/f;->b()Ljava/util/Map;

    move-result-object v2

    sget-object v0, Lcom/igexin/push/config/l;->t:Lcom/igexin/push/core/bean/f;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/igexin/push/config/l;->t:Lcom/igexin/push/core/bean/f;

    invoke-virtual {v0}, Lcom/igexin/push/core/bean/f;->b()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/push/core/bean/e;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    sput-boolean v3, Lcom/igexin/push/core/g;->at:Z

    invoke-virtual {v0}, Lcom/igexin/push/core/bean/e;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/push/f/b;->a(Ljava/lang/String;)Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-eqz v7, :cond_3

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/igexin/push/config/a;->a()Lcom/igexin/push/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/config/a;->g()V

    :cond_3
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v3

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/push/core/bean/e;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/igexin/push/core/bean/e;

    invoke-virtual {v1}, Lcom/igexin/push/core/bean/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/igexin/push/core/bean/e;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    sput-boolean v3, Lcom/igexin/push/core/g;->at:Z

    sget v1, Lcom/igexin/push/core/g;->ap:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/igexin/push/core/g;->ap:I

    invoke-static {v0}, Lcom/igexin/push/f/b;->a(Lcom/igexin/push/core/bean/e;)V

    move v2, v4

    :cond_4
    move v0, v2

    :goto_3
    move v2, v0

    goto :goto_2

    :cond_5
    sget v1, Lcom/igexin/push/core/g;->ap:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/igexin/push/core/g;->ap:I

    invoke-static {v0}, Lcom/igexin/push/f/b;->a(Lcom/igexin/push/core/bean/e;)V

    move v0, v4

    goto :goto_3

    :cond_6
    if-eqz v2, :cond_7

    sget-object v0, Lcom/igexin/push/config/l;->t:Lcom/igexin/push/core/bean/f;

    invoke-virtual {p0}, Lcom/igexin/push/core/bean/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/push/core/bean/f;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/push/config/a;->a()Lcom/igexin/push/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/config/a;->g()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    :cond_7
    return-void

    :cond_8
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/push/core/bean/e;

    sget v2, Lcom/igexin/push/core/g;->ap:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/igexin/push/core/g;->ap:I

    invoke-static {v0}, Lcom/igexin/push/f/b;->a(Lcom/igexin/push/core/bean/e;)V

    goto :goto_4
.end method

.method public static a()Z
    .locals 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "none"

    sget-object v3, Lcom/igexin/push/config/l;->u:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/igexin/push/config/l;->u:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move v2, v0

    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_2

    aget-object v4, v3, v2

    invoke-static {v4}, Lcom/igexin/push/f/a;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_1
    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string v2, "none"

    sget-object v3, Lcom/igexin/push/config/l;->v:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/igexin/push/config/l;->v:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const-string v2, "android.os.ServiceManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v2, "getService"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v4, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v2, 0x1

    invoke-virtual {v5, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    move v2, v0

    :goto_2
    array-length v6, v3

    if-ge v2, v6, :cond_3

    aget-object v6, v3, v2

    invoke-static {v4, v5, v6}, Lcom/igexin/push/f/a;->a(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {p1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/igexin/push/core/g;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static b()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/igexin/push/config/l;->c:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/igexin/push/core/g;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static c()Z
    .locals 3

    sget-object v0, Lcom/igexin/push/core/g;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/igexin/push/core/g;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.permission.CHANGE_WIFI_STATE"

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
