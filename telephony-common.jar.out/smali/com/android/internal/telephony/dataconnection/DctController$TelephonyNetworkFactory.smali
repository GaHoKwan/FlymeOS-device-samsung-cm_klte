.class Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;
.super Landroid/net/NetworkFactory;
.source "DctController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DctController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TelephonyNetworkFactory"
.end annotation


# instance fields
.field private mDdsRequests:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/net/NetworkRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field private final mPendingReq:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/net/NetworkRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DctController;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DctController;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/Phone;Landroid/net/NetworkCapabilities;)V
    .locals 2
    .param p2, "l"    # Landroid/os/Looper;
    .param p3, "c"    # Landroid/content/Context;
    .param p4, "TAG"    # Ljava/lang/String;
    .param p5, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p6, "nc"    # Landroid/net/NetworkCapabilities;

    .prologue
    .line 1109
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    .line 1110
    invoke-direct {p0, p2, p3, p4, p6}, Landroid/net/NetworkFactory;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkCapabilities;)V

    .line 1103
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mDdsRequests:Landroid/util/SparseArray;

    .line 1104
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPendingReq:Landroid/util/SparseArray;

    .line 1111
    iput-object p5, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1112
    iput-object p6, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 1113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkCapabilities: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 1114
    return-void
.end method

.method private isNetworkRequestForInternet(Landroid/net/NetworkRequest;)Z
    .locals 3
    .param p1, "n"    # Landroid/net/NetworkRequest;

    .prologue
    .line 1243
    iget-object v1, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    .line 1245
    .local v0, "flag":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Is the request for Internet = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 1246
    return v0
.end method

