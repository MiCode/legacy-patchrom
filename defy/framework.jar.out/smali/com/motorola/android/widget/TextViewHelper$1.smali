.class Lcom/motorola/android/widget/TextViewHelper$1;
.super Landroid/os/Handler;
.source "TextViewHelper.java"


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
    iput-object p1, p0, Lcom/motorola/android/widget/TextViewHelper$1;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    sget-boolean v0, Landroid/widget/TextView;->mCursorControl_Enabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper$1;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    #calls: Lcom/motorola/android/widget/TextViewHelper;->getProperties()V
    invoke-static {v0}, Lcom/motorola/android/widget/TextViewHelper;->access$000(Lcom/motorola/android/widget/TextViewHelper;)V

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    sget-boolean v0, Landroid/widget/TextView;->mCursorControl_Enabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper$1;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    const/4 v1, 0x0

    #setter for: Lcom/motorola/android/widget/TextViewHelper;->mShowCursorHalo:Z
    invoke-static {v0, v1}, Lcom/motorola/android/widget/TextViewHelper;->access$102(Lcom/motorola/android/widget/TextViewHelper;Z)Z

    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper$1;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    #getter for: Lcom/motorola/android/widget/TextViewHelper;->mView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/motorola/android/widget/TextViewHelper;->access$200(Lcom/motorola/android/widget/TextViewHelper;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper$1;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    #calls: Lcom/motorola/android/widget/TextViewHelper;->hideCursorHalo()V
    invoke-static {v0}, Lcom/motorola/android/widget/TextViewHelper;->access$300(Lcom/motorola/android/widget/TextViewHelper;)V

    goto :goto_0

    :pswitch_1
    sget-boolean v0, Landroid/widget/TextView;->mCursorControl_Enabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper$1;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    #getter for: Lcom/motorola/android/widget/TextViewHelper;->mHasWindowFocus:Z
    invoke-static {v0}, Lcom/motorola/android/widget/TextViewHelper;->access$400(Lcom/motorola/android/widget/TextViewHelper;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper$1;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    iget-object v1, p0, Lcom/motorola/android/widget/TextViewHelper$1;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    #getter for: Lcom/motorola/android/widget/TextViewHelper;->mCurrentDownEvent:Landroid/view/MotionEvent;
    invoke-static {v1}, Lcom/motorola/android/widget/TextViewHelper;->access$500(Lcom/motorola/android/widget/TextViewHelper;)Landroid/view/MotionEvent;

    move-result-object v1

    #calls: Lcom/motorola/android/widget/TextViewHelper;->createAndShowCursorHaloOverlayAt(Landroid/view/MotionEvent;)V
    invoke-static {v0, v1}, Lcom/motorola/android/widget/TextViewHelper;->access$600(Lcom/motorola/android/widget/TextViewHelper;Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_2
    sget-boolean v0, Landroid/widget/TextView;->mCursorControl_Enabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/android/widget/TextViewHelper$1;->this$0:Lcom/motorola/android/widget/TextViewHelper;

    const/4 v1, 0x1

    #setter for: Lcom/motorola/android/widget/TextViewHelper;->mIsCursorIdle:Z
    invoke-static {v0, v1}, Lcom/motorola/android/widget/TextViewHelper;->access$702(Lcom/motorola/android/widget/TextViewHelper;Z)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
