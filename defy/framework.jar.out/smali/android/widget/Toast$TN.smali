.class Landroid/widget/Toast$TN;
.super Landroid/app/ITransientNotification$Stub;
.source "Toast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Toast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TN"
.end annotation


# instance fields
.field final mHide:Ljava/lang/Runnable;

.field private final mParams:Landroid/view/WindowManager$LayoutParams;

.field final mShow:Ljava/lang/Runnable;

.field mWM:Landroid/view/WindowManagerImpl;

.field final synthetic this$0:Landroid/widget/Toast;


# direct methods
.method constructor <init>(Landroid/widget/Toast;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, -0x2

    iput-object p1, p0, Landroid/widget/Toast$TN;->this$0:Landroid/widget/Toast;

    invoke-direct {p0}, Landroid/app/ITransientNotification$Stub;-><init>()V

    new-instance v1, Landroid/widget/Toast$TN$1;

    invoke-direct {v1, p0}, Landroid/widget/Toast$TN$1;-><init>(Landroid/widget/Toast$TN;)V

    iput-object v1, p0, Landroid/widget/Toast$TN;->mShow:Ljava/lang/Runnable;

    new-instance v1, Landroid/widget/Toast$TN$2;

    invoke-direct {v1, p0}, Landroid/widget/Toast$TN$2;-><init>(Landroid/widget/Toast$TN;)V

    iput-object v1, p0, Landroid/widget/Toast$TN;->mHide:Ljava/lang/Runnable;

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    .local v0, params:Landroid/view/WindowManager$LayoutParams;
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/16 v1, 0x98

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const v1, 0x1030004

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/16 v1, 0x7d5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const-string v1, "Toast"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public handleHide()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/Toast$TN;->this$0:Landroid/widget/Toast;

    iget-object v0, v0, Landroid/widget/Toast;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Toast$TN;->this$0:Landroid/widget/Toast;

    iget-object v0, v0, Landroid/widget/Toast;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Toast$TN;->mWM:Landroid/view/WindowManagerImpl;

    iget-object v1, p0, Landroid/widget/Toast$TN;->this$0:Landroid/widget/Toast;

    iget-object v1, v1, Landroid/widget/Toast;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerImpl;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Landroid/widget/Toast$TN;->this$0:Landroid/widget/Toast;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/widget/Toast;->mView:Landroid/view/View;

    :cond_1
    return-void
.end method

.method public handleShow()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f80

    iget-object v1, p0, Landroid/widget/Toast$TN;->this$0:Landroid/widget/Toast;

    iget-object v1, v1, Landroid/widget/Toast;->mView:Landroid/view/View;

    iget-object v2, p0, Landroid/widget/Toast$TN;->this$0:Landroid/widget/Toast;

    iget-object v2, v2, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    if-eq v1, v2, :cond_3

    invoke-virtual {p0}, Landroid/widget/Toast$TN;->handleHide()V

    iget-object v1, p0, Landroid/widget/Toast$TN;->this$0:Landroid/widget/Toast;

    iget-object v2, p0, Landroid/widget/Toast$TN;->this$0:Landroid/widget/Toast;

    iget-object v2, v2, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    iput-object v2, v1, Landroid/widget/Toast;->mView:Landroid/view/View;

    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/Toast$TN;->mWM:Landroid/view/WindowManagerImpl;

    iget-object v1, p0, Landroid/widget/Toast$TN;->this$0:Landroid/widget/Toast;

    iget v0, v1, Landroid/widget/Toast;->mGravity:I

    .local v0, gravity:I
    iget-object v1, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    :cond_0
    and-int/lit8 v1, v0, 0x70

    const/16 v2, 0x70

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    :cond_1
    iget-object v1, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Landroid/widget/Toast$TN;->this$0:Landroid/widget/Toast;

    iget v2, v2, Landroid/widget/Toast;->mX:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v1, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Landroid/widget/Toast$TN;->this$0:Landroid/widget/Toast;

    iget v2, v2, Landroid/widget/Toast;->mY:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v1, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Landroid/widget/Toast$TN;->this$0:Landroid/widget/Toast;

    iget v2, v2, Landroid/widget/Toast;->mVerticalMargin:F

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    iget-object v1, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Landroid/widget/Toast$TN;->this$0:Landroid/widget/Toast;

    iget v2, v2, Landroid/widget/Toast;->mHorizontalMargin:F

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    iget-object v1, p0, Landroid/widget/Toast$TN;->this$0:Landroid/widget/Toast;

    iget-object v1, v1, Landroid/widget/Toast;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/Toast$TN;->mWM:Landroid/view/WindowManagerImpl;

    iget-object v2, p0, Landroid/widget/Toast$TN;->this$0:Landroid/widget/Toast;

    iget-object v2, v2, Landroid/widget/Toast;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/WindowManagerImpl;->removeView(Landroid/view/View;)V

    :cond_2
    iget-object v1, p0, Landroid/widget/Toast$TN;->mWM:Landroid/view/WindowManagerImpl;

    iget-object v2, p0, Landroid/widget/Toast$TN;->this$0:Landroid/widget/Toast;

    iget-object v2, v2, Landroid/widget/Toast;->mView:Landroid/view/View;

    iget-object v3, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v2, v3}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .end local v0           #gravity:I
    :cond_3
    return-void
.end method

.method public hide()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/Toast$TN;->this$0:Landroid/widget/Toast;

    iget-object v0, v0, Landroid/widget/Toast;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/Toast$TN;->mHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/Toast$TN;->this$0:Landroid/widget/Toast;

    iget-object v0, v0, Landroid/widget/Toast;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/Toast$TN;->mShow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
