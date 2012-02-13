.class Lcom/motorola/aui/MultiTouchGestureDetector$1;
.super Landroid/os/Handler;
.source "MultiTouchGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/aui/MultiTouchGestureDetector;-><init>(Lcom/motorola/aui/MultiTouchGestureDetector$OnMultiTouchGestureListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/aui/MultiTouchGestureDetector;


# direct methods
.method constructor <init>(Lcom/motorola/aui/MultiTouchGestureDetector;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/motorola/aui/MultiTouchGestureDetector$1;->this$0:Lcom/motorola/aui/MultiTouchGestureDetector;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/aui/MultiTouchGestureDetector$1;->this$0:Lcom/motorola/aui/MultiTouchGestureDetector;

    const/4 v1, 0x0

    #setter for: Lcom/motorola/aui/MultiTouchGestureDetector;->mTappable:Z
    invoke-static {v0, v1}, Lcom/motorola/aui/MultiTouchGestureDetector;->access$002(Lcom/motorola/aui/MultiTouchGestureDetector;Z)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
