.class Lcom/luo2888/flymesettings/Sounds$2;
.super Ljava/lang/Thread;
.source "Sounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luo2888/flymesettings/Sounds;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/luo2888/flymesettings/Sounds;


# direct methods
.method constructor <init>(Lcom/luo2888/flymesettings/Sounds;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/luo2888/flymesettings/Sounds$2;->this$0:Lcom/luo2888/flymesettings/Sounds;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 60
    const-string v0, "mv /system/media/audio/ui/camera_click.bak /system/media/audio/ui/camera_click.ogg"

    invoke-static {v0}, Lcom/luo2888/flymesettings/utils/Tools;->Shell(Ljava/lang/String;)I

    .line 61
    return-void
.end method
