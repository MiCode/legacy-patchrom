.class Landroid/webkit/WebSelectDialog$1;
.super Ljava/lang/Object;
.source "WebSelectDialog.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebSelectDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebSelectDialog;


# direct methods
.method constructor <init>(Landroid/webkit/WebSelectDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Landroid/webkit/WebSelectDialog$1;->this$0:Landroid/webkit/WebSelectDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 100
    iget-object v0, p0, Landroid/webkit/WebSelectDialog$1;->this$0:Landroid/webkit/WebSelectDialog;

    iget-object v1, p0, Landroid/webkit/WebSelectDialog$1;->this$0:Landroid/webkit/WebSelectDialog;

    iget-object v1, v1, Landroid/webkit/WebSelectDialog;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSelectDialog;->onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V

    .line 101
    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/WebSelectDialog$1;->this$0:Landroid/webkit/WebSelectDialog;

    iget-object v1, v1, Landroid/webkit/WebSelectDialog;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    iget v1, v1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 102
    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/WebSelectDialog$1;->this$0:Landroid/webkit/WebSelectDialog;

    iget-object v1, v1, Landroid/webkit/WebSelectDialog;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    iget v1, v1, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 103
    iget-object v0, p0, Landroid/webkit/WebSelectDialog$1;->this$0:Landroid/webkit/WebSelectDialog;

    iget-object v0, v0, Landroid/webkit/WebSelectDialog;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    iget v0, v0, Landroid/inputmethodservice/InputMethodService$Insets;->touchableInsets:I

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    .line 104
    return-void
.end method
