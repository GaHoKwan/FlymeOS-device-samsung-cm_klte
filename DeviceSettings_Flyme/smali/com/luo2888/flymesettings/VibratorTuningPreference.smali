.class public Lcom/luo2888/flymesettings/VibratorTuningPreference;
.super Landroid/preference/DialogPreference;
.source "VibratorTuningPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field private static DEFAULT_VALUE:I = 0x0

.field private static FILE_PATH:Ljava/lang/String; = null

.field private static MAX_VALUE:I = 0x0

.field private static MIN_VALUE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DeviceSettings_Vibrator"

.field private static WARNING_THRESHOLD:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOriginalValue:Ljava/lang/String;

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mProgressThumb:Landroid/graphics/drawable/Drawable;

.field private mRedFilter:Landroid/graphics/LightingColorFilter;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mValue:Landroid/widget/TextView;

.field private mWarning:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    sput-object v0, Lcom/luo2888/flymesettings/VibratorTuningPreference;->FILE_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    iput-object p1, p0, Lcom/luo2888/flymesettings/VibratorTuningPreference;->mContext:Landroid/content/Context;

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070092

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/luo2888/flymesettings/VibratorTuningPreference;->FILE_PATH:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07008e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/luo2888/flymesettings/VibratorTuningPreference;->MAX_VALUE:I

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070090

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/luo2888/flymesettings/VibratorTuningPreference;->WARNING_THRESHOLD:I

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07008d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/luo2888/flymesettings/VibratorTuningPreference;->DEFAULT_VALUE:I

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07008f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/luo2888/flymesettings/VibratorTuningPreference;->MIN_VALUE:I

    .line 71
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/VibratorTuningPreference;->setDialogLayoutResource(I)V

    .line 72
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 43
    sget v0, Lcom/luo2888/flymesettings/VibratorTuningPreference;->DEFAULT_VALUE:I

    return v0
.end method

