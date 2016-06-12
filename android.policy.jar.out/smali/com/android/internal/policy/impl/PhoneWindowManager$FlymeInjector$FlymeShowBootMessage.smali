.class final Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector$FlymeShowBootMessage;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeShowBootMessage"
.end annotation


# instance fields
.field private mMsg:Ljava/lang/CharSequence;

.field private mPwm:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "pwm"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p2, "msg"    # Ljava/lang/CharSequence;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector$FlymeShowBootMessage;->mPwm:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector$FlymeShowBootMessage;->mMsg:Ljava/lang/CharSequence;

    return-void
.end method

.method private showFlymeBootMessage()V
    .locals 14

    .prologue
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector$FlymeShowBootMessage;->mMsg:Ljava/lang/CharSequence;

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector$FlymeShowBootMessage;->mMsg:Ljava/lang/CharSequence;

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .local v6, "msgText":Ljava/lang/String;
    :goto_0
    const/4 v7, 0x0

    .local v7, "showProcessBar":Z
    const/4 v3, 0x0

    .local v3, "dex_opt":I
    const/4 v8, 0x0

    .local v8, "total_size":I
    if-eqz v6, :cond_3

    const-string v11, "flymeTrain"

    invoke-virtual {v6, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_3

    :try_start_0
    const-string v11, "flymeTrain"

    invoke-virtual {v6, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arry1":[Ljava/lang/String;
    const/4 v11, 0x0

    aget-object v6, v0, v11

    const/4 v11, 0x1

    aget-object v2, v0, v11

    .local v2, "dexText":Ljava/lang/String;
    const-string v11, "processTrain"

    invoke-virtual {v2, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, "arry2":[Ljava/lang/String;
    const/4 v11, 0x0

    aget-object v11, v1, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v11, 0x1

    aget-object v11, v1, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    const/4 v7, 0x1

    .end local v0    # "arry1":[Ljava/lang/String;
    .end local v1    # "arry2":[Ljava/lang/String;
    .end local v2    # "dexText":Ljava/lang/String;
    :cond_0
    :goto_1
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector$FlymeShowBootMessage;->mPwm:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v11, v11, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFlymeBootMsgText:Landroid/widget/TextView;

    if-nez v11, :cond_1

    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector$FlymeShowBootMessage;->mPwm:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v11, v11, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v11}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .local v5, "inflater":Landroid/view/LayoutInflater;
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector$FlymeShowBootMessage;->mPwm:Lcom/android/internal/policy/impl/PhoneWindowManager;

    sget v12, Lcom/flyme/internal/R$layout;->android_upgrading_layout:I

    const/4 v13, 0x0

    invoke-virtual {v5, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    iput-object v12, v11, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFlymeBootLayout:Landroid/view/View;

    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector$FlymeShowBootMessage;->mPwm:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector$FlymeShowBootMessage;->mPwm:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v11, v11, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFlymeBootLayout:Landroid/view/View;

    sget v13, Lcom/flyme/internal/R$id;->dex_opt_title:I

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v12, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFlymeBootMsgTitle:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector$FlymeShowBootMessage;->mPwm:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v11, v11, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFlymeBootMsgTitle:Landroid/widget/TextView;

    sget v12, Lcom/flyme/internal/R$string;->dexopt_apps_title:I

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector$FlymeShowBootMessage;->mPwm:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector$FlymeShowBootMessage;->mPwm:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v11, v11, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFlymeBootLayout:Landroid/view/View;

    sget v13, Lcom/flyme/internal/R$id;->dex_opt_message:I

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v12, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFlymeBootMsgText:Landroid/widget/TextView;

    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector$FlymeShowBootMessage;->mPwm:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector$FlymeShowBootMessage;->mPwm:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v11, v11, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFlymeBootLayout:Landroid/view/View;

    sget v13, Lcom/flyme/internal/R$id;->dex_opt_progressbar:I

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ProgressBar;

    iput-object v11, v12, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFlymeBootMsgBar:Landroid/widget/ProgressBar;

    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector$FlymeShowBootMessage;->mPwm:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v11, v11, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v12, "window"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    .local v9, "wm":Landroid/view/WindowManager;
    new-instance v10, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v10}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .local v10, "wmParams":Landroid/view/WindowManager$LayoutParams;
    const/4 v11, 0x5

    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    const/16 v11, 0x7e5

    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v11, 0x11

    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v11, -0x1

    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v11, -0x1

    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v11, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v11, v11, 0x8

    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v11, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v11, v11, 0x10

    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector$FlymeShowBootMessage;->mPwm:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v11, v11, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFlymeBootLayout:Landroid/view/View;

    invoke-interface {v9, v11, v10}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .end local v5    # "inflater":Landroid/view/LayoutInflater;
    .end local v9    # "wm":Landroid/view/WindowManager;
    .end local v10    # "wmParams":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    if-eqz v7, :cond_4

    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector$FlymeShowBootMessage;->mPwm:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v11, v11, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFlymeBootMsgBar:Landroid/widget/ProgressBar;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector$FlymeShowBootMessage;->mPwm:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v11, v11, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFlymeBootMsgBar:Landroid/widget/ProgressBar;

    mul-int/lit8 v12, v3, 0x64

    div-int/2addr v12, v8

    invoke-virtual {v11, v12}, Landroid/widget/ProgressBar;->setProgress(I)V

    :goto_2
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector$FlymeShowBootMessage;->mPwm:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v11, v11, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFlymeBootMsgText:Landroid/widget/TextView;

    invoke-virtual {v11, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .end local v3    # "dex_opt":I
    .end local v6    # "msgText":Ljava/lang/String;
    .end local v7    # "showProcessBar":Z
    .end local v8    # "total_size":I
    :cond_2
    const/4 v6, 0x0

    goto/16 :goto_0

    .restart local v3    # "dex_opt":I
    .restart local v6    # "msgText":Ljava/lang/String;
    .restart local v7    # "showProcessBar":Z
    .restart local v8    # "total_size":I
    :catch_0
    move-exception v4

    .local v4, "e":Ljava/lang/Exception;
    const-string v11, "WindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "showFlymeBootMessage"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v4    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector$FlymeShowBootMessage;->mPwm:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v11, v11, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFlymeBootMsgTitle:Landroid/widget/TextView;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector$FlymeShowBootMessage;->mPwm:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v11, v11, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFlymeBootMsgTitle:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector$FlymeShowBootMessage;->mPwm:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v11, v11, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFlymeBootMsgTitle:Landroid/widget/TextView;

    const v12, 0x1040573

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    :cond_4
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector$FlymeShowBootMessage;->mPwm:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v11, v11, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFlymeBootMsgBar:Landroid/widget/ProgressBar;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_2
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$FlymeInjector$FlymeShowBootMessage;->showFlymeBootMessage()V

    return-void
.end method
