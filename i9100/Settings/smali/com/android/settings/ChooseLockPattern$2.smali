.class Lcom/android/settings/ChooseLockPattern$2;
.super Ljava/lang/Object;
.source "ChooseLockPattern.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ChooseLockPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ChooseLockPattern;


# direct methods
.method constructor <init>(Lcom/android/settings/ChooseLockPattern;)V
    .locals 0
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lcom/android/settings/ChooseLockPattern$2;->this$0:Lcom/android/settings/ChooseLockPattern;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$2;->this$0:Lcom/android/settings/ChooseLockPattern;

    iget-object v0, v0, Lcom/android/settings/ChooseLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 263
    return-void
.end method
