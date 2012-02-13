.class Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;
.super Ljava/lang/Object;
.source "PhoneZoom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneZoom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisplayPanel"
.end annotation


# instance fields
.field private mShown:Z

.field private mWParams:Landroid/view/WindowManager$LayoutParams;

.field private mWindow:Landroid/view/Window;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowView:Landroid/widget/FrameLayout;

.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneZoom;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneZoom;Landroid/content/Context;Landroid/view/View;)V
    .locals 7
    .parameter
    .parameter "context"
    .parameter "cv"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->this$0:Lcom/android/internal/policy/impl/PhoneZoom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mShown:Z

    const-string v1, "window"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWindowManager:Landroid/view/WindowManager;

    invoke-static {p2}, Lcom/android/internal/policy/PolicyManager;->makeNewWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWindow:Landroid/view/Window;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWParams:Landroid/view/WindowManager$LayoutParams;

    const v2, -0x7fffffe8

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x33

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x7e0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->scaleX:F

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->scaleY:F

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->transX:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->transY:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWindow:Landroid/view/Window;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .local v0, transparent:Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWindow:Landroid/view/Window;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {v1, v2, v6, v6}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWindow:Landroid/view/Window;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, p3}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWindowView:Landroid/widget/FrameLayout;

    return-void
.end method


# virtual methods
.method public getAttributes()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public hide()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mShown:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWindowView:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mShown:Z

    :cond_0
    return-void
.end method

.method public moveBy(FF)V
    .locals 2
    .parameter "dx"
    .parameter "dy"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v1, v1

    add-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v1, v1

    add-float/2addr v1, p2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    return-void
.end method

.method public scale(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->scaleX:F

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWParams:Landroid/view/WindowManager$LayoutParams;

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->scaleY:F

    return-void
.end method

.method public setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0
    .parameter "wparams"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWParams:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method

.method public setPosition(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWParams:Landroid/view/WindowManager$LayoutParams;

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    return-void
.end method

.method public setSize(II)V
    .locals 1
    .parameter "w"
    .parameter "h"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWParams:Landroid/view/WindowManager$LayoutParams;

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mShown:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWindowView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWindowView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mShown:Z

    :cond_0
    return-void
.end method

.method public translate(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->transX:I

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWParams:Landroid/view/WindowManager$LayoutParams;

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->transY:I

    return-void
.end method

.method public update()V
    .locals 3

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mShown:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWindowView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
