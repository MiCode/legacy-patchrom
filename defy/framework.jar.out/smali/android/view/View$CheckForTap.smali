.class final Landroid/view/View$CheckForTap;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CheckForTap"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/view/View$CheckForTap;->this$0:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Landroid/view/View$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/view/View$CheckForTap;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/high16 v3, 0x20

    iget-object v0, p0, Landroid/view/View$CheckForTap;->this$0:Landroid/view/View;

    iget v1, v0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x2000001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/View;->mPrivateFlags:I

    iget-object v0, p0, Landroid/view/View$CheckForTap;->this$0:Landroid/view/View;

    iget v1, v0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v1, v1, 0x4000

    iput v1, v0, Landroid/view/View;->mPrivateFlags:I

    iget-object v0, p0, Landroid/view/View$CheckForTap;->this$0:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    iget-object v0, p0, Landroid/view/View$CheckForTap;->this$0:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Landroid/view/View$CheckForTap;->this$0:Landroid/view/View;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    #calls: Landroid/view/View;->postCheckForLongClick(I)V
    invoke-static {v0, v1}, Landroid/view/View;->access$400(Landroid/view/View;I)V

    :cond_0
    return-void
.end method
