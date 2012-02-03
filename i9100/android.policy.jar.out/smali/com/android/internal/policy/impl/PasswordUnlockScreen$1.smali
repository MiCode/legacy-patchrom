.class Lcom/android/internal/policy/impl/PasswordUnlockScreen$1;
.super Ljava/lang/Object;
.source "PasswordUnlockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PasswordUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mTitle:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$000(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x104031c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 110
    return-void
.end method
