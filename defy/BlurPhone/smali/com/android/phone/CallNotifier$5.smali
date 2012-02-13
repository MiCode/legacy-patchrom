.class Lcom/android/phone/CallNotifier$5;
.super Ljava/lang/Object;
.source "CallNotifier.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CallNotifier;->showCallNotConnectedRetryDialog(Ljava/lang/String;Lcom/android/internal/telephony/Phone;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallNotifier;

.field final synthetic val$number:Ljava/lang/String;

.field final synthetic val$phone:Lcom/android/internal/telephony/Phone;


# direct methods
.method constructor <init>(Lcom/android/phone/CallNotifier;Lcom/android/internal/telephony/Phone;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2440
    iput-object p1, p0, Lcom/android/phone/CallNotifier$5;->this$0:Lcom/android/phone/CallNotifier;

    iput-object p2, p0, Lcom/android/phone/CallNotifier$5;->val$phone:Lcom/android/internal/telephony/Phone;

    iput-object p3, p0, Lcom/android/phone/CallNotifier$5;->val$number:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    .line 2442
    iget-object v0, p0, Lcom/android/phone/CallNotifier$5;->this$0:Lcom/android/phone/CallNotifier;

    const/4 v1, 0x1

    #setter for: Lcom/android/phone/CallNotifier;->mIsRedialCall:Z
    invoke-static {v0, v1}, Lcom/android/phone/CallNotifier;->access$1102(Lcom/android/phone/CallNotifier;Z)Z

    .line 2443
    iget-object v0, p0, Lcom/android/phone/CallNotifier$5;->val$phone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/CallNotifier$5;->val$number:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneUtils;->placeCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;)I

    .line 2445
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->displayCallScreen()V

    .line 2446
    iget-object v0, p0, Lcom/android/phone/CallNotifier$5;->this$0:Lcom/android/phone/CallNotifier;

    #setter for: Lcom/android/phone/CallNotifier;->mRetryAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v2}, Lcom/android/phone/CallNotifier;->access$1202(Lcom/android/phone/CallNotifier;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 2447
    return-void
.end method
