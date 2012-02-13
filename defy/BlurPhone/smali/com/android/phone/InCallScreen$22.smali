.class Lcom/android/phone/InCallScreen$22;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Lcom/motorola/android/widget/SlideButton$OnSlideEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallScreen;->initInCallScreen()V
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
    .line 2593
    iput-object p1, p0, Lcom/android/phone/InCallScreen$22;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSlideDone(Lcom/motorola/android/widget/SlideButton;)Z
    .locals 2
    .parameter "from"

    .prologue
    .line 2595
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$2200()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreen$22;->this$0:Lcom/android/phone/InCallScreen;

    const-string v1, "mAnswerIgnoreSlider.onSlideDone"

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 2597
    :cond_0
    invoke-virtual {p1}, Lcom/motorola/android/widget/SlideButton;->getSliderTouched()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2608
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 2600
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen$22;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->answerCall()V

    goto :goto_0

    .line 2604
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/InCallScreen$22;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$1000(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    .line 2605
    iget-object v0, p0, Lcom/android/phone/InCallScreen$22;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->finish()V

    goto :goto_0

    .line 2597
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
