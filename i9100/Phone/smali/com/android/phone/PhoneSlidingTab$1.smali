.class Lcom/android/phone/PhoneSlidingTab$1;
.super Ljava/lang/Object;
.source "PhoneSlidingTab.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneSlidingTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneSlidingTab;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneSlidingTab;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/phone/PhoneSlidingTab$1;->this$0:Lcom/android/phone/PhoneSlidingTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/phone/PhoneSlidingTab$1;->this$0:Lcom/android/phone/PhoneSlidingTab;

    #calls: Lcom/android/phone/PhoneSlidingTab;->onAnimationDone()V
    invoke-static {v0}, Lcom/android/phone/PhoneSlidingTab;->access$000(Lcom/android/phone/PhoneSlidingTab;)V

    .line 112
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 108
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 104
    return-void
.end method
