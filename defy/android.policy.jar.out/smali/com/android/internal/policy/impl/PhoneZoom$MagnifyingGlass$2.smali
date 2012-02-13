.class Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass$2;
.super Landroid/widget/LinearLayout;
.source "PhoneZoom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->createGlassHandle(Landroid/content/Context;IIIIZ)Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass$2;->this$1:Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass$2;->this$1:Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;

    #calls: Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->handleTouchEvent(Landroid/view/MotionEvent;)Z
    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->access$2200(Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
