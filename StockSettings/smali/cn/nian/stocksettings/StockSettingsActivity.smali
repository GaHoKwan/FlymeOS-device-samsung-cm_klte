.class public Lcn/nian/stocksettings/StockSettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "StockSettingsActivity.java"


# static fields
.field private static final Battrty_Save:Ljava/lang/String; = "battery"

.field private static final CABC:Ljava/lang/String; = "cabc"

.field private static final Charge:Ljava/lang/String; = "charge"

.field private static final KEYLIGHT:Ljava/lang/String; = "keylights"

.field private static final KEY_CAMERA_SOUND:Ljava/lang/String; = "camera_sound"

.field private static final KcalSat:Ljava/lang/String; = "KcalSat"

.field private static final KnockWake:Ljava/lang/String; = "knock"

.field private static final LedFake:Ljava/lang/String; = "led_fade"

.field private static final Nian:Ljava/lang/String;


# instance fields
.field private mBattrty:Landroid/preference/CheckBoxPreference;

.field private mCABC:Landroid/preference/CheckBoxPreference;

.field private mCameraSound:Landroid/preference/CheckBoxPreference;

.field private mCharge:Landroid/preference/CheckBoxPreference;

.field private mDensity:Landroid/preference/EditTextPreference;

.field private mKcalSat:Landroid/preference/CheckBoxPreference;

.field private mKeylight:Landroid/preference/CheckBoxPreference;

.field private mKnockWake:Landroid/preference/CheckBoxPreference;

.field private mLedFake:Landroid/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "ro.flyme.romer"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nian/stocksettings/StockSettingsActivity;->Nian:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method public static RestoreCABC(Landroid/content/Context;)V
    .locals 3
    .param p0, "paramContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 215
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "cabc"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    const-string v0, "echo \'1\' > /sys/class/lcd/panel/power_reduce"

    invoke-static {v0}, Lcn/nian/stocksettings/RootCmd;->RunRootCmd(Ljava/lang/String;)I

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "cabc"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    const-string v0, "echo \'0\' > /sys/class/lcd/panel/power_reduce"

    invoke-static {v0}, Lcn/nian/stocksettings/RootCmd;->RunRootCmd(Ljava/lang/String;)I

    goto :goto_0
.end method

