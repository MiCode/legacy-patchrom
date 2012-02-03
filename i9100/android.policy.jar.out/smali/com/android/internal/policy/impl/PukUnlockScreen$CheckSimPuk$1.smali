.class Lcom/android/internal/policy/impl/PukUnlockScreen$CheckSimPuk$1;
.super Ljava/lang/Object;
.source "PukUnlockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PukUnlockScreen$CheckSimPuk;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/PukUnlockScreen$CheckSimPuk;

.field final synthetic val$result:Z


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PukUnlockScreen$CheckSimPuk;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 373
    iput-object p1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$CheckSimPuk$1;->this$1:Lcom/android/internal/policy/impl/PukUnlockScreen$CheckSimPuk;

    iput-boolean p2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$CheckSimPuk$1;->val$result:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$CheckSimPuk$1;->this$1:Lcom/android/internal/policy/impl/PukUnlockScreen$CheckSimPuk;

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$CheckSimPuk$1;->val$result:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PukUnlockScreen$CheckSimPuk;->onSimLockChangedResponse(Z)V

    .line 376
    return-void
.end method
