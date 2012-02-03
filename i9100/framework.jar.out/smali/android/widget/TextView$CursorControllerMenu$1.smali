.class Landroid/widget/TextView$CursorControllerMenu$1;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TextView$CursorControllerMenu;-><init>(Landroid/widget/TextView;Landroid/content/Context;Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/TextView$CursorControllerMenu;

.field final synthetic val$this$0:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView$CursorControllerMenu;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 9519
    iput-object p1, p0, Landroid/widget/TextView$CursorControllerMenu$1;->this$1:Landroid/widget/TextView$CursorControllerMenu;

    iput-object p2, p0, Landroid/widget/TextView$CursorControllerMenu$1;->val$this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 3
    .parameter "t"

    .prologue
    .line 9523
    const v1, 0x3fc66666

    mul-float/2addr v1, p1

    const v2, 0x3f8ccccd

    sub-float v0, v1, v2

    .line 9524
    .local v0, inner:F
    const v1, 0x3f99999a

    mul-float v2, v0, v0

    sub-float/2addr v1, v2

    return v1
.end method
