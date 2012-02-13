.class Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin$1;
.super Ljava/lang/Object;
.source "SimUnlockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;

.field final synthetic val$num_retries:I


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;

    iput p2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin$1;->val$num_retries:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;

    iget v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin$1;->val$num_retries:I

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;->onSimLockChangedResponse(I)V

    return-void
.end method
