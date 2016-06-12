.class public Lcom/android/internal/telephony/KlteRIL;
.super Lcom/android/internal/telephony/RIL;
.source "KlteRIL.java"


# static fields
.field private static final RIL_REQUEST_DIAL_EMERGENCY:I = 0x2720

.field private static final RIL_REQUEST_DIAL_EMERGENCY_LL:I = 0x2711

.field private static final RIL_UNSOL_ON_SS_LL:I = 0x2b2f

.field private static final RIL_VERSION_PROPERTY:Ljava/lang/String; = "ro.sec_ril.version"


# instance fields
.field private isLollipopRadio:Z

.field private mIsGsm:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "networkMode"    # I
    .param p3, "cdmaSubscription"    # I

    .prologue
    const/4 v0, 0x0

    .line 53
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;IILjava/lang/Integer;)V

    .line 49
    iput-boolean v0, p0, Lcom/android/internal/telephony/KlteRIL;->mIsGsm:Z

    .line 50
    const-string v1, "ro.sec_ril.version"

    const/16 v2, 0x2c

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0x32

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/KlteRIL;->isLollipopRadio:Z

    .line 54
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/internal/telephony/KlteRIL;->mQANElements:I

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/lang/Integer;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferredNetworkType"    # I
    .param p3, "cdmaSubscription"    # I
    .param p4, "instanceId"    # Ljava/lang/Integer;

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;IILjava/lang/Integer;)V

    .line 49
    iput-boolean v0, p0, Lcom/android/internal/telephony/KlteRIL;->mIsGsm:Z

    .line 50
    const-string v1, "ro.sec_ril.version"

    const/16 v2, 0x2c

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0x32

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/KlteRIL;->isLollipopRadio:Z

    .line 60
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/internal/telephony/KlteRIL;->mQANElements:I

    .line 61
    return-void
.end method