.method private isValidRequest(Landroid/net/NetworkRequest;)Z
    .locals 2
    .param p1, "n"    # Landroid/net/NetworkRequest;

    .prologue
    .line 1238
    iget-object v1, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->getCapabilities()[I

    move-result-object v0

    .line 1239
    .local v0, "types":[I
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private registerOnDemandDdsCallback()V
    .locals 3

    .prologue
    .line 1133
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    .line 1135
    .local v0, "subController":Lcom/android/internal/telephony/SubscriptionController;
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    new-instance v2, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$1;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$1;-><init>(Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SubscriptionController;->registerForOnDemandDdsLockNotification(ILcom/android/internal/telephony/SubscriptionController$OnDemandDdsLockNotifier;)V

    .line 1142
    return-void
.end method

.method private removeRequestFromList(Landroid/util/SparseArray;Landroid/net/NetworkRequest;)V
    .locals 5
    .param p2, "n"    # Landroid/net/NetworkRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/net/NetworkRequest;",
            ">;",
            "Landroid/net/NetworkRequest;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1259
    .local p1, "list":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/net/NetworkRequest;>;"
    iget v3, p2, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkRequest;

    .line 1260
    .local v2, "nr":Landroid/net/NetworkRequest;
    if-eqz v2, :cond_0

    .line 1261
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing request = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 1262
    iget v3, p2, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 1263
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->apnForNetworkRequest(Landroid/net/NetworkRequest;)Ljava/lang/String;
    invoke-static {v3, v2}, Lcom/android/internal/telephony/dataconnection/DctController;->access$1000(Lcom/android/internal/telephony/dataconnection/DctController;Landroid/net/NetworkRequest;)Ljava/lang/String;

    move-result-object v0

    .line 1264
    .local v0, "apn":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v3, Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v3, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 1265
    .local v1, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isApnSupported(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1266
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->decApnRefCount(Ljava/lang/String;)V

    .line 1271
    .end local v0    # "apn":Ljava/lang/String;
    .end local v1    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    :cond_0
    :goto_0
    return-void

    .line 1268
    .restart local v0    # "apn":Ljava/lang/String;
    .restart local v1    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    :cond_1
    const-string v3, "Unsupported APN"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private removeRequestIfFound(Landroid/net/NetworkRequest;)V
    .locals 4
    .param p1, "n"    # Landroid/net/NetworkRequest;

    .prologue
    .line 1274
    const-string v3, "Release the request from dds queue, if found"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 1275
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mDdsRequests:Landroid/util/SparseArray;

    invoke-direct {p0, v3, p1}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->removeRequestFromList(Landroid/util/SparseArray;Landroid/net/NetworkRequest;)V

    .line 1277
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->isNetworkRequestForInternet(Landroid/net/NetworkRequest;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1278
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v2

    .line 1279
    .local v2, "subController":Lcom/android/internal/telephony/SubscriptionController;
    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/SubscriptionController;->stopOnDemandDataSubscriptionRequest(Landroid/net/NetworkRequest;)V

    .line 1290
    .end local v2    # "subController":Lcom/android/internal/telephony/SubscriptionController;
    :goto_0
    return-void

    .line 1282
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->apnForNetworkRequest(Landroid/net/NetworkRequest;)Ljava/lang/String;
    invoke-static {v3, p1}, Lcom/android/internal/telephony/dataconnection/DctController;->access$1000(Lcom/android/internal/telephony/dataconnection/DctController;Landroid/net/NetworkRequest;)Ljava/lang/String;

    move-result-object v0

    .line 1283
    .local v0, "apn":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v3, Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v3, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 1284
    .local v1, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isApnSupported(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1285
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->decApnRefCount(Ljava/lang/String;)V

    goto :goto_0

    .line 1287
    :cond_1
    const-string v3, "Unsupported APN"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private requestOnDemandDataSubscriptionLock(Landroid/net/NetworkRequest;)V
    .locals 3
    .param p1, "n"    # Landroid/net/NetworkRequest;

    .prologue
    .line 1250
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->isNetworkRequestForInternet(Landroid/net/NetworkRequest;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1252
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    .line 1253
    .local v0, "subController":Lcom/android/internal/telephony/SubscriptionController;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestOnDemandDataSubscriptionLock for request = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 1254
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SubscriptionController;->startOnDemandDataSubscriptionRequest(Landroid/net/NetworkRequest;)V

    .line 1256
    .end local v0    # "subController":Lcom/android/internal/telephony/SubscriptionController;
    :cond_0
    return-void
.end method


# virtual methods
.method public evalPendingRequest()V
    .locals 5

    .prologue
    .line 1339
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "evalPendingRequest, pending request size is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPendingReq:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 1340
    const/4 v1, 0x0

    .line 1341
    .local v1, "key":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPendingReq:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1342
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPendingReq:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1343
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPendingReq:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkRequest;

    .line 1344
    .local v2, "request":Landroid/net/NetworkRequest;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "evalPendingRequest: request = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 1346
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPendingReq:Landroid/util/SparseArray;

    iget v4, v2, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 1347
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->needNetworkFor(Landroid/net/NetworkRequest;I)V

    .line 1341
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1349
    .end local v2    # "request":Landroid/net/NetworkRequest;
    :cond_0
    return-void
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1335
    const-string v0, "DctController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TNF "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    return-void
.end method

.method protected needNetworkFor(Landroid/net/NetworkRequest;I)V
    .locals 8
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;
    .param p2, "score"    # I

    .prologue
    .line 1169
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cellular needs Network for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 1171
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v5

    .line 1172
    .local v5, "subId":I
    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/internal/telephony/SubscriptionController;->getSubState(I)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1

    .line 1175
    :cond_0
    const-string v6, "Sub Info has not been ready, pending request."

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 1176
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPendingReq:Landroid/util/SparseArray;

    iget v7, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v6, v7, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1230
    :goto_0
    return-void

    .line 1180
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v4

    .line 1181
    .local v4, "subController":Lcom/android/internal/telephony/SubscriptionController;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "subController = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 1183
    invoke-virtual {v4}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v1

    .line 1184
    .local v1, "currentDds":I
    invoke-virtual {v4, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdFromNetworkRequest(Landroid/net/NetworkRequest;)I

    move-result v3

    .line 1186
    .local v3, "requestedSpecifier":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CurrentDds = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 1187
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mySubId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 1188
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Requested networkSpecifier = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 1189
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "my networkSpecifier = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v7}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 1194
    if-eq v3, v5, :cond_2

    .line 1195
    const-string v6, "requestedSpecifier is not same as mysubId. Bail out."

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 1196
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPendingReq:Landroid/util/SparseArray;

    iget v7, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v6, v7, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1200
    :cond_2
    if-eq v1, v3, :cond_3

    .line 1201
    const-string v6, "This request would result in DDS switch"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 1202
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Requested DDS switch to subId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 1206
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mDdsRequests:Landroid/util/SparseArray;

    iget v7, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v6, v7, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1207
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->requestOnDemandDataSubscriptionLock(Landroid/net/NetworkRequest;)V

    goto/16 :goto_0

    .line 1211
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->isNetworkRequestForInternet(Landroid/net/NetworkRequest;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1212
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Activating internet request on subId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 1213
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->apnForNetworkRequest(Landroid/net/NetworkRequest;)Ljava/lang/String;
    invoke-static {v6, p1}, Lcom/android/internal/telephony/dataconnection/DctController;->access$1000(Lcom/android/internal/telephony/dataconnection/DctController;Landroid/net/NetworkRequest;)Ljava/lang/String;

    move-result-object v0

    .line 1214
    .local v0, "apn":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v6, Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v6, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 1215
    .local v2, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isApnSupported(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1216
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getApnPriority(Ljava/lang/String;)I

    move-result v7

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->requestNetwork(Landroid/net/NetworkRequest;I)I
    invoke-static {v6, p1, v7}, Lcom/android/internal/telephony/dataconnection/DctController;->access$1100(Lcom/android/internal/telephony/dataconnection/DctController;Landroid/net/NetworkRequest;I)I

    goto/16 :goto_0

    .line 1218
    :cond_4
    const-string v6, "Unsupported APN"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1221
    .end local v0    # "apn":Ljava/lang/String;
    .end local v2    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->isValidRequest(Landroid/net/NetworkRequest;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1223
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mDdsRequests:Landroid/util/SparseArray;

    iget v7, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v6, v7, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1224
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->requestOnDemandDataSubscriptionLock(Landroid/net/NetworkRequest;)V

    goto/16 :goto_0

    .line 1226
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bogus request req = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public processPendingNetworkRequests(Landroid/net/NetworkRequest;)V
    .locals 6
    .param p1, "n"    # Landroid/net/NetworkRequest;

    .prologue
    .line 1117
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mDdsRequests:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 1118
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mDdsRequests:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkRequest;

    .line 1119
    .local v3, "nr":Landroid/net/NetworkRequest;
    invoke-virtual {v3, p1}, Landroid/net/NetworkRequest;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1120
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found pending request in ddsRequest list = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 1121
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->apnForNetworkRequest(Landroid/net/NetworkRequest;)Ljava/lang/String;
    invoke-static {v4, v3}, Lcom/android/internal/telephony/dataconnection/DctController;->access$1000(Lcom/android/internal/telephony/dataconnection/DctController;Landroid/net/NetworkRequest;)Ljava/lang/String;

    move-result-object v0

    .line 1122
    .local v0, "apn":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v4, Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v4, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 1123
    .local v1, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isApnSupported(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1124
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->incApnRefCount(Ljava/lang/String;)V

    .line 1117
    .end local v0    # "apn":Ljava/lang/String;
    .end local v1    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1126
    .restart local v0    # "apn":Ljava/lang/String;
    .restart local v1    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    :cond_1
    const-string v4, "Unsupported APN"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1130
    .end local v0    # "apn":Ljava/lang/String;
    .end local v1    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .end local v3    # "nr":Landroid/net/NetworkRequest;
    :cond_2
    return-void
.end method

.method public releaseAllNetworkRequests()V
    .locals 5

    .prologue
    .line 1321
    const-string v3, "releaseAllNetworkRequests"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 1322
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v2

    .line 1323
    .local v2, "subController":Lcom/android/internal/telephony/SubscriptionController;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mDdsRequests:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1324
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mDdsRequests:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkRequest;

    .line 1325
    .local v1, "nr":Landroid/net/NetworkRequest;
    if-eqz v1, :cond_0

    .line 1326
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing request = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 1327
    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/SubscriptionController;->stopOnDemandDataSubscriptionRequest(Landroid/net/NetworkRequest;)V

    .line 1328
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mDdsRequests:Landroid/util/SparseArray;

    iget v4, v1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 1323
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1331
    .end local v1    # "nr":Landroid/net/NetworkRequest;
    :cond_1
    return-void
.end method

.method protected releaseNetworkFor(Landroid/net/NetworkRequest;)V
    .locals 5
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;

    .prologue
    .line 1294
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cellular releasing Network for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 1295
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1296
    const-string v3, "Sub Info has not been ready, remove request."

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 1297
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPendingReq:Landroid/util/SparseArray;

    iget v4, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 1318
    :goto_0
    return-void

    .line 1301
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mDdsRequests:Landroid/util/SparseArray;

    iget v4, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkRequest;

    .line 1302
    .local v2, "nr":Landroid/net/NetworkRequest;
    if-eqz v2, :cond_1

    .line 1303
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->removeRequestIfFound(Landroid/net/NetworkRequest;)V

    goto :goto_0

    .line 1305
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->getRequestPhoneId(Landroid/net/NetworkRequest;)I
    invoke-static {v3, p1}, Lcom/android/internal/telephony/dataconnection/DctController;->access$1200(Lcom/android/internal/telephony/dataconnection/DctController;Landroid/net/NetworkRequest;)I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 1306
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v3, Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v3, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 1307
    .local v1, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->apnForNetworkRequest(Landroid/net/NetworkRequest;)Ljava/lang/String;
    invoke-static {v3, p1}, Lcom/android/internal/telephony/dataconnection/DctController;->access$1000(Lcom/android/internal/telephony/dataconnection/DctController;Landroid/net/NetworkRequest;)Ljava/lang/String;

    move-result-object v0

    .line 1308
    .local v0, "apn":Ljava/lang/String;
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isApnSupported(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1309
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->releaseNetwork(Landroid/net/NetworkRequest;)I
    invoke-static {v3, p1}, Lcom/android/internal/telephony/dataconnection/DctController;->access$1300(Lcom/android/internal/telephony/dataconnection/DctController;Landroid/net/NetworkRequest;)I

    goto :goto_0

    .line 1311
    :cond_2
    const-string v3, "Unsupported APN"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1315
    .end local v0    # "apn":Ljava/lang/String;
    .end local v1    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    :cond_3
    const-string v3, "Request not release"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public releasePendingRequest(Landroid/net/NetworkRequest;)V
    .locals 2
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;

    .prologue
    .line 1233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "releasePendingRequest "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 1234
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPendingReq:Landroid/util/SparseArray;

    iget v1, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 1235
    return-void
.end method

.method public updateNetworkCapability()V
    .locals 5

    .prologue
    const/16 v4, 0xc

    .line 1145
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 1146
    .local v0, "subId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update networkCapabilites for subId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 1148
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->setNetworkSpecifier(Ljava/lang/String;)V

    .line 1149
    if-lez v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/SubscriptionController;->getSubState(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INTERNET capability is with subId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 1154
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v1, v4}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 1160
    :goto_0
    const/16 v1, 0x32

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->setScoreFilter(I)V

    .line 1161
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->registerOnDemandDdsCallback()V

    .line 1163
    const-string v1, "Ready to handle network requests"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 1164
    return-void

    .line 1156
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INTERNET capability is removed from subId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 1157
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v1, v4}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    goto :goto_0
.end method
