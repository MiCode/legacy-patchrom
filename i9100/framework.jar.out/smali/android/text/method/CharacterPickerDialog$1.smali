.class Landroid/text/method/CharacterPickerDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "CharacterPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/text/method/CharacterPickerDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/text/method/CharacterPickerDialog;


# direct methods
.method constructor <init>(Landroid/text/method/CharacterPickerDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Landroid/text/method/CharacterPickerDialog$1;->this$0:Landroid/text/method/CharacterPickerDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 108
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Landroid/text/method/CharacterPickerDialog$1;->this$0:Landroid/text/method/CharacterPickerDialog;

    invoke-virtual {v1}, Landroid/text/method/CharacterPickerDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Landroid/text/method/CharacterPickerDialog$1;->this$0:Landroid/text/method/CharacterPickerDialog;

    invoke-virtual {v1}, Landroid/text/method/CharacterPickerDialog;->dismiss()V

    .line 114
    :cond_0
    return-void
.end method
