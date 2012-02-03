.class Lcom/android/phone/DTMFTwelveKeyDialer$3;
.super Ljava/lang/Object;
.source "DTMFTwelveKeyDialer.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/DTMFTwelveKeyDialer;


# direct methods
.method constructor <init>(Lcom/android/phone/DTMFTwelveKeyDialer;)V
    .locals 0
    .parameter

    .prologue
    .line 852
    iput-object p1, p0, Lcom/android/phone/DTMFTwelveKeyDialer$3;->this$0:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 866
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAnimationEnd close:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->access$000(Ljava/lang/String;)V

    .line 867
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$3;->this$0:Lcom/android/phone/DTMFTwelveKeyDialer;

    #calls: Lcom/android/phone/DTMFTwelveKeyDialer;->onDialerClose()V
    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->access$700(Lcom/android/phone/DTMFTwelveKeyDialer;)V

    .line 868
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$3;->this$0:Lcom/android/phone/DTMFTwelveKeyDialer;

    #getter for: Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;
    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->access$800(Lcom/android/phone/DTMFTwelveKeyDialer;)Lcom/android/phone/DTMFTwelveKeyDialerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialerView;->clearAnimation()V

    .line 869
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 862
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 856
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAnimationStart close :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->access$000(Ljava/lang/String;)V

    .line 857
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$3;->this$0:Lcom/android/phone/DTMFTwelveKeyDialer;

    #getter for: Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->access$500(Lcom/android/phone/DTMFTwelveKeyDialer;)Lcom/android/phone/InCallScreen;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallTouchUi;->setButtonsVisibility(I)V

    .line 858
    return-void
.end method