# virtual methods
.method public DialogReboot()V
    .locals 3

    .prologue
    .line 244
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070010

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070012

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070014

    new-instance v2, Lcn/nian/stocksettings/StockSettingsActivity$3;

    invoke-direct {v2, p0}, Lcn/nian/stocksettings/StockSettingsActivity$3;-><init>(Lcn/nian/stocksettings/StockSettingsActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070011

    new-instance v2, Lcn/nian/stocksettings/StockSettingsActivity$2;

    invoke-direct {v2, p0}, Lcn/nian/stocksettings/StockSettingsActivity$2;-><init>(Lcn/nian/stocksettings/StockSettingsActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 261
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Lcn/nian/stocksettings/StockSettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 55
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 56
    const v2, 0x7f070001

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 58
    :cond_0
    const v2, 0x7f040001

    invoke-virtual {p0, v2}, Lcn/nian/stocksettings/StockSettingsActivity;->addPreferencesFromResource(I)V

    .line 59
    invoke-virtual {p0}, Lcn/nian/stocksettings/StockSettingsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 61
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "led_fade"

    invoke-virtual {p0, v2}, Lcn/nian/stocksettings/StockSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcn/nian/stocksettings/StockSettingsActivity;->mLedFake:Landroid/preference/CheckBoxPreference;

    const-string v2, "knock"

    invoke-virtual {p0, v2}, Lcn/nian/stocksettings/StockSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcn/nian/stocksettings/StockSettingsActivity;->mKnockWake:Landroid/preference/CheckBoxPreference;

    .line 62
    const-string v2, "battery"

    invoke-virtual {p0, v2}, Lcn/nian/stocksettings/StockSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcn/nian/stocksettings/StockSettingsActivity;->mBattrty:Landroid/preference/CheckBoxPreference;

    .line 63
    const-string v2, "charge"

    invoke-virtual {p0, v2}, Lcn/nian/stocksettings/StockSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcn/nian/stocksettings/StockSettingsActivity;->mCharge:Landroid/preference/CheckBoxPreference;

    .line 64
    const-string v2, "camera_sound"

    invoke-virtual {p0, v2}, Lcn/nian/stocksettings/StockSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcn/nian/stocksettings/StockSettingsActivity;->mCameraSound:Landroid/preference/CheckBoxPreference;

    .line 65
    .line 66
    const-string v2, "cabc"

    invoke-virtual {p0, v2}, Lcn/nian/stocksettings/StockSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcn/nian/stocksettings/StockSettingsActivity;->mCABC:Landroid/preference/CheckBoxPreference;

    .line 67
    const-string v2, "keylights"

    invoke-virtual {p0, v2}, Lcn/nian/stocksettings/StockSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcn/nian/stocksettings/StockSettingsActivity;->mKeylight:Landroid/preference/CheckBoxPreference;

    .line 68
    const-string v2, "kcal_sat"

    invoke-virtual {p0, v2}, Lcn/nian/stocksettings/StockSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcn/nian/stocksettings/StockSettingsActivity;->mKcalSat:Landroid/preference/CheckBoxPreference;

    .line 69
    const-string v2, "density_key"

    invoke-virtual {p0, v2}, Lcn/nian/stocksettings/StockSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcn/nian/stocksettings/StockSettingsActivity;->mDensity:Landroid/preference/EditTextPreference;

    .line 77
    sget-object v2, Lcn/nian/stocksettings/StockSettingsActivity;->Nian:Ljava/lang/String;

    const-string v3, "luo2888"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 78
    invoke-virtual {p0}, Lcn/nian/stocksettings/StockSettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 81
    :cond_1
    iget-object v2, p0, Lcn/nian/stocksettings/StockSettingsActivity;->mDensity:Landroid/preference/EditTextPreference;

    new-instance v3, Lcn/nian/stocksettings/StockSettingsActivity$1;

    invoke-direct {v3, p0}, Lcn/nian/stocksettings/StockSettingsActivity$1;-><init>(Lcn/nian/stocksettings/StockSettingsActivity;)V

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 100
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferencescreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x0

    .line 103
    iget-object v0, p0, Lcn/nian/stocksettings/StockSettingsActivity;->mLedFake:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    .line 104
    iget-object v0, p0, Lcn/nian/stocksettings/StockSettingsActivity;->mLedFake:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 105
    const-string v0, "echo \'1\' > /sys/class/sec/led/led_fade"

    invoke-static {v0}, Lcn/nian/stocksettings/RootCmd;->RunRootCmd(Ljava/lang/String;)I

    .line 113
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/nian/stocksettings/StockSettingsActivity;->mKnockWake:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1

    .line 114
    iget-object v0, p0, Lcn/nian/stocksettings/StockSettingsActivity;->mKnockWake:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 117
    const-string v0, "echo \'1\' > /sys/class/sec/led/led_fade"

    invoke-static {v0}, Lcn/nian/stocksettings/RootCmd;->RunRootCmd(Ljava/lang/String;)I

    .line 118
    const-string v0, "echo \'5\' > /sys/devices/f9924000.i2c/i2c-2/2-0020/input/input2/screen_wake_options"

    invoke-static {v0}, Lcn/nian/stocksettings/RootCmd;->RunRootCmd(Ljava/lang/String;)I

    .line 123
    :cond_1
    :goto_1
    iget-object v0, p0, Lcn/nian/stocksettings/StockSettingsActivity;->mCharge:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_2

    .line 124
    iget-object v0, p0, Lcn/nian/stocksettings/StockSettingsActivity;->mCharge:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 125
    const-string v0, "echo \'1950 mA\' > /sys/kernel/charge_levels/charge_level_ac"

    invoke-static {v0}, Lcn/nian/stocksettings/RootCmd;->RunRootCmd(Ljava/lang/String;)I

    .line 126
    const-string v0, "echo \'950 mA\' > /sys/kernel/charge_levels/charge_level_usb"

    invoke-static {v0}, Lcn/nian/stocksettings/RootCmd;->RunRootCmd(Ljava/lang/String;)I

    .line 132
    :cond_2
    :goto_2
    iget-object v0, p0, Lcn/nian/stocksettings/StockSettingsActivity;->mCameraSound:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_3

    .line 133
    const-string v0, "mount -o remount,rw /system"

    invoke-static {v0}, Lcn/nian/stocksettings/RootCmd;->RunRootCmd(Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcn/nian/stocksettings/StockSettingsActivity;->mCameraSound:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 135
    const-string v0, "mv /system/media/audio/ui/camera_click.bak /system/media/audio/ui/camera_click.ogg"

    invoke-static {v0}, Lcn/nian/stocksettings/RootCmd;->RunRootCmd(Ljava/lang/String;)I

    .line 136
    const-string v0, "mv /system/media/audio/ui/VideoRecord.bak /system/media/audio/ui/VideoRecord.ogg"

    invoke-static {v0}, Lcn/nian/stocksettings/RootCmd;->RunRootCmd(Ljava/lang/String;)I

    .line 137
    const-string v0, "mv /system/media/audio/ui/camera_focus.bak /system/media/audio/ui/camera_focus.ogg"

    invoke-static {v0}, Lcn/nian/stocksettings/RootCmd;->RunRootCmd(Ljava/lang/String;)I

    .line 144
    :cond_3
    :goto_3
    iget-object v0, p0, Lcn/nian/stocksettings/StockSettingsActivity;->mKeylight:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_4

    .line 145
    iget-object v0, p0, Lcn/nian/stocksettings/StockSettingsActivity;->mKeylight:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 160
    const-string v0, "echo \'1\' > /sys/class/sec/sec_touchkey/brightness"

    invoke-static {v0}, Lcn/nian/stocksettings/RootCmd;->RunRootCmd(Ljava/lang/String;)I

    .line 161
    const-string v0, "chmod 664 /sys/class/sec/sec_touchkey/brightness"

    invoke-static {v0}, Lcn/nian/stocksettings/RootCmd;->RunRootCmd(Ljava/lang/String;)I

    .line 151
    :cond_4
    :goto_4
    iget-object v0, p0, Lcn/nian/stocksettings/StockSettingsActivity;->mCABC:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_5

    .line 152
    iget-object v0, p0, Lcn/nian/stocksettings/StockSettingsActivity;->mCABC:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 153
    const-string v0, "echo \'1\' > /sys/class/lcd/panel/power_reduce"

    invoke-static {v0}, Lcn/nian/stocksettings/RootCmd;->RunRootCmd(Ljava/lang/String;)I

    .line 158
    :cond_5
    :goto_5
    iget-object v0, p0, Lcn/nian/stocksettings/StockSettingsActivity;->mBattrty:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_6

    iget-object v0, p0, Lcn/nian/stocksettings/StockSettingsActivity;->mBattrty:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "echo \'zzmoove\' >/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor"

    invoke-static {v0}, Lcn/nian/stocksettings/RootCmd;->RunRootCmd(Ljava/lang/String;)I

    const-string v0, "echo \'3\' > /sys/devices/system/cpu/cpufreq/zzmoove/profile_number"

    invoke-static {v0}, Lcn/nian/stocksettings/RootCmd;->RunRootCmd(Ljava/lang/String;)I

    const-string v0, "echo \'1497600\' > /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq"

    invoke-static {v0}, Lcn/nian/stocksettings/RootCmd;->RunRootCmd(Ljava/lang/String;)I

    .line 169
    :cond_6
    :goto_6
    iget-object v0, p0, Lcn/nian/stocksettings/StockSettingsActivity;->mKcalSat:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_7

    .line 170
    iget-object v0, p0, Lcn/nian/stocksettings/StockSettingsActivity;->mKcalSat:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 171
    const-string v0, "echo \'128\' > /sys/devices/platform/kcal_ctrl.0/kcal_sat"

    invoke-static {v0}, Lcn/nian/stocksettings/RootCmd;->RunRootCmd(Ljava/lang/String;)I

    .line 176
    :cond_7
    :goto_7
    return v3

    .line 110
    :cond_8
    const-string v0, "echo \'0\' > /sys/class/sec/led/led_fade"

    invoke-static {v0}, Lcn/nian/stocksettings/RootCmd;->RunRootCmd(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 120
    :cond_9
    const-string v0, "echo \'0\' > /sys/devices/f9924000.i2c/i2c-2/2-0020/input/input2/screen_wake_options"

    invoke-static {v0}, Lcn/nian/stocksettings/RootCmd;->RunRootCmd(Ljava/lang/String;)I

    goto/16 :goto_1

    .line 128
    :cond_a
    const-string v0, "echo \'0 mA\' > /sys/kernel/charge_levels/charge_level_ac"

    invoke-static {v0}, Lcn/nian/stocksettings/RootCmd;->RunRootCmd(Ljava/lang/String;)I

    .line 129
    const-string v0, "echo \'0 mA\' > /sys/kernel/charge_levels/charge_level_usb"

    invoke-static {v0}, Lcn/nian/stocksettings/RootCmd;->RunRootCmd(Ljava/lang/String;)I

    goto/16 :goto_2

    .line 139
    :cond_b
    const-string v0, "mv /system/media/audio/ui/camera_click.ogg /system/media/audio/ui/camera_click.bak"

    invoke-static {v0}, Lcn/nian/stocksettings/RootCmd;->RunRootCmd(Ljava/lang/String;)I

    .line 140
    const-string v0, "mv /system/media/audio/ui/VideoRecord.ogg /system/media/audio/ui/VideoRecord.bak"

    invoke-static {v0}, Lcn/nian/stocksettings/RootCmd;->RunRootCmd(Ljava/lang/String;)I

    .line 141
    const-string v0, "mv /system/media/audio/ui/camera_focus.ogg /system/media/audio/ui/camera_focus.bak"

    invoke-static {v0}, Lcn/nian/stocksettings/RootCmd;->RunRootCmd(Ljava/lang/String;)I

    goto :goto_3

    .line 148
    :cond_c
    const-string v0, "chmod 666 /sys/class/sec/sec_touchkey/brightness"

    invoke-static {v0}, Lcn/nian/stocksettings/RootCmd;->RunRootCmd(Ljava/lang/String;)I

    .line 165
    const-string v0, "echo \'0\' > /sys/class/sec/sec_touchkey/brightness"

    invoke-static {v0}, Lcn/nian/stocksettings/RootCmd;->RunRootCmd(Ljava/lang/String;)I

    .line 166
    const-string v0, "chmod 444 /sys/class/sec/sec_touchkey/brightness"

    invoke-static {v0}, Lcn/nian/stocksettings/RootCmd;->RunRootCmd(Ljava/lang/String;)I

    goto :goto_4

    .line 155
    :cond_d
    const-string v0, "echo \'0\' > /sys/class/lcd/panel/power_reduce"

    invoke-static {v0}, Lcn/nian/stocksettings/RootCmd;->RunRootCmd(Ljava/lang/String;)I

    goto :goto_5

    .line 164
    :cond_e
    const-string v0, "echo \'zzmoove\' >/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor"

    invoke-static {v0}, Lcn/nian/stocksettings/RootCmd;->RunRootCmd(Ljava/lang/String;)I

    const-string v0, "echo \'7\' > /sys/devices/system/cpu/cpufreq/zzmoove/profile_number"

    invoke-static {v0}, Lcn/nian/stocksettings/RootCmd;->RunRootCmd(Ljava/lang/String;)I

    const-string v0, "echo \'2457600\' > /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq"

    invoke-static {v0}, Lcn/nian/stocksettings/RootCmd;->RunRootCmd(Ljava/lang/String;)I

    goto :goto_6

    .line 173
    :cond_f
    const-string v0, "echo \'255\' > /sys/devices/platform/kcal_ctrl.0/kcal_sat"

    invoke-static {v0}, Lcn/nian/stocksettings/RootCmd;->RunRootCmd(Ljava/lang/String;)I

    goto :goto_7
.end method
