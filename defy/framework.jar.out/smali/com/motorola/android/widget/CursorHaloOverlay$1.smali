.class Lcom/motorola/android/widget/CursorHaloOverlay$1;
.super Ljava/lang/Object;
.source "CursorHaloOverlay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/widget/CursorHaloOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/widget/CursorHaloOverlay;


# direct methods
.method constructor <init>(Lcom/motorola/android/widget/CursorHaloOverlay;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/motorola/android/widget/CursorHaloOverlay$1;->this$0:Lcom/motorola/android/widget/CursorHaloOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/motorola/android/widget/CursorHaloOverlay$1;->this$0:Lcom/motorola/android/widget/CursorHaloOverlay;

    const/4 v1, 0x0

    #setter for: Lcom/motorola/android/widget/CursorHaloOverlay;->mShowActiveAsIdle:Z
    invoke-static {v0, v1}, Lcom/motorola/android/widget/CursorHaloOverlay;->access$002(Lcom/motorola/android/widget/CursorHaloOverlay;Z)Z

    iget-object v0, p0, Lcom/motorola/android/widget/CursorHaloOverlay$1;->this$0:Lcom/motorola/android/widget/CursorHaloOverlay;

    #calls: Lcom/motorola/android/widget/CursorHaloOverlay;->updateAnimationState()V
    invoke-static {v0}, Lcom/motorola/android/widget/CursorHaloOverlay;->access$100(Lcom/motorola/android/widget/CursorHaloOverlay;)V

    return-void
.end method
