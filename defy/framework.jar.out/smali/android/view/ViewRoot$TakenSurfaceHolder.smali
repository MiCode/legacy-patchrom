.class Landroid/view/ViewRoot$TakenSurfaceHolder;
.super Lcom/android/internal/view/BaseSurfaceHolder;
.source "ViewRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TakenSurfaceHolder"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRoot;


# direct methods
.method constructor <init>(Landroid/view/ViewRoot;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/view/ViewRoot$TakenSurfaceHolder;->this$0:Landroid/view/ViewRoot;

    invoke-direct {p0}, Lcom/android/internal/view/BaseSurfaceHolder;-><init>()V

    return-void
.end method


# virtual methods
.method public isCreating()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/ViewRoot$TakenSurfaceHolder;->this$0:Landroid/view/ViewRoot;

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mIsCreating:Z

    return v0
.end method

.method public onAllowLockCanvas()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/ViewRoot$TakenSurfaceHolder;->this$0:Landroid/view/ViewRoot;

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mDrawingAllowed:Z

    return v0
.end method

.method public onRelayoutContainer()V
    .locals 0

    .prologue
    return-void
.end method

.method public onUpdateSurface()V
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Shouldn\'t be here"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFixedSize(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Currently only support sizing from layout"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFormat(I)V
    .locals 1
    .parameter "format"

    .prologue
    iget-object v0, p0, Landroid/view/ViewRoot$TakenSurfaceHolder;->this$0:Landroid/view/ViewRoot;

    iget-object p0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    .end local p0
    check-cast p0, Lcom/android/internal/view/RootViewSurfaceTaker;

    invoke-interface {p0, p1}, Lcom/android/internal/view/RootViewSurfaceTaker;->setSurfaceFormat(I)V

    return-void
.end method

.method public setKeepScreenOn(Z)V
    .locals 1
    .parameter "screenOn"

    .prologue
    iget-object v0, p0, Landroid/view/ViewRoot$TakenSurfaceHolder;->this$0:Landroid/view/ViewRoot;

    iget-object p0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    .end local p0
    check-cast p0, Lcom/android/internal/view/RootViewSurfaceTaker;

    invoke-interface {p0, p1}, Lcom/android/internal/view/RootViewSurfaceTaker;->setSurfaceKeepScreenOn(Z)V

    return-void
.end method

.method public setType(I)V
    .locals 1
    .parameter "type"

    .prologue
    iget-object v0, p0, Landroid/view/ViewRoot$TakenSurfaceHolder;->this$0:Landroid/view/ViewRoot;

    iget-object p0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    .end local p0
    check-cast p0, Lcom/android/internal/view/RootViewSurfaceTaker;

    invoke-interface {p0, p1}, Lcom/android/internal/view/RootViewSurfaceTaker;->setSurfaceType(I)V

    return-void
.end method
