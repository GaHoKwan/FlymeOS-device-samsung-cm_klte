.class public Lcom/android/internal/telephony/dataconnection/DctController;
.super Landroid/os/Handler;
.source "DctController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;,
        Lcom/android/internal/telephony/dataconnection/DctController$DdsSwitchSerializerHandler;,
        Lcom/android/internal/telephony/dataconnection/DctController$SwitchInfo;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_ALL_DATA_DISCONNECTED:I = 0x1

.field private static final EVENT_DATA_ATTACHED:I = 0x1f4

.field private static final EVENT_DATA_DETACHED:I = 0x258

.field private static final EVENT_DELAYED_RETRY:I = 0x3

.field private static final EVENT_EXECUTE_ALL_REQUESTS:I = 0x66

.field private static final EVENT_EXECUTE_REQUEST:I = 0x65

.field private static final EVENT_LEGACY_SET_DATA_SUBSCRIPTION:I = 0x4

.field private static final EVENT_PROCESS_REQUESTS:I = 0x64

.field private static final EVENT_RELEASE_ALL_REQUESTS:I = 0x68

.field private static final EVENT_RELEASE_REQUEST:I = 0x67

.field private static final EVENT_SET_DATA_ALLOW_DONE:I = 0x2

.field private static final EVENT_SET_DATA_ALLOW_FALSE:I = 0x5

.field private static final EVENT_START_DDS_SWITCH:I = 0x69

.field private static final LOG_TAG:Ljava/lang/String; = "DctController"

.field private static sDctController:Lcom/android/internal/telephony/dataconnection/DctController;


# instance fields
.field private final ATTACH_RETRY_DELAY:I

.field private final MAX_RETRY_FOR_ATTACH:I

.field private defaultDdsBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

