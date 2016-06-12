.class public Lcom/luo2888/flymesettings/mDNIeScenario;
.super Landroid/preference/ListPreference;
.source "mDNIeScenario.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final FILE:Ljava/lang/String; = "/sys/class/mdnie/mdnie/scenario"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-virtual {p0, p0}, Lcom/luo2888/flymesettings/mDNIeScenario;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 33
    return-void
.end method

.method public static isSupported()Z
    .locals 1

    .prologue
    .line 38
    const-string v0, "/sys/class/mdnie/mdnie/scenario"

    invoke-static {v0}, Lcom/luo2888/flymesettings/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static restore(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-static {}, Lcom/luo2888/flymesettings/mDNIeScenario;->isSupported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 52
    :goto_0
    return-void

    .line 50
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 51
    .local v0, "sharedPrefs":Landroid/content/SharedPreferences;
    const-string v1, "/sys/class/mdnie/mdnie/scenario"

    const-string v2, "mdnie_scenario"

    const-string v3, "0"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/luo2888/flymesettings/Utils;->writeValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 55
    const-string v0, "/sys/class/mdnie/mdnie/scenario"

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {v0, p2}, Lcom/luo2888/flymesettings/Utils;->writeValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const/4 v0, 0x1

    return v0
.end method
