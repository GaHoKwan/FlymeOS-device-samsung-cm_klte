.class Lcom/luo2888/flymesettings/VibratorTuningPreference$2;
.super Ljava/lang/Object;
.source "VibratorTuningPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luo2888/flymesettings/VibratorTuningPreference;->showDialog(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/luo2888/flymesettings/VibratorTuningPreference;


# direct methods
.method constructor <init>(Lcom/luo2888/flymesettings/VibratorTuningPreference;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/luo2888/flymesettings/VibratorTuningPreference$2;->this$0:Lcom/luo2888/flymesettings/VibratorTuningPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/luo2888/flymesettings/VibratorTuningPreference$2;->this$0:Lcom/luo2888/flymesettings/VibratorTuningPreference;

    # getter for: Lcom/luo2888/flymesettings/VibratorTuningPreference;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/luo2888/flymesettings/VibratorTuningPreference;->access$100(Lcom/luo2888/flymesettings/VibratorTuningPreference;)Landroid/widget/SeekBar;

    move-result-object v0

    # getter for: Lcom/luo2888/flymesettings/VibratorTuningPreference;->DEFAULT_VALUE:I
    invoke-static {}, Lcom/luo2888/flymesettings/VibratorTuningPreference;->access$000()I

    move-result v1

    invoke-static {v1}, Lcom/luo2888/flymesettings/VibratorTuningPreference;->strengthToPercent(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 126
    return-void
.end method
