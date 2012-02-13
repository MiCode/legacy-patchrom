.class Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass$1;
.super Landroid/view/View;
.source "PhoneZoom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;-><init>(Lcom/android/internal/policy/impl/PhoneZoom;Landroid/content/Context;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;

.field final synthetic val$this$0:Lcom/android/internal/policy/impl/PhoneZoom;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneZoom;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass$1;->this$1:Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;

    iput-object p3, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass$1;->val$this$0:Lcom/android/internal/policy/impl/PhoneZoom;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass$1;->this$1:Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;

    #calls: Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->drawMagnifyingGlass(Landroid/graphics/Canvas;)V
    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->access$2100(Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;Landroid/graphics/Canvas;)V

    return-void
.end method
