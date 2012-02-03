.class public Lcom/android/phone/InVTCallScreen$BrightZoomTimer;
.super Landroid/os/CountDownTimer;
.source "InVTCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InVTCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BrightZoomTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InVTCallScreen;


# direct methods
.method public constructor <init>(Lcom/android/phone/InVTCallScreen;JJ)V
    .locals 0
    .parameter
    .parameter "millisInFuture"
    .parameter "countDownInterval"

    .prologue
    .line 10121
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$BrightZoomTimer;->this$0:Lcom/android/phone/InVTCallScreen;

    .line 10122
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 10124
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 10128
    const-string v0, "InVTCallScreen"

    const-string v1, "Count down timer is finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10129
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$BrightZoomTimer;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->SeekBarLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$9800(Lcom/android/phone/InVTCallScreen;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10130
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$BrightZoomTimer;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->duringEndCalllayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$9900(Lcom/android/phone/InVTCallScreen;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10131
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$BrightZoomTimer;->this$0:Lcom/android/phone/InVTCallScreen;

    const/4 v1, -0x1

    #setter for: Lcom/android/phone/InVTCallScreen;->mSeekBarSelection:I
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$9502(Lcom/android/phone/InVTCallScreen;I)I

    .line 10132
    return-void
.end method

.method public onTick(J)V
    .locals 2
    .parameter "millisUntilFinished"

    .prologue
    .line 10136
    const-string v0, "InVTCallScreen"

    const-string v1, "In onTick of countdown timer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10138
    return-void
.end method
