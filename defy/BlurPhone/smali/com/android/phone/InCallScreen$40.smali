.class Lcom/android/phone/InCallScreen$40;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallScreen;->handleOutgoingCallInAirplaneMode()V
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
    .line 7323
    iput-object p1, p0, Lcom/android/phone/InCallScreen$40;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7325
    iget-object v1, p0, Lcom/android/phone/InCallScreen$40;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$2900(Lcom/android/phone/InCallScreen;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 7326
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x7c

    iput v1, v0, Landroid/os/Message;->what:I

    .line 7327
    const/4 v1, -0x1

    if-ne v1, p2, :cond_4

    .line 7328
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/InCallScreen$40;->this$0:Lcom/android/phone/InCallScreen;

    const-string v2, "Outgoing call in airplane mode AlertDialog: Positive click..."

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 7329
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v1

    if-nez v1, :cond_3

    .line 7330
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$100()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/InCallScreen$40;->this$0:Lcom/android/phone/InCallScreen;

    const-string v2, "Positive click...NOT in Calling screen"

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 7331
    :cond_1
    iget-object v1, p0, Lcom/android/phone/InCallScreen$40;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->turnOffAirplaneMode(Z)V
    invoke-static {v1, v4}, Lcom/android/phone/InCallScreen;->access$2300(Lcom/android/phone/InCallScreen;Z)V

    .line 7346
    :cond_2
    :goto_0
    return-void

    .line 7333
    :cond_3
    iput v4, v0, Landroid/os/Message;->arg1:I

    .line 7334
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 7336
    :cond_4
    const/4 v1, -0x2

    if-ne v1, p2, :cond_2

    .line 7337
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$100()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/phone/InCallScreen$40;->this$0:Lcom/android/phone/InCallScreen;

    const-string v2, "Outgoing call in airplane mode AlertDialog: Negative click..."

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 7338
    :cond_5
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v1

    if-nez v1, :cond_7

    .line 7339
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$100()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/phone/InCallScreen$40;->this$0:Lcom/android/phone/InCallScreen;

    const-string v2, "Negative click...NOT in Calling screen"

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 7340
    :cond_6
    iget-object v1, p0, Lcom/android/phone/InCallScreen$40;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->turnOffAirplaneMode(Z)V
    invoke-static {v1, v3}, Lcom/android/phone/InCallScreen;->access$2300(Lcom/android/phone/InCallScreen;Z)V

    goto :goto_0

    .line 7342
    :cond_7
    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 7343
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
