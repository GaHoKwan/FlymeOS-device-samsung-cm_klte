.class public Lcom/luo2888/flymesettings/Sounds;
.super Landroid/preference/PreferenceActivity;
.source "Sounds.java"


# static fields
.field private static final CameraSound:Ljava/lang/String; = "camera_sound_key"


# instance fields
.field private mCameraSound:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private setCheckBoxPreferenceSummary(Landroid/preference/CheckBoxPreference;)V
    .locals 3
    .param p1, "mCheckBoxPreference"    # Landroid/preference/CheckBoxPreference;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/luo2888/flymesettings/Sounds;->mCameraSound:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/luo2888/flymesettings/Sounds;->mCameraSound:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/luo2888/flymesettings/Sounds;->mCameraSound:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/luo2888/flymesettings/Sounds;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/luo2888/flymesettings/Sounds;->mCameraSound:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/luo2888/flymesettings/Sounds;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public DialogAttention()V
    .locals 3

    .prologue
    .line 76
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07007e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07000e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070009

    new-instance v2, Lcom/luo2888/flymesettings/Sounds$3;

    invoke-direct {v2, p0}, Lcom/luo2888/flymesettings/Sounds$3;-><init>(Lcom/luo2888/flymesettings/Sounds;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 87
    return-void
.end method

.method public DialogReboot()V
    .locals 3

    .prologue
    .line 90
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070016

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070009

    new-instance v2, Lcom/luo2888/flymesettings/Sounds$5;

    invoke-direct {v2, p0}, Lcom/luo2888/flymesettings/Sounds$5;-><init>(Lcom/luo2888/flymesettings/Sounds;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070007

    new-instance v2, Lcom/luo2888/flymesettings/Sounds$4;

    invoke-direct {v2, p0}, Lcom/luo2888/flymesettings/Sounds$4;-><init>(Lcom/luo2888/flymesettings/Sounds;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 107
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const/high16 v0, 0x7f040000

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/Sounds;->addPreferencesFromResource(I)V

    .line 28
    const-string v0, "camera_sound_key"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/Sounds;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/luo2888/flymesettings/Sounds;->mCameraSound:Landroid/preference/CheckBoxPreference;

    .line 30
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preferencescreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/luo2888/flymesettings/Sounds;->mCameraSound:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    .line 49
    const-string v0, "busybox mount -o remount,rw /system"

    invoke-static {v0}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    .line 50
    iget-object v0, p0, Lcom/luo2888/flymesettings/Sounds;->mCameraSound:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    new-instance v0, Lcom/luo2888/flymesettings/Sounds$1;

    invoke-direct {v0, p0}, Lcom/luo2888/flymesettings/Sounds$1;-><init>(Lcom/luo2888/flymesettings/Sounds;)V

    invoke-virtual {v0}, Lcom/luo2888/flymesettings/Sounds$1;->start()V

    .line 56
    iget-object v0, p0, Lcom/luo2888/flymesettings/Sounds;->mCameraSound:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/luo2888/flymesettings/Sounds;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 71
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 58
    :cond_1
    new-instance v0, Lcom/luo2888/flymesettings/Sounds$2;

    invoke-direct {v0, p0}, Lcom/luo2888/flymesettings/Sounds$2;-><init>(Lcom/luo2888/flymesettings/Sounds;)V

    invoke-virtual {v0}, Lcom/luo2888/flymesettings/Sounds$2;->start()V

    .line 63
    iget-object v0, p0, Lcom/luo2888/flymesettings/Sounds;->mCameraSound:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/luo2888/flymesettings/Sounds;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 64
    const-string v0, "com.meizu.media.camera"

    invoke-static {p0, v0}, Lcom/luo2888/flymesettings/utils/Tools;->IsInstall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65
    invoke-virtual {p0}, Lcom/luo2888/flymesettings/Sounds;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 67
    :cond_2
    invoke-virtual {p0}, Lcom/luo2888/flymesettings/Sounds;->DialogReboot()V

    .line 68
    invoke-virtual {p0}, Lcom/luo2888/flymesettings/Sounds;->DialogAttention()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 33
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    .line 34
    iget-object v0, p0, Lcom/luo2888/flymesettings/Sounds;->mCameraSound:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v0}, Lcom/luo2888/flymesettings/Sounds;->setCheckBoxPreferenceSummary(Landroid/preference/CheckBoxPreference;)V

    .line 35
    return-void
.end method
