.class Lcom/motorola/blur/setup/ServiceChooserActivity$7;
.super Ljava/lang/Object;
.source "ServiceChooserActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/setup/ServiceChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/ServiceChooserActivity;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/ServiceChooserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 323
    iput-object p1, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$7;->this$0:Lcom/motorola/blur/setup/ServiceChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "view"
    .parameter "event"

    .prologue
    .line 325
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 326
    .local v0, action:I
    if-nez v0, :cond_1

    .line 327
    const v1, 0x7f02001e

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 333
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 328
    :cond_1
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 331
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