.method static synthetic access$100(Lcom/luo2888/flymesettings/VibratorTuningPreference;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/luo2888/flymesettings/VibratorTuningPreference;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/luo2888/flymesettings/VibratorTuningPreference;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method public static isSupported(Ljava/lang/String;)Z
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 164
    invoke-static {p0}, Lcom/luo2888/flymesettings/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static percentToStrength(I)I
    .locals 3
    .param p0, "percent"    # I

    .prologue
    .line 212
    sget v1, Lcom/luo2888/flymesettings/VibratorTuningPreference;->MAX_VALUE:I

    sget v2, Lcom/luo2888/flymesettings/VibratorTuningPreference;->MIN_VALUE:I

    sub-int/2addr v1, v2

    mul-int/2addr v1, p0

    div-int/lit8 v1, v1, 0x64

    sget v2, Lcom/luo2888/flymesettings/VibratorTuningPreference;->MIN_VALUE:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 214
    .local v0, "strength":I
    sget v1, Lcom/luo2888/flymesettings/VibratorTuningPreference;->MAX_VALUE:I

    if-le v0, v1, :cond_1

    .line 215
    sget v0, Lcom/luo2888/flymesettings/VibratorTuningPreference;->MAX_VALUE:I

    .line 219
    :cond_0
    :goto_0
    return v0

    .line 216
    :cond_1
    sget v1, Lcom/luo2888/flymesettings/VibratorTuningPreference;->MIN_VALUE:I

    if-ge v0, v1, :cond_0

    .line 217
    sget v0, Lcom/luo2888/flymesettings/VibratorTuningPreference;->MIN_VALUE:I

    goto :goto_0
.end method

.method public static restore(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 146
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070092

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/luo2888/flymesettings/VibratorTuningPreference;->FILE_PATH:Ljava/lang/String;

    .line 148
    sget-object v2, Lcom/luo2888/flymesettings/VibratorTuningPreference;->FILE_PATH:Ljava/lang/String;

    invoke-static {v2}, Lcom/luo2888/flymesettings/VibratorTuningPreference;->isSupported(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 161
    :goto_0
    return-void

    .line 152
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07008e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sput v2, Lcom/luo2888/flymesettings/VibratorTuningPreference;->MAX_VALUE:I

    .line 153
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07008d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sput v2, Lcom/luo2888/flymesettings/VibratorTuningPreference;->DEFAULT_VALUE:I

    .line 154
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07008f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sput v2, Lcom/luo2888/flymesettings/VibratorTuningPreference;->MIN_VALUE:I

    .line 156
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 157
    .local v0, "settings":Landroid/content/SharedPreferences;
    const-string v2, "percent"

    sget v3, Lcom/luo2888/flymesettings/VibratorTuningPreference;->DEFAULT_VALUE:I

    invoke-static {v3}, Lcom/luo2888/flymesettings/VibratorTuningPreference;->strengthToPercent(I)I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/luo2888/flymesettings/VibratorTuningPreference;->percentToStrength(I)I

    move-result v1

    .line 159
    .local v1, "strength":I
    const-string v2, "DeviceSettings_Vibrator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restoring vibration setting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    sget-object v2, Lcom/luo2888/flymesettings/VibratorTuningPreference;->FILE_PATH:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/luo2888/flymesettings/Utils;->writeValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static strengthToPercent(I)I
    .locals 12
    .param p0, "strength"    # I

    .prologue
    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    .line 195
    sget v6, Lcom/luo2888/flymesettings/VibratorTuningPreference;->MAX_VALUE:I

    int-to-double v0, v6

    .line 196
    .local v0, "maxValue":D
    sget v6, Lcom/luo2888/flymesettings/VibratorTuningPreference;->MIN_VALUE:I

    int-to-double v2, v6

    .line 198
    .local v2, "minValue":D
    int-to-double v6, p0

    sub-double/2addr v6, v2

    sub-double v8, v0, v2

    div-double v8, v10, v8

    mul-double v4, v6, v8

    .line 200
    .local v4, "percent":D
    cmpl-double v6, v4, v10

    if-lez v6, :cond_1

    .line 201
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    .line 205
    :cond_0
    :goto_0
    double-to-int v6, v4

    return v6

    .line 202
    :cond_1
    const-wide/16 v6, 0x0

    cmpg-double v6, v4, v6

    if-gez v6, :cond_0

    .line 203
    const-wide/16 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 87
    const v5, 0x7f0b0001

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SeekBar;

    iput-object v5, p0, Lcom/luo2888/flymesettings/VibratorTuningPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 88
    const v5, 0x7f0b0003

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/luo2888/flymesettings/VibratorTuningPreference;->mValue:Landroid/widget/TextView;

    .line 89
    const/high16 v5, 0x7f0b0000

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/luo2888/flymesettings/VibratorTuningPreference;->mWarning:Landroid/widget/TextView;

    .line 91
    invoke-virtual {p0}, Lcom/luo2888/flymesettings/VibratorTuningPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070082

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    sget v9, Lcom/luo2888/flymesettings/VibratorTuningPreference;->WARNING_THRESHOLD:I

    invoke-static {v9}, Lcom/luo2888/flymesettings/VibratorTuningPreference;->strengthToPercent(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 92
    .local v4, "strWarnMsg":Ljava/lang/String;
    iget-object v5, p0, Lcom/luo2888/flymesettings/VibratorTuningPreference;->mWarning:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v5, p0, Lcom/luo2888/flymesettings/VibratorTuningPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 95
    .local v2, "progressDrawable":Landroid/graphics/drawable/Drawable;
    instance-of v5, v2, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v5, :cond_0

    move-object v0, v2

    .line 96
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 97
    .local v0, "ld":Landroid/graphics/drawable/LayerDrawable;
    const v5, 0x102000d

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/luo2888/flymesettings/VibratorTuningPreference;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 99
    .end local v0    # "ld":Landroid/graphics/drawable/LayerDrawable;
    :cond_0
    iget-object v5, p0, Lcom/luo2888/flymesettings/VibratorTuningPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/luo2888/flymesettings/VibratorTuningPreference;->mProgressThumb:Landroid/graphics/drawable/Drawable;

    .line 100
    new-instance v5, Landroid/graphics/LightingColorFilter;

    const/high16 v6, -0x1000000

    invoke-virtual {p0}, Lcom/luo2888/flymesettings/VibratorTuningPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1060016

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    iput-object v5, p0, Lcom/luo2888/flymesettings/VibratorTuningPreference;->mRedFilter:Landroid/graphics/LightingColorFilter;

    .line 104
    sget-object v5, Lcom/luo2888/flymesettings/VibratorTuningPreference;->FILE_PATH:Ljava/lang/String;

    invoke-static {v5}, Lcom/luo2888/flymesettings/Utils;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/luo2888/flymesettings/VibratorTuningPreference;->mOriginalValue:Ljava/lang/String;

    .line 107
    iget-object v5, p0, Lcom/luo2888/flymesettings/VibratorTuningPreference;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 108
    .local v3, "settings":Landroid/content/SharedPreferences;
    const-string v5, "percent"

    sget v6, Lcom/luo2888/flymesettings/VibratorTuningPreference;->DEFAULT_VALUE:I

    invoke-static {v6}, Lcom/luo2888/flymesettings/VibratorTuningPreference;->strengthToPercent(I)I

    move-result v6

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 110
    .local v1, "percent":I
    iget-object v5, p0, Lcom/luo2888/flymesettings/VibratorTuningPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v5, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 111
    iget-object v5, p0, Lcom/luo2888/flymesettings/VibratorTuningPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 112
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 4
    .param p1, "positiveResult"    # Z

    .prologue
    .line 132
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 134
    if-eqz p1, :cond_0

    .line 136
    iget-object v2, p0, Lcom/luo2888/flymesettings/VibratorTuningPreference;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 137
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 138
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "percent"

    iget-object v3, p0, Lcom/luo2888/flymesettings/VibratorTuningPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 139
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 143
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "settings":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 141
    :cond_0
    sget-object v2, Lcom/luo2888/flymesettings/VibratorTuningPreference;->FILE_PATH:Ljava/lang/String;

    iget-object v3, p0, Lcom/luo2888/flymesettings/VibratorTuningPreference;->mOriginalValue:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/luo2888/flymesettings/Utils;->writeValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 2
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 76
    const v0, 0x7f070015

    new-instance v1, Lcom/luo2888/flymesettings/VibratorTuningPreference$1;

    invoke-direct {v1, p0}, Lcom/luo2888/flymesettings/VibratorTuningPreference$1;-><init>(Lcom/luo2888/flymesettings/VibratorTuningPreference;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 81
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 169
    sget v3, Lcom/luo2888/flymesettings/VibratorTuningPreference;->WARNING_THRESHOLD:I

    invoke-static {v3}, Lcom/luo2888/flymesettings/VibratorTuningPreference;->strengthToPercent(I)I

    move-result v3

    if-lt p2, v3, :cond_3

    move v0, v1

    .line 170
    .local v0, "shouldWarn":Z
    :goto_0
    iget-object v3, p0, Lcom/luo2888/flymesettings/VibratorTuningPreference;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 171
    iget-object v5, p0, Lcom/luo2888/flymesettings/VibratorTuningPreference;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/luo2888/flymesettings/VibratorTuningPreference;->mRedFilter:Landroid/graphics/LightingColorFilter;

    :goto_1
    invoke-virtual {v5, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 173
    :cond_0
    iget-object v3, p0, Lcom/luo2888/flymesettings/VibratorTuningPreference;->mProgressThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    .line 174
    iget-object v3, p0, Lcom/luo2888/flymesettings/VibratorTuningPreference;->mProgressThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/luo2888/flymesettings/VibratorTuningPreference;->mRedFilter:Landroid/graphics/LightingColorFilter;

    :cond_1
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 176
    :cond_2
    sget-object v3, Lcom/luo2888/flymesettings/VibratorTuningPreference;->FILE_PATH:Ljava/lang/String;

    invoke-static {p2}, Lcom/luo2888/flymesettings/VibratorTuningPreference;->percentToStrength(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/luo2888/flymesettings/Utils;->writeValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v3, p0, Lcom/luo2888/flymesettings/VibratorTuningPreference;->mValue:Landroid/widget/TextView;

    const-string v4, "%d%%"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    return-void

    .end local v0    # "shouldWarn":Z
    :cond_3
    move v0, v2

    .line 169
    goto :goto_0

    .restart local v0    # "shouldWarn":Z
    :cond_4
    move-object v3, v4

    .line 171
    goto :goto_1
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 183
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/luo2888/flymesettings/VibratorTuningPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 188
    .local v0, "vib":Landroid/os/Vibrator;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 189
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 116
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 120
    invoke-virtual {p0}, Lcom/luo2888/flymesettings/VibratorTuningPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 121
    .local v0, "d":Landroid/app/AlertDialog;
    const/4 v2, -0x3

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 122
    .local v1, "defaultsButton":Landroid/widget/Button;
    new-instance v2, Lcom/luo2888/flymesettings/VibratorTuningPreference$2;

    invoke-direct {v2, p0}, Lcom/luo2888/flymesettings/VibratorTuningPreference$2;-><init>(Lcom/luo2888/flymesettings/VibratorTuningPreference;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    return-void
.end method
