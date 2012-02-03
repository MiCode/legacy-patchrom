.class Lcom/android/phone/RejectCallWithMsgLayout$1;
.super Landroid/os/Handler;
.source "RejectCallWithMsgLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/RejectCallWithMsgLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/RejectCallWithMsgLayout;


# direct methods
.method constructor <init>(Lcom/android/phone/RejectCallWithMsgLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/phone/RejectCallWithMsgLayout$1;->this$0:Lcom/android/phone/RejectCallWithMsgLayout;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 64
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 90
    :goto_0
    return-void

    .line 66
    :pswitch_0
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 67
    .local v2, index:I
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 69
    .local v4, text:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/phone/RejectCallWithMsgLayout$1;->this$0:Lcom/android/phone/RejectCallWithMsgLayout;

    #getter for: Lcom/android/phone/RejectCallWithMsgLayout;->mBtnList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/phone/RejectCallWithMsgLayout;->access$000(Lcom/android/phone/RejectCallWithMsgLayout;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 70
    .local v3, item:Landroid/widget/LinearLayout;
    const v5, 0x7f0800f1

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    const v5, 0x7f0800f2

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    move-object v0, v5

    check-cast v0, Landroid/widget/Button;

    move-object v1, v0

    .line 72
    .local v1, btn:Landroid/widget/Button;
    new-instance v5, Lcom/android/phone/RejectCallWithMsgLayout$1$1;

    invoke-direct {v5, p0}, Lcom/android/phone/RejectCallWithMsgLayout$1$1;-><init>(Lcom/android/phone/RejectCallWithMsgLayout$1;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v5, p0, Lcom/android/phone/RejectCallWithMsgLayout$1;->this$0:Lcom/android/phone/RejectCallWithMsgLayout;

    #getter for: Lcom/android/phone/RejectCallWithMsgLayout;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;
    invoke-static {v5}, Lcom/android/phone/RejectCallWithMsgLayout;->access$300(Lcom/android/phone/RejectCallWithMsgLayout;)Landroid/view/View$OnTouchListener;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 83
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
