.class Lcom/android/server/GestureManagerService$GestureObserver;
.super Landroid/database/ContentObserver;
.source "GestureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/GestureManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GestureObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/GestureManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/GestureManagerService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    iput-object p1, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 7
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v6, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    const/4 v1, 0x0

    .local v1, "enable":I
    const/4 v0, 0x0

    .local v0, "buf":[B
    const-string v2, "mz_quick_wakeup_slide_up"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    # getter for: Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/GestureManagerService;->access$600(Lcom/android/server/GestureManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mz_quick_wakeup_slide_up"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_4

    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v2, v2, Lcom/android/server/GestureManagerService;->mSlideControl:[B

    aget-byte v3, v2, v5

    or-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    const/16 v3, 0x8

    # |= operator for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v2, v3}, Lcom/android/server/GestureManagerService;->access$276(Lcom/android/server/GestureManagerService;I)I

    :goto_0
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v0, v2, Lcom/android/server/GestureManagerService;->mSlideControl:[B

    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    const-string v2, "GestureManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onChange , write: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    # invokes: Lcom/android/server/GestureManagerService;->toString([BI)Ljava/lang/String;
    invoke-static {v4, v0, v6}, Lcom/android/server/GestureManagerService;->access$700(Lcom/android/server/GestureManagerService;[BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mGestureAllDisable is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    # getter for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v4}, Lcom/android/server/GestureManagerService;->access$200(Lcom/android/server/GestureManagerService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    # invokes: Lcom/android/server/GestureManagerService;->writeByteToControl([B)V
    invoke-static {v2, v0}, Lcom/android/server/GestureManagerService;->access$800(Lcom/android/server/GestureManagerService;[B)V

    :cond_1
    const-string v2, "mz_quick_wakeup_switch"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v3, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    # getter for: Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/GestureManagerService;->access$600(Lcom/android/server/GestureManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mz_quick_wakeup_switch"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    # setter for: Lcom/android/server/GestureManagerService;->mGestureGlobalSwitch:I
    invoke-static {v2, v3}, Lcom/android/server/GestureManagerService;->access$302(Lcom/android/server/GestureManagerService;I)I

    :cond_2
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    # getter for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v2}, Lcom/android/server/GestureManagerService;->access$200(Lcom/android/server/GestureManagerService;)I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    # getter for: Lcom/android/server/GestureManagerService;->mGestureGlobalSwitch:I
    invoke-static {v2}, Lcom/android/server/GestureManagerService;->access$300(Lcom/android/server/GestureManagerService;)I

    move-result v2

    if-nez v2, :cond_1b

    :cond_3
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    # invokes: Lcom/android/server/GestureManagerService;->disableAllGesture()V
    invoke-static {v2}, Lcom/android/server/GestureManagerService;->access$900(Lcom/android/server/GestureManagerService;)V

    :goto_2
    return-void

    :cond_4
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v2, v2, Lcom/android/server/GestureManagerService;->mSlideControl:[B

    aget-byte v3, v2, v5

    and-int/lit8 v3, v3, -0x9

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v3, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    # getter for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v3}, Lcom/android/server/GestureManagerService;->access$200(Lcom/android/server/GestureManagerService;)I

    move-result v3

    and-int/lit8 v3, v3, -0x9

    # setter for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v2, v3}, Lcom/android/server/GestureManagerService;->access$202(Lcom/android/server/GestureManagerService;I)I

    goto/16 :goto_0

    :cond_5
    const-string v2, "mz_quick_wakeup_slide_left_right"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    # getter for: Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/GestureManagerService;->access$600(Lcom/android/server/GestureManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mz_quick_wakeup_slide_left_right"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_6

    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v2, v2, Lcom/android/server/GestureManagerService;->mSlideControl:[B

    aget-byte v3, v2, v5

    or-int/lit8 v3, v3, 0x2

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    const/4 v3, 0x2

    # |= operator for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v2, v3}, Lcom/android/server/GestureManagerService;->access$276(Lcom/android/server/GestureManagerService;I)I

    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v2, v2, Lcom/android/server/GestureManagerService;->mSlideControl:[B

    aget-byte v3, v2, v5

    or-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    # |= operator for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v2, v6}, Lcom/android/server/GestureManagerService;->access$276(Lcom/android/server/GestureManagerService;I)I

    :goto_3
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v0, v2, Lcom/android/server/GestureManagerService;->mSlideControl:[B

    goto/16 :goto_1

    :cond_6
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v2, v2, Lcom/android/server/GestureManagerService;->mSlideControl:[B

    aget-byte v3, v2, v5

    and-int/lit8 v3, v3, -0x3

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v3, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    # getter for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v3}, Lcom/android/server/GestureManagerService;->access$200(Lcom/android/server/GestureManagerService;)I

    move-result v3

    and-int/lit8 v3, v3, -0x3

    # setter for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v2, v3}, Lcom/android/server/GestureManagerService;->access$202(Lcom/android/server/GestureManagerService;I)I

    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v2, v2, Lcom/android/server/GestureManagerService;->mSlideControl:[B

    aget-byte v3, v2, v5

    and-int/lit8 v3, v3, -0x2

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v3, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    # getter for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v3}, Lcom/android/server/GestureManagerService;->access$200(Lcom/android/server/GestureManagerService;)I

    move-result v3

    and-int/lit8 v3, v3, -0x5

    # setter for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v2, v3}, Lcom/android/server/GestureManagerService;->access$202(Lcom/android/server/GestureManagerService;I)I

    goto :goto_3

    :cond_7
    const-string v2, "mz_quick_wakeup_double_click"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    # getter for: Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/GestureManagerService;->access$600(Lcom/android/server/GestureManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mz_quick_wakeup_double_click"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_8

    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v2, v2, Lcom/android/server/GestureManagerService;->mTapControl:[B

    aput-byte v4, v2, v5

    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    # |= operator for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v2, v4}, Lcom/android/server/GestureManagerService;->access$276(Lcom/android/server/GestureManagerService;I)I

    :goto_4
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v0, v2, Lcom/android/server/GestureManagerService;->mTapControl:[B

    goto/16 :goto_1

    :cond_8
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v2, v2, Lcom/android/server/GestureManagerService;->mTapControl:[B

    aput-byte v5, v2, v5

    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v3, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    # getter for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v3}, Lcom/android/server/GestureManagerService;->access$200(Lcom/android/server/GestureManagerService;)I

    move-result v3

    and-int/lit8 v3, v3, -0x2

    # setter for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v2, v3}, Lcom/android/server/GestureManagerService;->access$202(Lcom/android/server/GestureManagerService;I)I

    goto :goto_4

    :cond_9
    const-string v2, "mz_quick_wakeup_slide_down"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    # getter for: Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/GestureManagerService;->access$600(Lcom/android/server/GestureManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mz_quick_wakeup_slide_down"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_a

    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v2, v2, Lcom/android/server/GestureManagerService;->mSlideControl:[B

    aget-byte v3, v2, v5

    or-int/lit8 v3, v3, 0x4

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    const/16 v3, 0x10

    # |= operator for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v2, v3}, Lcom/android/server/GestureManagerService;->access$276(Lcom/android/server/GestureManagerService;I)I

    :goto_5
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v0, v2, Lcom/android/server/GestureManagerService;->mSlideControl:[B

    goto/16 :goto_1

    :cond_a
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v2, v2, Lcom/android/server/GestureManagerService;->mSlideControl:[B

    aget-byte v3, v2, v5

    and-int/lit8 v3, v3, -0x5

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v3, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    # getter for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v3}, Lcom/android/server/GestureManagerService;->access$200(Lcom/android/server/GestureManagerService;)I

    move-result v3

    and-int/lit8 v3, v3, -0x11

    # setter for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v2, v3}, Lcom/android/server/GestureManagerService;->access$202(Lcom/android/server/GestureManagerService;I)I

    goto :goto_5

    :cond_b
    const-string v2, "mz_quick_wakeup_draw_c"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    # getter for: Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/GestureManagerService;->access$600(Lcom/android/server/GestureManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mz_quick_wakeup_draw_c"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_c

    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v2, v2, Lcom/android/server/GestureManagerService;->mABCControl:[B

    aget-byte v3, v2, v5

    or-int/lit8 v3, v3, 0x2

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    const/16 v3, 0x20

    # |= operator for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v2, v3}, Lcom/android/server/GestureManagerService;->access$276(Lcom/android/server/GestureManagerService;I)I

    :goto_6
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v0, v2, Lcom/android/server/GestureManagerService;->mABCControl:[B

    goto/16 :goto_1

    :cond_c
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v2, v2, Lcom/android/server/GestureManagerService;->mABCControl:[B

    aget-byte v3, v2, v5

    and-int/lit8 v3, v3, -0x3

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v3, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    # getter for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v3}, Lcom/android/server/GestureManagerService;->access$200(Lcom/android/server/GestureManagerService;)I

    move-result v3

    and-int/lit8 v3, v3, -0x21

    # setter for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v2, v3}, Lcom/android/server/GestureManagerService;->access$202(Lcom/android/server/GestureManagerService;I)I

    goto :goto_6

    :cond_d
    const-string v2, "mz_quick_wakeup_draw_e"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    # getter for: Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/GestureManagerService;->access$600(Lcom/android/server/GestureManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mz_quick_wakeup_draw_e"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_e

    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v2, v2, Lcom/android/server/GestureManagerService;->mABCControl:[B

    aget-byte v3, v2, v5

    or-int/lit8 v3, v3, 0x4

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    const/16 v3, 0x40

    # |= operator for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v2, v3}, Lcom/android/server/GestureManagerService;->access$276(Lcom/android/server/GestureManagerService;I)I

    :goto_7
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v0, v2, Lcom/android/server/GestureManagerService;->mABCControl:[B

    goto/16 :goto_1

    :cond_e
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v2, v2, Lcom/android/server/GestureManagerService;->mABCControl:[B

    aget-byte v3, v2, v5

    and-int/lit8 v3, v3, -0x5

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v3, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    # getter for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v3}, Lcom/android/server/GestureManagerService;->access$200(Lcom/android/server/GestureManagerService;)I

    move-result v3

    and-int/lit8 v3, v3, -0x41

    # setter for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v2, v3}, Lcom/android/server/GestureManagerService;->access$202(Lcom/android/server/GestureManagerService;I)I

    goto :goto_7

    :cond_f
    const-string v2, "mz_quick_wakeup_draw_m"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    # getter for: Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/GestureManagerService;->access$600(Lcom/android/server/GestureManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mz_quick_wakeup_draw_m"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_10

    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v2, v2, Lcom/android/server/GestureManagerService;->mABCControl:[B

    aget-byte v3, v2, v5

    or-int/lit8 v3, v3, 0x10

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    const/16 v3, 0x80

    # |= operator for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v2, v3}, Lcom/android/server/GestureManagerService;->access$276(Lcom/android/server/GestureManagerService;I)I

    :goto_8
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v0, v2, Lcom/android/server/GestureManagerService;->mABCControl:[B

    goto/16 :goto_1

    :cond_10
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v2, v2, Lcom/android/server/GestureManagerService;->mABCControl:[B

    aget-byte v3, v2, v5

    and-int/lit8 v3, v3, -0x11

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v3, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    # getter for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v3}, Lcom/android/server/GestureManagerService;->access$200(Lcom/android/server/GestureManagerService;)I

    move-result v3

    and-int/lit16 v3, v3, -0x81

    # setter for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v2, v3}, Lcom/android/server/GestureManagerService;->access$202(Lcom/android/server/GestureManagerService;I)I

    goto :goto_8

    :cond_11
    const-string v2, "mz_quick_wakeup_draw_o"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    # getter for: Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/GestureManagerService;->access$600(Lcom/android/server/GestureManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mz_quick_wakeup_draw_o"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_12

    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v2, v2, Lcom/android/server/GestureManagerService;->mABCControl:[B

    aget-byte v3, v2, v5

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    const/16 v3, 0x100

    # |= operator for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v2, v3}, Lcom/android/server/GestureManagerService;->access$276(Lcom/android/server/GestureManagerService;I)I

    :goto_9
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v0, v2, Lcom/android/server/GestureManagerService;->mABCControl:[B

    goto/16 :goto_1

    :cond_12
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v2, v2, Lcom/android/server/GestureManagerService;->mABCControl:[B

    aget-byte v3, v2, v5

    and-int/lit16 v3, v3, -0x81

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v3, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    # getter for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v3}, Lcom/android/server/GestureManagerService;->access$200(Lcom/android/server/GestureManagerService;)I

    move-result v3

    and-int/lit16 v3, v3, -0x101

    # setter for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v2, v3}, Lcom/android/server/GestureManagerService;->access$202(Lcom/android/server/GestureManagerService;I)I

    goto :goto_9

    :cond_13
    const-string v2, "mz_quick_wakeup_draw_s"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    # getter for: Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/GestureManagerService;->access$600(Lcom/android/server/GestureManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mz_quick_wakeup_draw_s"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_14

    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v2, v2, Lcom/android/server/GestureManagerService;->mABCControl:[B

    aget-byte v3, v2, v5

    or-int/lit8 v3, v3, 0x20

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    const/16 v3, 0x200

    # |= operator for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v2, v3}, Lcom/android/server/GestureManagerService;->access$276(Lcom/android/server/GestureManagerService;I)I

    :goto_a
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v0, v2, Lcom/android/server/GestureManagerService;->mABCControl:[B

    goto/16 :goto_1

    :cond_14
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v2, v2, Lcom/android/server/GestureManagerService;->mABCControl:[B

    aget-byte v3, v2, v5

    and-int/lit8 v3, v3, -0x21

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v3, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    # getter for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v3}, Lcom/android/server/GestureManagerService;->access$200(Lcom/android/server/GestureManagerService;)I

    move-result v3

    and-int/lit16 v3, v3, -0x201

    # setter for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v2, v3}, Lcom/android/server/GestureManagerService;->access$202(Lcom/android/server/GestureManagerService;I)I

    goto :goto_a

    :cond_15
    const-string v2, "mz_quick_wakeup_draw_v"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    # getter for: Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/GestureManagerService;->access$600(Lcom/android/server/GestureManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mz_quick_wakeup_draw_v"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_16

    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v2, v2, Lcom/android/server/GestureManagerService;->mABCControl:[B

    aget-byte v3, v2, v5

    or-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    const/16 v3, 0x400

    # |= operator for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v2, v3}, Lcom/android/server/GestureManagerService;->access$276(Lcom/android/server/GestureManagerService;I)I

    :goto_b
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v0, v2, Lcom/android/server/GestureManagerService;->mABCControl:[B

    goto/16 :goto_1

    :cond_16
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v2, v2, Lcom/android/server/GestureManagerService;->mABCControl:[B

    aget-byte v3, v2, v5

    and-int/lit8 v3, v3, -0x2

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v3, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    # getter for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v3}, Lcom/android/server/GestureManagerService;->access$200(Lcom/android/server/GestureManagerService;)I

    move-result v3

    and-int/lit16 v3, v3, -0x401

    # setter for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v2, v3}, Lcom/android/server/GestureManagerService;->access$202(Lcom/android/server/GestureManagerService;I)I

    goto :goto_b

    :cond_17
    const-string v2, "mz_quick_wakeup_draw_w"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    # getter for: Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/GestureManagerService;->access$600(Lcom/android/server/GestureManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mz_quick_wakeup_draw_w"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_18

    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v2, v2, Lcom/android/server/GestureManagerService;->mABCControl:[B

    aget-byte v3, v2, v5

    or-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    const/16 v3, 0x800

    # |= operator for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v2, v3}, Lcom/android/server/GestureManagerService;->access$276(Lcom/android/server/GestureManagerService;I)I

    :goto_c
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v0, v2, Lcom/android/server/GestureManagerService;->mABCControl:[B

    goto/16 :goto_1

    :cond_18
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v2, v2, Lcom/android/server/GestureManagerService;->mABCControl:[B

    aget-byte v3, v2, v5

    and-int/lit8 v3, v3, -0x9

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v3, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    # getter for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v3}, Lcom/android/server/GestureManagerService;->access$200(Lcom/android/server/GestureManagerService;)I

    move-result v3

    and-int/lit16 v3, v3, -0x801

    # setter for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v2, v3}, Lcom/android/server/GestureManagerService;->access$202(Lcom/android/server/GestureManagerService;I)I

    goto :goto_c

    :cond_19
    const-string v2, "mz_quick_wakeup_draw_z"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    # getter for: Lcom/android/server/GestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/GestureManagerService;->access$600(Lcom/android/server/GestureManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mz_quick_wakeup_draw_z"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_1a

    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v2, v2, Lcom/android/server/GestureManagerService;->mABCControl:[B

    aget-byte v3, v2, v5

    or-int/lit8 v3, v3, 0x40

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    const/16 v3, 0x1000

    # |= operator for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v2, v3}, Lcom/android/server/GestureManagerService;->access$276(Lcom/android/server/GestureManagerService;I)I

    :goto_d
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v0, v2, Lcom/android/server/GestureManagerService;->mABCControl:[B

    goto/16 :goto_1

    :cond_1a
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v2, v2, Lcom/android/server/GestureManagerService;->mABCControl:[B

    aget-byte v3, v2, v5

    and-int/lit8 v3, v3, -0x41

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v3, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    # getter for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v3}, Lcom/android/server/GestureManagerService;->access$200(Lcom/android/server/GestureManagerService;)I

    move-result v3

    and-int/lit16 v3, v3, -0x1001

    # setter for: Lcom/android/server/GestureManagerService;->mGestureAllDisable:I
    invoke-static {v2, v3}, Lcom/android/server/GestureManagerService;->access$202(Lcom/android/server/GestureManagerService;I)I

    goto :goto_d

    :cond_1b
    iget-object v2, p0, Lcom/android/server/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/GestureManagerService;

    # invokes: Lcom/android/server/GestureManagerService;->enableAllGesture()V
    invoke-static {v2}, Lcom/android/server/GestureManagerService;->access$1000(Lcom/android/server/GestureManagerService;)V

    goto/16 :goto_2
.end method
