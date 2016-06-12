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

.field public static final KEY_VOLUME_WAKE_SCREEN:Ljava/lang/String; = "volume_wake_screen"

.field public static final KEY_WAKEUP_MODE:Ljava/lang/String; = "wakeup_mode"

.field public static final VIBRATOR:Ljava/lang/String; = "vibrator"


# instance fields
.field private file:Ljava/io/File;

.field private flashota:Landroid/preference/PreferenceScreen;

.field private mBFSettings:Landroid/preference/PreferenceScreen;

.field private mBattery_light_enabled:Landroid/preference/CheckBoxPreference;

.field private mBattery_light_medium_color:Landroid/preference/ListPreference;

.field private mBattery_light_pulse:Landroid/preference/CheckBoxPreference;

.field private mCABC:Lcom/luo2888/flymesettings/CABC;

.field private mCameraSwitch:Landroid/preference/ListPreference;

.field private mCharge:Landroid/preference/CheckBoxPreference;

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

.field private mVolume_wake_screen:Landroid/preference/CheckBoxPreference;

.field private mWakeUp:Landroid/preference/ListPreference;

.field private mmDNIeMode:Lcom/luo2888/flymesettings/mDNIeMode;

.field private mmDNIeScenario:Lcom/luo2888/flymesettings/mDNIeScenario;

