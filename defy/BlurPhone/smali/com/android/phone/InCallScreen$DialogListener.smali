.class Lcom/android/phone/InCallScreen$DialogListener;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;


# direct methods
.method private constructor <init>(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 4750
    iput-object p1, p0, Lcom/android/phone/InCallScreen$DialogListener;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/InCallScreen;Lcom/android/phone/InCallScreen$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4750
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen$DialogListener;-><init>(Lcom/android/phone/InCallScreen;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 4771
    iget-object v1, p0, Lcom/android/phone/InCallScreen$DialogListener;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$2900(Lcom/android/phone/InCallScreen;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 4772
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x6b

    iput v1, v0, Landroid/os/Message;->what:I

    .line 4773
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$2200()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/InCallScreen$DialogListener;->this$0:Lcom/android/phone/InCallScreen;

    const-string v2, "Missing voicemail AlertDialog: CANCEL handler..."

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 4774
    :cond_0
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4775
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .line 4776
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "arg0"
    .parameter "which"

    .prologue
    .line 4753
    iget-object v2, p0, Lcom/android/phone/InCallScreen$DialogListener;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$2900(Lcom/android/phone/InCallScreen;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 4754
    .local v0, msg:Landroid/os/Message;
    const/16 v2, 0x6b

    iput v2, v0, Landroid/os/Message;->what:I

    .line 4756
    iget-object v2, p0, Lcom/android/phone/InCallScreen$DialogListener;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$2900(Lcom/android/phone/InCallScreen;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 4757
    .local v1, msg2:Landroid/os/Message;
    const/16 v2, 0x6a

    iput v2, v1, Landroid/os/Message;->what:I

    .line 4759
    const/4 v2, -0x1

    if-ne v2, p2, :cond_1

    .line 4760
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$2200()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/InCallScreen$DialogListener;->this$0:Lcom/android/phone/InCallScreen;

    const-string v3, "Missing voicemail AlertDialog: POSITIVE click..."

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 4761
    :cond_0
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4762
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .line 4768
    :goto_0
    return-void

    .line 4764
    :cond_1
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$2200()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/InCallScreen$DialogListener;->this$0:Lcom/android/phone/InCallScreen;

    const-string v3, "Missing voicemail AlertDialog: NEGATIVE click..."

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 4765
    :cond_2
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 4766
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    goto :goto_0
.end method