.method private dialEmergencyCall(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 375
    iget-boolean v1, p0, Lcom/android/internal/telephony/KlteRIL;->isLollipopRadio:Z

    if-eqz v1, :cond_0

    .line 376
    const/16 v1, 0x2711

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 380
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    :goto_0
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 381
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 382
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 383
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 384
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 385
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 387
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/KlteRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/KlteRIL;->riljLog(Ljava/lang/String;)V

    .line 389
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/KlteRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 390
    return-void

    .line 378
    .end local v0    # "rr":Lcom/android/internal/telephony/RILRequest;
    :cond_0
    const/16 v1, 0x2720

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .restart local v0    # "rr":Lcom/android/internal/telephony/RILRequest;
    goto :goto_0
.end method

.method private responseDataRegistrationState(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x3

    .line 452
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/KlteRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    move-object v0, v1

    check-cast v0, [Ljava/lang/String;

    .line 457
    .local v0, "response":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    aget-object v1, v0, v3

    const-string v2, "102"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 460
    const-string v1, "2"

    aput-object v1, v0, v3

    .line 462
    :cond_0
    return-object v0
.end method


# virtual methods
.method public acceptCall(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 357
    const/16 v1, 0x28

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 360
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-boolean v1, p0, Lcom/android/internal/telephony/KlteRIL;->isLollipopRadio:Z

    if-eqz v1, :cond_0

    .line 361
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 362
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/KlteRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/KlteRIL;->riljLog(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/KlteRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 368
    return-void
.end method

.method public dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 66
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    invoke-direct {p0, p1, p2, p4}, Lcom/android/internal/telephony/KlteRIL;->dialEmergencyCall(Ljava/lang/String;ILandroid/os/Message;)V

    .line 91
    :goto_0
    return-void

    .line 71
    :cond_0
    const/16 v1, 0xa

    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 73
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    if-nez p3, :cond_1

    .line 80
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/KlteRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/KlteRIL;->riljLog(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/KlteRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    goto :goto_0

    .line 82
    :cond_1
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_1
.end method

.method protected notifyRegistrantsCdmaInfoRec(Lcom/android/internal/telephony/cdma/CdmaInformationRecords;)V
    .locals 4
    .param p1, "infoRec"    # Lcom/android/internal/telephony/cdma/CdmaInformationRecords;

    .prologue
    .line 308
    const/16 v1, 0x403

    .line 310
    .local v1, "response":I
    iget-object v2, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    instance-of v2, v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;

    if-eqz v2, :cond_0

    .line 311
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;

    .line 312
    .local v0, "rec":Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;
    if-eqz v0, :cond_0

    iget-boolean v2, v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->isPresent:Z

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->signalType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->alertPitch:I

    if-nez v2, :cond_0

    iget v2, v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->signal:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 323
    .end local v0    # "rec":Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;
    :goto_0
    return-void

    .line 322
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL;->notifyRegistrantsCdmaInfoRec(Lcom/android/internal/telephony/cdma/CdmaInformationRecords;)V

    goto :goto_0
.end method

.method protected processSolicited(Landroid/os/Parcel;)Lcom/android/internal/telephony/RILRequest;
    .locals 11
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v10, 0x0

    .line 396
    const/4 v2, 0x0

    .line 397
    .local v2, "found":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 398
    .local v0, "dataPosition":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 399
    .local v5, "serial":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 400
    .local v1, "error":I
    const/4 v4, 0x0

    .line 402
    .local v4, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v9, p0, Lcom/android/internal/telephony/KlteRIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v9

    .line 403
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/telephony/KlteRIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/RILRequest;

    .line 404
    .local v7, "tr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v7, :cond_1

    iget v8, v7, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    if-ne v8, v5, :cond_1

    .line 405
    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-lez v8, :cond_1

    .line 406
    :cond_0
    :try_start_1
    iget v8, v7, Lcom/android/internal/telephony/RILRequest;->mRequest:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    packed-switch v8, :pswitch_data_0

    .line 421
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 422
    if-nez v4, :cond_3

    .line 424
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 426
    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL;->processSolicited(Landroid/os/Parcel;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v7

    .line 447
    .end local v7    # "tr":Lcom/android/internal/telephony/RILRequest;
    :goto_1
    return-object v7

    .line 409
    .restart local v7    # "tr":Lcom/android/internal/telephony/RILRequest;
    :pswitch_0
    move-object v4, v7

    goto :goto_0

    .line 411
    :catch_0
    move-exception v6

    .line 413
    .local v6, "thr":Ljava/lang/Throwable;
    :try_start_3
    iget-object v8, v7, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v8, :cond_2

    .line 414
    iget-object v8, v7, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    const/4 v10, 0x0

    invoke-static {v8, v10, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 415
    iget-object v8, v7, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 417
    :cond_2
    monitor-exit v9

    goto :goto_1

    .line 421
    .end local v6    # "thr":Ljava/lang/Throwable;
    .end local v7    # "tr":Lcom/android/internal/telephony/RILRequest;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v8

    .line 428
    .restart local v7    # "tr":Lcom/android/internal/telephony/RILRequest;
    :cond_3
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/KlteRIL;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;

    move-result-object v4

    .line 429
    if-nez v4, :cond_4

    move-object v7, v4

    .line 430
    goto :goto_1

    .line 432
    :cond_4
    const/4 v3, 0x0

    .line 433
    .local v3, "ret":Ljava/lang/Object;
    if-eqz v1, :cond_5

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v8

    if-lez v8, :cond_6

    .line 434
    :cond_5
    iget v8, v4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    packed-switch v8, :pswitch_data_1

    .line 437
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unrecognized solicited response: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 435
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/KlteRIL;->responseDataRegistrationState(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    .line 441
    .end local v3    # "ret":Ljava/lang/Object;
    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "< "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v9}, Lcom/android/internal/telephony/KlteRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v9, v3}, Lcom/android/internal/telephony/KlteRIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/KlteRIL;->riljLog(Ljava/lang/String;)V

    .line 443
    iget-object v8, v4, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v8, :cond_7

    .line 444
    iget-object v8, v4, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v8, v3, v10}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 445
    iget-object v8, v4, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    :cond_7
    move-object v7, v4

    .line 447
    goto/16 :goto_1

    .line 406
    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
    .end packed-switch

    .line 434
    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_1
    .end packed-switch
.end method

.method protected processUnsolicited(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 335
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 336
    .local v0, "dataPosition":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 337
    .local v2, "response":I
    move v1, v2

    .line 339
    .local v1, "newResponse":I
    iget-boolean v3, p0, Lcom/android/internal/telephony/KlteRIL;->isLollipopRadio:Z

    if-eqz v3, :cond_0

    .line 340
    packed-switch v2, :pswitch_data_0

    .line 345
    :goto_0
    if-eq v1, v2, :cond_0

    .line 346
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 347
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 350
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 351
    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL;->processUnsolicited(Landroid/os/Parcel;)V

    .line 352
    return-void

    .line 342
    :pswitch_0
    const/16 v1, 0x413

    goto :goto_0

    .line 340
    :pswitch_data_0
    .packed-switch 0x2b2f
        :pswitch_0
    .end packed-switch
.end method

.method protected responseCallList(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 14
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 177
    .local v5, "num":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 184
    .local v6, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/DriverCall;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_a

    .line 185
    new-instance v2, Lcom/android/internal/telephony/DriverCall;

    invoke-direct {v2}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .line 187
    .local v2, "dc":Lcom/android/internal/telephony/DriverCall;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-static {v10}, Lcom/android/internal/telephony/DriverCall;->stateFromCLCC(I)Lcom/android/internal/telephony/DriverCall$State;

    move-result-object v10

    iput-object v10, v2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    and-int/lit16 v10, v10, 0xff

    iput v10, v2, Lcom/android/internal/telephony/DriverCall;->index:I

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    iput v10, v2, Lcom/android/internal/telephony/DriverCall;->TOA:I

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_3

    const/4 v10, 0x1

    :goto_1
    iput-boolean v10, v2, Lcom/android/internal/telephony/DriverCall;->isMpty:Z

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_4

    const/4 v10, 0x1

    :goto_2
    iput-boolean v10, v2, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    iput v10, v2, Lcom/android/internal/telephony/DriverCall;->als:I

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 194
    .local v9, "voiceSettings":I
    if-eqz v9, :cond_5

    const/4 v10, 0x1

    :goto_3
    iput-boolean v10, v2, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    .line 195
    iget-boolean v10, p0, Lcom/android/internal/telephony/KlteRIL;->mIsGsm:Z

    if-eqz v10, :cond_1

    .line 197
    iget-boolean v10, p0, Lcom/android/internal/telephony/KlteRIL;->isLollipopRadio:Z

    if-nez v10, :cond_0

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_0

    .line 199
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 200
    .local v1, "call_type":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 201
    .local v0, "call_domain":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 203
    .end local v0    # "call_domain":I
    .end local v1    # "call_type":I
    :cond_1
    iget-boolean v10, p0, Lcom/android/internal/telephony/KlteRIL;->isLollipopRadio:Z

    if-eqz v10, :cond_2

    .line 204
    iget-boolean v10, p0, Lcom/android/internal/telephony/KlteRIL;->mIsGsm:Z

    if-nez v10, :cond_2

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 206
    .restart local v1    # "call_type":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 207
    .restart local v0    # "call_domain":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 210
    .end local v0    # "call_domain":I
    .end local v1    # "call_type":I
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_6

    const/4 v10, 0x1

    :goto_4
    iput-boolean v10, v2, Lcom/android/internal/telephony/DriverCall;->isVoicePrivacy:Z

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 213
    .local v4, "np":I
    invoke-static {v4}, Lcom/android/internal/telephony/DriverCall;->presentationFromCLIP(I)I

    move-result v10

    iput v10, v2, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    .line 215
    iget-boolean v10, p0, Lcom/android/internal/telephony/KlteRIL;->isLollipopRadio:Z

    if-nez v10, :cond_7

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    iput v10, v2, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    .line 220
    :goto_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 221
    .local v8, "uusInfoPresent":I
    const/4 v10, 0x1

    if-ne v8, v10, :cond_8

    .line 222
    new-instance v10, Lcom/android/internal/telephony/UUSInfo;

    invoke-direct {v10}, Lcom/android/internal/telephony/UUSInfo;-><init>()V

    iput-object v10, v2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 223
    iget-object v10, v2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/UUSInfo;->setType(I)V

    .line 224
    iget-object v10, v2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/UUSInfo;->setDcs(I)V

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .line 226
    .local v7, "userData":[B
    iget-object v10, v2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v10, v7}, Lcom/android/internal/telephony/UUSInfo;->setUserData([B)V

    .line 227
    const-string v10, "Incoming UUS : type=%d, dcs=%d, length=%d"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, v2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v13}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    iget-object v13, v2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v13}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    iget-object v13, v2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v13}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v13

    array-length v13, v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/KlteRIL;->riljLogv(Ljava/lang/String;)V

    .line 230
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Incoming UUS : data (string)="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    new-instance v11, Ljava/lang/String;

    iget-object v12, v2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v12}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/KlteRIL;->riljLogv(Ljava/lang/String;)V

    .line 232
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Incoming UUS : data (hex): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v11}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/KlteRIL;->riljLogv(Ljava/lang/String;)V

    .line 239
    .end local v7    # "userData":[B
    :goto_6
    iget-object v10, v2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget v11, v2, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-static {v10, v11}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 241
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    iget-boolean v10, v2, Lcom/android/internal/telephony/DriverCall;->isVoicePrivacy:Z

    if-eqz v10, :cond_9

    .line 244
    iget-object v10, p0, Lcom/android/internal/telephony/KlteRIL;->mVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v10}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 245
    const-string v10, "InCall VoicePrivacy is enabled"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/KlteRIL;->riljLog(Ljava/lang/String;)V

    .line 184
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 190
    .end local v4    # "np":I
    .end local v8    # "uusInfoPresent":I
    .end local v9    # "voiceSettings":I
    :cond_3
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 191
    :cond_4
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 194
    .restart local v9    # "voiceSettings":I
    :cond_5
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 210
    :cond_6
    const/4 v10, 0x0

    goto/16 :goto_4

    .line 218
    .restart local v4    # "np":I
    :cond_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-static {v10}, Lcom/android/internal/telephony/DriverCall;->presentationFromCLIP(I)I

    move-result v10

    iput v10, v2, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    goto/16 :goto_5

    .line 235
    .restart local v8    # "uusInfoPresent":I
    :cond_8
    const-string v10, "Incoming UUS : NOT present!"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/KlteRIL;->riljLogv(Ljava/lang/String;)V

    goto :goto_6

    .line 247
    :cond_9
    iget-object v10, p0, Lcom/android/internal/telephony/KlteRIL;->mVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v10}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 248
    const-string v10, "InCall VoicePrivacy is disabled"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/KlteRIL;->riljLog(Ljava/lang/String;)V

    goto :goto_7

    .line 252
    .end local v2    # "dc":Lcom/android/internal/telephony/DriverCall;
    .end local v4    # "np":I
    .end local v8    # "uusInfoPresent":I
    .end local v9    # "voiceSettings":I
    :cond_a
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 254
    if-nez v5, :cond_b

    iget-object v10, p0, Lcom/android/internal/telephony/KlteRIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 255
    iget-object v10, p0, Lcom/android/internal/telephony/KlteRIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    if-eqz v10, :cond_b

    .line 256
    const-string v10, "responseCallList: call ended, testing emergency call, notify ECM Registrants"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/KlteRIL;->riljLog(Ljava/lang/String;)V

    .line 258
    iget-object v10, p0, Lcom/android/internal/telephony/KlteRIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    invoke-virtual {v10}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 262
    :cond_b
    return-object v6
.end method

.method protected responseIccCardStatus(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 11
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 96
    const/4 v0, 0x0

    .line 98
    .local v0, "appStatus":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    new-instance v3, Lcom/android/internal/telephony/uicc/IccCardStatus;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccCardStatus;-><init>()V

    .line 99
    .local v3, "cardStatus":Lcom/android/internal/telephony/uicc/IccCardStatus;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/uicc/IccCardStatus;->setCardState(I)V

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/uicc/IccCardStatus;->setUniversalPinState(I)V

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mImsSubscriptionAppIndex:I

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 108
    .local v5, "numApplications":I
    const/16 v6, 0x8

    if-le v5, v6, :cond_0

    .line 109
    const/16 v5, 0x8

    .line 111
    :cond_0
    new-array v6, v5, [Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    iput-object v6, v3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    .line 113
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v5, :cond_1

    .line 114
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    .end local v0    # "appStatus":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;-><init>()V

    .line 115
    .restart local v0    # "appStatus":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppTypeFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v6

    iput-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v6

    iput-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PersoSubstateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v6

    iput-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->aid:Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_label:Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1_replaced:I

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PinStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v6

    iput-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PinStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v6

    iput-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 129
    iget-object v6, v3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aput-object v0, v6, v4

    .line 113
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 133
    :cond_1
    if-eqz v0, :cond_2

    if-ne v5, v9, :cond_2

    iget-boolean v6, p0, Lcom/android/internal/telephony/KlteRIL;->mIsGsm:Z

    if-nez v6, :cond_2

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppTypeFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v7

    if-ne v6, v7, :cond_2

    .line 137
    const/4 v6, 0x3

    new-array v6, v6, [Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    iput-object v6, v3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    .line 138
    iget-object v6, v3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aput-object v0, v6, v8

    .line 139
    iput v8, v3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    .line 140
    iput v9, v3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    .line 141
    iput v10, v3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mImsSubscriptionAppIndex:I

    .line 143
    new-instance v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    invoke-direct {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;-><init>()V

    .line 144
    .local v1, "appStatus2":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    const/4 v6, 0x4

    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppTypeFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v6

    iput-object v6, v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 145
    iget-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    iput-object v6, v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .line 146
    iget-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    iput-object v6, v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 147
    iget-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->aid:Ljava/lang/String;

    iput-object v6, v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->aid:Ljava/lang/String;

    .line 148
    iget-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_label:Ljava/lang/String;

    iput-object v6, v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_label:Ljava/lang/String;

    .line 149
    iget v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1_replaced:I

    iput v6, v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1_replaced:I

    .line 150
    iget-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    iput-object v6, v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 151
    iget-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    iput-object v6, v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 152
    iget-object v6, v3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    iget v7, v3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    aput-object v1, v6, v7

    .line 154
    new-instance v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    invoke-direct {v2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;-><init>()V

    .line 155
    .local v2, "appStatus3":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    const/4 v6, 0x5

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppTypeFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 156
    iget-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    iput-object v6, v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .line 157
    iget-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    iput-object v6, v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 158
    iget-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->aid:Ljava/lang/String;

    iput-object v6, v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->aid:Ljava/lang/String;

    .line 159
    iget-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_label:Ljava/lang/String;

    iput-object v6, v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_label:Ljava/lang/String;

    .line 160
    iget v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1_replaced:I

    iput v6, v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1_replaced:I

    .line 161
    iget-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    iput-object v6, v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 162
    iget-object v6, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    iput-object v6, v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 163
    iget-object v6, v3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    iget v7, v3, Lcom/android/internal/telephony/uicc/IccCardStatus;->mImsSubscriptionAppIndex:I

    aput-object v2, v6, v7

    .line 165
    .end local v1    # "appStatus2":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    .end local v2    # "appStatus3":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    :cond_2
    return-object v3
.end method

.method protected responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 15
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 268
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    and-int/lit16 v1, v0, 0xff

    .line 269
    .local v1, "gsmSignalStrength":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 270
    .local v2, "gsmBitErrorRate":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 271
    .local v3, "cdmaDbm":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 272
    .local v4, "cdmaEcio":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 273
    .local v5, "evdoDbm":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 274
    .local v6, "evdoEcio":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 275
    .local v7, "evdoSnr":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 276
    .local v8, "lteSignalStrength":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 277
    .local v9, "lteRsrp":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 278
    .local v10, "lteRsrq":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 279
    .local v11, "lteRssnr":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 280
    .local v12, "lteCqi":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 283
    .local v13, "tdScdmaRscp":I
    and-int/lit16 v0, v8, 0xff

    const/16 v14, 0xff

    if-eq v0, v14, :cond_0

    const/16 v0, 0x63

    if-ne v8, v0, :cond_1

    .line 284
    :cond_0
    const/16 v8, 0x63

    .line 285
    const v9, 0x7fffffff

    .line 286
    const v10, 0x7fffffff

    .line 287
    const v11, 0x7fffffff

    .line 288
    const v12, 0x7fffffff

    .line 294
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "gsmSignalStrength:"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, " gsmBitErrorRate:"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, " cdmaDbm:"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, " cdmaEcio:"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, " evdoDbm:"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, " evdoEcio: "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, " evdoSnr:"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, " lteSignalStrength:"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, " lteRsrp:"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, " lteRsrq:"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, " lteRssnr:"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, " lteCqi:"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, " tdScdmaRscp:"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, " isGsm:"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-boolean v0, p0, Lcom/android/internal/telephony/KlteRIL;->mIsGsm:Z

    if-eqz v0, :cond_2

    const-string v0, "true"

    :goto_1
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/KlteRIL;->riljLog(Ljava/lang/String;)V

    .line 301
    new-instance v0, Landroid/telephony/SignalStrength;

    iget-boolean v14, p0, Lcom/android/internal/telephony/KlteRIL;->mIsGsm:Z

    invoke-direct/range {v0 .. v14}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIIIIIIIZ)V

    return-object v0

    .line 290
    :cond_1
    and-int/lit16 v8, v8, 0xff

    goto/16 :goto_0

    .line 294
    :cond_2
    const-string v0, "false"

    goto :goto_1
.end method

.method public setPhoneType(I)V
    .locals 1
    .param p1, "phoneType"    # I

    .prologue
    .line 327
    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL;->setPhoneType(I)V

    .line 328
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/KlteRIL;->mIsGsm:Z

    .line 329
    return-void

    .line 328
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
