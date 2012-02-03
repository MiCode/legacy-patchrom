.class Lcom/android/phone/IncomingSlidingWidget$3;
.super Ljava/lang/Object;
.source "IncomingSlidingWidget.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/IncomingSlidingWidget;->hideIncomingCallWidget()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/IncomingSlidingWidget;


# direct methods
.method constructor <init>(Lcom/android/phone/IncomingSlidingWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/phone/IncomingSlidingWidget$3;->this$0:Lcom/android/phone/IncomingSlidingWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget$3;->this$0:Lcom/android/phone/IncomingSlidingWidget;

    iget-object v0, v0, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/phone/PhoneSlidingTab;

    invoke-virtual {v0}, Lcom/android/phone/PhoneSlidingTab;->clearAnimation()V

    .line 149
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget$3;->this$0:Lcom/android/phone/IncomingSlidingWidget;

    iget-object v0, v0, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/phone/PhoneSlidingTab;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneSlidingTab;->setVisibility(I)V

    .line 150
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 145
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 144
    return-void
.end method
