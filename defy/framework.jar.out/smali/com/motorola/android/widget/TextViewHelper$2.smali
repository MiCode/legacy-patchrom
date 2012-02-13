.class Lcom/motorola/android/widget/TextViewHelper$2;
.super Ljava/lang/Object;
.source "TextViewHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/widget/TextViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/widget/TextViewHelper;


# direct methods
.method constructor <init>(Lcom/motorola/android/widget/TextViewHelper;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/motorola/android/widget/TextViewHelper$2;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper$2;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    const/4 v1, 0x0

    #setter for: Lcom/motorola/android/widget/TextViewHelper;->mTimerRunning:Z
    invoke-static {v0, v1}, Lcom/motorola/android/widget/TextViewHelper;->access$902(Lcom/motorola/android/widget/TextViewHelper;Z)Z

    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper$2;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    iget-object v1, p0, Lcom/motorola/android/widget/TextViewHelper$2;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    iget-object v2, p0, Lcom/motorola/android/widget/TextViewHelper$2;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    #getter for: Lcom/motorola/android/widget/TextViewHelper;->mCurrentDownEvent:Landroid/view/MotionEvent;
    invoke-static {v2}, Lcom/motorola/android/widget/TextViewHelper;->access$500(Lcom/motorola/android/widget/TextViewHelper;)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/motorola/android/widget/TextViewHelper$2;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    #getter for: Lcom/motorola/android/widget/TextViewHelper;->mCurrentDownEvent:Landroid/view/MotionEvent;
    invoke-static {v3}, Lcom/motorola/android/widget/TextViewHelper;->access$500(Lcom/motorola/android/widget/TextViewHelper;)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    #calls: Lcom/motorola/android/widget/TextViewHelper;->getCursorOffset(FF)I
    invoke-static {v1, v2, v3}, Lcom/motorola/android/widget/TextViewHelper;->access$1000(Lcom/motorola/android/widget/TextViewHelper;FF)I

    move-result v1

    #calls: Lcom/motorola/android/widget/TextViewHelper;->updateSelection(I)Z
    invoke-static {v0, v1}, Lcom/motorola/android/widget/TextViewHelper;->access$1100(Lcom/motorola/android/widget/TextViewHelper;I)Z

    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper$2;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    iget-object v1, p0, Lcom/motorola/android/widget/TextViewHelper$2;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    #getter for: Lcom/motorola/android/widget/TextViewHelper;->mCurrentDownEvent:Landroid/view/MotionEvent;
    invoke-static {v1}, Lcom/motorola/android/widget/TextViewHelper;->access$500(Lcom/motorola/android/widget/TextViewHelper;)Landroid/view/MotionEvent;

    move-result-object v1

    #calls: Lcom/motorola/android/widget/TextViewHelper;->createAndShowTextOverlayAt(Landroid/view/MotionEvent;)V
    invoke-static {v0, v1}, Lcom/motorola/android/widget/TextViewHelper;->access$1200(Lcom/motorola/android/widget/TextViewHelper;Landroid/view/MotionEvent;)V

    return-void
.end method
