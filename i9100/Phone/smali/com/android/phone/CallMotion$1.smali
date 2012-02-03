.class Lcom/android/phone/CallMotion$1;
.super Ljava/lang/Object;
.source "CallMotion.java"

# interfaces
.implements Landroid/hardware/motion/MRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallMotion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallMotion;


# direct methods
.method constructor <init>(Lcom/android/phone/CallMotion;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/phone/CallMotion$1;->this$0:Lcom/android/phone/CallMotion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .locals 4
    .parameter "motionEvent"

    .prologue
    .line 38
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v0

    .line 39
    .local v0, motion:I
    const-string v1, "CallMotion"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "motion : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    packed-switch v0, :pswitch_data_0

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 43
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/CallMotion$1;->this$0:Lcom/android/phone/CallMotion;

    #getter for: Lcom/android/phone/CallMotion;->mMotionType:I
    invoke-static {v1}, Lcom/android/phone/CallMotion;->access$000(Lcom/android/phone/CallMotion;)I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 44
    iget-object v1, p0, Lcom/android/phone/CallMotion$1;->this$0:Lcom/android/phone/CallMotion;

    #getter for: Lcom/android/phone/CallMotion;->mPhoneApp:Lcom/android/phone/PhoneApp;
    invoke-static {v1}, Lcom/android/phone/CallMotion;->access$100(Lcom/android/phone/CallMotion;)Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/phone/CallMotion$1;->this$0:Lcom/android/phone/CallMotion;

    #getter for: Lcom/android/phone/CallMotion;->mPhoneApp:Lcom/android/phone/PhoneApp;
    invoke-static {v1}, Lcom/android/phone/CallMotion;->access$100(Lcom/android/phone/CallMotion;)Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v1}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    iget-object v1, p0, Lcom/android/phone/CallMotion$1;->this$0:Lcom/android/phone/CallMotion;

    #getter for: Lcom/android/phone/CallMotion;->mPhoneApp:Lcom/android/phone/PhoneApp;
    invoke-static {v1}, Lcom/android/phone/CallMotion;->access$100(Lcom/android/phone/CallMotion;)Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v1}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    goto :goto_0

    .line 41
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method
