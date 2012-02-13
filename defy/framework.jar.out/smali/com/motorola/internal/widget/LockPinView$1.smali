.class Lcom/motorola/internal/widget/LockPinView$1;
.super Ljava/lang/Object;
.source "LockPinView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/internal/widget/LockPinView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/internal/widget/LockPinView;


# direct methods
.method constructor <init>(Lcom/motorola/internal/widget/LockPinView;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/motorola/internal/widget/LockPinView$1;->this$0:Lcom/motorola/internal/widget/LockPinView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/motorola/internal/widget/LockPinView$1;->this$0:Lcom/motorola/internal/widget/LockPinView;

    #getter for: Lcom/motorola/internal/widget/LockPinView;->mPinText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/motorola/internal/widget/LockPinView;->access$000(Lcom/motorola/internal/widget/LockPinView;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x42

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/motorola/internal/widget/LockPinView$1;->this$0:Lcom/motorola/internal/widget/LockPinView;

    #calls: Lcom/motorola/internal/widget/LockPinView;->ok()V
    invoke-static {v0}, Lcom/motorola/internal/widget/LockPinView;->access$100(Lcom/motorola/internal/widget/LockPinView;)V

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
