.class Landroid/widget/AutoCompleteTextView$PopupTouchInterceptor;
.super Ljava/lang/Object;
.source "AutoCompleteTextView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AutoCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupTouchInterceptor"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AutoCompleteTextView;


# direct methods
.method private constructor <init>(Landroid/widget/AutoCompleteTextView;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/widget/AutoCompleteTextView$PopupTouchInterceptor;->this$0:Landroid/widget/AutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/AutoCompleteTextView$PopupTouchInterceptor;-><init>(Landroid/widget/AutoCompleteTextView;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "event"

    .prologue
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .local v0, action:I
    if-nez v0, :cond_1

    iget-object v1, p0, Landroid/widget/AutoCompleteTextView$PopupTouchInterceptor;->this$0:Landroid/widget/AutoCompleteTextView;

    #getter for: Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;
    invoke-static {v1}, Landroid/widget/AutoCompleteTextView;->access$1200(Landroid/widget/AutoCompleteTextView;)Landroid/widget/PopupWindow;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/AutoCompleteTextView$PopupTouchInterceptor;->this$0:Landroid/widget/AutoCompleteTextView;

    #getter for: Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;
    invoke-static {v1}, Landroid/widget/AutoCompleteTextView;->access$1200(Landroid/widget/AutoCompleteTextView;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/AutoCompleteTextView$PopupTouchInterceptor;->this$0:Landroid/widget/AutoCompleteTextView;

    iget-object v2, p0, Landroid/widget/AutoCompleteTextView$PopupTouchInterceptor;->this$0:Landroid/widget/AutoCompleteTextView;

    #getter for: Landroid/widget/AutoCompleteTextView;->mResizePopupRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Landroid/widget/AutoCompleteTextView;->access$1300(Landroid/widget/AutoCompleteTextView;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0xfa

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/AutoCompleteTextView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Landroid/widget/AutoCompleteTextView$PopupTouchInterceptor;->this$0:Landroid/widget/AutoCompleteTextView;

    iget-object v2, p0, Landroid/widget/AutoCompleteTextView$PopupTouchInterceptor;->this$0:Landroid/widget/AutoCompleteTextView;

    #getter for: Landroid/widget/AutoCompleteTextView;->mResizePopupRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Landroid/widget/AutoCompleteTextView;->access$1300(Landroid/widget/AutoCompleteTextView;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
