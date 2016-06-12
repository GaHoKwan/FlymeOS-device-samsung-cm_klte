.class public Lcom/luo2888/flymesettings/DeviceSettings;
.super Landroid/preference/PreferenceActivity;
.source "DeviceSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final BFSettings:Ljava/lang/String; = "boeffla_settings_key"

.field public static final CameraSwitch:Ljava/lang/String; = "camera_switch_key"

.field public static final FLASH_OTA:I = 0x1

.field public static final KEY_APP_SWITCH_ACTION:Ljava/lang/String; = "key_app_switch_action"

.field public static final KEY_APP_SWITCH_LONG_PRESS_ACTION:Ljava/lang/String; = "key_app_switch_long_press_action"

.field public static final KEY_BATTERY_LIGHT_ENABLED:Ljava/lang/String; = "battery_light_enabled"

.field public static final KEY_BATTERY_LIGHT_MEDIUM_COLOR:Ljava/lang/String; = "battery_light_medium_color"

.field public static final KEY_BATTERY_LIGHT_PULSE:Ljava/lang/String; = "battery_light_pulse"

.field public static final KEY_CABC:Ljava/lang/String; = "cabc"

.field public static final KEY_CHARGE:Ljava/lang/String; = "charge"

.field public static final KEY_FLASHOTA:Ljava/lang/String; = "flashota"

.field public static final KEY_GLOVE_MODE:Ljava/lang/String; = "glove_mode"

.field public static final KEY_HOME_DOUBLE_TAP_ACTION:Ljava/lang/String; = "key_home_double_tap_action"

.field public static final KEY_HOME_LONG_PRESS_ACTION:Ljava/lang/String; = "key_home_long_press_action"

.field public static final KEY_KCAL:Ljava/lang/String; = "kcal"

.field public static final KEY_KCAL_INVERT:Ljava/lang/String; = "kcal_invert"

.field public static final KEY_KCAL_SAT:Ljava/lang/String; = "kcal_sat"

.field public static final KEY_KEYLIGHT:Ljava/lang/String; = "keylight"

.field public static final KEY_KEYLIGHT_TIMEOUT:Ljava/lang/String; = "keylight_timeout"

.field public static final KEY_LED_FADE:Ljava/lang/String; = "led_fade"

.field public static final KEY_LED_Intensity:Ljava/lang/String; = "led_intensity"

.field public static final KEY_MDNIE_MODE:Ljava/lang/String; = "mdnie_mode"

.field public static final KEY_MDNIE_SCENARIO:Ljava/lang/String; = "mdnie_scenario"

.field public static final KEY_MENU_ACTION:Ljava/lang/String; = "key_menu_action"

.field public static final KEY_MENU_LONG_PRESS_ACTION:Ljava/lang/String; = "key_menu_long_press_action"

.field public static final KEY_NOTIFICATION_LIGHT_PULSE:Ljava/lang/String; = "notification_light_pulse"

.field public static final KEY_NOTIFICATION_LIGHT_PULSE_DEFAULT_COLOR:Ljava/lang/String; = "notification_light_pulse_default_color"

.field public static final KEY_NOTIFICATION_LIGHT_SCREEN_ON_ENABLE:Ljava/lang/String; = "notification_light_screen_on_enable"

.field public static final KEY_RUNNING_MODE:Ljava/lang/String; = "running_mode"

.field public static final KEY_TOUCHBOOST_FREQ:Ljava/lang/String; = "touchboost_freq"

.field public static final KEY_VOLUME_WAKE_SCREEN:Ljava/lang/String; = "volume_wake_screen"

.field public static final KEY_WAKEUP_MODE:Ljava/lang/String; = "wakeup_mode"

.field public static final VIBRATOR:Ljava/lang/String; = "vibrator"


# instance fields
.field private file:Ljava/io/File;

.field private flashota:Landroid/preference/PreferenceScreen;

.field private handler:Landroid/os/Handler;

.field private mBFSettings:Landroid/preference/PreferenceScreen;

.field private mBattery_light_enabled:Landroid/preference/CheckBoxPreference;

.field private mBattery_light_medium_color:Landroid/preference/ListPreference;

.field private mBattery_light_pulse:Landroid/preference/CheckBoxPreference;

.field private mCABC:Lcom/luo2888/flymesettings/CABC;

.field private mCameraSwitch:Landroid/preference/ListPreference;

.field private mCharge:Landroid/preference/CheckBoxPreference;

.field private mDialog:Landroid/app/ProgressDialog;

.field private mGLoveMode:Landroid/preference/CheckBoxPreference;

.field private mKcal:Landroid/preference/ListPreference;

.field private mKcalInvert:Landroid/preference/CheckBoxPreference;

.field private mKcalSat:Landroid/preference/ListPreference;

.field private mKey_app_switch_action:Landroid/preference/ListPreference;

.field private mKey_app_switch_long_press_action:Landroid/preference/ListPreference;

.field private mKey_home_double_tap_action:Landroid/preference/ListPreference;

.field private mKey_home_long_press_action:Landroid/preference/ListPreference;

.field private mKey_menu_action:Landroid/preference/ListPreference;

.field private mKey_menu_long_press_action:Landroid/preference/ListPreference;

.field private mKeylight:Landroid/preference/ListPreference;

.field private mKeylightTimeout:Landroid/preference/ListPreference;

.field private mLedFade:Landroid/preference/ListPreference;

.field private mLedIntensity:Landroid/preference/ListPreference;

.field private mNotification_light_pulse:Landroid/preference/CheckBoxPreference;

.field private mNotification_light_pulse_default_color:Landroid/preference/ListPreference;

.field private mNotification_light_screen_on_enable:Landroid/preference/CheckBoxPreference;

.field private mRunningMode:Landroid/preference/ListPreference;

.field private mTouchboost_freq:Landroid/preference/ListPreference;

.field private mVolume_wake_screen:Landroid/preference/CheckBoxPreference;

.field private mWakeUp:Landroid/preference/ListPreference;

.field private mmDNIeMode:Lcom/luo2888/flymesettings/mDNIeMode;

.field private mmDNIeScenario:Lcom/luo2888/flymesettings/mDNIeScenario;

