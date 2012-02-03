.class Lcom/android/settings/ConfirmLockPattern$1;
.super Ljava/lang/Object;
.source "ConfirmLockPattern.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ConfirmLockPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ConfirmLockPattern;


# direct methods
.method constructor <init>(Lcom/android/settings/ConfirmLockPattern;)V
    .locals 0
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/android/settings/ConfirmLockPattern$1;->this$0:Lcom/android/settings/ConfirmLockPattern;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$1;->this$0:Lcom/android/settings/ConfirmLockPattern;

    #getter for: Lcom/android/settings/ConfirmLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v0}, Lcom/android/settings/ConfirmLockPattern;->access$000(Lcom/android/settings/ConfirmLockPattern;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 206
    return-void
.end method
