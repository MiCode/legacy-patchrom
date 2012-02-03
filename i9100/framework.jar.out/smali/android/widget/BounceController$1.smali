.class Landroid/widget/BounceController$1;
.super Ljava/lang/Object;
.source "BounceController.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/BounceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/BounceController;


# direct methods
.method constructor <init>(Landroid/widget/BounceController;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Landroid/widget/BounceController$1;->this$0:Landroid/widget/BounceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1
    .parameter "input"

    .prologue
    .line 56
    const/high16 v0, 0x3f00

    mul-float/2addr v0, p1

    return v0
.end method
