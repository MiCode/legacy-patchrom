.class Lcom/android/phone/InVTCallScreen$40;
.super Ljava/lang/Object;
.source "InVTCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InVTCallScreen;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InVTCallScreen;

.field final synthetic val$confirmedNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 9082
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    iput-object p2, p0, Lcom/android/phone/InVTCallScreen$40;->val$confirmedNumber:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 9085
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$4700(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6c

    const-wide/16 v2, 0x1194

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 9088
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9089
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 9091
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$40;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    const-string v3, "tel"

    iget-object v4, p0, Lcom/android/phone/InVTCallScreen$40;->val$confirmedNumber:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/android/phone/InVTCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 9094
    return-void
.end method
