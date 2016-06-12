.class public Lcom/igexin/push/core/g;
.super Ljava/lang/Object;


# static fields
.field public static A:Ljava/lang/String;

.field public static B:Ljava/lang/String;

.field public static C:Ljava/lang/String;

.field public static D:J

.field public static E:J

.field public static F:J

.field public static G:J

.field public static H:J

.field public static I:J

.field public static J:J

.field public static K:J

.field public static L:J

.field public static M:Ljava/lang/String;

.field public static N:Z

.field public static O:J

.field public static P:J

.field public static Q:J

.field public static R:J

.field public static S:Ljava/lang/String;

.field public static T:J

.field public static U:I

.field public static V:J

.field public static W:Ljava/lang/String;

.field public static X:Ljava/lang/String;

.field public static Y:Ljava/lang/String;

.field public static Z:Ljava/lang/String;

.field public static a:Ljava/lang/String;

.field public static aa:Ljava/lang/String;

.field public static ab:Ljava/lang/String;

.field public static ac:Ljava/lang/String;

.field public static ad:Ljava/lang/String;

.field public static ae:[B

.field public static af:Z

.field public static ag:Z

.field public static ah:Z

.field public static ai:Ljava/util/Map;

.field public static aj:Ljava/util/Map;

.field public static ak:Ljava/util/HashMap;

.field public static al:Ljava/util/HashMap;

.field public static am:Ljava/util/HashMap;

.field public static an:I

.field public static ao:Ljava/util/Map;

.field public static ap:I

.field public static aq:I

.field public static ar:I

.field public static as:Lcom/igexin/push/core/bean/f;

.field public static at:Z

.field public static au:Ljava/lang/String;

.field public static av:Lcom/igexin/push/e/b/f;

.field public static aw:J

.field public static volatile ax:Z

.field private static ay:Ljava/util/HashMap;

.field private static az:Ljava/util/Map;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Z

.field public static g:Landroid/content/Context;

.field public static h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static i:Z

.field public static j:Z

.field public static k:Z

.field public static l:Z

.field public static m:Z

.field public static n:Z

.field public static o:Z

.field public static p:I

.field public static q:I

.field public static r:J

.field public static s:Ljava/lang/String;

.field public static t:Ljava/lang/String;

.field public static u:Ljava/lang/String;

.field public static v:Ljava/lang/String;

.field public static w:Ljava/lang/String;

.field public static x:Ljava/lang/String;

.field public static y:Ljava/lang/String;

.field public static z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-wide/16 v6, -0x1

    const/4 v1, 0x1

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const-string v0, ""

    sput-object v0, Lcom/igexin/push/core/g;->a:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/igexin/push/core/g;->b:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/igexin/push/core/g;->c:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/igexin/push/core/g;->d:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/igexin/push/core/g;->e:Ljava/lang/String;

    sput-boolean v2, Lcom/igexin/push/core/g;->f:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/igexin/push/core/g;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    sput-boolean v1, Lcom/igexin/push/core/g;->i:Z

    sput-boolean v2, Lcom/igexin/push/core/g;->j:Z

    sput-boolean v2, Lcom/igexin/push/core/g;->k:Z

    sput-boolean v1, Lcom/igexin/push/core/g;->l:Z

    sput-boolean v2, Lcom/igexin/push/core/g;->m:Z

    sput-boolean v2, Lcom/igexin/push/core/g;->n:Z

    sput-boolean v1, Lcom/igexin/push/core/g;->o:Z

    sput v2, Lcom/igexin/push/core/g;->p:I

    sput v2, Lcom/igexin/push/core/g;->q:I

    sput-wide v4, Lcom/igexin/push/core/g;->r:J

    const-string v0, ""

    sput-object v0, Lcom/igexin/push/core/g;->C:Ljava/lang/String;

    sput-wide v6, Lcom/igexin/push/core/g;->D:J

    sput-wide v6, Lcom/igexin/push/core/g;->E:J

    sput-wide v4, Lcom/igexin/push/core/g;->F:J

    sput-wide v4, Lcom/igexin/push/core/g;->G:J

    sput-wide v4, Lcom/igexin/push/core/g;->H:J

    sput-wide v4, Lcom/igexin/push/core/g;->I:J

    sput-wide v4, Lcom/igexin/push/core/g;->J:J

    sput-wide v4, Lcom/igexin/push/core/g;->K:J

    sput-wide v4, Lcom/igexin/push/core/g;->L:J

    const/4 v0, 0x0

    sput-object v0, Lcom/igexin/push/core/g;->M:Ljava/lang/String;

    sget-object v0, Lcom/igexin/push/config/p;->a:Ljava/lang/String;

    const-string v1, "debug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/igexin/push/core/g;->N:Z

    sput-wide v4, Lcom/igexin/push/core/g;->O:J

    sput-wide v4, Lcom/igexin/push/core/g;->R:J

    sput-wide v4, Lcom/igexin/push/core/g;->T:J

    sput v2, Lcom/igexin/push/core/g;->U:I

    sput v2, Lcom/igexin/push/core/g;->an:I

    sput v2, Lcom/igexin/push/core/g;->ap:I

    sput v2, Lcom/igexin/push/core/g;->aq:I

    sput v2, Lcom/igexin/push/core/g;->ar:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/igexin/push/core/g;->ay:Ljava/util/HashMap;

    return-void
.end method

.method public static a(Ljava/lang/String;Z)I
    .locals 4

    sget-object v1, Lcom/igexin/push/core/g;->az:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/igexin/push/core/g;->az:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/igexin/push/core/g;->az:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v0, Lcom/igexin/push/core/g;->az:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz p1, :cond_1

    add-int/lit8 v0, v0, -0x1

    sget-object v2, Lcom/igexin/push/core/g;->az:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v0, :cond_1

    sget-object v2, Lcom/igexin/push/core/g;->az:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/igexin/push/config/SDKUrlConfig;->getConfigServiceUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(J)V
    .locals 2

    sput-wide p0, Lcom/igexin/push/core/g;->r:J

    sget-wide v0, Lcom/igexin/push/core/g;->r:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/a/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/igexin/push/core/g;->s:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sput-object p0, Lcom/igexin/push/core/g;->g:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/igexin/push/core/g;->e:Ljava/lang/String;

    const-string v3, ""

    const-string v3, ""

    const-string v3, ""

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    sget-object v4, Lcom/igexin/push/core/g;->e:Ljava/lang/String;

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v3, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_5

    iget-object v3, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "PUSH_APPID"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v3, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "PUSH_APPSECRET"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v7, "PUSH_APPKEY"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "PUSH_APPKEY"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_3
    if-eqz v4, :cond_4

    if-eqz v3, :cond_4

    if-nez v0, :cond_6

    :cond_4
    move v0, v2

    :goto_0
    return v0

    :cond_5
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_0

    :cond_6
    sput-object v4, Lcom/igexin/push/core/g;->a:Ljava/lang/String;

    sput-object v0, Lcom/igexin/push/core/g;->b:Ljava/lang/String;

    sput-object v3, Lcom/igexin/push/core/g;->c:Ljava/lang/String;

    invoke-static {}, Lcom/igexin/push/config/SDKUrlConfig;->getLocation()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/igexin/push/core/g;->d:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/a/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/igexin/push/core/g;->ae:[B

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v3, Lcom/igexin/push/core/g;->e:Ljava/lang/String;

    const/16 v4, 0x1000

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v3, :cond_f

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v4, v3

    move v0, v2

    :goto_1
    if-ge v0, v4, :cond_7

    aget-object v5, v3, v0

    const-string v6, "android.permission.CALL_PHONE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    const/4 v0, 0x1

    sput-boolean v0, Lcom/igexin/push/core/g;->f:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v3, "/sdcard/libs"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_8

    :try_start_2
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :cond_8
    :goto_2
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/system/tmp/local"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_9

    :try_start_3
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :cond_9
    :goto_3
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/igexin/push/core/g;->ac:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/igexin/push/core/g;->ad:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/sdcard/libs/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/igexin/push/core/g;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".db"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/igexin/push/core/g;->Y:Ljava/lang/String;

    const-string v0, "/sdcard/libs/com.igexin.sdk.deviceId.db"

    sput-object v0, Lcom/igexin/push/core/g;->Z:Ljava/lang/String;

    const-string v0, "/sdcard/libs/app.db"

    sput-object v0, Lcom/igexin/push/core/g;->aa:Ljava/lang/String;

    const-string v0, "/sdcard/libs/imsi.db"

    sput-object v0, Lcom/igexin/push/core/g;->ab:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/sdcard/libs/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/igexin/push/core/g;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".properties"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/igexin/push/core/g;->X:Ljava/lang/String;

    :try_start_4
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/igexin/push/core/g;->u:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/igexin/push/core/g;->v:Ljava/lang/String;

    sget-object v0, Lcom/igexin/push/core/g;->y:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-boolean v0, Lcom/igexin/push/config/l;->g:Z

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/igexin/push/core/g;->b()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_a

    sget-object v3, Lcom/igexin/push/core/g;->v:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    sget-object v3, Lcom/igexin/push/core/g;->v:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/igexin/push/core/g;->y:Ljava/lang/String;

    :cond_a
    sget-object v0, Lcom/igexin/push/core/g;->y:Ljava/lang/String;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/igexin/push/core/g;->y:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    :cond_b
    const/4 v0, 0x0

    sput-object v0, Lcom/igexin/push/core/g;->y:Ljava/lang/String;

    :cond_c
    :goto_4
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/igexin/push/core/g;->w:Ljava/lang/String;

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/f;->j()Landroid/net/ConnectivityManager;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_d

    move v2, v1

    :cond_d
    sput-boolean v2, Lcom/igexin/push/core/g;->i:Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :goto_5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/igexin/push/core/g;->ai:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/igexin/push/core/g;->aj:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/igexin/push/core/g;->ak:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/igexin/push/core/g;->al:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/igexin/push/core/g;->am:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/igexin/push/core/g;->ao:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/igexin/push/core/g;->V:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.igexin.sdk.action.snlresponse."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/igexin/push/core/g;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/igexin/push/core/g;->W:Ljava/lang/String;

    new-instance v0, Lcom/igexin/sdk/a/d;

    invoke-direct {v0, p0}, Lcom/igexin/sdk/a/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/igexin/sdk/a/d;->c()Z

    move-result v0

    sput-boolean v0, Lcom/igexin/push/core/g;->j:Z

    new-instance v0, Lcom/igexin/sdk/a/c;

    invoke-direct {v0, p0}, Lcom/igexin/sdk/a/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/igexin/sdk/a/c;->c()Z

    move-result v0

    sput-boolean v0, Lcom/igexin/push/core/g;->k:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/igexin/push/core/g;->az:Ljava/util/Map;

    sput-boolean v1, Lcom/igexin/push/core/g;->ax:Z

    move v0, v1

    goto/16 :goto_0

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_f
    move v0, v2

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move v0, v2

    goto/16 :goto_0

    :cond_10
    const/4 v0, 0x0

    :try_start_5
    sput-object v0, Lcom/igexin/push/core/g;->y:Ljava/lang/String;

    goto/16 :goto_4

    :catch_2
    move-exception v0

    goto :goto_5

    :cond_11
    const/4 v0, 0x0

    sput-boolean v0, Lcom/igexin/push/core/g;->i:Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_5

    :catch_3
    move-exception v0

    goto/16 :goto_2

    :catch_4
    move-exception v3

    goto/16 :goto_3
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Integer;Z)Z
    .locals 3

    sget-object v1, Lcom/igexin/push/core/g;->az:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz p2, :cond_0

    sget-object v2, Lcom/igexin/push/core/g;->az:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v0, Lcom/igexin/push/core/g;->az:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v0, v2

    if-nez v0, :cond_0

    sget-object v0, Lcom/igexin/push/core/g;->az:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    sget-object v2, Lcom/igexin/push/core/g;->az:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static b()Ljava/util/HashMap;
    .locals 3

    const/4 v1, 0x0

    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/igexin/push/core/g;->ab:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    sget-object v2, Lcom/igexin/push/core/g;->ab:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v2}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {v2}, Ljava/io/ObjectInput;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static c()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/igexin/push/core/g;->ay:Ljava/util/HashMap;

    return-object v0
.end method
