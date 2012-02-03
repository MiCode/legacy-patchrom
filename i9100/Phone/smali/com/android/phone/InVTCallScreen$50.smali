.class Lcom/android/phone/InVTCallScreen$50;
.super Landroid/os/Handler;
.source "InVTCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InVTCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InVTCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 10899
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$50;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/16 v4, 0x64

    const/4 v3, 0x0

    .line 10902
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 10922
    :goto_0
    return-void

    .line 10904
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$50;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCallEndTimeBlinkCount:I
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$10100(Lcom/android/phone/InVTCallScreen;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 10905
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$50;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$10200(Lcom/android/phone/InVTCallScreen;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$50;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCallEndTimeBlinkCount:I
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$10100(Lcom/android/phone/InVTCallScreen;)I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/4 v1, 0x4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10908
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$50;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->timerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$10300(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 10909
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$50;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->timerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$10300(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 10911
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$50;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$10108(Lcom/android/phone/InVTCallScreen;)I

    goto :goto_0

    :cond_0
    move v1, v3

    .line 10905
    goto :goto_1

    .line 10913
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$50;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$10200(Lcom/android/phone/InVTCallScreen;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10914
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$50;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$10200(Lcom/android/phone/InVTCallScreen;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$50;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0180

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10916
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$50;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mCallEndTimeBlinkCount:I
    invoke-static {v0, v3}, Lcom/android/phone/InVTCallScreen;->access$10102(Lcom/android/phone/InVTCallScreen;I)I

    goto :goto_0

    .line 10902
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