.field private mDcSwitchStateHandler:[Landroid/os/Handler;

.field private mDcSwitchStateMachine:[Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

.field private mDdsSwitchPropService:Lcom/android/internal/util/AsyncChannel;

.field private mDdsSwitchSerializer:Lcom/android/internal/telephony/dataconnection/DctController$DdsSwitchSerializerHandler;

.field private mIsDdsSwitchCompleted:Z

.field private mNetworkFactory:[Landroid/net/NetworkFactory;

.field private mNetworkFactoryMessenger:[Landroid/os/Messenger;

.field private mNetworkFilter:[Landroid/net/NetworkCapabilities;

.field private mNotifyDefaultDataSwitchInfo:Landroid/os/RegistrantList;

.field private mNotifyOnDemandDataSwitchInfo:Landroid/os/RegistrantList;

.field private mNotifyOnDemandPsAttach:Landroid/os/RegistrantList;

.field private mObserver:Landroid/database/ContentObserver;

.field private mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mPhoneNum:I

.field private mPhones:[Lcom/android/internal/telephony/PhoneProxy;

.field private mRequestInfos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRspHandler:Landroid/os/Handler;

.field private mSubController:Lcom/android/internal/telephony/SubscriptionController;

.field private mSubMgr:Landroid/telephony/SubscriptionManager;

.field private subInfoBroadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>([Lcom/android/internal/telephony/PhoneProxy;Landroid/os/Looper;)V
    .locals 11
    .param p1, "phones"    # [Lcom/android/internal/telephony/PhoneProxy;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v10, 0x0

    .line 267
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 80
    new-instance v5, Landroid/os/RegistrantList;

    invoke-direct {v5}, Landroid/os/RegistrantList;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNotifyDefaultDataSwitchInfo:Landroid/os/RegistrantList;

    .line 81
    new-instance v5, Landroid/os/RegistrantList;

    invoke-direct {v5}, Landroid/os/RegistrantList;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNotifyOnDemandDataSwitchInfo:Landroid/os/RegistrantList;

    .line 82
    new-instance v5, Landroid/os/RegistrantList;

    invoke-direct {v5}, Landroid/os/RegistrantList;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNotifyOnDemandPsAttach:Landroid/os/RegistrantList;

    .line 83
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    .line 92
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    .line 97
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mIsDdsSwitchCompleted:Z

    .line 99
    const/4 v5, 0x6

    iput v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->MAX_RETRY_FOR_ATTACH:I

    .line 100
    const/16 v5, 0x2710

    iput v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->ATTACH_RETRY_DELAY:I

    .line 110
    new-instance v5, Lcom/android/internal/telephony/dataconnection/DctController$1;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/dataconnection/DctController$1;-><init>(Lcom/android/internal/telephony/dataconnection/DctController;)V

    iput-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->defaultDdsBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 119
    new-instance v5, Lcom/android/internal/telephony/dataconnection/DctController$2;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/dataconnection/DctController$2;-><init>(Lcom/android/internal/telephony/dataconnection/DctController;)V

    iput-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->subInfoBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 144
    new-instance v5, Lcom/android/internal/telephony/dataconnection/DctController$3;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/dataconnection/DctController$3;-><init>(Lcom/android/internal/telephony/dataconnection/DctController;)V

    iput-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 152
    new-instance v5, Lcom/android/internal/telephony/dataconnection/DctController$4;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v5, p0, v6}, Lcom/android/internal/telephony/dataconnection/DctController$4;-><init>(Lcom/android/internal/telephony/dataconnection/DctController;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mObserver:Landroid/database/ContentObserver;

    .line 232
    new-instance v5, Lcom/android/internal/telephony/dataconnection/DctController$5;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/dataconnection/DctController$5;-><init>(Lcom/android/internal/telephony/dataconnection/DctController;)V

    iput-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRspHandler:Landroid/os/Handler;

    .line 268
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DctController(): phones.length="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 269
    if-eqz p1, :cond_0

    array-length v5, p1

    if-nez v5, :cond_2

    .line 270
    :cond_0
    if-nez p1, :cond_1

    .line 271
    const-string v5, "DctController(phones): UNEXPECTED phones=null, ignore"

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DctController;->loge(Ljava/lang/String;)V

    .line 332
    :goto_0
    return-void

    .line 273
    :cond_1
    const-string v5, "DctController(phones): UNEXPECTED phones.length=0, ignore"

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DctController;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 277
    :cond_2
    array-length v5, p1

    iput v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    .line 278
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    .line 280
    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    new-array v5, v5, [Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    iput-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchStateMachine:[Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    .line 281
    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    new-array v5, v5, [Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    iput-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    .line 282
    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    new-array v5, v5, [Landroid/os/Handler;

    iput-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchStateHandler:[Landroid/os/Handler;

    .line 283
    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    new-array v5, v5, [Landroid/os/Messenger;

    iput-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactoryMessenger:[Landroid/os/Messenger;

    .line 284
    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    new-array v5, v5, [Landroid/net/NetworkFactory;

    iput-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactory:[Landroid/net/NetworkFactory;

    .line 285
    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    new-array v5, v5, [Landroid/net/NetworkCapabilities;

    iput-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    .line 287
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    if-ge v0, v5, :cond_4

    .line 288
    move v2, v0

    .line 289
    .local v2, "phoneId":I
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchStateMachine:[Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    new-instance v6, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v7, v7, v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DcSwitchStateMachine-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8, v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;-><init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;I)V

    aput-object v6, v5, v0

    .line 291
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchStateMachine:[Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->start()V

    .line 292
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    new-instance v6, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchStateMachine:[Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    aget-object v7, v7, v0

    invoke-direct {v6, v7, v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;-><init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;I)V

    aput-object v6, v5, v0

    .line 293
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchStateHandler:[Landroid/os/Handler;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    aput-object v6, v5, v0

    .line 295
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v5, v5, v0

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchStateHandler:[Landroid/os/Handler;

    aget-object v7, v7, v0

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchStateMachine:[Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    aget-object v8, v8, v0

    invoke-virtual {v8}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->fullyConnectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)I

    move-result v3

    .line 298
    .local v3, "status":I
    if-nez v3, :cond_3

    .line 299
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DctController(phones): Connect success: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 287
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 301
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DctController(phones): Could not connect to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DctController;->loge(Ljava/lang/String;)V

    goto :goto_2

    .line 305
    .end local v2    # "phoneId":I
    .end local v3    # "status":I
    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v5, v5, v10

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mContext:Landroid/content/Context;

    .line 307
    const/4 v0, 0x0

    :goto_3
    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    if-ge v0, v5, :cond_5

    .line 309
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    .line 310
    .local v1, "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DctController;->updatePhoneBaseForIndex(ILcom/android/internal/telephony/PhoneBase;)V

    .line 307
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 313
    .end local v1    # "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    :cond_5
    new-instance v4, Landroid/os/HandlerThread;

    const-string v5, "DdsSwitchSerializer"

    invoke-direct {v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 314
    .local v4, "t":Landroid/os/HandlerThread;
    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 316
    new-instance v5, Lcom/android/internal/telephony/dataconnection/DctController$DdsSwitchSerializerHandler;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/android/internal/telephony/dataconnection/DctController$DdsSwitchSerializerHandler;-><init>(Lcom/android/internal/telephony/dataconnection/DctController;Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDdsSwitchSerializer:Lcom/android/internal/telephony/dataconnection/DctController$DdsSwitchSerializerHandler;

    .line 318
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->subInfoBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 321
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->defaultDdsBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 324
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubMgr:Landroid/telephony/SubscriptionManager;

    .line 325
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubMgr:Landroid/telephony/SubscriptionManager;

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 328
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "multi_sim_data_call"

    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v6, v10, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto/16 :goto_0
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/dataconnection/DctController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->updateSubIdAndCapability()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/dataconnection/DctController;Landroid/net/NetworkRequest;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;
    .param p1, "x1"    # Landroid/net/NetworkRequest;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DctController;->apnForNetworkRequest(Landroid/net/NetworkRequest;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/dataconnection/DctController;Landroid/net/NetworkRequest;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;
    .param p1, "x1"    # Landroid/net/NetworkRequest;
    .param p2, "x2"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DctController;->requestNetwork(Landroid/net/NetworkRequest;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/dataconnection/DctController;Landroid/net/NetworkRequest;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;
    .param p1, "x1"    # Landroid/net/NetworkRequest;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DctController;->getRequestPhoneId(Landroid/net/NetworkRequest;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/dataconnection/DctController;Landroid/net/NetworkRequest;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;
    .param p1, "x1"    # Landroid/net/NetworkRequest;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DctController;->releaseNetwork(Landroid/net/NetworkRequest;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/dataconnection/DctController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->onSubInfoReady()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/dataconnection/DctController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->onSettingsChange()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/dataconnection/DctController;)[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/dataconnection/DctController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mIsDdsSwitchCompleted:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/telephony/dataconnection/DctController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mIsDdsSwitchCompleted:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/dataconnection/DctController;)Lcom/android/internal/telephony/SubscriptionController;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/dataconnection/DctController;)Landroid/os/RegistrantList;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNotifyOnDemandDataSwitchInfo:Landroid/os/RegistrantList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/dataconnection/DctController;)[Lcom/android/internal/telephony/PhoneProxy;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    return-object v0
.end method

.method static synthetic access$900()Lcom/android/internal/telephony/dataconnection/DctController;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DctController;->sDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    return-object v0
.end method

.method private apnForNetworkRequest(Landroid/net/NetworkRequest;)Ljava/lang/String;
    .locals 7
    .param p1, "nr"    # Landroid/net/NetworkRequest;

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 991
    iget-object v2, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 993
    .local v2, "nc":Landroid/net/NetworkCapabilities;
    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v5

    array-length v5, v5

    if-lez v5, :cond_1

    invoke-virtual {v2, v6}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v5

    if-nez v5, :cond_1

    move-object v1, v4

    .line 1066
    :cond_0
    :goto_0
    return-object v1

    .line 1000
    :cond_1
    const/4 v3, -0x1

    .line 1001
    .local v3, "type":I
    const/4 v1, 0x0

    .line 1003
    .local v1, "name":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1004
    .local v0, "error":Z
    const/16 v5, 0xc

    invoke-virtual {v2, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1005
    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 1006
    :cond_2
    const-string v1, "default"

    .line 1007
    const/4 v3, 0x0

    .line 1009
    :cond_3
    invoke-virtual {v2, v6}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1010
    if-eqz v1, :cond_4

    const/4 v0, 0x1

    .line 1011
    :cond_4
    const-string v1, "mms"

    .line 1012
    const/4 v3, 0x2

    .line 1014
    :cond_5
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1015
    if-eqz v1, :cond_6

    const/4 v0, 0x1

    .line 1016
    :cond_6
    const-string v1, "supl"

    .line 1017
    const/4 v3, 0x3

    .line 1019
    :cond_7
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1020
    if-eqz v1, :cond_8

    const/4 v0, 0x1

    .line 1021
    :cond_8
    const-string v1, "dun"

    .line 1022
    const/4 v3, 0x4

    .line 1024
    :cond_9
    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1025
    if-eqz v1, :cond_a

    const/4 v0, 0x1

    .line 1026
    :cond_a
    const-string v1, "fota"

    .line 1027
    const/16 v3, 0xa

    .line 1029
    :cond_b
    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1030
    if-eqz v1, :cond_c

    const/4 v0, 0x1

    .line 1031
    :cond_c
    const-string v1, "ims"

    .line 1032
    const/16 v3, 0xb

    .line 1034
    :cond_d
    const/4 v5, 0x5

    invoke-virtual {v2, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1035
    if-eqz v1, :cond_e

    const/4 v0, 0x1

    .line 1036
    :cond_e
    const-string v1, "cbs"

    .line 1037
    const/16 v3, 0xc

    .line 1039
    :cond_f
    const/4 v5, 0x7

    invoke-virtual {v2, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 1040
    if-eqz v1, :cond_10

    const/4 v0, 0x1

    .line 1041
    :cond_10
    const-string v1, "ia"

    .line 1042
    const/16 v3, 0xe

    .line 1044
    :cond_11
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 1045
    if-eqz v1, :cond_12

    const/4 v0, 0x1

    .line 1046
    :cond_12
    const/4 v1, 0x0

    .line 1047
    const-string v5, "RCS APN type not yet supported"

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DctController;->loge(Ljava/lang/String;)V

    .line 1049
    :cond_13
    const/16 v5, 0x9

    invoke-virtual {v2, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 1050
    if-eqz v1, :cond_14

    const/4 v0, 0x1

    .line 1051
    :cond_14
    const/4 v1, 0x0

    .line 1052
    const-string v5, "XCAP APN type not yet supported"

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DctController;->loge(Ljava/lang/String;)V

    .line 1054
    :cond_15
    const/16 v5, 0xa

    invoke-virtual {v2, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 1055
    if-eqz v1, :cond_16

    const/4 v0, 0x1

    .line 1056
    :cond_16
    const/4 v1, 0x0

    .line 1057
    const-string v5, "EIMS APN type not yet supported"

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DctController;->loge(Ljava/lang/String;)V

    .line 1059
    :cond_17
    if-eqz v0, :cond_18

    .line 1060
    const-string v5, "Multiple apn types specified in request - result is unspecified!"

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DctController;->loge(Ljava/lang/String;)V

    .line 1062
    :cond_18
    const/4 v5, -0x1

    if-eq v3, v5, :cond_19

    if-nez v1, :cond_0

    .line 1063
    :cond_19
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported NetworkRequest in Telephony: nr="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DctController;->loge(Ljava/lang/String;)V

    move-object v1, v4

    .line 1064
    goto/16 :goto_0
.end method

.method private doDetach(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    .line 766
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    move-object v2, v1

    .line 767
    check-cast v2, Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v2, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 768
    .local v0, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setDataAllowed(ZLandroid/os/Message;)V

    .line 769
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 771
    const-string v2, "DDS switch"

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 773
    :cond_0
    return-void
.end method

.method private getDataConnectionFromSetting()I
    .locals 3

    .prologue
    .line 1088
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v2}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v1

    .line 1089
    .local v1, "subId":I
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 1090
    .local v0, "phoneId":I
    return v0
.end method

.method public static getInstance()Lcom/android/internal/telephony/dataconnection/DctController;
    .locals 2

    .prologue
    .line 249
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DctController;->sDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    if-nez v0, :cond_0

    .line 250
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "DctController.getInstance can\'t be called before makeDCTController()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DctController;->sDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    return-object v0
.end method

.method private getRequestPhoneId(Landroid/net/NetworkRequest;)I
    .locals 5
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;

    .prologue
    .line 1070
    iget-object v3, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v3}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Ljava/lang/String;

    move-result-object v1

    .line 1072
    .local v1, "specifier":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1073
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v3}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v2

    .line 1077
    .local v2, "subId":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v0

    .line 1078
    .local v0, "phoneId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1079
    const/4 v0, 0x0

    .line 1080
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1081
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Should not happen, no valid phoneId"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1075
    .end local v0    # "phoneId":I
    .end local v2    # "subId":I
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .restart local v2    # "subId":I
    goto :goto_0

    .line 1084
    .restart local v0    # "phoneId":I
    :cond_2
    return v0
.end method

.method private getTopPriorityRequestPhoneId()I
    .locals 7

    .prologue
    .line 704
    const/4 v4, 0x0

    .line 705
    .local v4, "retRequestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    const/4 v1, -0x1

    .line 706
    .local v1, "phoneId":I
    const/4 v2, -0x1

    .line 708
    .local v2, "priority":I
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    .line 709
    .local v3, "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "selectExecPhone requestInfo = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 710
    iget v5, v3, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->priority:I

    if-ge v2, v5, :cond_0

    .line 711
    iget v2, v3, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->priority:I

    .line 712
    move-object v4, v3

    goto :goto_0

    .line 716
    .end local v3    # "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    :cond_1
    if-eqz v4, :cond_2

    .line 717
    iget-object v5, v4, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/dataconnection/DctController;->getRequestPhoneId(Landroid/net/NetworkRequest;)I

    move-result v1

    .line 720
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getTopPriorityRequestPhoneId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", priority = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 723
    return v1
.end method

.method private informDefaultDdsToPropServ(I)V
    .locals 3
    .param p1, "defDdsPhoneId"    # I

    .prologue
    .line 808
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDdsSwitchPropService:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 809
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Inform OemHookDDS service of current DDS = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 810
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDdsSwitchPropService:Lcom/android/internal/util/AsyncChannel;

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(III)Landroid/os/Message;

    .line 812
    const-string v0, "OemHookDDS service finished"

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 817
    :goto_0
    return-void

    .line 814
    :cond_0
    const-string v0, "OemHookDds service not ready yet"

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1094
    const-string v0, "DctController"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1098
    const-string v0, "DctController"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    return-void
.end method

.method public static makeDctController([Lcom/android/internal/telephony/PhoneProxy;Landroid/os/Looper;)Lcom/android/internal/telephony/dataconnection/DctController;
    .locals 2
    .param p0, "phones"    # [Lcom/android/internal/telephony/PhoneProxy;
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 257
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DctController;->sDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    if-nez v0, :cond_0

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makeDctController: new DctController phones.length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 259
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DctController;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/dataconnection/DctController;-><init>([Lcom/android/internal/telephony/PhoneProxy;Landroid/os/Looper;)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DctController;->sDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    .line 260
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->init()V

    .line 262
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makeDctController: X sDctController="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DctController;->sDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 263
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DctController;->sDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    return-object v0
.end method

.method private onExecuteAllRequests(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    .line 622
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onExecuteAllRequests phoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 623
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 624
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 625
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    .line 626
    .local v1, "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    iget-object v2, v1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DctController;->getRequestPhoneId(Landroid/net/NetworkRequest;)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 627
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DctController;->onExecuteRequest(Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;)V

    goto :goto_0

    .line 630
    .end local v1    # "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    :cond_1
    return-void
.end method

.method private onExecuteRequest(Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;)V
    .locals 6
    .param p1, "requestInfo"    # Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    .prologue
    .line 610
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onExecuteRequest request="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 611
    iget-boolean v4, p1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->executed:Z

    if-nez v4, :cond_0

    .line 612
    const/4 v4, 0x1

    iput-boolean v4, p1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->executed:Z

    .line 613
    iget-object v4, p1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/dataconnection/DctController;->apnForNetworkRequest(Landroid/net/NetworkRequest;)Ljava/lang/String;

    move-result-object v0

    .line 614
    .local v0, "apn":Ljava/lang/String;
    iget-object v4, p1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/dataconnection/DctController;->getRequestPhoneId(Landroid/net/NetworkRequest;)I

    move-result v3

    .line 615
    .local v3, "phoneId":I
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/PhoneBase;

    .line 616
    .local v2, "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    iget-object v1, v2, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 617
    .local v1, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->incApnRefCount(Ljava/lang/String;)V

    .line 619
    .end local v0    # "apn":Ljava/lang/String;
    .end local v1    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .end local v2    # "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    .end local v3    # "phoneId":I
    :cond_0
    return-void
.end method

.method private onProcessRequest()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 585
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->getTopPriorityRequestPhoneId()I

    move-result v3

    .line 586
    .local v3, "phoneId":I
    const/4 v0, -0x1

    .line 588
    .local v0, "activePhoneId":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    array-length v5, v5

    if-ge v1, v5, :cond_0

    .line 589
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->isIdleSync()Z

    move-result v5

    if-nez v5, :cond_2

    .line 590
    move v0, v1

    .line 595
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onProcessRequest phoneId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", activePhoneId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 598
    if-eq v3, v7, :cond_3

    if-eq v0, v7, :cond_3

    if-eq v0, v3, :cond_3

    .line 599
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->disconnectAllSync()I

    .line 607
    :cond_1
    return-void

    .line 588
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 601
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    .line 602
    .local v4, "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    iget-object v5, v4, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/dataconnection/DctController;->getRequestPhoneId(Landroid/net/NetworkRequest;)I

    move-result v5

    if-ne v5, v3, :cond_4

    iget-boolean v5, v4, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->executed:Z

    if-nez v5, :cond_4

    .line 603
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v5, v5, v3

    invoke-virtual {v5, v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->connectSync(Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;)I

    goto :goto_1
.end method

.method private onReleaseAllRequests(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    .line 645
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReleaseAllRequests phoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 646
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 647
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 648
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    .line 649
    .local v1, "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    iget-object v2, v1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DctController;->getRequestPhoneId(Landroid/net/NetworkRequest;)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 650
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DctController;->onReleaseRequest(Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;)V

    goto :goto_0

    .line 653
    .end local v1    # "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    :cond_1
    return-void
.end method

.method private onReleaseRequest(Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;)V
    .locals 6
    .param p1, "requestInfo"    # Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    .prologue
    .line 633
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReleaseRequest request="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 634
    if-eqz p1, :cond_0

    iget-boolean v4, p1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->executed:Z

    if-eqz v4, :cond_0

    .line 635
    iget-object v4, p1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/dataconnection/DctController;->apnForNetworkRequest(Landroid/net/NetworkRequest;)Ljava/lang/String;

    move-result-object v0

    .line 636
    .local v0, "apn":Ljava/lang/String;
    iget-object v4, p1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/dataconnection/DctController;->getRequestPhoneId(Landroid/net/NetworkRequest;)I

    move-result v3

    .line 637
    .local v3, "phoneId":I
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/PhoneBase;

    .line 638
    .local v2, "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    iget-object v1, v2, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 639
    .local v1, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->decApnRefCount(Ljava/lang/String;)V

    .line 640
    const/4 v4, 0x0

    iput-boolean v4, p1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->executed:Z

    .line 642
    .end local v0    # "apn":Ljava/lang/String;
    .end local v1    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .end local v2    # "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    .end local v3    # "phoneId":I
    :cond_0
    return-void
.end method

.method private onSettingsChange()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 657
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v10}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v2

    .line 659
    .local v2, "dataSubId":I
    const/4 v0, -0x1

    .line 660
    .local v0, "activePhoneId":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchStateMachine:[Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    array-length v10, v10

    if-ge v4, v10, :cond_0

    .line 661
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v10, v10, v4

    invoke-virtual {v10}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->isIdleSync()Z

    move-result v10

    if-nez v10, :cond_2

    .line 662
    move v0, v4

    .line 667
    :cond_0
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v9

    .line 668
    .local v9, "subIds":[I
    if-eqz v9, :cond_1

    array-length v10, v9

    if-nez v10, :cond_3

    .line 669
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onSettingsChange, subIds null or length 0 for activePhoneId "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/dataconnection/DctController;->loge(Ljava/lang/String;)V

    .line 701
    :goto_1
    return-void

    .line 660
    .end local v9    # "subIds":[I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 672
    .restart local v9    # "subIds":[I
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onSettingsChange, data sub: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", active data sub: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget v11, v9, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 674
    aget v10, v9, v12

    if-eq v10, v2, :cond_6

    .line 675
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 676
    .local v5, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 677
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    .line 678
    .local v7, "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    iget-object v10, v7, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->request:Landroid/net/NetworkRequest;

    iget-object v10, v10, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v10}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Ljava/lang/String;

    move-result-object v8

    .line 679
    .local v8, "specifier":Ljava/lang/String;
    if-eqz v8, :cond_5

    const-string v10, ""

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 680
    :cond_5
    iget-boolean v10, v7, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->executed:Z

    if-eqz v10, :cond_4

    .line 681
    iget-object v10, v7, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/dataconnection/DctController;->apnForNetworkRequest(Landroid/net/NetworkRequest;)Ljava/lang/String;

    move-result-object v1

    .line 682
    .local v1, "apn":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[setDataSubId] activePhoneId:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", subId ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 684
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v10, v10, v0

    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/PhoneBase;

    .line 686
    .local v6, "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    iget-object v3, v6, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 687
    .local v3, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->decApnRefCount(Ljava/lang/String;)V

    .line 688
    iput-boolean v12, v7, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->executed:Z

    goto :goto_2

    .line 696
    .end local v1    # "apn":Ljava/lang/String;
    .end local v3    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .end local v5    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v6    # "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    .end local v7    # "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    .end local v8    # "specifier":Ljava/lang/String;
    :cond_6
    const/4 v4, 0x0

    :goto_3
    iget v10, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    if-ge v4, v10, :cond_7

    .line 697
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactory:[Landroid/net/NetworkFactory;

    aget-object v10, v10, v4

    check-cast v10, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;

    invoke-virtual {v10}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->evalPendingRequest()V

    .line 696
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 700
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->processRequests()V

    goto/16 :goto_1
.end method

.method private onSubInfoReady()V
    .locals 4

    .prologue
    .line 980
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSubInfoReady mPhoneNum="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 981
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    if-ge v0, v2, :cond_0

    .line 982
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getSubId()I

    move-result v1

    .line 983
    .local v1, "subId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSubInfoReady handle pending requests subId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 984
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v2, v2, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->setNetworkSpecifier(Ljava/lang/String;)V

    .line 985
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactory:[Landroid/net/NetworkFactory;

    aget-object v2, v2, v0

    check-cast v2, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->evalPendingRequest()V

    .line 981
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 987
    .end local v1    # "subId":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->processRequests()V

    .line 988
    return-void
.end method

.method private releaseAllNetworkRequests()V
    .locals 2

    .prologue
    .line 133
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    if-ge v0, v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactory:[Landroid/net/NetworkFactory;

    aget-object v1, v1, v0

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->releaseAllNetworkRequests()V

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_0
    return-void
.end method

.method private releaseNetwork(Landroid/net/NetworkRequest;)I
    .locals 3
    .param p1, "request"    # Landroid/net/NetworkRequest;

    .prologue
    .line 541
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    iget v2, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    .line 542
    .local v0, "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseNetwork request="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", requestInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 544
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    iget v2, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DctController;->releasePendingRequest(Landroid/net/NetworkRequest;)V

    .line 546
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->releaseRequest(Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;)V

    .line 547
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->processRequests()V

    .line 548
    const/4 v1, 0x1

    return v1
.end method

.method private releasePendingRequest(Landroid/net/NetworkRequest;)V
    .locals 2
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;

    .prologue
    .line 139
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    if-ge v0, v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactory:[Landroid/net/NetworkFactory;

    aget-object v1, v1, v0

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->releasePendingRequest(Landroid/net/NetworkRequest;)V

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    :cond_0
    return-void
.end method

.method private requestNetwork(Landroid/net/NetworkRequest;I)I
    .locals 3
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "priority"    # I

    .prologue
    .line 530
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestNetwork request="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", priority="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 533
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;-><init>(Landroid/net/NetworkRequest;I)V

    .line 534
    .local v0, "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    iget v2, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->processRequests()V

    .line 537
    const/4 v1, 0x1

    return v1
.end method

.method private updatePhoneBaseForIndex(ILcom/android/internal/telephony/PhoneBase;)V
    .locals 9
    .param p1, "index"    # I
    .param p2, "phoneBase"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePhoneBaseForIndex for phone index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p2}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRspHandler:Landroid/os/Handler;

    add-int/lit16 v2, p1, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataConnectionAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 195
    invoke-virtual {p2}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRspHandler:Landroid/os/Handler;

    add-int/lit16 v2, p1, 0x258

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataConnectionDetached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 198
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    .line 201
    .local v7, "cm":Landroid/net/ConnectivityManager;
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactoryMessenger:[Landroid/os/Messenger;

    if-eqz v0, :cond_0

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregister TelephonyNetworkFactory for phone index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactoryMessenger:[Landroid/os/Messenger;

    aget-object v0, v0, p1

    invoke-virtual {v7, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkFactory(Landroid/os/Messenger;)V

    .line 204
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactoryMessenger:[Landroid/os/Messenger;

    aput-object v3, v0, p1

    .line 205
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactory:[Landroid/net/NetworkFactory;

    aput-object v3, v0, p1

    .line 206
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aput-object v3, v0, p1

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    new-instance v1, Landroid/net/NetworkCapabilities;

    invoke-direct {v1}, Landroid/net/NetworkCapabilities;-><init>()V

    aput-object v1, v0, p1

    .line 210
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v0, v0, p1

    invoke-virtual {v0, v4}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    .line 211
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v0, v0, p1

    invoke-virtual {v0, v4}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 212
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 213
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v0, v0, p1

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 214
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v0, v0, p1

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 215
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v0, v0, p1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 216
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v0, v0, p1

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 217
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v0, v0, p1

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 218
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v0, v0, p1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 219
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v0, v0, p1

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 220
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v0, v0, p1

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 221
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v0, v0, p1

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 222
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v0, v0, p1

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 224
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactory:[Landroid/net/NetworkFactory;

    new-instance v0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "TelephonyNetworkFactory"

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v6, v1, p1

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;-><init>(Lcom/android/internal/telephony/dataconnection/DctController;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/Phone;Landroid/net/NetworkCapabilities;)V

    aput-object v0, v8, p1

    .line 227
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactory:[Landroid/net/NetworkFactory;

    aget-object v0, v0, p1

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/net/NetworkFactory;->setScoreFilter(I)V

    .line 228
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactoryMessenger:[Landroid/os/Messenger;

    new-instance v1, Landroid/os/Messenger;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactory:[Landroid/net/NetworkFactory;

    aget-object v2, v2, p1

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    aput-object v1, v0, p1

    .line 229
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactoryMessenger:[Landroid/os/Messenger;

    aget-object v0, v0, p1

    const-string v1, "Telephony"

    invoke-virtual {v7, v0, v1}, Landroid/net/ConnectivityManager;->registerNetworkFactory(Landroid/os/Messenger;Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method private updateSubIdAndCapability()V
    .locals 2

    .prologue
    .line 127
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    if-ge v0, v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactory:[Landroid/net/NetworkFactory;

    aget-object v1, v1, v0

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->updateNetworkCapability()V

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    :cond_0
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 4

    .prologue
    .line 335
    const-string v2, "DctController.dispose"

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 336
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    if-ge v1, v2, :cond_0

    .line 337
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 339
    .local v0, "cm":Landroid/net/ConnectivityManager;
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactoryMessenger:[Landroid/os/Messenger;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkFactory(Landroid/os/Messenger;)V

    .line 340
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactoryMessenger:[Landroid/os/Messenger;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 336
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 342
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->releaseAllNetworkRequests()V

    .line 344
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DctController;->defaultDdsBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 345
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DctController;->subInfoBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 347
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubMgr:Landroid/telephony/SubscriptionManager;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v2, v3}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 348
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 349
    return-void
.end method

.method public doPsAttach(Landroid/net/NetworkRequest;)V
    .locals 12
    .param p1, "n"    # Landroid/net/NetworkRequest;

    .prologue
    const/4 v5, 0x1

    .line 820
    const-string v1, "DctController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doPsAttach for :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdFromNetworkRequest(Landroid/net/NetworkRequest;)I

    move-result v11

    .line 824
    .local v11, "subId":I
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1, v11}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v9

    .line 825
    .local v9, "phoneId":I
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v1, v1, v9

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    .line 826
    .local v8, "phone":Lcom/android/internal/telephony/Phone;
    check-cast v8, Lcom/android/internal/telephony/PhoneBase;

    .end local v8    # "phone":Lcom/android/internal/telephony/Phone;
    iget-object v6, v8, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 830
    .local v6, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DctController$SwitchInfo;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/dataconnection/DctController$SwitchInfo;-><init>(Lcom/android/internal/telephony/dataconnection/DctController;ILandroid/net/NetworkRequest;ZZ)V

    .line 832
    .local v0, "s":Lcom/android/internal/telephony/dataconnection/DctController$SwitchInfo;
    const/4 v1, 0x2

    invoke-static {p0, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 835
    .local v10, "psAttachDone":Landroid/os/Message;
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->getDataConnectionFromSetting()I

    move-result v7

    .line 836
    .local v7, "defDdsPhoneId":I
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/dataconnection/DctController;->informDefaultDdsToPropServ(I)V

    .line 837
    invoke-virtual {v6, v5, v10}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setDataAllowed(ZLandroid/os/Message;)V

    .line 838
    return-void
.end method

.method public doPsDetach()V
    .locals 8

    .prologue
    .line 845
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v5}, Lcom/android/internal/telephony/SubscriptionController;->getCurrentDds()I

    move-result v0

    .line 846
    .local v0, "currentDds":I
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v5}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v2

    .line 848
    .local v2, "defaultDds":I
    if-ne v0, v2, :cond_0

    .line 849
    const-string v5, "DctController"

    const-string v6, "PS DETACH on DDS sub is not allowed."

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    :goto_0
    return-void

    .line 852
    :cond_0
    const-string v5, "DctController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doPsDetach for sub:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v6}, Lcom/android/internal/telephony/SubscriptionController;->getCurrentDds()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v4

    .line 857
    .local v4, "phoneId":I
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 858
    .local v3, "phone":Lcom/android/internal/telephony/Phone;
    check-cast v3, Lcom/android/internal/telephony/PhoneBase;

    .end local v3    # "phone":Lcom/android/internal/telephony/Phone;
    iget-object v1, v3, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 859
    .local v1, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setDataAllowed(ZLandroid/os/Message;)V

    goto :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1353
    const-string v6, "DctController:"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1355
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchStateMachine:[Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    .local v0, "arr$":[Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, v0, v4

    .line 1356
    .local v1, "dssm":Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1355
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1358
    .end local v0    # "arr$":[Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .end local v1    # "dssm":Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :catch_0
    move-exception v2

    .line 1359
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1361
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 1362
    const-string v6, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1365
    :try_start_1
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1366
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mRequestInfos["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1368
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :catch_1
    move-exception v2

    .line 1369
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1371
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 1372
    const-string v6, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1373
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 1374
    return-void
.end method

.method executeAllRequests(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "executeAllRequests, phone:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 563
    const/16 v0, 0x66

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/dataconnection/DctController;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->sendMessage(Landroid/os/Message;)Z

    .line 564
    return-void
.end method

.method executeRequest(Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;)V
    .locals 2
    .param p1, "request"    # Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    .prologue
    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "executeRequest, request= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 558
    const/16 v0, 0x65

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/dataconnection/DctController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->sendMessage(Landroid/os/Message;)Z

    .line 559
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 22
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 353
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "handleMessage msg="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 354
    const/4 v9, 0x0

    .line 355
    .local v9, "isLegacySetDds":Z
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    sparse-switch v18, :sswitch_data_0

    .line 525
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Un-handled message ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/dataconnection/DctController;->loge(Ljava/lang/String;)V

    .line 527
    :cond_0
    :goto_0
    return-void

    .line 357
    :sswitch_0
    const/4 v9, 0x1

    .line 360
    :sswitch_1
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 361
    .local v5, "ar":Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/internal/telephony/dataconnection/DctController$SwitchInfo;

    .line 362
    .local v16, "s":Lcom/android/internal/telephony/dataconnection/DctController$SwitchInfo;
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DctController$SwitchInfo;->mPhoneId:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 363
    .local v11, "phoneId":Ljava/lang/Integer;
    const-string v18, "DctController"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "EVENT_ALL_DATA_DISCONNECTED switchInfo :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " isLegacySetDds = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    if-nez v9, :cond_1

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/SubscriptionController;->getCurrentDds()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v12

    .line 370
    .local v12, "prefPhoneId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    move-object/from16 v18, v0

    aget-object v18, v18, v12

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneProxy;->unregisterForAllDataDisconnected(Landroid/os/Handler;)V

    .line 372
    .end local v12    # "prefPhoneId":I
    :cond_1
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v18

    if-ltz v18, :cond_0

    .line 373
    const/16 v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 375
    .local v4, "allowedDataDone":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    move-object/from16 v18, v0

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v19

    aget-object v18, v18, v19

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    .line 377
    .local v10, "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DctController;->informDefaultDdsToPropServ(I)V

    .line 378
    check-cast v10, Lcom/android/internal/telephony/PhoneBase;

    .end local v10    # "phone":Lcom/android/internal/telephony/Phone;
    iget-object v7, v10, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 379
    .local v7, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v7, v0, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setDataAllowed(ZLandroid/os/Message;)V

    goto/16 :goto_0

    .line 385
    .end local v4    # "allowedDataDone":Landroid/os/Message;
    .end local v5    # "ar":Landroid/os/AsyncResult;
    .end local v7    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .end local v11    # "phoneId":Ljava/lang/Integer;
    .end local v16    # "s":Lcom/android/internal/telephony/dataconnection/DctController$SwitchInfo;
    :sswitch_2
    const-string v18, "DctController"

    const-string v19, "EVENT_DELAYED_RETRY"

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/os/SomeArgs;

    .line 388
    .local v6, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_0
    iget-object v0, v6, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/internal/telephony/dataconnection/DctController$SwitchInfo;

    .line 389
    .restart local v16    # "s":Lcom/android/internal/telephony/dataconnection/DctController$SwitchInfo;
    iget-object v0, v6, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/Boolean;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    .line 390
    .local v13, "psAttach":Z
    const-string v18, "DctController"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " Retry, switchInfo = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DctController$SwitchInfo;->mPhoneId:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 393
    .restart local v11    # "phoneId":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    move-object/from16 v18, v0

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v17

    .line 394
    .local v17, "subId":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    move-object/from16 v18, v0

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v19

    aget-object v18, v18, v19

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    .line 395
    .restart local v10    # "phone":Lcom/android/internal/telephony/Phone;
    check-cast v10, Lcom/android/internal/telephony/PhoneBase;

    .end local v10    # "phone":Lcom/android/internal/telephony/Phone;
    iget-object v7, v10, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 397
    .restart local v7    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    if-eqz v13, :cond_2

    .line 398
    const/16 v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    .line 400
    .local v14, "psAttachDone":Landroid/os/Message;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v7, v0, v14}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setDataAllowed(ZLandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    .end local v14    # "psAttachDone":Landroid/os/Message;
    :goto_1
    invoke-virtual {v6}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .line 402
    :cond_2
    const/16 v18, 0x5

    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    .line 404
    .local v15, "psDetachDone":Landroid/os/Message;
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v7, v0, v15}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setDataAllowed(ZLandroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 407
    .end local v7    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .end local v11    # "phoneId":Ljava/lang/Integer;
    .end local v13    # "psAttach":Z
    .end local v15    # "psDetachDone":Landroid/os/Message;
    .end local v16    # "s":Lcom/android/internal/telephony/dataconnection/DctController$SwitchInfo;
    .end local v17    # "subId":[I
    :catchall_0
    move-exception v18

    invoke-virtual {v6}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v18

    .line 413
    .end local v6    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_3
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 414
    .restart local v5    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/internal/telephony/dataconnection/DctController$SwitchInfo;

    .line 416
    .restart local v16    # "s":Lcom/android/internal/telephony/dataconnection/DctController$SwitchInfo;
    const/4 v8, 0x0

    .line 418
    .local v8, "errorEx":Ljava/lang/Exception;
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DctController$SwitchInfo;->mPhoneId:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 419
    .restart local v11    # "phoneId":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    move-object/from16 v18, v0

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v17

    .line 420
    .restart local v17    # "subId":[I
    const-string v18, "DctController"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "EVENT_SET_DATA_ALLOWED_DONE  phoneId :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x0

    aget v20, v17, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", switchInfo = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    .line 424
    const-string v18, "DctController"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Failed, switchInfo = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " attempt delayed retry"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/dataconnection/DctController$SwitchInfo;->incRetryCount()V

    .line 427
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/dataconnection/DctController$SwitchInfo;->isRetryPossible()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 428
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v6

    .line 429
    .restart local v6    # "args":Lcom/android/internal/os/SomeArgs;
    move-object/from16 v0, v16

    iput-object v0, v6, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 430
    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v6, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 431
    const/16 v18, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1, v6}, Lcom/android/internal/telephony/dataconnection/DctController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v18

    const-wide/16 v20, 0x2710

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DctController;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 435
    .end local v6    # "args":Lcom/android/internal/os/SomeArgs;
    :cond_3
    const-string v18, "DctController"

    const-string v19, "Already did max retries, notify failure"

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    new-instance v8, Ljava/lang/RuntimeException;

    .end local v8    # "errorEx":Ljava/lang/Exception;
    const-string v18, "PS ATTACH failed"

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 442
    .restart local v8    # "errorEx":Ljava/lang/Exception;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mDdsSwitchSerializer:Lcom/android/internal/telephony/dataconnection/DctController$DdsSwitchSerializerHandler;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/dataconnection/DctController$DdsSwitchSerializerHandler;->unLock()V

    .line 444
    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DctController$SwitchInfo;->mIsDefaultDataSwitchRequested:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mNotifyDefaultDataSwitchInfo:Landroid/os/RegistrantList;

    move-object/from16 v18, v0

    new-instance v19, Landroid/os/AsyncResult;

    const/16 v20, 0x0

    const/16 v21, 0x0

    aget v21, v17, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v18 .. v19}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 439
    :cond_4
    const-string v18, "DctController"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "PS ATTACH success = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 447
    :cond_5
    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DctController$SwitchInfo;->mIsOnDemandPsAttachRequested:Z

    move/from16 v18, v0

    if-eqz v18, :cond_6

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mNotifyOnDemandPsAttach:Landroid/os/RegistrantList;

    move-object/from16 v18, v0

    new-instance v19, Landroid/os/AsyncResult;

    const/16 v20, 0x0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DctController$SwitchInfo;->mNetworkRequest:Landroid/net/NetworkRequest;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v18 .. v19}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 451
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mNotifyOnDemandDataSwitchInfo:Landroid/os/RegistrantList;

    move-object/from16 v18, v0

    new-instance v19, Landroid/os/AsyncResult;

    const/16 v20, 0x0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DctController$SwitchInfo;->mNetworkRequest:Landroid/net/NetworkRequest;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v18 .. v19}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 458
    .end local v5    # "ar":Landroid/os/AsyncResult;
    .end local v8    # "errorEx":Ljava/lang/Exception;
    .end local v11    # "phoneId":Ljava/lang/Integer;
    .end local v16    # "s":Lcom/android/internal/telephony/dataconnection/DctController$SwitchInfo;
    .end local v17    # "subId":[I
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 459
    .restart local v5    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/internal/telephony/dataconnection/DctController$SwitchInfo;

    .line 461
    .restart local v16    # "s":Lcom/android/internal/telephony/dataconnection/DctController$SwitchInfo;
    const/4 v8, 0x0

    .line 463
    .restart local v8    # "errorEx":Ljava/lang/Exception;
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DctController$SwitchInfo;->mPhoneId:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 464
    .restart local v11    # "phoneId":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    move-object/from16 v18, v0

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v17

    .line 465
    .restart local v17    # "subId":[I
    const-string v18, "DctController"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "EVENT_SET_DATA_FALSE  phoneId :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x0

    aget v20, v17, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", switchInfo = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    .line 469
    const-string v18, "DctController"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Failed, switchInfo = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " attempt delayed retry"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/dataconnection/DctController$SwitchInfo;->incRetryCount()V

    .line 472
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/dataconnection/DctController$SwitchInfo;->isRetryPossible()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 473
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v6

    .line 474
    .restart local v6    # "args":Lcom/android/internal/os/SomeArgs;
    move-object/from16 v0, v16

    iput-object v0, v6, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 475
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v6, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 476
    const/16 v18, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1, v6}, Lcom/android/internal/telephony/dataconnection/DctController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v18

    const-wide/16 v20, 0x2710

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DctController;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 480
    .end local v6    # "args":Lcom/android/internal/os/SomeArgs;
    :cond_7
    const-string v18, "DctController"

    const-string v19, "Already did max retries, notify failure"

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    new-instance v8, Ljava/lang/RuntimeException;

    .end local v8    # "errorEx":Ljava/lang/Exception;
    const-string v18, "PS DETACH failed"

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 482
    .restart local v8    # "errorEx":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mNotifyOnDemandDataSwitchInfo:Landroid/os/RegistrantList;

    move-object/from16 v18, v0

    new-instance v19, Landroid/os/AsyncResult;

    const/16 v20, 0x0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DctController$SwitchInfo;->mNetworkRequest:Landroid/net/NetworkRequest;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v18 .. v19}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 486
    :cond_8
    const-string v18, "DctController"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "PS DETACH success = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 492
    .end local v5    # "ar":Landroid/os/AsyncResult;
    .end local v8    # "errorEx":Ljava/lang/Exception;
    .end local v11    # "phoneId":Ljava/lang/Integer;
    .end local v16    # "s":Lcom/android/internal/telephony/dataconnection/DctController$SwitchInfo;
    .end local v17    # "subId":[I
    :sswitch_5
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    if-nez v18, :cond_9

    .line 493
    const-string v18, "HALF_CONNECTED: Connection successful with DDS switch service"

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 495
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/util/AsyncChannel;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/dataconnection/DctController;->mDdsSwitchPropService:Lcom/android/internal/util/AsyncChannel;

    goto/16 :goto_0

    .line 497
    :cond_9
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "HALF_CONNECTED: Connection failed with DDS switch service, err = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 504
    :sswitch_6
    const-string v18, "Connection disconnected with DDS switch service"

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 505
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/dataconnection/DctController;->mDdsSwitchPropService:Lcom/android/internal/util/AsyncChannel;

    goto/16 :goto_0

    .line 510
    :sswitch_7
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DctController;->onProcessRequest()V

    goto/16 :goto_0

    .line 513
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DctController;->onExecuteRequest(Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;)V

    goto/16 :goto_0

    .line 516
    :sswitch_9
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DctController;->onExecuteAllRequests(I)V

    goto/16 :goto_0

    .line 519
    :sswitch_a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DctController;->onReleaseRequest(Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;)V

    goto/16 :goto_0

    .line 522
    :sswitch_b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DctController;->onReleaseAllRequests(I)V

    goto/16 :goto_0

    .line 355
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_3
        0x3 -> :sswitch_2
        0x4 -> :sswitch_0
        0x5 -> :sswitch_4
        0x64 -> :sswitch_7
        0x65 -> :sswitch_8
        0x66 -> :sswitch_9
        0x67 -> :sswitch_a
        0x68 -> :sswitch_b
        0x11000 -> :sswitch_5
        0x11004 -> :sswitch_6
    .end sparse-switch
.end method

.method isActiveSubId(I)Z
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 161
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v2}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubIdList()[I

    move-result-object v0

    .line 162
    .local v0, "activeSubs":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 163
    aget v2, v0, v1

    if-ne p1, v2, :cond_0

    .line 164
    const/4 v2, 0x1

    .line 167
    :goto_1
    return v2

    .line 162
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 167
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public isDctControllerLocked()Z
    .locals 1

    .prologue
    .line 976
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDdsSwitchSerializer:Lcom/android/internal/telephony/dataconnection/DctController$DdsSwitchSerializerHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DctController$DdsSwitchSerializerHandler;->isLocked()Z

    move-result v0

    return v0
.end method

.method processRequests()V
    .locals 1

    .prologue
    .line 552
    const-string v0, "processRequests"

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 553
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->sendMessage(Landroid/os/Message;)Z

    .line 554
    return-void
.end method

.method public registerDdsSwitchPropService(Landroid/os/Messenger;)V
    .locals 3
    .param p1, "messenger"    # Landroid/os/Messenger;

    .prologue
    .line 890
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got messenger from DDS switch service, messenger = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 891
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    .line 892
    .local v0, "ac":Lcom/android/internal/util/AsyncChannel;
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/telephony/dataconnection/DctController;->sDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 893
    return-void
.end method

.method public registerForDefaultDataSwitchInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 869
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 870
    .local v0, "r":Landroid/os/Registrant;
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNotifyDefaultDataSwitchInfo:Landroid/os/RegistrantList;

    monitor-enter v2

    .line 871
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNotifyDefaultDataSwitchInfo:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 872
    monitor-exit v2

    .line 873
    return-void

    .line 872
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForOnDemandDataSwitchInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 876
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 877
    .local v0, "r":Landroid/os/Registrant;
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNotifyOnDemandDataSwitchInfo:Landroid/os/RegistrantList;

    monitor-enter v2

    .line 878
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNotifyOnDemandDataSwitchInfo:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 879
    monitor-exit v2

    .line 880
    return-void

    .line 879
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForOnDemandPsAttach(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 883
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 884
    .local v0, "r":Landroid/os/Registrant;
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNotifyOnDemandPsAttach:Landroid/os/RegistrantList;

    monitor-enter v2

    .line 885
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNotifyOnDemandPsAttach:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 886
    monitor-exit v2

    .line 887
    return-void

    .line 886
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method releaseAllRequests(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "releaseAllRequests, phone:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 573
    const/16 v0, 0x68

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/dataconnection/DctController;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->sendMessage(Landroid/os/Message;)Z

    .line 574
    return-void
.end method

.method releaseRequest(Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;)V
    .locals 2
    .param p1, "request"    # Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    .prologue
    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "releaseRequest, request= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 568
    const/16 v0, 0x67

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/dataconnection/DctController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->sendMessage(Landroid/os/Message;)Z

    .line 569
    return-void
.end method

.method public setDefaultDataSubId(I)V
    .locals 10
    .param p1, "reqSubId"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 776
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v5, p1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v3

    .line 777
    .local v3, "reqPhoneId":I
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v5}, Lcom/android/internal/telephony/SubscriptionController;->getCurrentDds()I

    move-result v0

    .line 778
    .local v0, "currentDds":I
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v5}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v2

    .line 779
    .local v2, "defaultDds":I
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DctController$SwitchInfo;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v4, p0, v5, v8}, Lcom/android/internal/telephony/dataconnection/DctController$SwitchInfo;-><init>(Lcom/android/internal/telephony/dataconnection/DctController;IZ)V

    .line 780
    .local v4, "s":Lcom/android/internal/telephony/dataconnection/DctController$SwitchInfo;
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v1

    .line 781
    .local v1, "currentDdsPhoneId":I
    if-ltz v1, :cond_0

    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    if-lt v1, v5, :cond_1

    .line 784
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " setDefaultDataSubId,  reqSubId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " currentDdsPhoneId  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 786
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v5, p1}, Lcom/android/internal/telephony/SubscriptionController;->setDataSubId(I)V

    .line 787
    move v2, p1

    .line 788
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v5, v2}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v1

    .line 790
    :cond_1
    const-string v5, "DctController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setDefaultDataSubId reqSubId :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " reqPhoneId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    if-eq p1, v2, :cond_2

    if-eq v3, v1, :cond_2

    .line 795
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DctController;->doDetach(I)V

    .line 803
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v5, v5, v1

    invoke-virtual {v5, p0, v8, v4}, Lcom/android/internal/telephony/PhoneProxy;->registerForAllDataDisconnected(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 805
    :goto_0
    return-void

    .line 797
    :cond_2
    const-string v5, "setDefaultDataSubId for default DDS, skip PS detach on DDS subs"

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 798
    const/4 v5, 0x4

    new-instance v6, Landroid/os/AsyncResult;

    invoke-direct {v6, v4, v9, v9}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v5, v6}, Lcom/android/internal/telephony/dataconnection/DctController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DctController;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public setOnDemandDataSubId(Landroid/net/NetworkRequest;)V
    .locals 3
    .param p1, "n"    # Landroid/net/NetworkRequest;

    .prologue
    .line 863
    const-string v0, "DctController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataAllowed for :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDdsSwitchSerializer:Lcom/android/internal/telephony/dataconnection/DctController$DdsSwitchSerializerHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDdsSwitchSerializer:Lcom/android/internal/telephony/dataconnection/DctController$DdsSwitchSerializerHandler;

    const/16 v2, 0x69

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/telephony/dataconnection/DctController$DdsSwitchSerializerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DctController$DdsSwitchSerializerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 866
    return-void
.end method

.method public updatePhoneObject(Lcom/android/internal/telephony/PhoneProxy;)V
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneProxy;

    .prologue
    .line 171
    if-nez p1, :cond_1

    .line 172
    const-string v2, "updatePhoneObject phone = null"

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DctController;->loge(Ljava/lang/String;)V

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    .line 177
    .local v1, "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    if-nez v1, :cond_2

    .line 178
    const-string v2, "updatePhoneObject phoneBase = null"

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DctController;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 182
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    if-ge v0, v2, :cond_0

    .line 183
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v2, v2, v0

    if-ne v2, p1, :cond_3

    .line 184
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DctController;->updatePhoneBaseForIndex(ILcom/android/internal/telephony/PhoneBase;)V

    goto :goto_0

    .line 182
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