.field private pm:Lcom/igexin/sdk/PushManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 1320
    new-instance v0, Lcom/luo2888/flymesettings/DeviceSettings$3;

    invoke-direct {v0, p0}, Lcom/luo2888/flymesettings/DeviceSettings$3;-><init>(Lcom/luo2888/flymesettings/DeviceSettings;)V

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/luo2888/flymesettings/DeviceSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/luo2888/flymesettings/DeviceSettings;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/luo2888/flymesettings/DeviceSettings;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/luo2888/flymesettings/DeviceSettings;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private initGeTui()V
    .locals 4

    .prologue
    .line 205
    invoke-static {}, Lcom/igexin/sdk/PushManager;->getInstance()Lcom/igexin/sdk/PushManager;

    move-result-object v2

    iput-object v2, p0, Lcom/luo2888/flymesettings/DeviceSettings;->pm:Lcom/igexin/sdk/PushManager;

    .line 206
    iget-object v2, p0, Lcom/luo2888/flymesettings/DeviceSettings;->pm:Lcom/igexin/sdk/PushManager;

    invoke-virtual {p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/igexin/sdk/PushManager;->initialize(Landroid/content/Context;)V

    .line 207
    new-instance v0, Lcom/igexin/sdk/Tag;

    invoke-direct {v0}, Lcom/igexin/sdk/Tag;-><init>()V

    .line 208
    .local v0, "tag":Lcom/igexin/sdk/Tag;
    const-string v2, "others"

    invoke-virtual {v0, v2}, Lcom/igexin/sdk/Tag;->setName(Ljava/lang/String;)V

    .line 209
    const/4 v2, 0x1

    new-array v1, v2, [Lcom/igexin/sdk/Tag;

    .line 210
    .local v1, "tags":[Lcom/igexin/sdk/Tag;
    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 211
    iget-object v2, p0, Lcom/luo2888/flymesettings/DeviceSettings;->pm:Lcom/igexin/sdk/PushManager;

    invoke-virtual {v2, p0, v1}, Lcom/igexin/sdk/PushManager;->setTag(Landroid/content/Context;[Lcom/igexin/sdk/Tag;)I

    .line 212
    return-void
.end method

.method private setListPreferenceSummary(Landroid/preference/ListPreference;)V
    .locals 7
    .param p1, "mListPreference"    # Landroid/preference/ListPreference;

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 322
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mCameraSwitch:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_0

    .line 323
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_12

    .line 324
    const v0, 0x7f070010

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 332
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mRunningMode:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_1

    .line 333
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_14

    .line 334
    const v0, 0x7f070068

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 342
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mLedIntensity:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_2

    .line 343
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_16

    .line 344
    const v0, 0x7f07004d

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 358
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mLedFade:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_3

    .line 359
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1b

    .line 360
    const v0, 0x7f07004a

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 366
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mWakeUp:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_4

    .line 367
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1c

    .line 368
    const v0, 0x7f070082

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 385
    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKcal:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_5

    .line 386
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_22

    .line 387
    const v0, 0x7f070038

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 399
    :cond_5
    :goto_5
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKeylight:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_6

    .line 400
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_26

    .line 401
    const v0, 0x7f07003f

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 402
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKeylightTimeout:Landroid/preference/ListPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 412
    :cond_6
    :goto_6
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKeylightTimeout:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_7

    .line 413
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_28

    .line 414
    const v0, 0x7f070042

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 426
    :cond_7
    :goto_7
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKcalSat:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_8

    .line 427
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2c

    .line 428
    const v0, 0x7f070033

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 436
    :cond_8
    :goto_8
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mBattery_light_medium_color:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_9

    .line 437
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2e

    .line 438
    const v0, 0x7f070059

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 458
    :cond_9
    :goto_9
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mNotification_light_pulse_default_color:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_a

    .line 459
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_36

    .line 460
    const v0, 0x7f070059

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 480
    :cond_a
    :goto_a
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_home_long_press_action:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_b

    .line 481
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3e

    .line 482
    const v0, 0x7f070027

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 502
    :cond_b
    :goto_b
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_home_double_tap_action:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_c

    .line 503
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_46

    .line 504
    const v0, 0x7f070027

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 524
    :cond_c
    :goto_c
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_app_switch_action:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_d

    .line 525
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4e

    .line 526
    const v0, 0x7f070027

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 546
    :cond_d
    :goto_d
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_app_switch_long_press_action:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_e

    .line 547
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_56

    .line 548
    const v0, 0x7f070027

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 568
    :cond_e
    :goto_e
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_menu_action:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_f

    .line 569
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5e

    .line 570
    const v0, 0x7f070027

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 590
    :cond_f
    :goto_f
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_menu_long_press_action:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_10

    .line 591
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_66

    .line 592
    const v0, 0x7f070027

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 612
    :cond_10
    :goto_10
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mTouchboost_freq:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_11

    .line 613
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6e

    .line 614
    const v0, 0x7f070070

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 628
    :cond_11
    :goto_11
    return-void

    .line 325
    :cond_12
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v2, v0, :cond_13

    .line 326
    const v0, 0x7f070011

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_0

    .line 327
    :cond_13
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v3, v0, :cond_0

    .line 328
    const v0, 0x7f07000f

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_0

    .line 335
    :cond_14
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v2, v0, :cond_15

    .line 336
    const v0, 0x7f07006a

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_1

    .line 337
    :cond_15
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v3, v0, :cond_1

    .line 338
    const v0, 0x7f070069

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_1

    .line 345
    :cond_16
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v2, v0, :cond_17

    .line 346
    const v0, 0x7f07004e

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_2

    .line 347
    :cond_17
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v3, v0, :cond_18

    .line 348
    const v0, 0x7f07004f

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_2

    .line 349
    :cond_18
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v4, v0, :cond_19

    .line 350
    const v0, 0x7f070050

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_2

    .line 351
    :cond_19
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v5, v0, :cond_1a

    .line 352
    const v0, 0x7f070051

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_2

    .line 353
    :cond_1a
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v6, v0, :cond_2

    .line 354
    const v0, 0x7f070052

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_2

    .line 361
    :cond_1b
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v2, v0, :cond_3

    .line 362
    const v0, 0x7f07004b

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_3

    .line 369
    :cond_1c
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v2, v0, :cond_1d

    .line 370
    const v0, 0x7f070083

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_4

    .line 371
    :cond_1d
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v3, v0, :cond_1e

    .line 372
    const v0, 0x7f070084

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_4

    .line 373
    :cond_1e
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v4, v0, :cond_1f

    .line 374
    const v0, 0x7f070085

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_4

    .line 375
    :cond_1f
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v5, v0, :cond_20

    .line 376
    const v0, 0x7f070086

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_4

    .line 377
    :cond_20
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v6, v0, :cond_21

    .line 378
    const v0, 0x7f070087

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_4

    .line 379
    :cond_21
    const/4 v0, 0x6

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 380
    const v0, 0x7f070088

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_4

    .line 388
    :cond_22
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v2, v0, :cond_23

    .line 389
    const v0, 0x7f070039

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_5

    .line 390
    :cond_23
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v3, v0, :cond_24

    .line 391
    const v0, 0x7f07003a

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_5

    .line 392
    :cond_24
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v4, v0, :cond_25

    .line 393
    const v0, 0x7f07003b

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_5

    .line 394
    :cond_25
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v5, v0, :cond_5

    .line 395
    const v0, 0x7f07003c

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_5

    .line 403
    :cond_26
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v2, v0, :cond_27

    .line 404
    const v0, 0x7f070040

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 405
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKeylightTimeout:Landroid/preference/ListPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto/16 :goto_6

    .line 406
    :cond_27
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v3, v0, :cond_6

    .line 407
    const v0, 0x7f070041

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 408
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKeylightTimeout:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto/16 :goto_6

    .line 415
    :cond_28
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v2, v0, :cond_29

    .line 416
    const v0, 0x7f070043

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_7

    .line 417
    :cond_29
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v3, v0, :cond_2a

    .line 418
    const v0, 0x7f070044

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_7

    .line 419
    :cond_2a
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v4, v0, :cond_2b

    .line 420
    const v0, 0x7f070045

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_7

    .line 421
    :cond_2b
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v5, v0, :cond_7

    .line 422
    const v0, 0x7f070046

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_7

    .line 429
    :cond_2c
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v2, v0, :cond_2d

    .line 430
    const v0, 0x7f070034

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_8

    .line 431
    :cond_2d
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v3, v0, :cond_8

    .line 432
    const v0, 0x7f070035

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_8

    .line 439
    :cond_2e
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v2, v0, :cond_2f

    .line 440
    const v0, 0x7f070053

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_9

    .line 441
    :cond_2f
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v3, v0, :cond_30

    .line 442
    const v0, 0x7f070054

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_9

    .line 443
    :cond_30
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v4, v0, :cond_31

    .line 444
    const v0, 0x7f070055

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_9

    .line 445
    :cond_31
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v5, v0, :cond_32

    .line 446
    const v0, 0x7f07005a

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_9

    .line 447
    :cond_32
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v6, v0, :cond_33

    .line 448
    const v0, 0x7f07005b

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_9

    .line 449
    :cond_33
    const/4 v0, 0x6

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_34

    .line 450
    const v0, 0x7f070056

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_9

    .line 451
    :cond_34
    const/4 v0, 0x7

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_35

    .line 452
    const v0, 0x7f070058

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_9

    .line 453
    :cond_35
    const/16 v0, 0x8

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_9

    .line 454
    const v0, 0x7f070057

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_9

    .line 461
    :cond_36
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v2, v0, :cond_37

    .line 462
    const v0, 0x7f070053

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_a

    .line 463
    :cond_37
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v3, v0, :cond_38

    .line 464
    const v0, 0x7f070054

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_a

    .line 465
    :cond_38
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v4, v0, :cond_39

    .line 466
    const v0, 0x7f070055

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_a

    .line 467
    :cond_39
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v5, v0, :cond_3a

    .line 468
    const v0, 0x7f07005a

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_a

    .line 469
    :cond_3a
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v6, v0, :cond_3b

    .line 470
    const v0, 0x7f07005b

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_a

    .line 471
    :cond_3b
    const/4 v0, 0x6

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_3c

    .line 472
    const v0, 0x7f070056

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_a

    .line 473
    :cond_3c
    const/4 v0, 0x7

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_3d

    .line 474
    const v0, 0x7f070058

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_a

    .line 475
    :cond_3d
    const/16 v0, 0x8

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_a

    .line 476
    const v0, 0x7f070057

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_a

    .line 483
    :cond_3e
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v2, v0, :cond_3f

    .line 484
    const v0, 0x7f070026

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_b

    .line 485
    :cond_3f
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v3, v0, :cond_40

    .line 486
    const v0, 0x7f070022

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_b

    .line 487
    :cond_40
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v4, v0, :cond_41

    .line 488
    const v0, 0x7f070028

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_b

    .line 489
    :cond_41
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v5, v0, :cond_42

    .line 490
    const v0, 0x7f07002a

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_b

    .line 491
    :cond_42
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v6, v0, :cond_43

    .line 492
    const v0, 0x7f070023

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_b

    .line 493
    :cond_43
    const/4 v0, 0x6

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_44

    .line 494
    const v0, 0x7f070025

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_b

    .line 495
    :cond_44
    const/4 v0, 0x7

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_45

    .line 496
    const v0, 0x7f070029

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_b

    .line 497
    :cond_45
    const/16 v0, 0x8

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_b

    .line 498
    const v0, 0x7f070024

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_b

    .line 505
    :cond_46
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v2, v0, :cond_47

    .line 506
    const v0, 0x7f070026

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_c

    .line 507
    :cond_47
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v3, v0, :cond_48

    .line 508
    const v0, 0x7f070022

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_c

    .line 509
    :cond_48
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v4, v0, :cond_49

    .line 510
    const v0, 0x7f070028

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_c

    .line 511
    :cond_49
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v5, v0, :cond_4a

    .line 512
    const v0, 0x7f07002a

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_c

    .line 513
    :cond_4a
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v6, v0, :cond_4b

    .line 514
    const v0, 0x7f070023

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_c

    .line 515
    :cond_4b
    const/4 v0, 0x6

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_4c

    .line 516
    const v0, 0x7f070025

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_c

    .line 517
    :cond_4c
    const/4 v0, 0x7

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_4d

    .line 518
    const v0, 0x7f070029

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_c

    .line 519
    :cond_4d
    const/16 v0, 0x8

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_c

    .line 520
    const v0, 0x7f070024

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_c

    .line 527
    :cond_4e
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v2, v0, :cond_4f

    .line 528
    const v0, 0x7f070026

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_d

    .line 529
    :cond_4f
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v3, v0, :cond_50

    .line 530
    const v0, 0x7f070022

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_d

    .line 531
    :cond_50
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v4, v0, :cond_51

    .line 532
    const v0, 0x7f070028

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_d

    .line 533
    :cond_51
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v5, v0, :cond_52

    .line 534
    const v0, 0x7f07002a

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_d

    .line 535
    :cond_52
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v6, v0, :cond_53

    .line 536
    const v0, 0x7f070023

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_d

    .line 537
    :cond_53
    const/4 v0, 0x6

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_54

    .line 538
    const v0, 0x7f070025

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_d

    .line 539
    :cond_54
    const/4 v0, 0x7

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_55

    .line 540
    const v0, 0x7f070029

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_d

    .line 541
    :cond_55
    const/16 v0, 0x8

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_d

    .line 542
    const v0, 0x7f070024

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_d

    .line 549
    :cond_56
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v2, v0, :cond_57

    .line 550
    const v0, 0x7f070026

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_e

    .line 551
    :cond_57
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v3, v0, :cond_58

    .line 552
    const v0, 0x7f070022

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_e

    .line 553
    :cond_58
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v4, v0, :cond_59

    .line 554
    const v0, 0x7f070028

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_e

    .line 555
    :cond_59
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v5, v0, :cond_5a

    .line 556
    const v0, 0x7f07002a

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_e

    .line 557
    :cond_5a
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v6, v0, :cond_5b

    .line 558
    const v0, 0x7f070023

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_e

    .line 559
    :cond_5b
    const/4 v0, 0x6

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_5c

    .line 560
    const v0, 0x7f070025

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_e

    .line 561
    :cond_5c
    const/4 v0, 0x7

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_5d

    .line 562
    const v0, 0x7f070029

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_e

    .line 563
    :cond_5d
    const/16 v0, 0x8

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_e

    .line 564
    const v0, 0x7f070024

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_e

    .line 571
    :cond_5e
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v2, v0, :cond_5f

    .line 572
    const v0, 0x7f070026

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_f

    .line 573
    :cond_5f
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v3, v0, :cond_60

    .line 574
    const v0, 0x7f070022

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_f

    .line 575
    :cond_60
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v4, v0, :cond_61

    .line 576
    const v0, 0x7f070028

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_f

    .line 577
    :cond_61
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v5, v0, :cond_62

    .line 578
    const v0, 0x7f07002a

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_f

    .line 579
    :cond_62
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v6, v0, :cond_63

    .line 580
    const v0, 0x7f070023

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_f

    .line 581
    :cond_63
    const/4 v0, 0x6

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_64

    .line 582
    const v0, 0x7f070025

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_f

    .line 583
    :cond_64
    const/4 v0, 0x7

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_65

    .line 584
    const v0, 0x7f070029

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_f

    .line 585
    :cond_65
    const/16 v0, 0x8

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_f

    .line 586
    const v0, 0x7f070024

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_f

    .line 593
    :cond_66
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v2, v0, :cond_67

    .line 594
    const v0, 0x7f070026

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_10

    .line 595
    :cond_67
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v3, v0, :cond_68

    .line 596
    const v0, 0x7f070022

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_10

    .line 597
    :cond_68
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v4, v0, :cond_69

    .line 598
    const v0, 0x7f070028

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_10

    .line 599
    :cond_69
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v5, v0, :cond_6a

    .line 600
    const v0, 0x7f07002a

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_10

    .line 601
    :cond_6a
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v6, v0, :cond_6b

    .line 602
    const v0, 0x7f070023

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_10

    .line 603
    :cond_6b
    const/4 v0, 0x6

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_6c

    .line 604
    const v0, 0x7f070025

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_10

    .line 605
    :cond_6c
    const/4 v0, 0x7

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_6d

    .line 606
    const v0, 0x7f070029

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_10

    .line 607
    :cond_6d
    const/16 v0, 0x8

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_10

    .line 608
    const v0, 0x7f070024

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_10

    .line 615
    :cond_6e
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v2, v0, :cond_6f

    .line 616
    const v0, 0x7f070073

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_11

    .line 617
    :cond_6f
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v3, v0, :cond_70

    .line 618
    const v0, 0x7f070074

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_11

    .line 619
    :cond_70
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v4, v0, :cond_71

    .line 620
    const v0, 0x7f07006f

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_11

    .line 621
    :cond_71
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v5, v0, :cond_72

    .line 622
    const v0, 0x7f070071

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_11

    .line 623
    :cond_72
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v6, v0, :cond_11

    .line 624
    const v0, 0x7f070072

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_11
.end method


# virtual methods
.method public DialogAttention()V
    .locals 3

    .prologue
    .line 1364
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070089

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070009

    new-instance v2, Lcom/luo2888/flymesettings/DeviceSettings$6;

    invoke-direct {v2, p0}, Lcom/luo2888/flymesettings/DeviceSettings$6;-><init>(Lcom/luo2888/flymesettings/DeviceSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1375
    return-void
.end method

.method public DialogAttentionPerformance()V
    .locals 3

    .prologue
    .line 1350
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070089

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070066

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070009

    new-instance v2, Lcom/luo2888/flymesettings/DeviceSettings$5;

    invoke-direct {v2, p0}, Lcom/luo2888/flymesettings/DeviceSettings$5;-><init>(Lcom/luo2888/flymesettings/DeviceSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1361
    return-void
.end method

.method public DialogAttentionRoot()V
    .locals 3

    .prologue
    .line 1336
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070089

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07001d

    new-instance v2, Lcom/luo2888/flymesettings/DeviceSettings$4;

    invoke-direct {v2, p0}, Lcom/luo2888/flymesettings/DeviceSettings$4;-><init>(Lcom/luo2888/flymesettings/DeviceSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1347
    return-void
.end method

.method public DialogReboot()V
    .locals 3

    .prologue
    .line 1378
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070016

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070009

    new-instance v2, Lcom/luo2888/flymesettings/DeviceSettings$9;

    invoke-direct {v2, p0}, Lcom/luo2888/flymesettings/DeviceSettings$9;-><init>(Lcom/luo2888/flymesettings/DeviceSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070007

    new-instance v2, Lcom/luo2888/flymesettings/DeviceSettings$8;

    invoke-direct {v2, p0}, Lcom/luo2888/flymesettings/DeviceSettings$8;-><init>(Lcom/luo2888/flymesettings/DeviceSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070006

    new-instance v2, Lcom/luo2888/flymesettings/DeviceSettings$7;

    invoke-direct {v2, p0}, Lcom/luo2888/flymesettings/DeviceSettings$7;-><init>(Lcom/luo2888/flymesettings/DeviceSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1401
    return-void
.end method

.method public Root_ProgressDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1298
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mDialog:Landroid/app/ProgressDialog;

    .line 1299
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1300
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 1301
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f070018

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 1302
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f070019

    invoke-virtual {p0, v1}, Lcom/luo2888/flymesettings/DeviceSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1303
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1304
    new-instance v0, Lcom/luo2888/flymesettings/DeviceSettings$2;

    invoke-direct {v0, p0}, Lcom/luo2888/flymesettings/DeviceSettings$2;-><init>(Lcom/luo2888/flymesettings/DeviceSettings;)V

    invoke-virtual {v0}, Lcom/luo2888/flymesettings/DeviceSettings$2;->start()V

    .line 1318
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1246
    packed-switch p1, :pswitch_data_0

    .line 1294
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1295
    return-void

    .line 1248
    :pswitch_0
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 1249
    const/4 v1, 0x0

    .line 1251
    .local v1, "localOutputStream":Ljava/io/OutputStream;
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1252
    new-instance v2, Ljava/io/File;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/luo2888/flymesettings/DeviceSettings;->file:Ljava/io/File;

    .line 1253
    iget-object v2, p0, Lcom/luo2888/flymesettings/DeviceSettings;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".zip"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1256
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "su"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 1259
    const-string v2, "mkdir -p /cache/recovery/\n"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 1260
    const-string v2, "echo \'boot-recovery\' >/cache/recovery/command\n"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 1263
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "echo \'--update_package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/luo2888/flymesettings/DeviceSettings;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' >> /cache/recovery/command\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 1266
    const-string v2, "reboot recovery\n"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 1269
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1273
    if-eqz v1, :cond_1

    .line 1275
    :try_start_1
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1279
    :cond_1
    :goto_1
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/luo2888/flymesettings/DeviceSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    const-string v3, "recovery"

    invoke-virtual {v2, v3}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1276
    :catch_0
    move-exception v0

    .line 1277
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1270
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 1271
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1273
    if-eqz v1, :cond_2

    .line 1275
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1279
    :cond_2
    :goto_2
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/luo2888/flymesettings/DeviceSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    const-string v3, "recovery"

    invoke-virtual {v2, v3}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1276
    :catch_2
    move-exception v0

    .line 1277
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 1273
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    move-object v3, v2

    if-eqz v1, :cond_3

    .line 1275
    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1279
    :cond_3
    :goto_3
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/luo2888/flymesettings/DeviceSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    const-string v4, "recovery"

    invoke-virtual {v2, v4}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    throw v3

    .line 1276
    :catch_3
    move-exception v0

    .line 1277
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 1285
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4
    const v2, 0x7f070078

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1246
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    invoke-direct {p0}, Lcom/luo2888/flymesettings/DeviceSettings;->initGeTui()V

    .line 105
    const v0, 0x7f040001

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->addPreferencesFromResource(I)V

    .line 106
    const-string v0, "boeffla_settings_key"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mBFSettings:Landroid/preference/PreferenceScreen;

    .line 107
    const-string v0, "camera_switch_key"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mCameraSwitch:Landroid/preference/ListPreference;

    .line 108
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mCameraSwitch:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 110
    const-string v0, "running_mode"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mRunningMode:Landroid/preference/ListPreference;

    .line 111
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mRunningMode:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 112
    const-string v0, "led_intensity"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mLedIntensity:Landroid/preference/ListPreference;

    .line 113
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mLedIntensity:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 114
    const-string v0, "led_fade"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mLedFade:Landroid/preference/ListPreference;

    .line 115
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mLedFade:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 116
    const-string v0, "wakeup_mode"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mWakeUp:Landroid/preference/ListPreference;

    .line 117
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mWakeUp:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 118
    const-string v0, "kcal"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKcal:Landroid/preference/ListPreference;

    .line 119
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKcal:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 120
    const-string v0, "kcal_sat"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKcalSat:Landroid/preference/ListPreference;

    .line 121
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKcalSat:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 122
    const-string v0, "keylight"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKeylight:Landroid/preference/ListPreference;

    .line 123
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKeylight:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 124
    const-string v0, "keylight_timeout"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKeylightTimeout:Landroid/preference/ListPreference;

    .line 125
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKeylightTimeout:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 126
    const-string v0, "kcal_invert"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKcalInvert:Landroid/preference/CheckBoxPreference;

    .line 127
    const-string v0, "charge"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mCharge:Landroid/preference/CheckBoxPreference;

    .line 128
    const-string v0, "glove_mode"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mGLoveMode:Landroid/preference/CheckBoxPreference;

    .line 129
    const-string v0, "cabc"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/luo2888/flymesettings/CABC;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mCABC:Lcom/luo2888/flymesettings/CABC;

    .line 130
    const-string v0, "mdnie_scenario"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/luo2888/flymesettings/mDNIeScenario;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mmDNIeScenario:Lcom/luo2888/flymesettings/mDNIeScenario;

    .line 131
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mmDNIeScenario:Lcom/luo2888/flymesettings/mDNIeScenario;

    invoke-static {}, Lcom/luo2888/flymesettings/mDNIeScenario;->isSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/luo2888/flymesettings/mDNIeScenario;->setEnabled(Z)V

    .line 132
    const-string v0, "mdnie_mode"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/luo2888/flymesettings/mDNIeMode;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mmDNIeMode:Lcom/luo2888/flymesettings/mDNIeMode;

    .line 133
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mmDNIeMode:Lcom/luo2888/flymesettings/mDNIeMode;

    invoke-static {}, Lcom/luo2888/flymesettings/mDNIeMode;->isSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/luo2888/flymesettings/mDNIeMode;->setEnabled(Z)V

    .line 134
    const-string v0, "flashota"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->flashota:Landroid/preference/PreferenceScreen;

    .line 137
    const-string v0, "battery_light_medium_color"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mBattery_light_medium_color:Landroid/preference/ListPreference;

    .line 138
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mBattery_light_medium_color:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 139
    const-string v0, "notification_light_pulse_default_color"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mNotification_light_pulse_default_color:Landroid/preference/ListPreference;

    .line 140
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mNotification_light_pulse_default_color:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 141
    const-string v0, "battery_light_enabled"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mBattery_light_enabled:Landroid/preference/CheckBoxPreference;

    .line 142
    const-string v0, "battery_light_pulse"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mBattery_light_pulse:Landroid/preference/CheckBoxPreference;

    .line 143
    const-string v0, "notification_light_pulse"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mNotification_light_pulse:Landroid/preference/CheckBoxPreference;

    .line 144
    const-string v0, "notification_light_screen_on_enable"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mNotification_light_screen_on_enable:Landroid/preference/CheckBoxPreference;

    .line 145
    const-string v0, "volume_wake_screen"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mVolume_wake_screen:Landroid/preference/CheckBoxPreference;

    .line 146
    const-string v0, "key_home_double_tap_action"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_home_double_tap_action:Landroid/preference/ListPreference;

    .line 147
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_home_double_tap_action:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 148
    const-string v0, "key_home_long_press_action"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_home_long_press_action:Landroid/preference/ListPreference;

    .line 149
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_home_long_press_action:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 150
    const-string v0, "key_app_switch_action"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_app_switch_action:Landroid/preference/ListPreference;

    .line 151
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_app_switch_action:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 152
    const-string v0, "key_app_switch_long_press_action"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_app_switch_long_press_action:Landroid/preference/ListPreference;

    .line 153
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_app_switch_long_press_action:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 154
    const-string v0, "key_menu_action"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_menu_action:Landroid/preference/ListPreference;

    .line 155
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_menu_action:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 156
    const-string v0, "key_menu_long_press_action"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_menu_long_press_action:Landroid/preference/ListPreference;

    .line 157
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_menu_long_press_action:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 159
    const-string v0, "touchboost_freq"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mTouchboost_freq:Landroid/preference/ListPreference;

    .line 160
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mTouchboost_freq:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 163
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mCameraSwitch:Landroid/preference/ListPreference;

    const v1, 0x7f060001

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 164
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mCameraSwitch:Landroid/preference/ListPreference;

    const v1, 0x7f060015

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 165
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mRunningMode:Landroid/preference/ListPreference;

    const v1, 0x7f060011

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 166
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mRunningMode:Landroid/preference/ListPreference;

    const v1, 0x7f060027

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 167
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mLedIntensity:Landroid/preference/ListPreference;

    const v1, 0x7f06000d

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 168
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mLedIntensity:Landroid/preference/ListPreference;

    const v1, 0x7f060023

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 169
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mLedFade:Landroid/preference/ListPreference;

    const v1, 0x7f06000c

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 170
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mLedFade:Landroid/preference/ListPreference;

    const v1, 0x7f060022

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 171
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mWakeUp:Landroid/preference/ListPreference;

    const v1, 0x7f060013

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 172
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mWakeUp:Landroid/preference/ListPreference;

    const v1, 0x7f060029

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 173
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKcal:Landroid/preference/ListPreference;

    const v1, 0x7f060002

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 174
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKcal:Landroid/preference/ListPreference;

    const v1, 0x7f060018

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 175
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKcalSat:Landroid/preference/ListPreference;

    const v1, 0x7f060003

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 176
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKcalSat:Landroid/preference/ListPreference;

    const v1, 0x7f060019

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 177
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKeylight:Landroid/preference/ListPreference;

    const v1, 0x7f06000a

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 178
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKeylight:Landroid/preference/ListPreference;

    const v1, 0x7f060020

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 179
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKeylightTimeout:Landroid/preference/ListPreference;

    const v1, 0x7f06000b

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 180
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKeylightTimeout:Landroid/preference/ListPreference;

    const v1, 0x7f060021

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 182
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mTouchboost_freq:Landroid/preference/ListPreference;

    const v1, 0x7f060012

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 183
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mTouchboost_freq:Landroid/preference/ListPreference;

    const v1, 0x7f060028

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 185
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mBattery_light_medium_color:Landroid/preference/ListPreference;

    const/high16 v1, 0x7f060000

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 186
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mBattery_light_medium_color:Landroid/preference/ListPreference;

    const v1, 0x7f060014

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 187
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mNotification_light_pulse_default_color:Landroid/preference/ListPreference;

    const v1, 0x7f060010

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 188
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mNotification_light_pulse_default_color:Landroid/preference/ListPreference;

    const v1, 0x7f060026

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 190
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_home_double_tap_action:Landroid/preference/ListPreference;

    const v1, 0x7f060006

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 191
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_home_double_tap_action:Landroid/preference/ListPreference;

    const v1, 0x7f06001c

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 192
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_home_long_press_action:Landroid/preference/ListPreference;

    const v1, 0x7f060007

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 193
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_home_long_press_action:Landroid/preference/ListPreference;

    const v1, 0x7f06001d

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 194
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_app_switch_action:Landroid/preference/ListPreference;

    const v1, 0x7f060004

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 195
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_app_switch_action:Landroid/preference/ListPreference;

    const v1, 0x7f06001a

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 196
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_app_switch_long_press_action:Landroid/preference/ListPreference;

    const v1, 0x7f060005

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 197
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_app_switch_long_press_action:Landroid/preference/ListPreference;

    const v1, 0x7f06001b

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 198
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_menu_action:Landroid/preference/ListPreference;

    const v1, 0x7f060008

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 199
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_menu_action:Landroid/preference/ListPreference;

    const v1, 0x7f06001e

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 200
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_menu_long_press_action:Landroid/preference/ListPreference;

    const v1, 0x7f060009

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 201
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_menu_long_press_action:Landroid/preference/ListPreference;

    const v1, 0x7f06001f

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 202
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 25
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mCameraSwitch:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_0

    move-object/from16 v3, p2

    .line 632
    check-cast v3, Ljava/lang/String;

    .line 633
    .local v3, "ValueCameraSwitch":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mCameraSwitch:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 634
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 635
    .local v21, "mode":I
    packed-switch v21, :pswitch_data_0

    .line 668
    .end local v3    # "ValueCameraSwitch":Ljava/lang/String;
    .end local v21    # "mode":I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mRunningMode:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_1

    move-object/from16 v10, p2

    .line 669
    check-cast v10, Ljava/lang/String;

    .line 670
    .local v10, "ValueRunningModeSwitch":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mRunningMode:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 671
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 672
    .restart local v21    # "mode":I
    packed-switch v21, :pswitch_data_1

    .line 691
    .end local v10    # "ValueRunningModeSwitch":Ljava/lang/String;
    .end local v21    # "mode":I
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mLedIntensity:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_2

    move-object/from16 v9, p2

    .line 692
    check-cast v9, Ljava/lang/String;

    .line 693
    .local v9, "ValueLedIntensitySwitch":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mLedIntensity:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 694
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 695
    .restart local v21    # "mode":I
    packed-switch v21, :pswitch_data_2

    .line 725
    .end local v9    # "ValueLedIntensitySwitch":Ljava/lang/String;
    .end local v21    # "mode":I
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mLedFade:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_3

    move-object/from16 v8, p2

    .line 726
    check-cast v8, Ljava/lang/String;

    .line 727
    .local v8, "ValueLedFadeSwitch":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mLedFade:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 728
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 729
    .restart local v21    # "mode":I
    packed-switch v21, :pswitch_data_3

    .line 743
    .end local v8    # "ValueLedFadeSwitch":Ljava/lang/String;
    .end local v21    # "mode":I
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mWakeUp:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_4

    move-object/from16 v12, p2

    .line 744
    check-cast v12, Ljava/lang/String;

    .line 745
    .local v12, "ValueWakeUpSwitch":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mWakeUp:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 746
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 747
    .restart local v21    # "mode":I
    packed-switch v21, :pswitch_data_4

    .line 781
    .end local v12    # "ValueWakeUpSwitch":Ljava/lang/String;
    .end local v21    # "mode":I
    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mKcal:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_5

    move-object/from16 v5, p2

    .line 782
    check-cast v5, Ljava/lang/String;

    .line 783
    .local v5, "ValueKcalSwitch":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mKcal:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 784
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 785
    .restart local v21    # "mode":I
    packed-switch v21, :pswitch_data_5

    .line 811
    .end local v5    # "ValueKcalSwitch":Ljava/lang/String;
    .end local v21    # "mode":I
    :cond_5
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mKcalSat:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_6

    move-object/from16 v4, p2

    .line 812
    check-cast v4, Ljava/lang/String;

    .line 813
    .local v4, "ValueKcalSatSwitch":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mKcalSat:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 814
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 815
    .restart local v21    # "mode":I
    packed-switch v21, :pswitch_data_6

    .line 833
    .end local v4    # "ValueKcalSatSwitch":Ljava/lang/String;
    .end local v21    # "mode":I
    :cond_6
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mKeylight:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_7

    move-object/from16 v6, p2

    .line 834
    check-cast v6, Ljava/lang/String;

    .line 835
    .local v6, "ValueKeylightSwitch":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mKeylight:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 836
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 837
    .restart local v21    # "mode":I
    packed-switch v21, :pswitch_data_7

    .line 858
    .end local v6    # "ValueKeylightSwitch":Ljava/lang/String;
    .end local v21    # "mode":I
    :cond_7
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mKeylightTimeout:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_8

    move-object/from16 v7, p2

    .line 859
    check-cast v7, Ljava/lang/String;

    .line 860
    .local v7, "ValueKeylightTimeoutSwitch":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mKeylightTimeout:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 861
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 862
    .restart local v21    # "mode":I
    packed-switch v21, :pswitch_data_8

    .line 888
    .end local v7    # "ValueKeylightTimeoutSwitch":Ljava/lang/String;
    .end local v21    # "mode":I
    :cond_8
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mBattery_light_medium_color:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_9

    move-object/from16 v19, p2

    .line 889
    check-cast v19, Ljava/lang/String;

    .line 890
    .local v19, "ValuemBattery_light_medium_color":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mBattery_light_medium_color:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 891
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 892
    .restart local v21    # "mode":I
    packed-switch v21, :pswitch_data_9

    .line 934
    .end local v19    # "ValuemBattery_light_medium_color":Ljava/lang/String;
    .end local v21    # "mode":I
    :cond_9
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mNotification_light_pulse_default_color:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_a

    move-object/from16 v20, p2

    .line 935
    check-cast v20, Ljava/lang/String;

    .line 936
    .local v20, "ValuemNotification_light_pulse_default_color":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mNotification_light_pulse_default_color:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 937
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 938
    .restart local v21    # "mode":I
    packed-switch v21, :pswitch_data_a

    .line 980
    .end local v20    # "ValuemNotification_light_pulse_default_color":Ljava/lang/String;
    .end local v21    # "mode":I
    :cond_a
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_home_double_tap_action:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_b

    move-object/from16 v15, p2

    .line 981
    check-cast v15, Ljava/lang/String;

    .line 982
    .local v15, "Valuekey_home_double_tap_action":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_home_double_tap_action:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 983
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 984
    .restart local v21    # "mode":I
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "key_home_double_tap_action"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 985
    packed-switch v21, :pswitch_data_b

    .line 1018
    .end local v15    # "Valuekey_home_double_tap_action":Ljava/lang/String;
    .end local v21    # "mode":I
    :cond_b
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_home_long_press_action:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_c

    move-object/from16 v16, p2

    .line 1019
    check-cast v16, Ljava/lang/String;

    .line 1020
    .local v16, "Valuekey_home_long_press_action":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_home_long_press_action:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1021
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 1022
    .restart local v21    # "mode":I
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "key_home_long_press_action"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1023
    packed-switch v21, :pswitch_data_c

    .line 1056
    .end local v16    # "Valuekey_home_long_press_action":Ljava/lang/String;
    .end local v21    # "mode":I
    :cond_c
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_app_switch_action:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_d

    move-object/from16 v13, p2

    .line 1057
    check-cast v13, Ljava/lang/String;

    .line 1058
    .local v13, "Valuekey_app_switch_action":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_app_switch_action:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1059
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 1060
    .restart local v21    # "mode":I
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "key_app_switch_action"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1061
    packed-switch v21, :pswitch_data_d

    .line 1094
    .end local v13    # "Valuekey_app_switch_action":Ljava/lang/String;
    .end local v21    # "mode":I
    :cond_d
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_app_switch_long_press_action:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_e

    move-object/from16 v14, p2

    .line 1095
    check-cast v14, Ljava/lang/String;

    .line 1096
    .local v14, "Valuekey_app_switch_long_press_action":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_app_switch_long_press_action:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1097
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 1098
    .restart local v21    # "mode":I
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "key_app_switch_long_press_action"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1099
    packed-switch v21, :pswitch_data_e

    .line 1132
    .end local v14    # "Valuekey_app_switch_long_press_action":Ljava/lang/String;
    .end local v21    # "mode":I
    :cond_e
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_menu_action:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_f

    move-object/from16 v17, p2

    .line 1133
    check-cast v17, Ljava/lang/String;

    .line 1134
    .local v17, "Valuekey_menu_action":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_menu_action:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1135
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 1136
    .restart local v21    # "mode":I
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "key_menu_action"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1137
    packed-switch v21, :pswitch_data_f

    .line 1170
    .end local v17    # "Valuekey_menu_action":Ljava/lang/String;
    .end local v21    # "mode":I
    :cond_f
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_menu_long_press_action:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_10

    move-object/from16 v18, p2

    .line 1171
    check-cast v18, Ljava/lang/String;

    .line 1172
    .local v18, "Valuekey_menu_long_press_action":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_menu_long_press_action:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1173
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 1174
    .restart local v21    # "mode":I
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "key_menu_long_press_action"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1175
    packed-switch v21, :pswitch_data_10

    .line 1208
    .end local v18    # "Valuekey_menu_long_press_action":Ljava/lang/String;
    .end local v21    # "mode":I
    :cond_10
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mTouchboost_freq:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_11

    move-object/from16 v11, p2

    .line 1209
    check-cast v11, Ljava/lang/String;

    .line 1210
    .local v11, "ValueTouchboost_freq":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mTouchboost_freq:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1211
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 1212
    .restart local v21    # "mode":I
    packed-switch v21, :pswitch_data_11

    .line 1241
    .end local v11    # "ValueTouchboost_freq":Ljava/lang/String;
    .end local v21    # "mode":I
    :cond_11
    :goto_11
    const/16 v22, 0x0

    return v22

    .line 637
    .restart local v3    # "ValueCameraSwitch":Ljava/lang/String;
    .restart local v21    # "mode":I
    :pswitch_0
    const v22, 0x7f070010

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 638
    const-string v22, "mount -o remount,rw /system"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    .line 639
    const-string v22, "rm -rf /system/app/Camera"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    .line 640
    const-string v22, "cp -rf /system/app/CameraDir/google_camera /system/app/Camera"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    .line 641
    const-string v22, "chmod -R 0755 /system/app/Camera"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    .line 642
    const-string v22, "chmod 0644 /system/app/Camera/Camera.apk"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    .line 643
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->DialogReboot()V

    goto/16 :goto_0

    .line 646
    :pswitch_1
    const v22, 0x7f070011

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 647
    const-string v22, "mount -o remount,rw /system"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    .line 648
    const-string v22, "rm -rf /system/app/Camera"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    .line 649
    const-string v22, "cp -rf /system/app/CameraDir/meizu_camera /system/app/Camera"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    .line 650
    const-string v22, "chmod -R 0755 /system/app/Camera"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    .line 651
    const-string v22, "chmod 0644 /system/app/Camera/Camera.apk"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    .line 652
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->DialogReboot()V

    goto/16 :goto_0

    .line 655
    :pswitch_2
    const v22, 0x7f07000f

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 656
    const-string v22, "mount -o remount,rw /system"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    .line 657
    const-string v22, "rm -rf /system/app/Camera"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    .line 658
    const-string v22, "cp -rf /system/app/CameraDir/cm_camera /system/app/Camera"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    .line 659
    const-string v22, "chmod -R 0755 /system/app/Camera"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    .line 660
    const-string v22, "chmod 0644 /system/app/Camera/Camera.apk"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    .line 661
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->DialogReboot()V

    goto/16 :goto_0

    .line 674
    .end local v3    # "ValueCameraSwitch":Ljava/lang/String;
    .restart local v10    # "ValueRunningModeSwitch":Ljava/lang/String;
    :pswitch_3
    const v22, 0x7f070068

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 675
    const-string v22, "/system/bin/running_mode_battery"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_1

    .line 678
    :pswitch_4
    const v22, 0x7f07006a

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 679
    const-string v22, "/system/bin/running_mode_standard"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_1

    .line 682
    :pswitch_5
    const v22, 0x7f070069

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 683
    const-string v22, "/system/bin/running_mode_performance"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    .line 684
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->DialogAttentionPerformance()V

    goto/16 :goto_1

    .line 697
    .end local v10    # "ValueRunningModeSwitch":Ljava/lang/String;
    .restart local v9    # "ValueLedIntensitySwitch":Ljava/lang/String;
    :pswitch_6
    const v22, 0x7f07004d

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 698
    const-string v22, "echo \'40\' > /sys/class/sec/led/led_intensity"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_2

    .line 701
    :pswitch_7
    const v22, 0x7f07004e

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 702
    const-string v22, "echo \'30\' > /sys/class/sec/led/led_intensity"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_2

    .line 705
    :pswitch_8
    const v22, 0x7f07004f

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 706
    const-string v22, "echo \'20\' > /sys/class/sec/led/led_intensity"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_2

    .line 709
    :pswitch_9
    const v22, 0x7f070050

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 710
    const-string v22, "echo \'10\' > /sys/class/sec/led/led_intensity"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_2

    .line 713
    :pswitch_a
    const v22, 0x7f070051

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 714
    const-string v22, "echo \'5\' > /sys/class/sec/led/led_intensity"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_2

    .line 717
    :pswitch_b
    const v22, 0x7f070052

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 718
    const-string v22, "echo \'1\' > /sys/class/sec/led/led_intensity"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_2

    .line 731
    .end local v9    # "ValueLedIntensitySwitch":Ljava/lang/String;
    .restart local v8    # "ValueLedFadeSwitch":Ljava/lang/String;
    :pswitch_c
    const v22, 0x7f07004a

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 732
    const-string v22, "echo \'0\' > /sys/class/sec/led/led_fade"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_3

    .line 735
    :pswitch_d
    const v22, 0x7f07004b

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 736
    const-string v22, "echo \'1\' > /sys/class/sec/led/led_fade"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_3

    .line 749
    .end local v8    # "ValueLedFadeSwitch":Ljava/lang/String;
    .restart local v12    # "ValueWakeUpSwitch":Ljava/lang/String;
    :pswitch_e
    const v22, 0x7f070082

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 750
    const-string v22, "echo \'0\' > /sys/class/i2c-adapter/i2c-2/2-0020/input/input2/screen_wake_options"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_4

    .line 753
    :pswitch_f
    const v22, 0x7f070083

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 754
    const-string v22, "echo \'1\' > /sys/class/i2c-adapter/i2c-2/2-0020/input/input2/screen_wake_options"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_4

    .line 757
    :pswitch_10
    const v22, 0x7f070084

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 758
    const-string v22, "echo \'2\' > /sys/class/i2c-adapter/i2c-2/2-0020/input/input2/screen_wake_options"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_4

    .line 761
    :pswitch_11
    const v22, 0x7f070085

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 762
    const-string v22, "echo \'3\' > /sys/class/i2c-adapter/i2c-2/2-0020/input/input2/screen_wake_options"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_4

    .line 765
    :pswitch_12
    const v22, 0x7f070086

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 766
    const-string v22, "echo \'4\' > /sys/class/i2c-adapter/i2c-2/2-0020/input/input2/screen_wake_options"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_4

    .line 769
    :pswitch_13
    const v22, 0x7f070087

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 770
    const-string v22, "echo \'5\' > /sys/class/i2c-adapter/i2c-2/2-0020/input/input2/screen_wake_options"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_4

    .line 773
    :pswitch_14
    const v22, 0x7f070088

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 774
    const-string v22, "echo \'6\' > /sys/class/i2c-adapter/i2c-2/2-0020/input/input2/screen_wake_options"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_4

    .line 787
    .end local v12    # "ValueWakeUpSwitch":Ljava/lang/String;
    .restart local v5    # "ValueKcalSwitch":Ljava/lang/String;
    :pswitch_15
    const v22, 0x7f070038

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 788
    const-string v22, "echo \'255 255 255\' >/sys/devices/platform/kcal_ctrl.0/kcal"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_5

    .line 791
    :pswitch_16
    const v22, 0x7f070039

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 792
    const-string v22, "echo \'200 200 205\' > /sys/devices/platform/kcal_ctrl.0/kcal"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_5

    .line 795
    :pswitch_17
    const v22, 0x7f07003a

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 796
    const-string v22, "echo \'150 150 155\' > /sys/devices/platform/kcal_ctrl.0/kcal"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_5

    .line 799
    :pswitch_18
    const v22, 0x7f07003b

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 800
    const-string v22, "echo \'125 125 130\' > /sys/devices/platform/kcal_ctrl.0/kcal"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_5

    .line 803
    :pswitch_19
    const v22, 0x7f07003c

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 804
    const-string v22, "echo \'75 75 80\' > /sys/devices/platform/kcal_ctrl.0/kcal"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_5

    .line 817
    .end local v5    # "ValueKcalSwitch":Ljava/lang/String;
    .restart local v4    # "ValueKcalSatSwitch":Ljava/lang/String;
    :pswitch_1a
    const v22, 0x7f070033

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 818
    const-string v22, "echo \'255\' >/sys/devices/platform/kcal_ctrl.0/kcal_sat"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_6

    .line 821
    :pswitch_1b
    const v22, 0x7f070034

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 822
    const-string v22, "echo \'128\' > /sys/devices/platform/kcal_ctrl.0/kcal_sat"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_6

    .line 825
    :pswitch_1c
    const v22, 0x7f070035

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 826
    const-string v22, "echo \'285\' > /sys/devices/platform/kcal_ctrl.0/kcal_sat"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_6

    .line 839
    .end local v4    # "ValueKcalSatSwitch":Ljava/lang/String;
    .restart local v6    # "ValueKeylightSwitch":Ljava/lang/String;
    :pswitch_1d
    const v22, 0x7f07003f

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 840
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mKeylightTimeout:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 841
    const-string v22, "echo \'2\' >sys/class/misc/btk_control/btkc_mode"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_7

    .line 844
    :pswitch_1e
    const v22, 0x7f070040

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mKeylightTimeout:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 846
    const-string v22, "echo \'0\' >sys/class/misc/btk_control/btkc_mode"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_7

    .line 849
    :pswitch_1f
    const v22, 0x7f070041

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 850
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mKeylightTimeout:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 851
    const-string v22, "echo \'1\' > sys/class/misc/btk_control/btkc_mode"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_7

    .line 864
    .end local v6    # "ValueKeylightSwitch":Ljava/lang/String;
    .restart local v7    # "ValueKeylightTimeoutSwitch":Ljava/lang/String;
    :pswitch_20
    const v22, 0x7f070042

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 865
    const-string v22, "echo \'1\' >sys/class/misc/btk_control/btkc_timeout"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_8

    .line 868
    :pswitch_21
    const v22, 0x7f070043

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 869
    const-string v22, "echo \'5\' >sys/class/misc/btk_control/btkc_timeout"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_8

    .line 872
    :pswitch_22
    const v22, 0x7f070044

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 873
    const-string v22, "echo \'10\' > sys/class/misc/btk_control/btkc_timeout"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_8

    .line 876
    :pswitch_23
    const v22, 0x7f070045

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 877
    const-string v22, "echo \'20\' > sys/class/misc/btk_control/btkc_timeout"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_8

    .line 880
    :pswitch_24
    const v22, 0x7f070046

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 881
    const-string v22, "echo \'7200\' > sys/class/misc/btk_control/btkc_timeout"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_8

    .line 894
    .end local v7    # "ValueKeylightTimeoutSwitch":Ljava/lang/String;
    .restart local v19    # "ValuemBattery_light_medium_color":Ljava/lang/String;
    :pswitch_25
    const v22, 0x7f070059

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 895
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "battery_light_medium_color"

    const/high16 v24, 0xff0000

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_9

    .line 898
    :pswitch_26
    const v22, 0x7f070053

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 899
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "battery_light_medium_color"

    const/16 v24, 0xff

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_9

    .line 902
    :pswitch_27
    const v22, 0x7f070054

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 903
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "battery_light_medium_color"

    const v24, 0xffff

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_9

    .line 906
    :pswitch_28
    const v22, 0x7f070055

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 907
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "battery_light_medium_color"

    const v24, 0x28ff00

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_9

    .line 910
    :pswitch_29
    const v22, 0x7f07005a

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 911
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "battery_light_medium_color"

    const v24, 0xffffff

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_9

    .line 914
    :pswitch_2a
    const v22, 0x7f07005b

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 915
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "battery_light_medium_color"

    const v24, 0xffff00

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_9

    .line 918
    :pswitch_2b
    const v22, 0x7f070056

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 919
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "battery_light_medium_color"

    const v24, 0xff2200

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_9

    .line 922
    :pswitch_2c
    const v22, 0x7f070058

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 923
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "battery_light_medium_color"

    const v24, 0xb400ff

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_9

    .line 926
    :pswitch_2d
    const v22, 0x7f070057

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 927
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "battery_light_medium_color"

    const v24, 0xff0084

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_9

    .line 940
    .end local v19    # "ValuemBattery_light_medium_color":Ljava/lang/String;
    .restart local v20    # "ValuemNotification_light_pulse_default_color":Ljava/lang/String;
    :pswitch_2e
    const v22, 0x7f070059

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 941
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "notification_light_pulse_default_color"

    const/high16 v24, 0xff0000

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_a

    .line 944
    :pswitch_2f
    const v22, 0x7f070053

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 945
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "notification_light_pulse_default_color"

    const/16 v24, 0xff

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_a

    .line 948
    :pswitch_30
    const v22, 0x7f070054

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 949
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "notification_light_pulse_default_color"

    const v24, 0xffff

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_a

    .line 952
    :pswitch_31
    const v22, 0x7f070055

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 953
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "notification_light_pulse_default_color"

    const v24, 0x28ff00

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_a

    .line 956
    :pswitch_32
    const v22, 0x7f07005a

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 957
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "notification_light_pulse_default_color"

    const v24, 0xffffff

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_a

    .line 960
    :pswitch_33
    const v22, 0x7f07005b

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 961
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "notification_light_pulse_default_color"

    const v24, 0xffff00

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_a

    .line 964
    :pswitch_34
    const v22, 0x7f070056

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 965
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "notification_light_pulse_default_color"

    const v24, 0xff2200

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_a

    .line 968
    :pswitch_35
    const v22, 0x7f070058

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 969
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "notification_light_pulse_default_color"

    const v24, 0xb400ff

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_a

    .line 972
    :pswitch_36
    const v22, 0x7f070057

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 973
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "notification_light_pulse_default_color"

    const v24, 0xff0084

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_a

    .line 987
    .end local v20    # "ValuemNotification_light_pulse_default_color":Ljava/lang/String;
    .restart local v15    # "Valuekey_home_double_tap_action":Ljava/lang/String;
    :pswitch_37
    const v22, 0x7f070027

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_b

    .line 990
    :pswitch_38
    const v22, 0x7f070026

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_b

    .line 993
    :pswitch_39
    const v22, 0x7f070022

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_b

    .line 996
    :pswitch_3a
    const v22, 0x7f070028

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_b

    .line 999
    :pswitch_3b
    const v22, 0x7f07002a

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_b

    .line 1002
    :pswitch_3c
    const v22, 0x7f070023

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_b

    .line 1005
    :pswitch_3d
    const v22, 0x7f070025

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_b

    .line 1008
    :pswitch_3e
    const v22, 0x7f070029

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_b

    .line 1011
    :pswitch_3f
    const v22, 0x7f070024

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_b

    .line 1025
    .end local v15    # "Valuekey_home_double_tap_action":Ljava/lang/String;
    .restart local v16    # "Valuekey_home_long_press_action":Ljava/lang/String;
    :pswitch_40
    const v22, 0x7f070027

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_c

    .line 1028
    :pswitch_41
    const v22, 0x7f070026

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_c

    .line 1031
    :pswitch_42
    const v22, 0x7f070022

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_c

    .line 1034
    :pswitch_43
    const v22, 0x7f070028

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_c

    .line 1037
    :pswitch_44
    const v22, 0x7f07002a

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_c

    .line 1040
    :pswitch_45
    const v22, 0x7f070023

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_c

    .line 1043
    :pswitch_46
    const v22, 0x7f070025

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_c

    .line 1046
    :pswitch_47
    const v22, 0x7f070029

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_c

    .line 1049
    :pswitch_48
    const v22, 0x7f070024

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_c

    .line 1063
    .end local v16    # "Valuekey_home_long_press_action":Ljava/lang/String;
    .restart local v13    # "Valuekey_app_switch_action":Ljava/lang/String;
    :pswitch_49
    const v22, 0x7f070027

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_d

    .line 1066
    :pswitch_4a
    const v22, 0x7f070026

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_d

    .line 1069
    :pswitch_4b
    const v22, 0x7f070022

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_d

    .line 1072
    :pswitch_4c
    const v22, 0x7f070028

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_d

    .line 1075
    :pswitch_4d
    const v22, 0x7f07002a

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_d

    .line 1078
    :pswitch_4e
    const v22, 0x7f070023

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_d

    .line 1081
    :pswitch_4f
    const v22, 0x7f070025

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_d

    .line 1084
    :pswitch_50
    const v22, 0x7f070029

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_d

    .line 1087
    :pswitch_51
    const v22, 0x7f070024

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_d

    .line 1101
    .end local v13    # "Valuekey_app_switch_action":Ljava/lang/String;
    .restart local v14    # "Valuekey_app_switch_long_press_action":Ljava/lang/String;
    :pswitch_52
    const v22, 0x7f070027

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_e

    .line 1104
    :pswitch_53
    const v22, 0x7f070026

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_e

    .line 1107
    :pswitch_54
    const v22, 0x7f070022

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_e

    .line 1110
    :pswitch_55
    const v22, 0x7f070028

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_e

    .line 1113
    :pswitch_56
    const v22, 0x7f07002a

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_e

    .line 1116
    :pswitch_57
    const v22, 0x7f070023

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_e

    .line 1119
    :pswitch_58
    const v22, 0x7f070025

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_e

    .line 1122
    :pswitch_59
    const v22, 0x7f070029

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_e

    .line 1125
    :pswitch_5a
    const v22, 0x7f070024

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_e

    .line 1139
    .end local v14    # "Valuekey_app_switch_long_press_action":Ljava/lang/String;
    .restart local v17    # "Valuekey_menu_action":Ljava/lang/String;
    :pswitch_5b
    const v22, 0x7f070027

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_f

    .line 1142
    :pswitch_5c
    const v22, 0x7f070026

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_f

    .line 1145
    :pswitch_5d
    const v22, 0x7f070022

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_f

    .line 1148
    :pswitch_5e
    const v22, 0x7f070028

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_f

    .line 1151
    :pswitch_5f
    const v22, 0x7f07002a

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_f

    .line 1154
    :pswitch_60
    const v22, 0x7f070023

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_f

    .line 1157
    :pswitch_61
    const v22, 0x7f070025

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_f

    .line 1160
    :pswitch_62
    const v22, 0x7f070029

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_f

    .line 1163
    :pswitch_63
    const v22, 0x7f070024

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_f

    .line 1177
    .end local v17    # "Valuekey_menu_action":Ljava/lang/String;
    .restart local v18    # "Valuekey_menu_long_press_action":Ljava/lang/String;
    :pswitch_64
    const v22, 0x7f070027

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_10

    .line 1180
    :pswitch_65
    const v22, 0x7f070026

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_10

    .line 1183
    :pswitch_66
    const v22, 0x7f070022

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_10

    .line 1186
    :pswitch_67
    const v22, 0x7f070028

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_10

    .line 1189
    :pswitch_68
    const v22, 0x7f07002a

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_10

    .line 1192
    :pswitch_69
    const v22, 0x7f070023

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_10

    .line 1195
    :pswitch_6a
    const v22, 0x7f070025

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_10

    .line 1198
    :pswitch_6b
    const v22, 0x7f070029

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_10

    .line 1201
    :pswitch_6c
    const v22, 0x7f070024

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_10

    .line 1214
    .end local v18    # "Valuekey_menu_long_press_action":Ljava/lang/String;
    .restart local v11    # "ValueTouchboost_freq":Ljava/lang/String;
    :pswitch_6d
    const v22, 0x7f070070

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 1215
    const-string v22, "echo \'1497600\' > /sys/class/misc/touchboost_switch/touchboost_freq"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_11

    .line 1218
    :pswitch_6e
    const v22, 0x7f070073

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 1219
    const-string v22, "echo \'652800\' > /sys/class/misc/touchboost_switch/touchboost_freq"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_11

    .line 1222
    :pswitch_6f
    const v22, 0x7f070074

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 1223
    const-string v22, "echo \'960000\' > /sys/class/misc/touchboost_switch/touchboost_freq"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_11

    .line 1226
    :pswitch_70
    const v22, 0x7f07006f

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 1227
    const-string v22, "echo \'1190400\' > /sys/class/misc/touchboost_switch/touchboost_freq"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_11

    .line 1230
    :pswitch_71
    const v22, 0x7f070071

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 1231
    const-string v22, "echo \'1728000\' > /sys/class/misc/touchboost_switch/touchboost_freq"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_11

    .line 1234
    :pswitch_72
    const v22, 0x7f070072

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 1235
    const-string v22, "echo \'2265600\' > /sys/class/misc/touchboost_switch/touchboost_freq"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_11

    .line 635
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 672
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 695
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 729
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 747
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch

    .line 785
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
    .end packed-switch

    .line 815
    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
    .end packed-switch

    .line 837
    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
    .end packed-switch

    .line 862
    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
    .end packed-switch

    .line 892
    :pswitch_data_9
    .packed-switch 0x0
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
    .end packed-switch

    .line 938
    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
    .end packed-switch

    .line 985
    :pswitch_data_b
    .packed-switch 0x0
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
    .end packed-switch

    .line 1023
    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_47
        :pswitch_48
    .end packed-switch

    .line 1061
    :pswitch_data_d
    .packed-switch 0x0
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
        :pswitch_4c
        :pswitch_4d
        :pswitch_4e
        :pswitch_4f
        :pswitch_50
        :pswitch_51
    .end packed-switch

    .line 1099
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_52
        :pswitch_53
        :pswitch_54
        :pswitch_55
        :pswitch_56
        :pswitch_57
        :pswitch_58
        :pswitch_59
        :pswitch_5a
    .end packed-switch

    .line 1137
    :pswitch_data_f
    .packed-switch 0x0
        :pswitch_5b
        :pswitch_5c
        :pswitch_5d
        :pswitch_5e
        :pswitch_5f
        :pswitch_60
        :pswitch_61
        :pswitch_62
        :pswitch_63
    .end packed-switch

    .line 1175
    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_64
        :pswitch_65
        :pswitch_66
        :pswitch_67
        :pswitch_68
        :pswitch_69
        :pswitch_6a
        :pswitch_6b
        :pswitch_6c
    .end packed-switch

    .line 1212
    :pswitch_data_11
    .packed-switch 0x0
        :pswitch_6d
        :pswitch_6e
        :pswitch_6f
        :pswitch_70
        :pswitch_71
        :pswitch_72
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferencescreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 237
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mCharge:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mCharge:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 239
    invoke-virtual {p0}, Lcom/luo2888/flymesettings/DeviceSettings;->DialogAttention()V

    .line 240
    const-string v0, "echo \'2200 mA\' > /sys/kernel/charge_levels/charge_level_ac"

    invoke-static {v0}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    .line 241
    const-string v0, "echo \'950 mA\' > /sys/kernel/charge_levels/charge_level_usb"

    invoke-static {v0}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    .line 247
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mGLoveMode:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mGLoveMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 249
    const-string v0, "echo \'glove_mode,1\' > /sys/class/sec/tsp/cmd"

    invoke-static {v0}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    .line 254
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKcalInvert:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_2

    .line 255
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKcalInvert:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 256
    const-string v0, "echo \'1\' >  /sys/devices/platform/kcal_ctrl.0/kcal_invert"

    invoke-static {v0}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    .line 261
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mBattery_light_enabled:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_3

    .line 262
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mBattery_light_enabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 263
    invoke-virtual {p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "battery_light_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 268
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mBattery_light_pulse:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_4

    .line 269
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mBattery_light_pulse:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 270
    invoke-virtual {p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "battery_light_pulse"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 275
    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mNotification_light_pulse:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_5

    .line 276
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mNotification_light_pulse:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 277
    invoke-virtual {p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_light_pulse"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 282
    :cond_5
    :goto_5
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mNotification_light_screen_on_enable:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_6

    .line 283
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mNotification_light_screen_on_enable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 284
    invoke-virtual {p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_light_screen_on_enable"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 289
    :cond_6
    :goto_6
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mVolume_wake_screen:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_7

    .line 290
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mVolume_wake_screen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 291
    invoke-virtual {p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "volume_wake_screen"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 296
    :cond_7
    :goto_7
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->flashota:Landroid/preference/PreferenceScreen;

    if-ne p2, v0, :cond_8

    .line 297
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f07007c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07007b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07007d

    new-instance v2, Lcom/luo2888/flymesettings/DeviceSettings$1;

    invoke-direct {v2, p0}, Lcom/luo2888/flymesettings/DeviceSettings$1;-><init>(Lcom/luo2888/flymesettings/DeviceSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 318
    :cond_8
    return v3

    .line 243
    :cond_9
    const-string v0, "echo \'0 mA\' > /sys/kernel/charge_levels/charge_level_ac"

    invoke-static {v0}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    .line 244
    const-string v0, "echo \'0 mA\' > /sys/kernel/charge_levels/charge_level_usb"

    invoke-static {v0}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 251
    :cond_a
    const-string v0, "echo \'glove_mode,0\' > /sys/class/sec/tsp/cmd"

    invoke-static {v0}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_1

    .line 258
    :cond_b
    const-string v0, "echo \'0\' > /sys/devices/platform/kcal_ctrl.0/kcal_invert"

    invoke-static {v0}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_2

    .line 265
    :cond_c
    invoke-virtual {p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "battery_light_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    .line 272
    :cond_d
    invoke-virtual {p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "battery_light_pulse"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_4

    .line 279
    :cond_e
    invoke-virtual {p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_light_pulse"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_5

    .line 286
    :cond_f
    invoke-virtual {p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_light_screen_on_enable"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_6

    .line 293
    :cond_10
    invoke-virtual {p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "volume_wake_screen"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_7
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 215
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    .line 216
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mCameraSwitch:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->setListPreferenceSummary(Landroid/preference/ListPreference;)V

    .line 217
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mRunningMode:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->setListPreferenceSummary(Landroid/preference/ListPreference;)V

    .line 218
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mLedIntensity:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->setListPreferenceSummary(Landroid/preference/ListPreference;)V

    .line 219
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mLedFade:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->setListPreferenceSummary(Landroid/preference/ListPreference;)V

    .line 220
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mWakeUp:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->setListPreferenceSummary(Landroid/preference/ListPreference;)V

    .line 221
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKcal:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->setListPreferenceSummary(Landroid/preference/ListPreference;)V

    .line 222
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKcalSat:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->setListPreferenceSummary(Landroid/preference/ListPreference;)V

    .line 223
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKeylight:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->setListPreferenceSummary(Landroid/preference/ListPreference;)V

    .line 224
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKeylightTimeout:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->setListPreferenceSummary(Landroid/preference/ListPreference;)V

    .line 225
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_home_long_press_action:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->setListPreferenceSummary(Landroid/preference/ListPreference;)V

    .line 226
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_home_double_tap_action:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->setListPreferenceSummary(Landroid/preference/ListPreference;)V

    .line 227
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_app_switch_action:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->setListPreferenceSummary(Landroid/preference/ListPreference;)V

    .line 228
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_app_switch_long_press_action:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->setListPreferenceSummary(Landroid/preference/ListPreference;)V

    .line 229
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_menu_action:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->setListPreferenceSummary(Landroid/preference/ListPreference;)V

    .line 230
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_menu_long_press_action:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->setListPreferenceSummary(Landroid/preference/ListPreference;)V

    .line 231
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mBattery_light_medium_color:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->setListPreferenceSummary(Landroid/preference/ListPreference;)V

    .line 232
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mNotification_light_pulse_default_color:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->setListPreferenceSummary(Landroid/preference/ListPreference;)V

    .line 233
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mTouchboost_freq:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->setListPreferenceSummary(Landroid/preference/ListPreference;)V

    .line 234
    return-void
.end method
