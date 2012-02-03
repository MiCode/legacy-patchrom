.class Lcom/android/phone/IncomingSlidingWidget$2;
.super Ljava/lang/Object;
.source "IncomingSlidingWidget.java"

# interfaces
.implements Landroid/widget/SlidingDrawer$OnDrawerCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/IncomingSlidingWidget;->linkControls()V
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
    .line 99
    iput-object p1, p0, Lcom/android/phone/IncomingSlidingWidget$2;->this$0:Lcom/android/phone/IncomingSlidingWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerClosed()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/phone/IncomingSlidingWidget$2;->this$0:Lcom/android/phone/IncomingSlidingWidget;

    #getter for: Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgHandle:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/phone/IncomingSlidingWidget;->access$000(Lcom/android/phone/IncomingSlidingWidget;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f020125

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 102
    return-void
.end method
