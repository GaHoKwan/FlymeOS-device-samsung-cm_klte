.class Lcom/luo2888/flymesettings/Sounds$3;
.super Ljava/lang/Object;
.source "Sounds.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luo2888/flymesettings/Sounds;->DialogAttention()V
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
    .line 80
    iput-object p1, p0, Lcom/luo2888/flymesettings/Sounds$3;->this$0:Lcom/luo2888/flymesettings/Sounds;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 83
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 84
    return-void
.end method
