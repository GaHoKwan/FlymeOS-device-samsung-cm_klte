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

    .line 1321
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
    .line 206
    invoke-static {}, Lcom/igexin/sdk/PushManager;->getInstance()Lcom/igexin/sdk/PushManager;

    move-result-object v2

    iput-object v2, p0, Lcom/luo2888/flymesettings/DeviceSettings;->pm:Lcom/igexin/sdk/PushManager;

    .line 207
    iget-object v2, p0, Lcom/luo2888/flymesettings/DeviceSettings;->pm:Lcom/igexin/sdk/PushManager;

    invoke-virtual {p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/igexin/sdk/PushManager;->initialize(Landroid/content/Context;)V

    .line 208
    new-instance v0, Lcom/igexin/sdk/Tag;

    invoke-direct {v0}, Lcom/igexin/sdk/Tag;-><init>()V

    .line 209
    .local v0, "tag":Lcom/igexin/sdk/Tag;
    const-string v2, "others"

    invoke-virtual {v0, v2}, Lcom/igexin/sdk/Tag;->setName(Ljava/lang/String;)V

    .line 210
    const/4 v2, 0x1

    new-array v1, v2, [Lcom/igexin/sdk/Tag;

    .line 211
    .local v1, "tags":[Lcom/igexin/sdk/Tag;
    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 212
    iget-object v2, p0, Lcom/luo2888/flymesettings/DeviceSettings;->pm:Lcom/igexin/sdk/PushManager;

    invoke-virtual {v2, p0, v1}, Lcom/igexin/sdk/PushManager;->setTag(Landroid/content/Context;[Lcom/igexin/sdk/Tag;)I

    .line 213
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

    .line 323
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mCameraSwitch:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_0

    .line 324
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_12

    .line 325
    const v0, 0x7f070010

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 333
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mRunningMode:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_1

    .line 334
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_14

    .line 335
    const v0, 0x7f07006a

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 343
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mLedIntensity:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_2

    .line 344
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_16

    .line 345
    const v0, 0x7f07004d

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 359
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mLedFade:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_3

    .line 360
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1b

    .line 361
    const v0, 0x7f07004a

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 367
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mWakeUp:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_4

    .line 368
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1c

    .line 369
    const v0, 0x7f070084

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 386
    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKcal:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_5

    .line 387
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_22

    .line 388
    const v0, 0x7f070038

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 400
    :cond_5
    :goto_5
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKeylight:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_6

    .line 401
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_26

    .line 402
    const v0, 0x7f07003f

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 403
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKeylightTimeout:Landroid/preference/ListPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 413
    :cond_6
    :goto_6
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKeylightTimeout:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_7

    .line 414
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_28

    .line 415
    const v0, 0x7f070042

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 427
    :cond_7
    :goto_7
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKcalSat:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_8

    .line 428
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2c

    .line 429
    const v0, 0x7f070033

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 437
    :cond_8
    :goto_8
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mBattery_light_medium_color:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_9

    .line 438
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2e

    .line 439
    const v0, 0x7f070059

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 459
    :cond_9
    :goto_9
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mNotification_light_pulse_default_color:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_a

    .line 460
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_36

    .line 461
    const v0, 0x7f070059

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 481
    :cond_a
    :goto_a
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_home_long_press_action:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_b

    .line 482
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3e

    .line 483
    const v0, 0x7f070027

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 503
    :cond_b
    :goto_b
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_home_double_tap_action:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_c

    .line 504
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_46

    .line 505
    const v0, 0x7f070027

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 525
    :cond_c
    :goto_c
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_app_switch_action:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_d

    .line 526
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4e

    .line 527
    const v0, 0x7f070027

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 547
    :cond_d
    :goto_d
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_app_switch_long_press_action:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_e

    .line 548
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_56

    .line 549
    const v0, 0x7f070027

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 569
    :cond_e
    :goto_e
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_menu_action:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_f

    .line 570
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5e

    .line 571
    const v0, 0x7f070027

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 591
    :cond_f
    :goto_f
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_menu_long_press_action:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_10

    .line 592
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_66

    .line 593
    const v0, 0x7f070027

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 613
    :cond_10
    :goto_10
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mTouchboost_freq:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_11

    .line 614
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6e

    .line 615
    const v0, 0x7f070072

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 629
    :cond_11
    :goto_11
    return-void

    .line 326
    :cond_12
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v2, v0, :cond_13

    .line 327
    const v0, 0x7f070011

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_0

    .line 328
    :cond_13
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v3, v0, :cond_0

    .line 329
    const v0, 0x7f07000f

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_0

    .line 336
    :cond_14
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v2, v0, :cond_15

    .line 337
    const v0, 0x7f07006c

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_1

    .line 338
    :cond_15
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v3, v0, :cond_1

    .line 339
    const v0, 0x7f07006b

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_1

    .line 346
    :cond_16
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v2, v0, :cond_17

    .line 347
    const v0, 0x7f07004e

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_2

    .line 348
    :cond_17
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v3, v0, :cond_18

    .line 349
    const v0, 0x7f07004f

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_2

    .line 350
    :cond_18
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v4, v0, :cond_19

    .line 351
    const v0, 0x7f070050

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_2

    .line 352
    :cond_19
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v5, v0, :cond_1a

    .line 353
    const v0, 0x7f070051

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_2

    .line 354
    :cond_1a
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v6, v0, :cond_2

    .line 355
    const v0, 0x7f070052

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_2

    .line 362
    :cond_1b
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v2, v0, :cond_3

    .line 363
    const v0, 0x7f07004b

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_3

    .line 370
    :cond_1c
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v2, v0, :cond_1d

    .line 371
    const v0, 0x7f070085

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_4

    .line 372
    :cond_1d
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v3, v0, :cond_1e

    .line 373
    const v0, 0x7f070086

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_4

    .line 374
    :cond_1e
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v4, v0, :cond_1f

    .line 375
    const v0, 0x7f070087

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_4

    .line 376
    :cond_1f
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v5, v0, :cond_20

    .line 377
    const v0, 0x7f070088

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_4

    .line 378
    :cond_20
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v6, v0, :cond_21

    .line 379
    const v0, 0x7f070089

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_4

    .line 380
    :cond_21
    const/4 v0, 0x6

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 381
    const v0, 0x7f07008a

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_4

    .line 389
    :cond_22
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v2, v0, :cond_23

    .line 390
    const v0, 0x7f070039

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_5

    .line 391
    :cond_23
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v3, v0, :cond_24

    .line 392
    const v0, 0x7f07003a

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_5

    .line 393
    :cond_24
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v4, v0, :cond_25

    .line 394
    const v0, 0x7f07003b

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_5

    .line 395
    :cond_25
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v5, v0, :cond_5

    .line 396
    const v0, 0x7f07003c

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_5

    .line 404
    :cond_26
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v2, v0, :cond_27

    .line 405
    const v0, 0x7f070040

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 406
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKeylightTimeout:Landroid/preference/ListPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto/16 :goto_6

    .line 407
    :cond_27
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v3, v0, :cond_6

    .line 408
    const v0, 0x7f070041

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 409
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKeylightTimeout:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto/16 :goto_6

    .line 416
    :cond_28
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v2, v0, :cond_29

    .line 417
    const v0, 0x7f070043

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_7

    .line 418
    :cond_29
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v3, v0, :cond_2a

    .line 419
    const v0, 0x7f070044

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_7

    .line 420
    :cond_2a
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v4, v0, :cond_2b

    .line 421
    const v0, 0x7f070045

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_7

    .line 422
    :cond_2b
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v5, v0, :cond_7

    .line 423
    const v0, 0x7f070046

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_7

    .line 430
    :cond_2c
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v2, v0, :cond_2d

    .line 431
    const v0, 0x7f070034

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_8

    .line 432
    :cond_2d
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v3, v0, :cond_8

    .line 433
    const v0, 0x7f070035

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_8

    .line 440
    :cond_2e
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v2, v0, :cond_2f

    .line 441
    const v0, 0x7f070053

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_9

    .line 442
    :cond_2f
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v3, v0, :cond_30

    .line 443
    const v0, 0x7f070054

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_9

    .line 444
    :cond_30
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v4, v0, :cond_31

    .line 445
    const v0, 0x7f070055

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_9

    .line 446
    :cond_31
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v5, v0, :cond_32

    .line 447
    const v0, 0x7f07005a

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_9

    .line 448
    :cond_32
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v6, v0, :cond_33

    .line 449
    const v0, 0x7f07005b

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_9

    .line 450
    :cond_33
    const/4 v0, 0x6

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_34

    .line 451
    const v0, 0x7f070056

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_9

    .line 452
    :cond_34
    const/4 v0, 0x7

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_35

    .line 453
    const v0, 0x7f070058

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_9

    .line 454
    :cond_35
    const/16 v0, 0x8

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_9

    .line 455
    const v0, 0x7f070057

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_9

    .line 462
    :cond_36
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v2, v0, :cond_37

    .line 463
    const v0, 0x7f070053

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_a

    .line 464
    :cond_37
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v3, v0, :cond_38

    .line 465
    const v0, 0x7f070054

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_a

    .line 466
    :cond_38
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v4, v0, :cond_39

    .line 467
    const v0, 0x7f070055

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_a

    .line 468
    :cond_39
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v5, v0, :cond_3a

    .line 469
    const v0, 0x7f07005a

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_a

    .line 470
    :cond_3a
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v6, v0, :cond_3b

    .line 471
    const v0, 0x7f07005b

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_a

    .line 472
    :cond_3b
    const/4 v0, 0x6

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_3c

    .line 473
    const v0, 0x7f070056

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_a

    .line 474
    :cond_3c
    const/4 v0, 0x7

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_3d

    .line 475
    const v0, 0x7f070058

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_a

    .line 476
    :cond_3d
    const/16 v0, 0x8

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_a

    .line 477
    const v0, 0x7f070057

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_a

    .line 484
    :cond_3e
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v2, v0, :cond_3f

    .line 485
    const v0, 0x7f070026

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_b

    .line 486
    :cond_3f
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v3, v0, :cond_40

    .line 487
    const v0, 0x7f070022

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_b

    .line 488
    :cond_40
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v4, v0, :cond_41

    .line 489
    const v0, 0x7f070028

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_b

    .line 490
    :cond_41
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v5, v0, :cond_42

    .line 491
    const v0, 0x7f07002a

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_b

    .line 492
    :cond_42
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v6, v0, :cond_43

    .line 493
    const v0, 0x7f070023

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_b

    .line 494
    :cond_43
    const/4 v0, 0x6

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_44

    .line 495
    const v0, 0x7f070025

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_b

    .line 496
    :cond_44
    const/4 v0, 0x7

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_45

    .line 497
    const v0, 0x7f070029

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_b

    .line 498
    :cond_45
    const/16 v0, 0x8

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_b

    .line 499
    const v0, 0x7f070024

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_b

    .line 506
    :cond_46
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v2, v0, :cond_47

    .line 507
    const v0, 0x7f070026

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_c

    .line 508
    :cond_47
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v3, v0, :cond_48

    .line 509
    const v0, 0x7f070022

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_c

    .line 510
    :cond_48
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v4, v0, :cond_49

    .line 511
    const v0, 0x7f070028

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_c

    .line 512
    :cond_49
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v5, v0, :cond_4a

    .line 513
    const v0, 0x7f07002a

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_c

    .line 514
    :cond_4a
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v6, v0, :cond_4b

    .line 515
    const v0, 0x7f070023

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_c

    .line 516
    :cond_4b
    const/4 v0, 0x6

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_4c

    .line 517
    const v0, 0x7f070025

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_c

    .line 518
    :cond_4c
    const/4 v0, 0x7

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_4d

    .line 519
    const v0, 0x7f070029

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_c

    .line 520
    :cond_4d
    const/16 v0, 0x8

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_c

    .line 521
    const v0, 0x7f070024

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_c

    .line 528
    :cond_4e
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v2, v0, :cond_4f

    .line 529
    const v0, 0x7f070026

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_d

    .line 530
    :cond_4f
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v3, v0, :cond_50

    .line 531
    const v0, 0x7f070022

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_d

    .line 532
    :cond_50
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v4, v0, :cond_51

    .line 533
    const v0, 0x7f070028

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_d

    .line 534
    :cond_51
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v5, v0, :cond_52

    .line 535
    const v0, 0x7f07002a

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_d

    .line 536
    :cond_52
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v6, v0, :cond_53

    .line 537
    const v0, 0x7f070023

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_d

    .line 538
    :cond_53
    const/4 v0, 0x6

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_54

    .line 539
    const v0, 0x7f070025

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_d

    .line 540
    :cond_54
    const/4 v0, 0x7

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_55

    .line 541
    const v0, 0x7f070029

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_d

    .line 542
    :cond_55
    const/16 v0, 0x8

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_d

    .line 543
    const v0, 0x7f070024

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_d

    .line 550
    :cond_56
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v2, v0, :cond_57

    .line 551
    const v0, 0x7f070026

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_e

    .line 552
    :cond_57
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v3, v0, :cond_58

    .line 553
    const v0, 0x7f070022

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_e

    .line 554
    :cond_58
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v4, v0, :cond_59

    .line 555
    const v0, 0x7f070028

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_e

    .line 556
    :cond_59
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v5, v0, :cond_5a

    .line 557
    const v0, 0x7f07002a

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_e

    .line 558
    :cond_5a
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v6, v0, :cond_5b

    .line 559
    const v0, 0x7f070023

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_e

    .line 560
    :cond_5b
    const/4 v0, 0x6

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_5c

    .line 561
    const v0, 0x7f070025

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_e

    .line 562
    :cond_5c
    const/4 v0, 0x7

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_5d

    .line 563
    const v0, 0x7f070029

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_e

    .line 564
    :cond_5d
    const/16 v0, 0x8

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_e

    .line 565
    const v0, 0x7f070024

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_e

    .line 572
    :cond_5e
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v2, v0, :cond_5f

    .line 573
    const v0, 0x7f070026

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_f

    .line 574
    :cond_5f
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v3, v0, :cond_60

    .line 575
    const v0, 0x7f070022

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_f

    .line 576
    :cond_60
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v4, v0, :cond_61

    .line 577
    const v0, 0x7f070028

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_f

    .line 578
    :cond_61
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v5, v0, :cond_62

    .line 579
    const v0, 0x7f07002a

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_f

    .line 580
    :cond_62
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v6, v0, :cond_63

    .line 581
    const v0, 0x7f070023

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_f

    .line 582
    :cond_63
    const/4 v0, 0x6

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_64

    .line 583
    const v0, 0x7f070025

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_f

    .line 584
    :cond_64
    const/4 v0, 0x7

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_65

    .line 585
    const v0, 0x7f070029

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_f

    .line 586
    :cond_65
    const/16 v0, 0x8

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_f

    .line 587
    const v0, 0x7f070024

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_f

    .line 594
    :cond_66
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v2, v0, :cond_67

    .line 595
    const v0, 0x7f070026

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_10

    .line 596
    :cond_67
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v3, v0, :cond_68

    .line 597
    const v0, 0x7f070022

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_10

    .line 598
    :cond_68
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v4, v0, :cond_69

    .line 599
    const v0, 0x7f070028

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_10

    .line 600
    :cond_69
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v5, v0, :cond_6a

    .line 601
    const v0, 0x7f07002a

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_10

    .line 602
    :cond_6a
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v6, v0, :cond_6b

    .line 603
    const v0, 0x7f070023

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_10

    .line 604
    :cond_6b
    const/4 v0, 0x6

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_6c

    .line 605
    const v0, 0x7f070025

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_10

    .line 606
    :cond_6c
    const/4 v0, 0x7

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_6d

    .line 607
    const v0, 0x7f070029

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_10

    .line 608
    :cond_6d
    const/16 v0, 0x8

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_10

    .line 609
    const v0, 0x7f070024

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_10

    .line 616
    :cond_6e
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v2, v0, :cond_6f

    .line 617
    const v0, 0x7f070075

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_11

    .line 618
    :cond_6f
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v3, v0, :cond_70

    .line 619
    const v0, 0x7f070076

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_11

    .line 620
    :cond_70
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v4, v0, :cond_71

    .line 621
    const v0, 0x7f070071

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_11

    .line 622
    :cond_71
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v5, v0, :cond_72

    .line 623
    const v0, 0x7f070073

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_11

    .line 624
    :cond_72
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v6, v0, :cond_11

    .line 625
    const v0, 0x7f070074

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_11
.end method


# virtual methods
.method public DialogAttention()V
    .locals 3

    .prologue
    .line 1365
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07008b

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

    .line 1376
    return-void
.end method

.method public DialogAttentionPerformance()V
    .locals 3

    .prologue
    .line 1351
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07008b

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

    .line 1362
    return-void
.end method

.method public DialogAttentionRoot()V
    .locals 3

    .prologue
    .line 1337
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07008b

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

    .line 1348
    return-void
.end method

.method public DialogReboot()V
    .locals 3

    .prologue
    .line 1379
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

    .line 1402
    return-void
.end method

.method public Root_ProgressDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1299
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mDialog:Landroid/app/ProgressDialog;

    .line 1300
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1301
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 1302
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f070018

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 1303
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f070019

    invoke-virtual {p0, v1}, Lcom/luo2888/flymesettings/DeviceSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1304
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1305
    new-instance v0, Lcom/luo2888/flymesettings/DeviceSettings$2;

    invoke-direct {v0, p0}, Lcom/luo2888/flymesettings/DeviceSettings$2;-><init>(Lcom/luo2888/flymesettings/DeviceSettings;)V

    invoke-virtual {v0}, Lcom/luo2888/flymesettings/DeviceSettings$2;->start()V

    .line 1319
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1247
    packed-switch p1, :pswitch_data_0

    .line 1295
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1296
    return-void

    .line 1249
    :pswitch_0
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 1250
    const/4 v1, 0x0

    .line 1252
    .local v1, "localOutputStream":Ljava/io/OutputStream;
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1253
    new-instance v2, Ljava/io/File;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/luo2888/flymesettings/DeviceSettings;->file:Ljava/io/File;

    .line 1254
    iget-object v2, p0, Lcom/luo2888/flymesettings/DeviceSettings;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".zip"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1257
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "su"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 1260
    const-string v2, "mkdir -p /cache/recovery/\n"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 1261
    const-string v2, "echo \'boot-recovery\' >/cache/recovery/command\n"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 1264
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

    .line 1267
    const-string v2, "reboot recovery\n"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 1270
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1274
    if-eqz v1, :cond_1

    .line 1276
    :try_start_1
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1280
    :cond_1
    :goto_1
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/luo2888/flymesettings/DeviceSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    const-string v3, "recovery"

    invoke-virtual {v2, v3}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1277
    :catch_0
    move-exception v0

    .line 1278
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1271
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 1272
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1274
    if-eqz v1, :cond_2

    .line 1276
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1280
    :cond_2
    :goto_2
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/luo2888/flymesettings/DeviceSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    const-string v3, "recovery"

    invoke-virtual {v2, v3}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1277
    :catch_2
    move-exception v0

    .line 1278
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 1274
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    move-object v3, v2

    if-eqz v1, :cond_3

    .line 1276
    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1280
    :cond_3
    :goto_3
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/luo2888/flymesettings/DeviceSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    const-string v4, "recovery"

    invoke-virtual {v2, v4}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    throw v3

    .line 1277
    :catch_3
    move-exception v0

    .line 1278
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 1286
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4
    const v2, 0x7f07007a

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1247
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
    invoke-virtual {p0}, Lcom/luo2888/flymesettings/DeviceSettings;->Root_ProgressDialog()V

    .line 106
    const v0, 0x7f040001

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->addPreferencesFromResource(I)V

    .line 107
    const-string v0, "boeffla_settings_key"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mBFSettings:Landroid/preference/PreferenceScreen;

    .line 108
    const-string v0, "camera_switch_key"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mCameraSwitch:Landroid/preference/ListPreference;

    .line 109
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mCameraSwitch:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 111
    const-string v0, "running_mode"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mRunningMode:Landroid/preference/ListPreference;

    .line 112
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mRunningMode:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 113
    const-string v0, "led_intensity"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mLedIntensity:Landroid/preference/ListPreference;

    .line 114
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mLedIntensity:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 115
    const-string v0, "led_fade"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mLedFade:Landroid/preference/ListPreference;

    .line 116
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mLedFade:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 117
    const-string v0, "wakeup_mode"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mWakeUp:Landroid/preference/ListPreference;

    .line 118
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mWakeUp:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 119
    const-string v0, "kcal"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKcal:Landroid/preference/ListPreference;

    .line 120
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKcal:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 121
    const-string v0, "kcal_sat"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKcalSat:Landroid/preference/ListPreference;

    .line 122
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKcalSat:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 123
    const-string v0, "keylight"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKeylight:Landroid/preference/ListPreference;

    .line 124
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKeylight:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 125
    const-string v0, "keylight_timeout"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKeylightTimeout:Landroid/preference/ListPreference;

    .line 126
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKeylightTimeout:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 127
    const-string v0, "kcal_invert"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKcalInvert:Landroid/preference/CheckBoxPreference;

    .line 128
    const-string v0, "charge"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mCharge:Landroid/preference/CheckBoxPreference;

    .line 129
    const-string v0, "glove_mode"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mGLoveMode:Landroid/preference/CheckBoxPreference;

    .line 130
    const-string v0, "cabc"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/luo2888/flymesettings/CABC;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mCABC:Lcom/luo2888/flymesettings/CABC;

    .line 131
    const-string v0, "mdnie_scenario"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/luo2888/flymesettings/mDNIeScenario;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mmDNIeScenario:Lcom/luo2888/flymesettings/mDNIeScenario;

    .line 132
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mmDNIeScenario:Lcom/luo2888/flymesettings/mDNIeScenario;

    invoke-static {}, Lcom/luo2888/flymesettings/mDNIeScenario;->isSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/luo2888/flymesettings/mDNIeScenario;->setEnabled(Z)V

    .line 133
    const-string v0, "mdnie_mode"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/luo2888/flymesettings/mDNIeMode;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mmDNIeMode:Lcom/luo2888/flymesettings/mDNIeMode;

    .line 134
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mmDNIeMode:Lcom/luo2888/flymesettings/mDNIeMode;

    invoke-static {}, Lcom/luo2888/flymesettings/mDNIeMode;->isSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/luo2888/flymesettings/mDNIeMode;->setEnabled(Z)V

    .line 135
    const-string v0, "flashota"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->flashota:Landroid/preference/PreferenceScreen;

    .line 138
    const-string v0, "battery_light_medium_color"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mBattery_light_medium_color:Landroid/preference/ListPreference;

    .line 139
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mBattery_light_medium_color:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 140
    const-string v0, "notification_light_pulse_default_color"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mNotification_light_pulse_default_color:Landroid/preference/ListPreference;

    .line 141
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mNotification_light_pulse_default_color:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 142
    const-string v0, "battery_light_enabled"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mBattery_light_enabled:Landroid/preference/CheckBoxPreference;

    .line 143
    const-string v0, "battery_light_pulse"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mBattery_light_pulse:Landroid/preference/CheckBoxPreference;

    .line 144
    const-string v0, "notification_light_pulse"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mNotification_light_pulse:Landroid/preference/CheckBoxPreference;

    .line 145
    const-string v0, "notification_light_screen_on_enable"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mNotification_light_screen_on_enable:Landroid/preference/CheckBoxPreference;

    .line 146
    const-string v0, "volume_wake_screen"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mVolume_wake_screen:Landroid/preference/CheckBoxPreference;

    .line 147
    const-string v0, "key_home_double_tap_action"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_home_double_tap_action:Landroid/preference/ListPreference;

    .line 148
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_home_double_tap_action:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 149
    const-string v0, "key_home_long_press_action"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_home_long_press_action:Landroid/preference/ListPreference;

    .line 150
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_home_long_press_action:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 151
    const-string v0, "key_app_switch_action"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_app_switch_action:Landroid/preference/ListPreference;

    .line 152
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_app_switch_action:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 153
    const-string v0, "key_app_switch_long_press_action"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_app_switch_long_press_action:Landroid/preference/ListPreference;

    .line 154
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_app_switch_long_press_action:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 155
    const-string v0, "key_menu_action"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_menu_action:Landroid/preference/ListPreference;

    .line 156
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_menu_action:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 157
    const-string v0, "key_menu_long_press_action"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_menu_long_press_action:Landroid/preference/ListPreference;

    .line 158
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_menu_long_press_action:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 160
    const-string v0, "touchboost_freq"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mTouchboost_freq:Landroid/preference/ListPreference;

    .line 161
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mTouchboost_freq:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 164
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mCameraSwitch:Landroid/preference/ListPreference;

    const v1, 0x7f060001

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 165
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mCameraSwitch:Landroid/preference/ListPreference;

    const v1, 0x7f060015

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 166
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mRunningMode:Landroid/preference/ListPreference;

    const v1, 0x7f060011

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 167
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mRunningMode:Landroid/preference/ListPreference;

    const v1, 0x7f060027

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 168
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mLedIntensity:Landroid/preference/ListPreference;

    const v1, 0x7f06000d

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 169
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mLedIntensity:Landroid/preference/ListPreference;

    const v1, 0x7f060023

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 170
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mLedFade:Landroid/preference/ListPreference;

    const v1, 0x7f06000c

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 171
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mLedFade:Landroid/preference/ListPreference;

    const v1, 0x7f060022

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 172
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mWakeUp:Landroid/preference/ListPreference;

    const v1, 0x7f060013

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 173
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mWakeUp:Landroid/preference/ListPreference;

    const v1, 0x7f060029

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 174
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKcal:Landroid/preference/ListPreference;

    const v1, 0x7f060002

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 175
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKcal:Landroid/preference/ListPreference;

    const v1, 0x7f060018

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 176
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKcalSat:Landroid/preference/ListPreference;

    const v1, 0x7f060003

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 177
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKcalSat:Landroid/preference/ListPreference;

    const v1, 0x7f060019

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 178
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKeylight:Landroid/preference/ListPreference;

    const v1, 0x7f06000a

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 179
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKeylight:Landroid/preference/ListPreference;

    const v1, 0x7f060020

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 180
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKeylightTimeout:Landroid/preference/ListPreference;

    const v1, 0x7f06000b

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 181
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKeylightTimeout:Landroid/preference/ListPreference;

    const v1, 0x7f060021

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 183
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mTouchboost_freq:Landroid/preference/ListPreference;

    const v1, 0x7f060012

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 184
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mTouchboost_freq:Landroid/preference/ListPreference;

    const v1, 0x7f060028

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 186
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mBattery_light_medium_color:Landroid/preference/ListPreference;

    const/high16 v1, 0x7f060000

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 187
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mBattery_light_medium_color:Landroid/preference/ListPreference;

    const v1, 0x7f060014

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 188
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mNotification_light_pulse_default_color:Landroid/preference/ListPreference;

    const v1, 0x7f060010

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 189
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mNotification_light_pulse_default_color:Landroid/preference/ListPreference;

    const v1, 0x7f060026

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 191
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_home_double_tap_action:Landroid/preference/ListPreference;

    const v1, 0x7f060006

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 192
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_home_double_tap_action:Landroid/preference/ListPreference;

    const v1, 0x7f06001c

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 193
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_home_long_press_action:Landroid/preference/ListPreference;

    const v1, 0x7f060007

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 194
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_home_long_press_action:Landroid/preference/ListPreference;

    const v1, 0x7f06001d

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 195
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_app_switch_action:Landroid/preference/ListPreference;

    const v1, 0x7f060004

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 196
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_app_switch_action:Landroid/preference/ListPreference;

    const v1, 0x7f06001a

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 197
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_app_switch_long_press_action:Landroid/preference/ListPreference;

    const v1, 0x7f060005

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 198
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_app_switch_long_press_action:Landroid/preference/ListPreference;

    const v1, 0x7f06001b

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 199
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_menu_action:Landroid/preference/ListPreference;

    const v1, 0x7f060008

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 200
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_menu_action:Landroid/preference/ListPreference;

    const v1, 0x7f06001e

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 201
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_menu_long_press_action:Landroid/preference/ListPreference;

    const v1, 0x7f060009

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 202
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_menu_long_press_action:Landroid/preference/ListPreference;

    const v1, 0x7f06001f

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 203
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 25
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mCameraSwitch:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_0

    move-object/from16 v3, p2

    .line 633
    check-cast v3, Ljava/lang/String;

    .line 634
    .local v3, "ValueCameraSwitch":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mCameraSwitch:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 635
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 636
    .local v21, "mode":I
    packed-switch v21, :pswitch_data_0

    .line 669
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

    .line 670
    check-cast v10, Ljava/lang/String;

    .line 671
    .local v10, "ValueRunningModeSwitch":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mRunningMode:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 672
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 673
    .restart local v21    # "mode":I
    packed-switch v21, :pswitch_data_1

    .line 692
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

    .line 693
    check-cast v9, Ljava/lang/String;

    .line 694
    .local v9, "ValueLedIntensitySwitch":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mLedIntensity:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 695
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 696
    .restart local v21    # "mode":I
    packed-switch v21, :pswitch_data_2

    .line 726
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

    .line 727
    check-cast v8, Ljava/lang/String;

    .line 728
    .local v8, "ValueLedFadeSwitch":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mLedFade:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 729
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 730
    .restart local v21    # "mode":I
    packed-switch v21, :pswitch_data_3

    .line 744
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

    .line 745
    check-cast v12, Ljava/lang/String;

    .line 746
    .local v12, "ValueWakeUpSwitch":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mWakeUp:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 747
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 748
    .restart local v21    # "mode":I
    packed-switch v21, :pswitch_data_4

    .line 782
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

    .line 783
    check-cast v5, Ljava/lang/String;

    .line 784
    .local v5, "ValueKcalSwitch":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mKcal:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 785
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 786
    .restart local v21    # "mode":I
    packed-switch v21, :pswitch_data_5

    .line 812
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

    .line 813
    check-cast v4, Ljava/lang/String;

    .line 814
    .local v4, "ValueKcalSatSwitch":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mKcalSat:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 815
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 816
    .restart local v21    # "mode":I
    packed-switch v21, :pswitch_data_6

    .line 834
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

    .line 835
    check-cast v6, Ljava/lang/String;

    .line 836
    .local v6, "ValueKeylightSwitch":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mKeylight:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 837
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 838
    .restart local v21    # "mode":I
    packed-switch v21, :pswitch_data_7

    .line 859
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

    .line 860
    check-cast v7, Ljava/lang/String;

    .line 861
    .local v7, "ValueKeylightTimeoutSwitch":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mKeylightTimeout:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 862
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 863
    .restart local v21    # "mode":I
    packed-switch v21, :pswitch_data_8

    .line 889
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

    .line 890
    check-cast v19, Ljava/lang/String;

    .line 891
    .local v19, "ValuemBattery_light_medium_color":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mBattery_light_medium_color:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 892
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 893
    .restart local v21    # "mode":I
    packed-switch v21, :pswitch_data_9

    .line 935
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

    .line 936
    check-cast v20, Ljava/lang/String;

    .line 937
    .local v20, "ValuemNotification_light_pulse_default_color":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mNotification_light_pulse_default_color:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 938
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 939
    .restart local v21    # "mode":I
    packed-switch v21, :pswitch_data_a

    .line 981
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

    .line 982
    check-cast v15, Ljava/lang/String;

    .line 983
    .local v15, "Valuekey_home_double_tap_action":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_home_double_tap_action:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 984
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 985
    .restart local v21    # "mode":I
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "key_home_double_tap_action"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 986
    packed-switch v21, :pswitch_data_b

    .line 1019
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

    .line 1020
    check-cast v16, Ljava/lang/String;

    .line 1021
    .local v16, "Valuekey_home_long_press_action":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_home_long_press_action:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1022
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 1023
    .restart local v21    # "mode":I
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "key_home_long_press_action"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1024
    packed-switch v21, :pswitch_data_c

    .line 1057
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

    .line 1058
    check-cast v13, Ljava/lang/String;

    .line 1059
    .local v13, "Valuekey_app_switch_action":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_app_switch_action:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1060
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 1061
    .restart local v21    # "mode":I
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "key_app_switch_action"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1062
    packed-switch v21, :pswitch_data_d

    .line 1095
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

    .line 1096
    check-cast v14, Ljava/lang/String;

    .line 1097
    .local v14, "Valuekey_app_switch_long_press_action":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_app_switch_long_press_action:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1098
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 1099
    .restart local v21    # "mode":I
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "key_app_switch_long_press_action"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1100
    packed-switch v21, :pswitch_data_e

    .line 1133
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

    .line 1134
    check-cast v17, Ljava/lang/String;

    .line 1135
    .local v17, "Valuekey_menu_action":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_menu_action:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1136
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 1137
    .restart local v21    # "mode":I
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "key_menu_action"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1138
    packed-switch v21, :pswitch_data_f

    .line 1171
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

    .line 1172
    check-cast v18, Ljava/lang/String;

    .line 1173
    .local v18, "Valuekey_menu_long_press_action":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_menu_long_press_action:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1174
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 1175
    .restart local v21    # "mode":I
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "key_menu_long_press_action"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1176
    packed-switch v21, :pswitch_data_10

    .line 1209
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

    .line 1210
    check-cast v11, Ljava/lang/String;

    .line 1211
    .local v11, "ValueTouchboost_freq":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mTouchboost_freq:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1212
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 1213
    .restart local v21    # "mode":I
    packed-switch v21, :pswitch_data_11

    .line 1242
    .end local v11    # "ValueTouchboost_freq":Ljava/lang/String;
    .end local v21    # "mode":I
    :cond_11
    :goto_11
    const/16 v22, 0x0

    return v22

    .line 638
    .restart local v3    # "ValueCameraSwitch":Ljava/lang/String;
    .restart local v21    # "mode":I
    :pswitch_0
    const v22, 0x7f070010

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 639
    const-string v22, "mount -o remount,rw /system"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    .line 640
    const-string v22, "rm -rf /system/app/Camera"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    .line 641
    const-string v22, "cp -rf /system/app/CameraDir/google_camera /system/app/Camera"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    .line 642
    const-string v22, "chmod -R 0755 /system/app/Camera"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    .line 643
    const-string v22, "chmod 0644 /system/app/Camera/Camera.apk"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    .line 644
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->DialogReboot()V

    goto/16 :goto_0

    .line 647
    :pswitch_1
    const v22, 0x7f070011

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 648
    const-string v22, "mount -o remount,rw /system"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    .line 649
    const-string v22, "rm -rf /system/app/Camera"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    .line 650
    const-string v22, "cp -rf /system/app/CameraDir/meizu_camera /system/app/Camera"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    .line 651
    const-string v22, "chmod -R 0755 /system/app/Camera"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    .line 652
    const-string v22, "chmod 0644 /system/app/Camera/Camera.apk"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    .line 653
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->DialogReboot()V

    goto/16 :goto_0

    .line 656
    :pswitch_2
    const v22, 0x7f07000f

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 657
    const-string v22, "mount -o remount,rw /system"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    .line 658
    const-string v22, "rm -rf /system/app/Camera"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    .line 659
    const-string v22, "cp -rf /system/app/CameraDir/cm_camera /system/app/Camera"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    .line 660
    const-string v22, "chmod -R 0755 /system/app/Camera"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    .line 661
    const-string v22, "chmod 0644 /system/app/Camera/Camera.apk"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    .line 662
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->DialogReboot()V

    goto/16 :goto_0

    .line 675
    .end local v3    # "ValueCameraSwitch":Ljava/lang/String;
    .restart local v10    # "ValueRunningModeSwitch":Ljava/lang/String;
    :pswitch_3
    const v22, 0x7f07006a

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 676
    const-string v22, "/system/bin/running_mode_battery"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_1

    .line 679
    :pswitch_4
    const v22, 0x7f07006c

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 680
    const-string v22, "/system/bin/running_mode_standard"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_1

    .line 683
    :pswitch_5
    const v22, 0x7f07006b

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 684
    const-string v22, "/system/bin/running_mode_performance"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    .line 685
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->DialogAttentionPerformance()V

    goto/16 :goto_1

    .line 698
    .end local v10    # "ValueRunningModeSwitch":Ljava/lang/String;
    .restart local v9    # "ValueLedIntensitySwitch":Ljava/lang/String;
    :pswitch_6
    const v22, 0x7f07004d

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 699
    const-string v22, "echo \'40\' > /sys/class/sec/led/led_intensity"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_2

    .line 702
    :pswitch_7
    const v22, 0x7f07004e

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 703
    const-string v22, "echo \'30\' > /sys/class/sec/led/led_intensity"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_2

    .line 706
    :pswitch_8
    const v22, 0x7f07004f

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 707
    const-string v22, "echo \'20\' > /sys/class/sec/led/led_intensity"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_2

    .line 710
    :pswitch_9
    const v22, 0x7f070050

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 711
    const-string v22, "echo \'10\' > /sys/class/sec/led/led_intensity"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_2

    .line 714
    :pswitch_a
    const v22, 0x7f070051

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 715
    const-string v22, "echo \'5\' > /sys/class/sec/led/led_intensity"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_2

    .line 718
    :pswitch_b
    const v22, 0x7f070052

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 719
    const-string v22, "echo \'1\' > /sys/class/sec/led/led_intensity"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_2

    .line 732
    .end local v9    # "ValueLedIntensitySwitch":Ljava/lang/String;
    .restart local v8    # "ValueLedFadeSwitch":Ljava/lang/String;
    :pswitch_c
    const v22, 0x7f07004a

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 733
    const-string v22, "echo \'0\' > /sys/class/sec/led/led_fade"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_3

    .line 736
    :pswitch_d
    const v22, 0x7f07004b

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 737
    const-string v22, "echo \'1\' > /sys/class/sec/led/led_fade"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_3

    .line 750
    .end local v8    # "ValueLedFadeSwitch":Ljava/lang/String;
    .restart local v12    # "ValueWakeUpSwitch":Ljava/lang/String;
    :pswitch_e
    const v22, 0x7f070084

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 751
    const-string v22, "echo \'0\' > /sys/class/i2c-adapter/i2c-2/2-0020/input/input2/screen_wake_options"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_4

    .line 754
    :pswitch_f
    const v22, 0x7f070085

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 755
    const-string v22, "echo \'1\' > /sys/class/i2c-adapter/i2c-2/2-0020/input/input2/screen_wake_options"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_4

    .line 758
    :pswitch_10
    const v22, 0x7f070086

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 759
    const-string v22, "echo \'2\' > /sys/class/i2c-adapter/i2c-2/2-0020/input/input2/screen_wake_options"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_4

    .line 762
    :pswitch_11
    const v22, 0x7f070087

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 763
    const-string v22, "echo \'3\' > /sys/class/i2c-adapter/i2c-2/2-0020/input/input2/screen_wake_options"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_4

    .line 766
    :pswitch_12
    const v22, 0x7f070088

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 767
    const-string v22, "echo \'4\' > /sys/class/i2c-adapter/i2c-2/2-0020/input/input2/screen_wake_options"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_4

    .line 770
    :pswitch_13
    const v22, 0x7f070089

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 771
    const-string v22, "echo \'5\' > /sys/class/i2c-adapter/i2c-2/2-0020/input/input2/screen_wake_options"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_4

    .line 774
    :pswitch_14
    const v22, 0x7f07008a

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 775
    const-string v22, "echo \'6\' > /sys/class/i2c-adapter/i2c-2/2-0020/input/input2/screen_wake_options"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_4

    .line 788
    .end local v12    # "ValueWakeUpSwitch":Ljava/lang/String;
    .restart local v5    # "ValueKcalSwitch":Ljava/lang/String;
    :pswitch_15
    const v22, 0x7f070038

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 789
    const-string v22, "echo \'255 255 255\' >/sys/devices/platform/kcal_ctrl.0/kcal"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_5

    .line 792
    :pswitch_16
    const v22, 0x7f070039

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 793
    const-string v22, "echo \'200 200 205\' > /sys/devices/platform/kcal_ctrl.0/kcal"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_5

    .line 796
    :pswitch_17
    const v22, 0x7f07003a

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 797
    const-string v22, "echo \'150 150 155\' > /sys/devices/platform/kcal_ctrl.0/kcal"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_5

    .line 800
    :pswitch_18
    const v22, 0x7f07003b

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 801
    const-string v22, "echo \'125 125 130\' > /sys/devices/platform/kcal_ctrl.0/kcal"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_5

    .line 804
    :pswitch_19
    const v22, 0x7f07003c

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 805
    const-string v22, "echo \'75 75 80\' > /sys/devices/platform/kcal_ctrl.0/kcal"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_5

    .line 818
    .end local v5    # "ValueKcalSwitch":Ljava/lang/String;
    .restart local v4    # "ValueKcalSatSwitch":Ljava/lang/String;
    :pswitch_1a
    const v22, 0x7f070033

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 819
    const-string v22, "echo \'255\' >/sys/devices/platform/kcal_ctrl.0/kcal_sat"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_6

    .line 822
    :pswitch_1b
    const v22, 0x7f070034

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 823
    const-string v22, "echo \'128\' > /sys/devices/platform/kcal_ctrl.0/kcal_sat"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_6

    .line 826
    :pswitch_1c
    const v22, 0x7f070035

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 827
    const-string v22, "echo \'285\' > /sys/devices/platform/kcal_ctrl.0/kcal_sat"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_6

    .line 840
    .end local v4    # "ValueKcalSatSwitch":Ljava/lang/String;
    .restart local v6    # "ValueKeylightSwitch":Ljava/lang/String;
    :pswitch_1d
    const v22, 0x7f07003f

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mKeylightTimeout:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 842
    const-string v22, "echo \'2\' >sys/class/misc/btk_control/btkc_mode"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_7

    .line 845
    :pswitch_1e
    const v22, 0x7f070040

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 846
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mKeylightTimeout:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 847
    const-string v22, "echo \'0\' >sys/class/misc/btk_control/btkc_mode"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_7

    .line 850
    :pswitch_1f
    const v22, 0x7f070041

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 851
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mKeylightTimeout:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 852
    const-string v22, "echo \'1\' > sys/class/misc/btk_control/btkc_mode"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_7

    .line 865
    .end local v6    # "ValueKeylightSwitch":Ljava/lang/String;
    .restart local v7    # "ValueKeylightTimeoutSwitch":Ljava/lang/String;
    :pswitch_20
    const v22, 0x7f070042

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 866
    const-string v22, "echo \'1\' >sys/class/misc/btk_control/btkc_timeout"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_8

    .line 869
    :pswitch_21
    const v22, 0x7f070043

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 870
    const-string v22, "echo \'5\' >sys/class/misc/btk_control/btkc_timeout"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_8

    .line 873
    :pswitch_22
    const v22, 0x7f070044

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 874
    const-string v22, "echo \'10\' > sys/class/misc/btk_control/btkc_timeout"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_8

    .line 877
    :pswitch_23
    const v22, 0x7f070045

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 878
    const-string v22, "echo \'20\' > sys/class/misc/btk_control/btkc_timeout"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_8

    .line 881
    :pswitch_24
    const v22, 0x7f070046

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 882
    const-string v22, "echo \'7200\' > sys/class/misc/btk_control/btkc_timeout"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_8

    .line 895
    .end local v7    # "ValueKeylightTimeoutSwitch":Ljava/lang/String;
    .restart local v19    # "ValuemBattery_light_medium_color":Ljava/lang/String;
    :pswitch_25
    const v22, 0x7f070059

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 896
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "battery_light_medium_color"

    const/high16 v24, 0xff0000

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_9

    .line 899
    :pswitch_26
    const v22, 0x7f070053

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 900
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "battery_light_medium_color"

    const/16 v24, 0xff

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_9

    .line 903
    :pswitch_27
    const v22, 0x7f070054

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 904
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "battery_light_medium_color"

    const v24, 0xffff

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_9

    .line 907
    :pswitch_28
    const v22, 0x7f070055

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 908
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "battery_light_medium_color"

    const v24, 0x28ff00

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_9

    .line 911
    :pswitch_29
    const v22, 0x7f07005a

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 912
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "battery_light_medium_color"

    const v24, 0xffffff

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_9

    .line 915
    :pswitch_2a
    const v22, 0x7f07005b

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 916
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "battery_light_medium_color"

    const v24, 0xffff00

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_9

    .line 919
    :pswitch_2b
    const v22, 0x7f070056

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 920
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "battery_light_medium_color"

    const v24, 0xff2200

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_9

    .line 923
    :pswitch_2c
    const v22, 0x7f070058

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 924
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "battery_light_medium_color"

    const v24, 0xb400ff

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_9

    .line 927
    :pswitch_2d
    const v22, 0x7f070057

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 928
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "battery_light_medium_color"

    const v24, 0xff0084

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_9

    .line 941
    .end local v19    # "ValuemBattery_light_medium_color":Ljava/lang/String;
    .restart local v20    # "ValuemNotification_light_pulse_default_color":Ljava/lang/String;
    :pswitch_2e
    const v22, 0x7f070059

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 942
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "notification_light_pulse_default_color"

    const/high16 v24, 0xff0000

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_a

    .line 945
    :pswitch_2f
    const v22, 0x7f070053

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 946
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "notification_light_pulse_default_color"

    const/16 v24, 0xff

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_a

    .line 949
    :pswitch_30
    const v22, 0x7f070054

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 950
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "notification_light_pulse_default_color"

    const v24, 0xffff

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_a

    .line 953
    :pswitch_31
    const v22, 0x7f070055

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 954
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "notification_light_pulse_default_color"

    const v24, 0x28ff00

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_a

    .line 957
    :pswitch_32
    const v22, 0x7f07005a

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 958
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "notification_light_pulse_default_color"

    const v24, 0xffffff

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_a

    .line 961
    :pswitch_33
    const v22, 0x7f07005b

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 962
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "notification_light_pulse_default_color"

    const v24, 0xffff00

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_a

    .line 965
    :pswitch_34
    const v22, 0x7f070056

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 966
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "notification_light_pulse_default_color"

    const v24, 0xff2200

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_a

    .line 969
    :pswitch_35
    const v22, 0x7f070058

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 970
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "notification_light_pulse_default_color"

    const v24, 0xb400ff

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_a

    .line 973
    :pswitch_36
    const v22, 0x7f070057

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 974
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "notification_light_pulse_default_color"

    const v24, 0xff0084

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_a

    .line 988
    .end local v20    # "ValuemNotification_light_pulse_default_color":Ljava/lang/String;
    .restart local v15    # "Valuekey_home_double_tap_action":Ljava/lang/String;
    :pswitch_37
    const v22, 0x7f070027

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_b

    .line 991
    :pswitch_38
    const v22, 0x7f070026

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_b

    .line 994
    :pswitch_39
    const v22, 0x7f070022

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_b

    .line 997
    :pswitch_3a
    const v22, 0x7f070028

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_b

    .line 1000
    :pswitch_3b
    const v22, 0x7f07002a

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_b

    .line 1003
    :pswitch_3c
    const v22, 0x7f070023

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_b

    .line 1006
    :pswitch_3d
    const v22, 0x7f070025

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_b

    .line 1009
    :pswitch_3e
    const v22, 0x7f070029

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_b

    .line 1012
    :pswitch_3f
    const v22, 0x7f070024

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_b

    .line 1026
    .end local v15    # "Valuekey_home_double_tap_action":Ljava/lang/String;
    .restart local v16    # "Valuekey_home_long_press_action":Ljava/lang/String;
    :pswitch_40
    const v22, 0x7f070027

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_c

    .line 1029
    :pswitch_41
    const v22, 0x7f070026

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_c

    .line 1032
    :pswitch_42
    const v22, 0x7f070022

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_c

    .line 1035
    :pswitch_43
    const v22, 0x7f070028

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_c

    .line 1038
    :pswitch_44
    const v22, 0x7f07002a

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_c

    .line 1041
    :pswitch_45
    const v22, 0x7f070023

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_c

    .line 1044
    :pswitch_46
    const v22, 0x7f070025

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_c

    .line 1047
    :pswitch_47
    const v22, 0x7f070029

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_c

    .line 1050
    :pswitch_48
    const v22, 0x7f070024

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_c

    .line 1064
    .end local v16    # "Valuekey_home_long_press_action":Ljava/lang/String;
    .restart local v13    # "Valuekey_app_switch_action":Ljava/lang/String;
    :pswitch_49
    const v22, 0x7f070027

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_d

    .line 1067
    :pswitch_4a
    const v22, 0x7f070026

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_d

    .line 1070
    :pswitch_4b
    const v22, 0x7f070022

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_d

    .line 1073
    :pswitch_4c
    const v22, 0x7f070028

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_d

    .line 1076
    :pswitch_4d
    const v22, 0x7f07002a

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_d

    .line 1079
    :pswitch_4e
    const v22, 0x7f070023

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_d

    .line 1082
    :pswitch_4f
    const v22, 0x7f070025

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_d

    .line 1085
    :pswitch_50
    const v22, 0x7f070029

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_d

    .line 1088
    :pswitch_51
    const v22, 0x7f070024

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_d

    .line 1102
    .end local v13    # "Valuekey_app_switch_action":Ljava/lang/String;
    .restart local v14    # "Valuekey_app_switch_long_press_action":Ljava/lang/String;
    :pswitch_52
    const v22, 0x7f070027

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_e

    .line 1105
    :pswitch_53
    const v22, 0x7f070026

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_e

    .line 1108
    :pswitch_54
    const v22, 0x7f070022

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_e

    .line 1111
    :pswitch_55
    const v22, 0x7f070028

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_e

    .line 1114
    :pswitch_56
    const v22, 0x7f07002a

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_e

    .line 1117
    :pswitch_57
    const v22, 0x7f070023

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_e

    .line 1120
    :pswitch_58
    const v22, 0x7f070025

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_e

    .line 1123
    :pswitch_59
    const v22, 0x7f070029

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_e

    .line 1126
    :pswitch_5a
    const v22, 0x7f070024

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_e

    .line 1140
    .end local v14    # "Valuekey_app_switch_long_press_action":Ljava/lang/String;
    .restart local v17    # "Valuekey_menu_action":Ljava/lang/String;
    :pswitch_5b
    const v22, 0x7f070027

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_f

    .line 1143
    :pswitch_5c
    const v22, 0x7f070026

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_f

    .line 1146
    :pswitch_5d
    const v22, 0x7f070022

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_f

    .line 1149
    :pswitch_5e
    const v22, 0x7f070028

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_f

    .line 1152
    :pswitch_5f
    const v22, 0x7f07002a

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_f

    .line 1155
    :pswitch_60
    const v22, 0x7f070023

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_f

    .line 1158
    :pswitch_61
    const v22, 0x7f070025

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_f

    .line 1161
    :pswitch_62
    const v22, 0x7f070029

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_f

    .line 1164
    :pswitch_63
    const v22, 0x7f070024

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_f

    .line 1178
    .end local v17    # "Valuekey_menu_action":Ljava/lang/String;
    .restart local v18    # "Valuekey_menu_long_press_action":Ljava/lang/String;
    :pswitch_64
    const v22, 0x7f070027

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_10

    .line 1181
    :pswitch_65
    const v22, 0x7f070026

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_10

    .line 1184
    :pswitch_66
    const v22, 0x7f070022

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_10

    .line 1187
    :pswitch_67
    const v22, 0x7f070028

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_10

    .line 1190
    :pswitch_68
    const v22, 0x7f07002a

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_10

    .line 1193
    :pswitch_69
    const v22, 0x7f070023

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_10

    .line 1196
    :pswitch_6a
    const v22, 0x7f070025

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_10

    .line 1199
    :pswitch_6b
    const v22, 0x7f070029

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_10

    .line 1202
    :pswitch_6c
    const v22, 0x7f070024

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_10

    .line 1215
    .end local v18    # "Valuekey_menu_long_press_action":Ljava/lang/String;
    .restart local v11    # "ValueTouchboost_freq":Ljava/lang/String;
    :pswitch_6d
    const v22, 0x7f070072

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 1216
    const-string v22, "echo \'1497600\' > /sys/class/misc/touchboost_switch/touchboost_freq"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_11

    .line 1219
    :pswitch_6e
    const v22, 0x7f070075

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 1220
    const-string v22, "echo \'652800\' > /sys/class/misc/touchboost_switch/touchboost_freq"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_11

    .line 1223
    :pswitch_6f
    const v22, 0x7f070076

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 1224
    const-string v22, "echo \'960000\' > /sys/class/misc/touchboost_switch/touchboost_freq"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_11

    .line 1227
    :pswitch_70
    const v22, 0x7f070071

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 1228
    const-string v22, "echo \'1190400\' > /sys/class/misc/touchboost_switch/touchboost_freq"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_11

    .line 1231
    :pswitch_71
    const v22, 0x7f070073

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 1232
    const-string v22, "echo \'1728000\' > /sys/class/misc/touchboost_switch/touchboost_freq"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_11

    .line 1235
    :pswitch_72
    const v22, 0x7f070074

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 1236
    const-string v22, "echo \'2265600\' > /sys/class/misc/touchboost_switch/touchboost_freq"

    invoke-static/range {v22 .. v22}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_11

    .line 636
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 673
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 696
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 730
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 748
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

    .line 786
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
    .end packed-switch

    .line 816
    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
    .end packed-switch

    .line 838
    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
    .end packed-switch

    .line 863
    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
    .end packed-switch

    .line 893
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

    .line 939
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

    .line 986
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

    .line 1024
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

    .line 1062
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

    .line 1100
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

    .line 1138
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

    .line 1176
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

    .line 1213
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

    .line 238
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mCharge:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mCharge:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 240
    invoke-virtual {p0}, Lcom/luo2888/flymesettings/DeviceSettings;->DialogAttention()V

    .line 241
    const-string v0, "echo \'2200 mA\' > /sys/kernel/charge_levels/charge_level_ac"

    invoke-static {v0}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    .line 242
    const-string v0, "echo \'950 mA\' > /sys/kernel/charge_levels/charge_level_usb"

    invoke-static {v0}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    .line 248
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mGLoveMode:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mGLoveMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 250
    const-string v0, "echo \'glove_mode,1\' > /sys/class/sec/tsp/cmd"

    invoke-static {v0}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    .line 255
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKcalInvert:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_2

    .line 256
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKcalInvert:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 257
    const-string v0, "echo \'1\' >  /sys/devices/platform/kcal_ctrl.0/kcal_invert"

    invoke-static {v0}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    .line 262
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mBattery_light_enabled:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_3

    .line 263
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mBattery_light_enabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 264
    invoke-virtual {p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "battery_light_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 269
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mBattery_light_pulse:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_4

    .line 270
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mBattery_light_pulse:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 271
    invoke-virtual {p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "battery_light_pulse"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 276
    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mNotification_light_pulse:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_5

    .line 277
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mNotification_light_pulse:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 278
    invoke-virtual {p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_light_pulse"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 283
    :cond_5
    :goto_5
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mNotification_light_screen_on_enable:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_6

    .line 284
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mNotification_light_screen_on_enable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 285
    invoke-virtual {p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_light_screen_on_enable"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 290
    :cond_6
    :goto_6
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mVolume_wake_screen:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_7

    .line 291
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mVolume_wake_screen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 292
    invoke-virtual {p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "volume_wake_screen"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 297
    :cond_7
    :goto_7
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->flashota:Landroid/preference/PreferenceScreen;

    if-ne p2, v0, :cond_8

    .line 298
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f07007e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07007d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07007f

    new-instance v2, Lcom/luo2888/flymesettings/DeviceSettings$1;

    invoke-direct {v2, p0}, Lcom/luo2888/flymesettings/DeviceSettings$1;-><init>(Lcom/luo2888/flymesettings/DeviceSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 319
    :cond_8
    return v3

    .line 244
    :cond_9
    const-string v0, "echo \'0 mA\' > /sys/kernel/charge_levels/charge_level_ac"

    invoke-static {v0}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    .line 245
    const-string v0, "echo \'0 mA\' > /sys/kernel/charge_levels/charge_level_usb"

    invoke-static {v0}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 252
    :cond_a
    const-string v0, "echo \'glove_mode,0\' > /sys/class/sec/tsp/cmd"

    invoke-static {v0}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_1

    .line 259
    :cond_b
    const-string v0, "echo \'0\' > /sys/devices/platform/kcal_ctrl.0/kcal_invert"

    invoke-static {v0}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_2

    .line 266
    :cond_c
    invoke-virtual {p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "battery_light_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    .line 273
    :cond_d
    invoke-virtual {p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "battery_light_pulse"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_4

    .line 280
    :cond_e
    invoke-virtual {p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_light_pulse"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_5

    .line 287
    :cond_f
    invoke-virtual {p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_light_screen_on_enable"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_6

    .line 294
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
    .line 216
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    .line 217
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mCameraSwitch:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->setListPreferenceSummary(Landroid/preference/ListPreference;)V

    .line 218
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mRunningMode:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->setListPreferenceSummary(Landroid/preference/ListPreference;)V

    .line 219
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mLedIntensity:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->setListPreferenceSummary(Landroid/preference/ListPreference;)V

    .line 220
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mLedFade:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->setListPreferenceSummary(Landroid/preference/ListPreference;)V

    .line 221
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mWakeUp:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->setListPreferenceSummary(Landroid/preference/ListPreference;)V

    .line 222
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKcal:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->setListPreferenceSummary(Landroid/preference/ListPreference;)V

    .line 223
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKcalSat:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->setListPreferenceSummary(Landroid/preference/ListPreference;)V

    .line 224
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKeylight:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->setListPreferenceSummary(Landroid/preference/ListPreference;)V

    .line 225
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKeylightTimeout:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->setListPreferenceSummary(Landroid/preference/ListPreference;)V

    .line 226
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_home_long_press_action:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->setListPreferenceSummary(Landroid/preference/ListPreference;)V

    .line 227
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_home_double_tap_action:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->setListPreferenceSummary(Landroid/preference/ListPreference;)V

    .line 228
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_app_switch_action:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->setListPreferenceSummary(Landroid/preference/ListPreference;)V

    .line 229
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_app_switch_long_press_action:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->setListPreferenceSummary(Landroid/preference/ListPreference;)V

    .line 230
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_menu_action:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->setListPreferenceSummary(Landroid/preference/ListPreference;)V

    .line 231
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_menu_long_press_action:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->setListPreferenceSummary(Landroid/preference/ListPreference;)V

    .line 232
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mBattery_light_medium_color:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->setListPreferenceSummary(Landroid/preference/ListPreference;)V

    .line 233
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mNotification_light_pulse_default_color:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->setListPreferenceSummary(Landroid/preference/ListPreference;)V

    .line 234
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mTouchboost_freq:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->setListPreferenceSummary(Landroid/preference/ListPreference;)V

    .line 235
    return-void
.end method
