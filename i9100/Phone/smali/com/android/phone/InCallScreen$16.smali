.class Lcom/android/phone/InCallScreen$16;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 4806
    iput-object p1, p0, Lcom/android/phone/InCallScreen$16;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v5, 0x0

    .line 4810
    iget-object v1, p0, Lcom/android/phone/InCallScreen$16;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$2300(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InCallScreen$16;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$2200(Lcom/android/phone/InCallScreen;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x96

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4813
    iget-object v1, p0, Lcom/android/phone/InCallScreen$16;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4816
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4817
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4818
    iget-object v1, p0, Lcom/android/phone/InCallScreen$16;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v0}, Lcom/android/phone/InCallScreen;->sendBroadcast(Landroid/content/Intent;)V

    .line 4820
    iget-object v1, p0, Lcom/android/phone/InCallScreen$16;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->showRadioOnDialog()V
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$2800(Lcom/android/phone/InCallScreen;)V

    .line 4822
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 4823
    return-void
.end method
