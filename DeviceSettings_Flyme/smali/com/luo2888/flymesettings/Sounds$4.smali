.class Lcom/luo2888/flymesettings/Sounds$4;
.super Ljava/lang/Object;
.source "Sounds.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luo2888/flymesettings/Sounds;->DialogReboot()V
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
    .line 99
    iput-object p1, p0, Lcom/luo2888/flymesettings/Sounds$4;->this$0:Lcom/luo2888/flymesettings/Sounds;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lcom/luo2888/flymesettings/Sounds$4;->this$0:Lcom/luo2888/flymesettings/Sounds;

    invoke-virtual {v0}, Lcom/luo2888/flymesettings/Sounds;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070017

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 103
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 104
    return-void
.end method