.field private pm:Lcom/igexin/sdk/PushManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private initGeTui()V
    .locals 4

    .prologue
    .line 193
    invoke-static {}, Lcom/igexin/sdk/PushManager;->getInstance()Lcom/igexin/sdk/PushManager;

    move-result-object v2

    iput-object v2, p0, Lcom/luo2888/flymesettings/DeviceSettings;->pm:Lcom/igexin/sdk/PushManager;

    .line 194
    iget-object v2, p0, Lcom/luo2888/flymesettings/DeviceSettings;->pm:Lcom/igexin/sdk/PushManager;

    invoke-virtual {p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/igexin/sdk/PushManager;->initialize(Landroid/content/Context;)V

    .line 195
    new-instance v0, Lcom/igexin/sdk/Tag;

    invoke-direct {v0}, Lcom/igexin/sdk/Tag;-><init>()V

    .line 196
    .local v0, "tag":Lcom/igexin/sdk/Tag;
    const-string v2, "others"

    invoke-virtual {v0, v2}, Lcom/igexin/sdk/Tag;->setName(Ljava/lang/String;)V

    .line 197
    const/4 v2, 0x1

    new-array v1, v2, [Lcom/igexin/sdk/Tag;

    .line 198
    .local v1, "tags":[Lcom/igexin/sdk/Tag;
    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 199
    iget-object v2, p0, Lcom/luo2888/flymesettings/DeviceSettings;->pm:Lcom/igexin/sdk/PushManager;

    invoke-virtual {v2, p0, v1}, Lcom/igexin/sdk/PushManager;->setTag(Landroid/content/Context;[Lcom/igexin/sdk/Tag;)I

    .line 200
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

    .line 309
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mCameraSwitch:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_0

    .line 310
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_11

    .line 311
    const v0, 0x7f070010

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 319
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mRunningMode:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_1

    .line 320
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_13

    .line 321
    const v0, 0x7f070065

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 329
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mLedIntensity:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_2

    .line 330
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    .line 331
    const v0, 0x7f07004a

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 345
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mLedFade:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_3

    .line 346
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1a

    .line 347
    const v0, 0x7f070047

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 353
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mWakeUp:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_4

    .line 354
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1b

    .line 355
    const v0, 0x7f070077

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 372
    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKcal:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_5

    .line 373
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_21

    .line 374
    const v0, 0x7f070035

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 386
    :cond_5
    :goto_5
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKeylight:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_6

    .line 387
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_25

    .line 388
    const v0, 0x7f07003c

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 389
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKeylightTimeout:Landroid/preference/ListPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 399
    :cond_6
    :goto_6
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKeylightTimeout:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_7

    .line 400
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_27

    .line 401
    const v0, 0x7f07003f

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 413
    :cond_7
    :goto_7
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKcalSat:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_8

    .line 414
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2b

    .line 415
    const v0, 0x7f070030

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 423
    :cond_8
    :goto_8
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mBattery_light_medium_color:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_9

    .line 424
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2d

    .line 425
    const v0, 0x7f070056

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 445
    :cond_9
    :goto_9
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mNotification_light_pulse_default_color:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_a

    .line 446
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_35

    .line 447
    const v0, 0x7f070056

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 467
    :cond_a
    :goto_a
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_home_long_press_action:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_b

    .line 468
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3d

    .line 469
    const v0, 0x7f070024

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 489
    :cond_b
    :goto_b
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_home_double_tap_action:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_c

    .line 490
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_45

    .line 491
    const v0, 0x7f070024

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 511
    :cond_c
    :goto_c
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_app_switch_action:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_d

    .line 512
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4d

    .line 513
    const v0, 0x7f070024

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 533
    :cond_d
    :goto_d
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_app_switch_long_press_action:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_e

    .line 534
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_55

    .line 535
    const v0, 0x7f070024

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 554
    :cond_e
    :goto_e
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_menu_action:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_f

    .line 555
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5d

    .line 556
    const v0, 0x7f070024

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 576
    :cond_f
    :goto_f
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_menu_long_press_action:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_10

    .line 577
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_65

    .line 578
    const v0, 0x7f070024

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 597
    :cond_10
    :goto_10
    return-void

    .line 312
    :cond_11
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v2, v0, :cond_12

    .line 313
    const v0, 0x7f070011

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_0

    .line 314
    :cond_12
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v3, v0, :cond_0

    .line 315
    const v0, 0x7f07000f

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_0

    .line 322
    :cond_13
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v2, v0, :cond_14

    .line 323
    const v0, 0x7f070067

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_1

    .line 324
    :cond_14
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v3, v0, :cond_1

    .line 325
    const v0, 0x7f070066

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_1

    .line 332
    :cond_15
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v2, v0, :cond_16

    .line 333
    const v0, 0x7f07004b

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_2

    .line 334
    :cond_16
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v3, v0, :cond_17

    .line 335
    const v0, 0x7f07004c

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_2

    .line 336
    :cond_17
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v4, v0, :cond_18

    .line 337
    const v0, 0x7f07004d

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_2

    .line 338
    :cond_18
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v5, v0, :cond_19

    .line 339
    const v0, 0x7f07004e

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_2

    .line 340
    :cond_19
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v6, v0, :cond_2

    .line 341
    const v0, 0x7f07004f

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_2

    .line 348
    :cond_1a
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v2, v0, :cond_3

    .line 349
    const v0, 0x7f070048

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_3

    .line 356
    :cond_1b
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v2, v0, :cond_1c

    .line 357
    const v0, 0x7f070078

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_4

    .line 358
    :cond_1c
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v3, v0, :cond_1d

    .line 359
    const v0, 0x7f070079

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_4

    .line 360
    :cond_1d
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v4, v0, :cond_1e

    .line 361
    const v0, 0x7f07007a

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_4

    .line 362
    :cond_1e
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v5, v0, :cond_1f

    .line 363
    const v0, 0x7f07007b

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_4

    .line 364
    :cond_1f
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v6, v0, :cond_20

    .line 365
    const v0, 0x7f07007c

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_4

    .line 366
    :cond_20
    const/4 v0, 0x6

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 367
    const v0, 0x7f07007d

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_4

    .line 375
    :cond_21
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v2, v0, :cond_22

    .line 376
    const v0, 0x7f070036

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_5

    .line 377
    :cond_22
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v3, v0, :cond_23

    .line 378
    const v0, 0x7f070037

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_5

    .line 379
    :cond_23
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v4, v0, :cond_24

    .line 380
    const v0, 0x7f070038

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_5

    .line 381
    :cond_24
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v5, v0, :cond_5

    .line 382
    const v0, 0x7f070039

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_5

    .line 390
    :cond_25
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v2, v0, :cond_26

    .line 391
    const v0, 0x7f07003d

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 392
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKeylightTimeout:Landroid/preference/ListPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto/16 :goto_6

    .line 393
    :cond_26
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v3, v0, :cond_6

    .line 394
    const v0, 0x7f07003e

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 395
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKeylightTimeout:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto/16 :goto_6

    .line 402
    :cond_27
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v2, v0, :cond_28

    .line 403
    const v0, 0x7f070040

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_7

    .line 404
    :cond_28
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v3, v0, :cond_29

    .line 405
    const v0, 0x7f070041

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_7

    .line 406
    :cond_29
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v4, v0, :cond_2a

    .line 407
    const v0, 0x7f070042

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_7

    .line 408
    :cond_2a
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v5, v0, :cond_7

    .line 409
    const v0, 0x7f070043

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_7

    .line 416
    :cond_2b
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v2, v0, :cond_2c

    .line 417
    const v0, 0x7f070031

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_8

    .line 418
    :cond_2c
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v3, v0, :cond_8

    .line 419
    const v0, 0x7f070032

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_8

    .line 426
    :cond_2d
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v2, v0, :cond_2e

    .line 427
    const v0, 0x7f070050

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_9

    .line 428
    :cond_2e
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v3, v0, :cond_2f

    .line 429
    const v0, 0x7f070051

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_9

    .line 430
    :cond_2f
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v4, v0, :cond_30

    .line 431
    const v0, 0x7f070052

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_9

    .line 432
    :cond_30
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v5, v0, :cond_31

    .line 433
    const v0, 0x7f070057

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_9

    .line 434
    :cond_31
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v6, v0, :cond_32

    .line 435
    const v0, 0x7f070058

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_9

    .line 436
    :cond_32
    const/4 v0, 0x6

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_33

    .line 437
    const v0, 0x7f070053

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_9

    .line 438
    :cond_33
    const/4 v0, 0x7

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_34

    .line 439
    const v0, 0x7f070055

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_9

    .line 440
    :cond_34
    const/16 v0, 0x8

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_9

    .line 441
    const v0, 0x7f070054

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_9

    .line 448
    :cond_35
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v2, v0, :cond_36

    .line 449
    const v0, 0x7f070050

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_a

    .line 450
    :cond_36
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v3, v0, :cond_37

    .line 451
    const v0, 0x7f070051

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_a

    .line 452
    :cond_37
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v4, v0, :cond_38

    .line 453
    const v0, 0x7f070052

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_a

    .line 454
    :cond_38
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v5, v0, :cond_39

    .line 455
    const v0, 0x7f070057

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_a

    .line 456
    :cond_39
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v6, v0, :cond_3a

    .line 457
    const v0, 0x7f070058

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_a

    .line 458
    :cond_3a
    const/4 v0, 0x6

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_3b

    .line 459
    const v0, 0x7f070053

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_a

    .line 460
    :cond_3b
    const/4 v0, 0x7

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_3c

    .line 461
    const v0, 0x7f070055

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_a

    .line 462
    :cond_3c
    const/16 v0, 0x8

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_a

    .line 463
    const v0, 0x7f070054

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_a

    .line 470
    :cond_3d
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v2, v0, :cond_3e

    .line 471
    const v0, 0x7f070023

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_b

    .line 472
    :cond_3e
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v3, v0, :cond_3f

    .line 473
    const v0, 0x7f07001f

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_b

    .line 474
    :cond_3f
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v4, v0, :cond_40

    .line 475
    const v0, 0x7f070025

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_b

    .line 476
    :cond_40
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v5, v0, :cond_41

    .line 477
    const v0, 0x7f070027

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_b

    .line 478
    :cond_41
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v6, v0, :cond_42

    .line 479
    const v0, 0x7f070020

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_b

    .line 480
    :cond_42
    const/4 v0, 0x6

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_43

    .line 481
    const v0, 0x7f070022

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_b

    .line 482
    :cond_43
    const/4 v0, 0x7

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_44

    .line 483
    const v0, 0x7f070026

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_b

    .line 484
    :cond_44
    const/16 v0, 0x8

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_b

    .line 485
    const v0, 0x7f070021

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_b

    .line 492
    :cond_45
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v2, v0, :cond_46

    .line 493
    const v0, 0x7f070023

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_c

    .line 494
    :cond_46
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v3, v0, :cond_47

    .line 495
    const v0, 0x7f07001f

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_c

    .line 496
    :cond_47
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v4, v0, :cond_48

    .line 497
    const v0, 0x7f070025

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_c

    .line 498
    :cond_48
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v5, v0, :cond_49

    .line 499
    const v0, 0x7f070027

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_c

    .line 500
    :cond_49
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v6, v0, :cond_4a

    .line 501
    const v0, 0x7f070020

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_c

    .line 502
    :cond_4a
    const/4 v0, 0x6

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_4b

    .line 503
    const v0, 0x7f070022

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_c

    .line 504
    :cond_4b
    const/4 v0, 0x7

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_4c

    .line 505
    const v0, 0x7f070026

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_c

    .line 506
    :cond_4c
    const/16 v0, 0x8

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_c

    .line 507
    const v0, 0x7f070021

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_c

    .line 514
    :cond_4d
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v2, v0, :cond_4e

    .line 515
    const v0, 0x7f070023

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_d

    .line 516
    :cond_4e
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v3, v0, :cond_4f

    .line 517
    const v0, 0x7f07001f

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_d

    .line 518
    :cond_4f
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v4, v0, :cond_50

    .line 519
    const v0, 0x7f070025

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_d

    .line 520
    :cond_50
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v5, v0, :cond_51

    .line 521
    const v0, 0x7f070027

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_d

    .line 522
    :cond_51
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v6, v0, :cond_52

    .line 523
    const v0, 0x7f070020

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_d

    .line 524
    :cond_52
    const/4 v0, 0x6

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_53

    .line 525
    const v0, 0x7f070022

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_d

    .line 526
    :cond_53
    const/4 v0, 0x7

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_54

    .line 527
    const v0, 0x7f070026

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_d

    .line 528
    :cond_54
    const/16 v0, 0x8

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_d

    .line 529
    const v0, 0x7f070021

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_d

    .line 536
    :cond_55
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v2, v0, :cond_56

    .line 537
    const v0, 0x7f070023

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_e

    .line 538
    :cond_56
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v3, v0, :cond_57

    .line 539
    const v0, 0x7f07001f

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_e

    .line 540
    :cond_57
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v4, v0, :cond_58

    .line 541
    const v0, 0x7f070025

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_e

    .line 542
    :cond_58
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v5, v0, :cond_59

    .line 543
    const v0, 0x7f070027

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_e

    .line 544
    :cond_59
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v6, v0, :cond_5a

    .line 545
    const v0, 0x7f070020

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_e

    .line 546
    :cond_5a
    const/4 v0, 0x6

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_5b

    .line 547
    const v0, 0x7f070022

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_e

    .line 548
    :cond_5b
    const/4 v0, 0x7

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_5c

    .line 549
    const v0, 0x7f070026

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_e

    .line 550
    :cond_5c
    const/16 v0, 0x8

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_e

    .line 551
    const v0, 0x7f070021

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_e

    .line 557
    :cond_5d
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v2, v0, :cond_5e

    .line 558
    const v0, 0x7f070023

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_f

    .line 559
    :cond_5e
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v3, v0, :cond_5f

    .line 560
    const v0, 0x7f07001f

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_f

    .line 561
    :cond_5f
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v4, v0, :cond_60

    .line 562
    const v0, 0x7f070025

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_f

    .line 563
    :cond_60
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v5, v0, :cond_61

    .line 564
    const v0, 0x7f070027

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_f

    .line 565
    :cond_61
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v6, v0, :cond_62

    .line 566
    const v0, 0x7f070020

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_f

    .line 567
    :cond_62
    const/4 v0, 0x6

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_63

    .line 568
    const v0, 0x7f070022

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_f

    .line 569
    :cond_63
    const/4 v0, 0x7

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_64

    .line 570
    const v0, 0x7f070026

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_f

    .line 571
    :cond_64
    const/16 v0, 0x8

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_f

    .line 572
    const v0, 0x7f070021

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_f

    .line 579
    :cond_65
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v2, v0, :cond_66

    .line 580
    const v0, 0x7f070023

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_10

    .line 581
    :cond_66
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v3, v0, :cond_67

    .line 582
    const v0, 0x7f07001f

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_10

    .line 583
    :cond_67
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v4, v0, :cond_68

    .line 584
    const v0, 0x7f070025

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_10

    .line 585
    :cond_68
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v5, v0, :cond_69

    .line 586
    const v0, 0x7f070027

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_10

    .line 587
    :cond_69
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v6, v0, :cond_6a

    .line 588
    const v0, 0x7f070020

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_10

    .line 589
    :cond_6a
    const/4 v0, 0x6

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_6b

    .line 590
    const v0, 0x7f070022

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_10

    .line 591
    :cond_6b
    const/4 v0, 0x7

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_6c

    .line 592
    const v0, 0x7f070026

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_10

    .line 593
    :cond_6c
    const/16 v0, 0x8

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_10

    .line 594
    const v0, 0x7f070021

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_10
.end method


# virtual methods
.method public DialogAttention()V
    .locals 3

    .prologue
    .line 1247
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07007e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070009

    new-instance v2, Lcom/luo2888/flymesettings/DeviceSettings$3;

    invoke-direct {v2, p0}, Lcom/luo2888/flymesettings/DeviceSettings$3;-><init>(Lcom/luo2888/flymesettings/DeviceSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1258
    return-void
.end method

.method public DialogAttentionPerformance()V
    .locals 3

    .prologue
    .line 1233
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07007e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070063

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070009

    new-instance v2, Lcom/luo2888/flymesettings/DeviceSettings$2;

    invoke-direct {v2, p0}, Lcom/luo2888/flymesettings/DeviceSettings$2;-><init>(Lcom/luo2888/flymesettings/DeviceSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1244
    return-void
.end method

.method public DialogReboot()V
    .locals 3

    .prologue
    .line 1261
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070016

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070009

    new-instance v2, Lcom/luo2888/flymesettings/DeviceSettings$6;

    invoke-direct {v2, p0}, Lcom/luo2888/flymesettings/DeviceSettings$6;-><init>(Lcom/luo2888/flymesettings/DeviceSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070007

    new-instance v2, Lcom/luo2888/flymesettings/DeviceSettings$5;

    invoke-direct {v2, p0}, Lcom/luo2888/flymesettings/DeviceSettings$5;-><init>(Lcom/luo2888/flymesettings/DeviceSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070006

    new-instance v2, Lcom/luo2888/flymesettings/DeviceSettings$4;

    invoke-direct {v2, p0}, Lcom/luo2888/flymesettings/DeviceSettings$4;-><init>(Lcom/luo2888/flymesettings/DeviceSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1284
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1181
    packed-switch p1, :pswitch_data_0

    .line 1229
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1230
    return-void

    .line 1183
    :pswitch_0
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 1184
    const/4 v1, 0x0

    .line 1186
    .local v1, "localOutputStream":Ljava/io/OutputStream;
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1187
    new-instance v2, Ljava/io/File;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/luo2888/flymesettings/DeviceSettings;->file:Ljava/io/File;

    .line 1188
    iget-object v2, p0, Lcom/luo2888/flymesettings/DeviceSettings;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".zip"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1191
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "su"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 1194
    const-string v2, "mkdir -p /cache/recovery/\n"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 1195
    const-string v2, "echo \'boot-recovery\' >/cache/recovery/command\n"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 1198
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

    .line 1201
    const-string v2, "reboot recovery\n"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 1204
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1208
    if-eqz v1, :cond_1

    .line 1210
    :try_start_1
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1214
    :cond_1
    :goto_1
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/luo2888/flymesettings/DeviceSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    const-string v3, "recovery"

    invoke-virtual {v2, v3}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1211
    :catch_0
    move-exception v0

    .line 1212
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1205
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 1206
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1208
    if-eqz v1, :cond_2

    .line 1210
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1214
    :cond_2
    :goto_2
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/luo2888/flymesettings/DeviceSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    const-string v3, "recovery"

    invoke-virtual {v2, v3}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1211
    :catch_2
    move-exception v0

    .line 1212
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 1208
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    move-object v3, v2

    if-eqz v1, :cond_3

    .line 1210
    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1214
    :cond_3
    :goto_3
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/luo2888/flymesettings/DeviceSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    const-string v4, "recovery"

    invoke-virtual {v2, v4}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    throw v3

    .line 1211
    :catch_3
    move-exception v0

    .line 1212
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 1220
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4
    const v2, 0x7f07006d

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1181
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
    .line 97
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 98
    invoke-direct {p0}, Lcom/luo2888/flymesettings/DeviceSettings;->initGeTui()V

    .line 99
    const v0, 0x7f040001

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->addPreferencesFromResource(I)V

    .line 100
    const-string v0, "boeffla_settings_key"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mBFSettings:Landroid/preference/PreferenceScreen;

    .line 101
    const-string v0, "camera_switch_key"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mCameraSwitch:Landroid/preference/ListPreference;

    .line 102
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mCameraSwitch:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 104
    const-string v0, "running_mode"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mRunningMode:Landroid/preference/ListPreference;

    .line 105
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mRunningMode:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 106
    const-string v0, "led_intensity"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mLedIntensity:Landroid/preference/ListPreference;

    .line 107
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mLedIntensity:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 108
    const-string v0, "led_fade"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mLedFade:Landroid/preference/ListPreference;

    .line 109
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mLedFade:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 110
    const-string v0, "wakeup_mode"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mWakeUp:Landroid/preference/ListPreference;

    .line 111
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mWakeUp:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 112
    const-string v0, "kcal"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKcal:Landroid/preference/ListPreference;

    .line 113
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKcal:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 114
    const-string v0, "kcal_sat"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKcalSat:Landroid/preference/ListPreference;

    .line 115
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKcalSat:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 116
    const-string v0, "keylight"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKeylight:Landroid/preference/ListPreference;

    .line 117
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKeylight:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 118
    const-string v0, "keylight_timeout"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKeylightTimeout:Landroid/preference/ListPreference;

    .line 119
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKeylightTimeout:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 120
    const-string v0, "kcal_invert"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKcalInvert:Landroid/preference/CheckBoxPreference;

    .line 121
    const-string v0, "charge"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mCharge:Landroid/preference/CheckBoxPreference;

    .line 122
    const-string v0, "glove_mode"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mGLoveMode:Landroid/preference/CheckBoxPreference;

    .line 123
    const-string v0, "cabc"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/luo2888/flymesettings/CABC;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mCABC:Lcom/luo2888/flymesettings/CABC;

    .line 124
    const-string v0, "mdnie_scenario"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/luo2888/flymesettings/mDNIeScenario;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mmDNIeScenario:Lcom/luo2888/flymesettings/mDNIeScenario;

    .line 125
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mmDNIeScenario:Lcom/luo2888/flymesettings/mDNIeScenario;

    invoke-static {}, Lcom/luo2888/flymesettings/mDNIeScenario;->isSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/luo2888/flymesettings/mDNIeScenario;->setEnabled(Z)V

    .line 126
    const-string v0, "mdnie_mode"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/luo2888/flymesettings/mDNIeMode;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mmDNIeMode:Lcom/luo2888/flymesettings/mDNIeMode;

    .line 127
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mmDNIeMode:Lcom/luo2888/flymesettings/mDNIeMode;

    invoke-static {}, Lcom/luo2888/flymesettings/mDNIeMode;->isSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/luo2888/flymesettings/mDNIeMode;->setEnabled(Z)V

    .line 128
    const-string v0, "flashota"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->flashota:Landroid/preference/PreferenceScreen;

    .line 131
    const-string v0, "battery_light_medium_color"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mBattery_light_medium_color:Landroid/preference/ListPreference;

    .line 132
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mBattery_light_medium_color:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 133
    const-string v0, "notification_light_pulse_default_color"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mNotification_light_pulse_default_color:Landroid/preference/ListPreference;

    .line 134
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mNotification_light_pulse_default_color:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 135
    const-string v0, "battery_light_enabled"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mBattery_light_enabled:Landroid/preference/CheckBoxPreference;

    .line 136
    const-string v0, "battery_light_pulse"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mBattery_light_pulse:Landroid/preference/CheckBoxPreference;

    .line 137
    const-string v0, "notification_light_pulse"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mNotification_light_pulse:Landroid/preference/CheckBoxPreference;

    .line 138
    const-string v0, "notification_light_screen_on_enable"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mNotification_light_screen_on_enable:Landroid/preference/CheckBoxPreference;

    .line 139
    const-string v0, "volume_wake_screen"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mVolume_wake_screen:Landroid/preference/CheckBoxPreference;

    .line 140
    const-string v0, "key_home_double_tap_action"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_home_double_tap_action:Landroid/preference/ListPreference;

    .line 141
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_home_double_tap_action:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 142
    const-string v0, "key_home_long_press_action"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_home_long_press_action:Landroid/preference/ListPreference;

    .line 143
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_home_long_press_action:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 144
    const-string v0, "key_app_switch_action"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_app_switch_action:Landroid/preference/ListPreference;

    .line 145
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_app_switch_action:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 146
    const-string v0, "key_app_switch_long_press_action"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_app_switch_long_press_action:Landroid/preference/ListPreference;

    .line 147
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_app_switch_long_press_action:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 148
    const-string v0, "key_menu_action"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_menu_action:Landroid/preference/ListPreference;

    .line 149
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_menu_action:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 150
    const-string v0, "key_menu_long_press_action"

    invoke-virtual {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_menu_long_press_action:Landroid/preference/ListPreference;

    .line 151
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_menu_long_press_action:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 154
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mCameraSwitch:Landroid/preference/ListPreference;

    const v1, 0x7f060001

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 155
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mCameraSwitch:Landroid/preference/ListPreference;

    const v1, 0x7f060014

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 156
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mRunningMode:Landroid/preference/ListPreference;

    const v1, 0x7f060011

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 157
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mRunningMode:Landroid/preference/ListPreference;

    const v1, 0x7f060026

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 158
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mLedIntensity:Landroid/preference/ListPreference;

    const v1, 0x7f06000d

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 159
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mLedIntensity:Landroid/preference/ListPreference;

    const v1, 0x7f060022

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 160
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mLedFade:Landroid/preference/ListPreference;

    const v1, 0x7f06000c

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 161
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mLedFade:Landroid/preference/ListPreference;

    const v1, 0x7f060021

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 162
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mWakeUp:Landroid/preference/ListPreference;

    const v1, 0x7f060012

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 163
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mWakeUp:Landroid/preference/ListPreference;

    const v1, 0x7f060027

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 164
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKcal:Landroid/preference/ListPreference;

    const v1, 0x7f060002

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 165
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKcal:Landroid/preference/ListPreference;

    const v1, 0x7f060017

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 166
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKcalSat:Landroid/preference/ListPreference;

    const v1, 0x7f060003

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 167
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKcalSat:Landroid/preference/ListPreference;

    const v1, 0x7f060018

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 168
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKeylight:Landroid/preference/ListPreference;

    const v1, 0x7f06000a

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 169
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKeylight:Landroid/preference/ListPreference;

    const v1, 0x7f06001f

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 170
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKeylightTimeout:Landroid/preference/ListPreference;

    const v1, 0x7f06000b

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 171
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKeylightTimeout:Landroid/preference/ListPreference;

    const v1, 0x7f060020

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 173
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mBattery_light_medium_color:Landroid/preference/ListPreference;

    const/high16 v1, 0x7f060000

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 174
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mBattery_light_medium_color:Landroid/preference/ListPreference;

    const v1, 0x7f060013

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 175
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mNotification_light_pulse_default_color:Landroid/preference/ListPreference;

    const v1, 0x7f060010

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 176
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mNotification_light_pulse_default_color:Landroid/preference/ListPreference;

    const v1, 0x7f060025

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 178
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_home_double_tap_action:Landroid/preference/ListPreference;

    const v1, 0x7f060006

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 179
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_home_double_tap_action:Landroid/preference/ListPreference;

    const v1, 0x7f06001b

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 180
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_home_long_press_action:Landroid/preference/ListPreference;

    const v1, 0x7f060007

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 181
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_home_long_press_action:Landroid/preference/ListPreference;

    const v1, 0x7f06001c

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 182
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_app_switch_action:Landroid/preference/ListPreference;

    const v1, 0x7f060004

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 183
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_app_switch_action:Landroid/preference/ListPreference;

    const v1, 0x7f060019

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 184
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_app_switch_long_press_action:Landroid/preference/ListPreference;

    const v1, 0x7f060005

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 185
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_app_switch_long_press_action:Landroid/preference/ListPreference;

    const v1, 0x7f06001a

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 186
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_menu_action:Landroid/preference/ListPreference;

    const v1, 0x7f060008

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 187
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_menu_action:Landroid/preference/ListPreference;

    const v1, 0x7f06001d

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 188
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_menu_long_press_action:Landroid/preference/ListPreference;

    const v1, 0x7f060009

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 189
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_menu_long_press_action:Landroid/preference/ListPreference;

    const v1, 0x7f06001e

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 190
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 24
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mCameraSwitch:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_0

    move-object/from16 v3, p2

    .line 601
    check-cast v3, Ljava/lang/String;

    .line 602
    .local v3, "ValueCameraSwitch":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mCameraSwitch:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 603
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 604
    .local v20, "mode":I
    packed-switch v20, :pswitch_data_0

    .line 637
    .end local v3    # "ValueCameraSwitch":Ljava/lang/String;
    .end local v20    # "mode":I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mRunningMode:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_1

    move-object/from16 v10, p2

    .line 638
    check-cast v10, Ljava/lang/String;

    .line 639
    .local v10, "ValueRunningModeSwitch":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mRunningMode:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 640
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 641
    .restart local v20    # "mode":I
    packed-switch v20, :pswitch_data_1

    .line 660
    .end local v10    # "ValueRunningModeSwitch":Ljava/lang/String;
    .end local v20    # "mode":I
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mLedIntensity:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_2

    move-object/from16 v9, p2

    .line 661
    check-cast v9, Ljava/lang/String;

    .line 662
    .local v9, "ValueLedIntensitySwitch":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mLedIntensity:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 663
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 664
    .restart local v20    # "mode":I
    packed-switch v20, :pswitch_data_2

    .line 694
    .end local v9    # "ValueLedIntensitySwitch":Ljava/lang/String;
    .end local v20    # "mode":I
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mLedFade:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_3

    move-object/from16 v8, p2

    .line 695
    check-cast v8, Ljava/lang/String;

    .line 696
    .local v8, "ValueLedFadeSwitch":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mLedFade:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 697
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 698
    .restart local v20    # "mode":I
    packed-switch v20, :pswitch_data_3

    .line 712
    .end local v8    # "ValueLedFadeSwitch":Ljava/lang/String;
    .end local v20    # "mode":I
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mWakeUp:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_4

    move-object/from16 v11, p2

    .line 713
    check-cast v11, Ljava/lang/String;

    .line 714
    .local v11, "ValueWakeUpSwitch":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mWakeUp:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 715
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 716
    .restart local v20    # "mode":I
    packed-switch v20, :pswitch_data_4

    .line 750
    .end local v11    # "ValueWakeUpSwitch":Ljava/lang/String;
    .end local v20    # "mode":I
    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mKcal:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_5

    move-object/from16 v5, p2

    .line 751
    check-cast v5, Ljava/lang/String;

    .line 752
    .local v5, "ValueKcalSwitch":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mKcal:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 753
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 754
    .restart local v20    # "mode":I
    packed-switch v20, :pswitch_data_5

    .line 780
    .end local v5    # "ValueKcalSwitch":Ljava/lang/String;
    .end local v20    # "mode":I
    :cond_5
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mKcalSat:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_6

    move-object/from16 v4, p2

    .line 781
    check-cast v4, Ljava/lang/String;

    .line 782
    .local v4, "ValueKcalSatSwitch":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mKcalSat:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 783
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 784
    .restart local v20    # "mode":I
    packed-switch v20, :pswitch_data_6

    .line 802
    .end local v4    # "ValueKcalSatSwitch":Ljava/lang/String;
    .end local v20    # "mode":I
    :cond_6
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mKeylight:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_7

    move-object/from16 v6, p2

    .line 803
    check-cast v6, Ljava/lang/String;

    .line 804
    .local v6, "ValueKeylightSwitch":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mKeylight:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 805
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 806
    .restart local v20    # "mode":I
    packed-switch v20, :pswitch_data_7

    .line 827
    .end local v6    # "ValueKeylightSwitch":Ljava/lang/String;
    .end local v20    # "mode":I
    :cond_7
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mKeylightTimeout:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_8

    move-object/from16 v7, p2

    .line 828
    check-cast v7, Ljava/lang/String;

    .line 829
    .local v7, "ValueKeylightTimeoutSwitch":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mKeylightTimeout:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 830
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 831
    .restart local v20    # "mode":I
    packed-switch v20, :pswitch_data_8

    .line 857
    .end local v7    # "ValueKeylightTimeoutSwitch":Ljava/lang/String;
    .end local v20    # "mode":I
    :cond_8
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mBattery_light_medium_color:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_9

    move-object/from16 v18, p2

    .line 858
    check-cast v18, Ljava/lang/String;

    .line 859
    .local v18, "ValuemBattery_light_medium_color":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mBattery_light_medium_color:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 860
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 861
    .restart local v20    # "mode":I
    packed-switch v20, :pswitch_data_9

    .line 903
    .end local v18    # "ValuemBattery_light_medium_color":Ljava/lang/String;
    .end local v20    # "mode":I
    :cond_9
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mNotification_light_pulse_default_color:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_a

    move-object/from16 v19, p2

    .line 904
    check-cast v19, Ljava/lang/String;

    .line 905
    .local v19, "ValuemNotification_light_pulse_default_color":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mNotification_light_pulse_default_color:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 906
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 907
    .restart local v20    # "mode":I
    packed-switch v20, :pswitch_data_a

    .line 949
    .end local v19    # "ValuemNotification_light_pulse_default_color":Ljava/lang/String;
    .end local v20    # "mode":I
    :cond_a
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_home_double_tap_action:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_b

    move-object/from16 v14, p2

    .line 950
    check-cast v14, Ljava/lang/String;

    .line 951
    .local v14, "Valuekey_home_double_tap_action":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_home_double_tap_action:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 952
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 953
    .restart local v20    # "mode":I
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "key_home_double_tap_action"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 954
    packed-switch v20, :pswitch_data_b

    .line 987
    .end local v14    # "Valuekey_home_double_tap_action":Ljava/lang/String;
    .end local v20    # "mode":I
    :cond_b
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_home_long_press_action:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_c

    move-object/from16 v15, p2

    .line 988
    check-cast v15, Ljava/lang/String;

    .line 989
    .local v15, "Valuekey_home_long_press_action":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_home_long_press_action:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 990
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 991
    .restart local v20    # "mode":I
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "key_home_long_press_action"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 992
    packed-switch v20, :pswitch_data_c

    .line 1025
    .end local v15    # "Valuekey_home_long_press_action":Ljava/lang/String;
    .end local v20    # "mode":I
    :cond_c
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_app_switch_action:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_d

    move-object/from16 v12, p2

    .line 1026
    check-cast v12, Ljava/lang/String;

    .line 1027
    .local v12, "Valuekey_app_switch_action":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_app_switch_action:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1028
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 1029
    .restart local v20    # "mode":I
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "key_app_switch_action"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1030
    packed-switch v20, :pswitch_data_d

    .line 1063
    .end local v12    # "Valuekey_app_switch_action":Ljava/lang/String;
    .end local v20    # "mode":I
    :cond_d
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_app_switch_long_press_action:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_e

    move-object/from16 v13, p2

    .line 1064
    check-cast v13, Ljava/lang/String;

    .line 1065
    .local v13, "Valuekey_app_switch_long_press_action":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_app_switch_long_press_action:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1066
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 1067
    .restart local v20    # "mode":I
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "key_app_switch_long_press_action"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1068
    packed-switch v20, :pswitch_data_e

    .line 1101
    .end local v13    # "Valuekey_app_switch_long_press_action":Ljava/lang/String;
    .end local v20    # "mode":I
    :cond_e
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_menu_action:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_f

    move-object/from16 v16, p2

    .line 1102
    check-cast v16, Ljava/lang/String;

    .line 1103
    .local v16, "Valuekey_menu_action":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_menu_action:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1104
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 1105
    .restart local v20    # "mode":I
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "key_menu_action"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1106
    packed-switch v20, :pswitch_data_f

    .line 1139
    .end local v16    # "Valuekey_menu_action":Ljava/lang/String;
    .end local v20    # "mode":I
    :cond_f
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_menu_long_press_action:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_10

    move-object/from16 v17, p2

    .line 1140
    check-cast v17, Ljava/lang/String;

    .line 1141
    .local v17, "Valuekey_menu_long_press_action":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_menu_long_press_action:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1142
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 1143
    .restart local v20    # "mode":I
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "key_menu_long_press_action"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1144
    packed-switch v20, :pswitch_data_10

    .line 1176
    .end local v17    # "Valuekey_menu_long_press_action":Ljava/lang/String;
    .end local v20    # "mode":I
    :cond_10
    :goto_10
    const/16 v21, 0x0

    return v21

    .line 606
    .restart local v3    # "ValueCameraSwitch":Ljava/lang/String;
    .restart local v20    # "mode":I
    :pswitch_0
    const v21, 0x7f070010

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 607
    const-string v21, "mount -o remount,rw /system"

    invoke-static/range {v21 .. v21}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    .line 608
    const-string v21, "rm -rf /system/app/Camera"

    invoke-static/range {v21 .. v21}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    .line 609
    const-string v21, "cp -rf /system/app/CameraDir/google_camera /system/app/Camera"

    invoke-static/range {v21 .. v21}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    .line 610
    const-string v21, "chmod -R 0755 /system/app/Camera"

    invoke-static/range {v21 .. v21}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    .line 611
    const-string v21, "chmod 0644 /system/app/Camera/Camera.apk"

    invoke-static/range {v21 .. v21}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    .line 612
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->DialogReboot()V

    goto/16 :goto_0

    .line 615
    :pswitch_1
    const v21, 0x7f070011

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 616
    const-string v21, "mount -o remount,rw /system"

    invoke-static/range {v21 .. v21}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    .line 617
    const-string v21, "rm -rf /system/app/Camera"

    invoke-static/range {v21 .. v21}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    .line 618
    const-string v21, "cp -rf /system/app/CameraDir/meizu_camera /system/app/Camera"

    invoke-static/range {v21 .. v21}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    .line 619
    const-string v21, "chmod -R 0755 /system/app/Camera"

    invoke-static/range {v21 .. v21}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    .line 620
    const-string v21, "chmod 0644 /system/app/Camera/Camera.apk"

    invoke-static/range {v21 .. v21}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    .line 621
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->DialogReboot()V

    goto/16 :goto_0

    .line 624
    :pswitch_2
    const v21, 0x7f07000f

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 625
    const-string v21, "mount -o remount,rw /system"

    invoke-static/range {v21 .. v21}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    .line 626
    const-string v21, "rm -rf /system/app/Camera"

    invoke-static/range {v21 .. v21}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    .line 627
    const-string v21, "cp -rf /system/app/CameraDir/cm_camera /system/app/Camera"

    invoke-static/range {v21 .. v21}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    .line 628
    const-string v21, "chmod -R 0755 /system/app/Camera"

    invoke-static/range {v21 .. v21}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    .line 629
    const-string v21, "chmod 0644 /system/app/Camera/Camera.apk"

    invoke-static/range {v21 .. v21}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    .line 630
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->DialogReboot()V

    goto/16 :goto_0

    .line 643
    .end local v3    # "ValueCameraSwitch":Ljava/lang/String;
    .restart local v10    # "ValueRunningModeSwitch":Ljava/lang/String;
    :pswitch_3
    const v21, 0x7f070065

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 644
    const-string v21, "/system/bin/running_mode_battery"

    invoke-static/range {v21 .. v21}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_1

    .line 647
    :pswitch_4
    const v21, 0x7f070067

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 648
    const-string v21, "/system/bin/running_mode_standard"

    invoke-static/range {v21 .. v21}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_1

    .line 651
    :pswitch_5
    const v21, 0x7f070066

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 652
    const-string v21, "/system/bin/running_mode_performance"

    invoke-static/range {v21 .. v21}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    .line 653
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->DialogAttentionPerformance()V

    goto/16 :goto_1

    .line 666
    .end local v10    # "ValueRunningModeSwitch":Ljava/lang/String;
    .restart local v9    # "ValueLedIntensitySwitch":Ljava/lang/String;
    :pswitch_6
    const v21, 0x7f07004a

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 667
    const-string v21, "echo \'40\' > /sys/class/sec/led/led_intensity"

    invoke-static/range {v21 .. v21}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_2

    .line 670
    :pswitch_7
    const v21, 0x7f07004b

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 671
    const-string v21, "echo \'30\' > /sys/class/sec/led/led_intensity"

    invoke-static/range {v21 .. v21}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_2

    .line 674
    :pswitch_8
    const v21, 0x7f07004c

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 675
    const-string v21, "echo \'20\' > /sys/class/sec/led/led_intensity"

    invoke-static/range {v21 .. v21}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_2

    .line 678
    :pswitch_9
    const v21, 0x7f07004d

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 679
    const-string v21, "echo \'10\' > /sys/class/sec/led/led_intensity"

    invoke-static/range {v21 .. v21}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_2

    .line 682
    :pswitch_a
    const v21, 0x7f07004e

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 683
    const-string v21, "echo \'5\' > /sys/class/sec/led/led_intensity"

    invoke-static/range {v21 .. v21}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_2

    .line 686
    :pswitch_b
    const v21, 0x7f07004f

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 687
    const-string v21, "echo \'1\' > /sys/class/sec/led/led_intensity"

    invoke-static/range {v21 .. v21}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_2

    .line 700
    .end local v9    # "ValueLedIntensitySwitch":Ljava/lang/String;
    .restart local v8    # "ValueLedFadeSwitch":Ljava/lang/String;
    :pswitch_c
    const v21, 0x7f070047

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 701
    const-string v21, "echo \'0\' > /sys/class/sec/led/led_fade"

    invoke-static/range {v21 .. v21}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_3

    .line 704
    :pswitch_d
    const v21, 0x7f070048

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 705
    const-string v21, "echo \'1\' > /sys/class/sec/led/led_fade"

    invoke-static/range {v21 .. v21}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_3

    .line 718
    .end local v8    # "ValueLedFadeSwitch":Ljava/lang/String;
    .restart local v11    # "ValueWakeUpSwitch":Ljava/lang/String;
    :pswitch_e
    const v21, 0x7f070077

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 719
    const-string v21, "echo \'0\' > /sys/class/i2c-adapter/i2c-2/2-0020/input/input2/screen_wake_options"

    invoke-static/range {v21 .. v21}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_4

    .line 722
    :pswitch_f
    const v21, 0x7f070078

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 723
    const-string v21, "echo \'1\' > /sys/class/i2c-adapter/i2c-2/2-0020/input/input2/screen_wake_options"

    invoke-static/range {v21 .. v21}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_4

    .line 726
    :pswitch_10
    const v21, 0x7f070079

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 727
    const-string v21, "echo \'2\' > /sys/class/i2c-adapter/i2c-2/2-0020/input/input2/screen_wake_options"

    invoke-static/range {v21 .. v21}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_4

    .line 730
    :pswitch_11
    const v21, 0x7f07007a

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 731
    const-string v21, "echo \'3\' > /sys/class/i2c-adapter/i2c-2/2-0020/input/input2/screen_wake_options"

    invoke-static/range {v21 .. v21}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_4

    .line 734
    :pswitch_12
    const v21, 0x7f07007b

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 735
    const-string v21, "echo \'4\' > /sys/class/i2c-adapter/i2c-2/2-0020/input/input2/screen_wake_options"

    invoke-static/range {v21 .. v21}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_4

    .line 738
    :pswitch_13
    const v21, 0x7f07007c

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 739
    const-string v21, "echo \'5\' > /sys/class/i2c-adapter/i2c-2/2-0020/input/input2/screen_wake_options"

    invoke-static/range {v21 .. v21}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_4

    .line 742
    :pswitch_14
    const v21, 0x7f07007d

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 743
    const-string v21, "echo \'6\' > /sys/class/i2c-adapter/i2c-2/2-0020/input/input2/screen_wake_options"

    invoke-static/range {v21 .. v21}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_4

    .line 756
    .end local v11    # "ValueWakeUpSwitch":Ljava/lang/String;
    .restart local v5    # "ValueKcalSwitch":Ljava/lang/String;
    :pswitch_15
    const v21, 0x7f070035

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 757
    const-string v21, "echo \'255 255 255\' >/sys/devices/platform/kcal_ctrl.0/kcal"

    invoke-static/range {v21 .. v21}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_5

    .line 760
    :pswitch_16
    const v21, 0x7f070036

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 761
    const-string v21, "echo \'200 200 205\' > /sys/devices/platform/kcal_ctrl.0/kcal"

    invoke-static/range {v21 .. v21}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_5

    .line 764
    :pswitch_17
    const v21, 0x7f070037

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 765
    const-string v21, "echo \'150 150 155\' > /sys/devices/platform/kcal_ctrl.0/kcal"

    invoke-static/range {v21 .. v21}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_5

    .line 768
    :pswitch_18
    const v21, 0x7f070038

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 769
    const-string v21, "echo \'125 125 130\' > /sys/devices/platform/kcal_ctrl.0/kcal"

    invoke-static/range {v21 .. v21}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_5

    .line 772
    :pswitch_19
    const v21, 0x7f070039

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 773
    const-string v21, "echo \'75 75 80\' > /sys/devices/platform/kcal_ctrl.0/kcal"

    invoke-static/range {v21 .. v21}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_5

    .line 786
    .end local v5    # "ValueKcalSwitch":Ljava/lang/String;
    .restart local v4    # "ValueKcalSatSwitch":Ljava/lang/String;
    :pswitch_1a
    const v21, 0x7f070030

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 787
    const-string v21, "echo \'255\' >/sys/devices/platform/kcal_ctrl.0/kcal_sat"

    invoke-static/range {v21 .. v21}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_6

    .line 790
    :pswitch_1b
    const v21, 0x7f070031

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 791
    const-string v21, "echo \'128\' > /sys/devices/platform/kcal_ctrl.0/kcal_sat"

    invoke-static/range {v21 .. v21}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_6

    .line 794
    :pswitch_1c
    const v21, 0x7f070032

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 795
    const-string v21, "echo \'285\' > /sys/devices/platform/kcal_ctrl.0/kcal_sat"

    invoke-static/range {v21 .. v21}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_6

    .line 808
    .end local v4    # "ValueKcalSatSwitch":Ljava/lang/String;
    .restart local v6    # "ValueKeylightSwitch":Ljava/lang/String;
    :pswitch_1d
    const v21, 0x7f07003c

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 809
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mKeylightTimeout:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 810
    const-string v21, "echo \'2\' >sys/class/misc/btk_control/btkc_mode"

    invoke-static/range {v21 .. v21}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_7

    .line 813
    :pswitch_1e
    const v21, 0x7f07003d

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mKeylightTimeout:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 815
    const-string v21, "echo \'0\' >sys/class/misc/btk_control/btkc_mode"

    invoke-static/range {v21 .. v21}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_7

    .line 818
    :pswitch_1f
    const v21, 0x7f07003e

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/luo2888/flymesettings/DeviceSettings;->mKeylightTimeout:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 820
    const-string v21, "echo \'1\' > sys/class/misc/btk_control/btkc_mode"

    invoke-static/range {v21 .. v21}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_7

    .line 833
    .end local v6    # "ValueKeylightSwitch":Ljava/lang/String;
    .restart local v7    # "ValueKeylightTimeoutSwitch":Ljava/lang/String;
    :pswitch_20
    const v21, 0x7f07003f

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 834
    const-string v21, "echo \'1\' >sys/class/misc/btk_control/btkc_timeout"

    invoke-static/range {v21 .. v21}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_8

    .line 837
    :pswitch_21
    const v21, 0x7f070040

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 838
    const-string v21, "echo \'5\' >sys/class/misc/btk_control/btkc_timeout"

    invoke-static/range {v21 .. v21}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_8

    .line 841
    :pswitch_22
    const v21, 0x7f070041

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 842
    const-string v21, "echo \'10\' > sys/class/misc/btk_control/btkc_timeout"

    invoke-static/range {v21 .. v21}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_8

    .line 845
    :pswitch_23
    const v21, 0x7f070042

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 846
    const-string v21, "echo \'20\' > sys/class/misc/btk_control/btkc_timeout"

    invoke-static/range {v21 .. v21}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_8

    .line 849
    :pswitch_24
    const v21, 0x7f070043

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 850
    const-string v21, "echo \'7200\' > sys/class/misc/btk_control/btkc_timeout"

    invoke-static/range {v21 .. v21}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_8

    .line 863
    .end local v7    # "ValueKeylightTimeoutSwitch":Ljava/lang/String;
    .restart local v18    # "ValuemBattery_light_medium_color":Ljava/lang/String;
    :pswitch_25
    const v21, 0x7f070056

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 864
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "battery_light_medium_color"

    const/high16 v23, 0xff0000

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_9

    .line 867
    :pswitch_26
    const v21, 0x7f070050

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 868
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "battery_light_medium_color"

    const/16 v23, 0xff

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_9

    .line 871
    :pswitch_27
    const v21, 0x7f070051

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 872
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "battery_light_medium_color"

    const v23, 0xffff

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_9

    .line 875
    :pswitch_28
    const v21, 0x7f070052

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 876
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "battery_light_medium_color"

    const v23, 0x28ff00

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_9

    .line 879
    :pswitch_29
    const v21, 0x7f070057

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 880
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "battery_light_medium_color"

    const v23, 0xffffff

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_9

    .line 883
    :pswitch_2a
    const v21, 0x7f070058

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 884
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "battery_light_medium_color"

    const v23, 0xffff00

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_9

    .line 887
    :pswitch_2b
    const v21, 0x7f070053

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 888
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "battery_light_medium_color"

    const v23, 0xff2200

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_9

    .line 891
    :pswitch_2c
    const v21, 0x7f070055

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 892
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "battery_light_medium_color"

    const v23, 0xb400ff

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_9

    .line 895
    :pswitch_2d
    const v21, 0x7f070054

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 896
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "battery_light_medium_color"

    const v23, 0xff0084

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_9

    .line 909
    .end local v18    # "ValuemBattery_light_medium_color":Ljava/lang/String;
    .restart local v19    # "ValuemNotification_light_pulse_default_color":Ljava/lang/String;
    :pswitch_2e
    const v21, 0x7f070056

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 910
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "notification_light_pulse_default_color"

    const/high16 v23, 0xff0000

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_a

    .line 913
    :pswitch_2f
    const v21, 0x7f070050

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 914
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "notification_light_pulse_default_color"

    const/16 v23, 0xff

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_a

    .line 917
    :pswitch_30
    const v21, 0x7f070051

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 918
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "notification_light_pulse_default_color"

    const v23, 0xffff

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_a

    .line 921
    :pswitch_31
    const v21, 0x7f070052

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 922
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "notification_light_pulse_default_color"

    const v23, 0x28ff00

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_a

    .line 925
    :pswitch_32
    const v21, 0x7f070057

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 926
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "notification_light_pulse_default_color"

    const v23, 0xffffff

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_a

    .line 929
    :pswitch_33
    const v21, 0x7f070058

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 930
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "notification_light_pulse_default_color"

    const v23, 0xffff00

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_a

    .line 933
    :pswitch_34
    const v21, 0x7f070053

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 934
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "notification_light_pulse_default_color"

    const v23, 0xff2200

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_a

    .line 937
    :pswitch_35
    const v21, 0x7f070055

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 938
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "notification_light_pulse_default_color"

    const v23, 0xb400ff

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_a

    .line 941
    :pswitch_36
    const v21, 0x7f070054

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 942
    invoke-virtual/range {p0 .. p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "notification_light_pulse_default_color"

    const v23, 0xff0084

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_a

    .line 956
    .end local v19    # "ValuemNotification_light_pulse_default_color":Ljava/lang/String;
    .restart local v14    # "Valuekey_home_double_tap_action":Ljava/lang/String;
    :pswitch_37
    const v21, 0x7f070024

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_b

    .line 959
    :pswitch_38
    const v21, 0x7f070023

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_b

    .line 962
    :pswitch_39
    const v21, 0x7f07001f

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_b

    .line 965
    :pswitch_3a
    const v21, 0x7f070025

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_b

    .line 968
    :pswitch_3b
    const v21, 0x7f070027

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_b

    .line 971
    :pswitch_3c
    const v21, 0x7f070020

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_b

    .line 974
    :pswitch_3d
    const v21, 0x7f070022

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_b

    .line 977
    :pswitch_3e
    const v21, 0x7f070026

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_b

    .line 980
    :pswitch_3f
    const v21, 0x7f070021

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_b

    .line 994
    .end local v14    # "Valuekey_home_double_tap_action":Ljava/lang/String;
    .restart local v15    # "Valuekey_home_long_press_action":Ljava/lang/String;
    :pswitch_40
    const v21, 0x7f070024

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_c

    .line 997
    :pswitch_41
    const v21, 0x7f070023

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_c

    .line 1000
    :pswitch_42
    const v21, 0x7f07001f

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_c

    .line 1003
    :pswitch_43
    const v21, 0x7f070025

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_c

    .line 1006
    :pswitch_44
    const v21, 0x7f070027

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_c

    .line 1009
    :pswitch_45
    const v21, 0x7f070020

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_c

    .line 1012
    :pswitch_46
    const v21, 0x7f070022

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_c

    .line 1015
    :pswitch_47
    const v21, 0x7f070026

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_c

    .line 1018
    :pswitch_48
    const v21, 0x7f070021

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_c

    .line 1032
    .end local v15    # "Valuekey_home_long_press_action":Ljava/lang/String;
    .restart local v12    # "Valuekey_app_switch_action":Ljava/lang/String;
    :pswitch_49
    const v21, 0x7f070024

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_d

    .line 1035
    :pswitch_4a
    const v21, 0x7f070023

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_d

    .line 1038
    :pswitch_4b
    const v21, 0x7f07001f

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_d

    .line 1041
    :pswitch_4c
    const v21, 0x7f070025

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_d

    .line 1044
    :pswitch_4d
    const v21, 0x7f070027

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_d

    .line 1047
    :pswitch_4e
    const v21, 0x7f070020

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_d

    .line 1050
    :pswitch_4f
    const v21, 0x7f070022

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_d

    .line 1053
    :pswitch_50
    const v21, 0x7f070026

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_d

    .line 1056
    :pswitch_51
    const v21, 0x7f070021

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_d

    .line 1070
    .end local v12    # "Valuekey_app_switch_action":Ljava/lang/String;
    .restart local v13    # "Valuekey_app_switch_long_press_action":Ljava/lang/String;
    :pswitch_52
    const v21, 0x7f070024

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_e

    .line 1073
    :pswitch_53
    const v21, 0x7f070023

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_e

    .line 1076
    :pswitch_54
    const v21, 0x7f07001f

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_e

    .line 1079
    :pswitch_55
    const v21, 0x7f070025

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_e

    .line 1082
    :pswitch_56
    const v21, 0x7f070027

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_e

    .line 1085
    :pswitch_57
    const v21, 0x7f070020

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_e

    .line 1088
    :pswitch_58
    const v21, 0x7f070022

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_e

    .line 1091
    :pswitch_59
    const v21, 0x7f070026

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_e

    .line 1094
    :pswitch_5a
    const v21, 0x7f070021

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_e

    .line 1108
    .end local v13    # "Valuekey_app_switch_long_press_action":Ljava/lang/String;
    .restart local v16    # "Valuekey_menu_action":Ljava/lang/String;
    :pswitch_5b
    const v21, 0x7f070024

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_f

    .line 1111
    :pswitch_5c
    const v21, 0x7f070023

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_f

    .line 1114
    :pswitch_5d
    const v21, 0x7f07001f

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_f

    .line 1117
    :pswitch_5e
    const v21, 0x7f070025

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_f

    .line 1120
    :pswitch_5f
    const v21, 0x7f070027

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_f

    .line 1123
    :pswitch_60
    const v21, 0x7f070020

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_f

    .line 1126
    :pswitch_61
    const v21, 0x7f070022

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_f

    .line 1129
    :pswitch_62
    const v21, 0x7f070026

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_f

    .line 1132
    :pswitch_63
    const v21, 0x7f070021

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_f

    .line 1146
    .end local v16    # "Valuekey_menu_action":Ljava/lang/String;
    .restart local v17    # "Valuekey_menu_long_press_action":Ljava/lang/String;
    :pswitch_64
    const v21, 0x7f070024

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_10

    .line 1149
    :pswitch_65
    const v21, 0x7f070023

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_10

    .line 1152
    :pswitch_66
    const v21, 0x7f07001f

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_10

    .line 1155
    :pswitch_67
    const v21, 0x7f070025

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_10

    .line 1158
    :pswitch_68
    const v21, 0x7f070027

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_10

    .line 1161
    :pswitch_69
    const v21, 0x7f070020

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_10

    .line 1164
    :pswitch_6a
    const v21, 0x7f070022

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_10

    .line 1167
    :pswitch_6b
    const v21, 0x7f070026

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_10

    .line 1170
    :pswitch_6c
    const v21, 0x7f070021

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_10

    .line 604
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 641
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 664
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 698
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 716
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

    .line 754
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
    .end packed-switch

    .line 784
    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
    .end packed-switch

    .line 806
    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
    .end packed-switch

    .line 831
    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
    .end packed-switch

    .line 861
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

    .line 907
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

    .line 954
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

    .line 992
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

    .line 1030
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

    .line 1068
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

    .line 1106
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

    .line 1144
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
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferencescreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 224
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mCharge:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mCharge:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 226
    invoke-virtual {p0}, Lcom/luo2888/flymesettings/DeviceSettings;->DialogAttention()V

    .line 227
    const-string v0, "echo \'2200 mA\' > /sys/kernel/charge_levels/charge_level_ac"

    invoke-static {v0}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    .line 228
    const-string v0, "echo \'950 mA\' > /sys/kernel/charge_levels/charge_level_usb"

    invoke-static {v0}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    .line 234
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mGLoveMode:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mGLoveMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 236
    const-string v0, "echo \'glove_mode,1\' > /sys/class/sec/tsp/cmd"

    invoke-static {v0}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    .line 241
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKcalInvert:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_2

    .line 242
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKcalInvert:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 243
    const-string v0, "echo \'1\' >  /sys/devices/platform/kcal_ctrl.0/kcal_invert"

    invoke-static {v0}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    .line 248
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mBattery_light_enabled:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_3

    .line 249
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mBattery_light_enabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 250
    invoke-virtual {p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "battery_light_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 255
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mBattery_light_pulse:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_4

    .line 256
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mBattery_light_pulse:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 257
    invoke-virtual {p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "battery_light_pulse"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 262
    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mNotification_light_pulse:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_5

    .line 263
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mNotification_light_pulse:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 264
    invoke-virtual {p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_light_pulse"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 269
    :cond_5
    :goto_5
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mNotification_light_screen_on_enable:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_6

    .line 270
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mNotification_light_screen_on_enable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 271
    invoke-virtual {p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_light_screen_on_enable"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 276
    :cond_6
    :goto_6
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mVolume_wake_screen:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_7

    .line 277
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mVolume_wake_screen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 278
    invoke-virtual {p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "volume_wake_screen"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 283
    :cond_7
    :goto_7
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->flashota:Landroid/preference/PreferenceScreen;

    if-ne p2, v0, :cond_8

    .line 284
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070071

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070070

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070072

    new-instance v2, Lcom/luo2888/flymesettings/DeviceSettings$1;

    invoke-direct {v2, p0}, Lcom/luo2888/flymesettings/DeviceSettings$1;-><init>(Lcom/luo2888/flymesettings/DeviceSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 305
    :cond_8
    return v3

    .line 230
    :cond_9
    const-string v0, "echo \'0 mA\' > /sys/kernel/charge_levels/charge_level_ac"

    invoke-static {v0}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    .line 231
    const-string v0, "echo \'0 mA\' > /sys/kernel/charge_levels/charge_level_usb"

    invoke-static {v0}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 238
    :cond_a
    const-string v0, "echo \'glove_mode,0\' > /sys/class/sec/tsp/cmd"

    invoke-static {v0}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_1

    .line 245
    :cond_b
    const-string v0, "echo \'0\' > /sys/devices/platform/kcal_ctrl.0/kcal_invert"

    invoke-static {v0}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    goto/16 :goto_2

    .line 252
    :cond_c
    invoke-virtual {p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "battery_light_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    .line 259
    :cond_d
    invoke-virtual {p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "battery_light_pulse"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_4

    .line 266
    :cond_e
    invoke-virtual {p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_light_pulse"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_5

    .line 273
    :cond_f
    invoke-virtual {p0}, Lcom/luo2888/flymesettings/DeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_light_screen_on_enable"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_6

    .line 280
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
    .line 203
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    .line 204
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mCameraSwitch:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->setListPreferenceSummary(Landroid/preference/ListPreference;)V

    .line 205
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mRunningMode:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->setListPreferenceSummary(Landroid/preference/ListPreference;)V

    .line 206
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mLedIntensity:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->setListPreferenceSummary(Landroid/preference/ListPreference;)V

    .line 207
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mLedFade:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->setListPreferenceSummary(Landroid/preference/ListPreference;)V

    .line 208
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mWakeUp:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->setListPreferenceSummary(Landroid/preference/ListPreference;)V

    .line 209
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKcal:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->setListPreferenceSummary(Landroid/preference/ListPreference;)V

    .line 210
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKcalSat:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->setListPreferenceSummary(Landroid/preference/ListPreference;)V

    .line 211
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKeylight:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->setListPreferenceSummary(Landroid/preference/ListPreference;)V

    .line 212
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKeylightTimeout:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->setListPreferenceSummary(Landroid/preference/ListPreference;)V

    .line 213
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_home_long_press_action:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->setListPreferenceSummary(Landroid/preference/ListPreference;)V

    .line 214
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_home_double_tap_action:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->setListPreferenceSummary(Landroid/preference/ListPreference;)V

    .line 215
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_app_switch_action:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->setListPreferenceSummary(Landroid/preference/ListPreference;)V

    .line 216
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_app_switch_long_press_action:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->setListPreferenceSummary(Landroid/preference/ListPreference;)V

    .line 217
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_menu_action:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->setListPreferenceSummary(Landroid/preference/ListPreference;)V

    .line 218
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mKey_menu_long_press_action:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->setListPreferenceSummary(Landroid/preference/ListPreference;)V

    .line 219
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mBattery_light_medium_color:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->setListPreferenceSummary(Landroid/preference/ListPreference;)V

    .line 220
    iget-object v0, p0, Lcom/luo2888/flymesettings/DeviceSettings;->mNotification_light_pulse_default_color:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/luo2888/flymesettings/DeviceSettings;->setListPreferenceSummary(Landroid/preference/ListPreference;)V

    .line 221
    return-void
.end method
