.class Lcom/android/internal/policy/impl/RecoveryPasswordScreen$1;
.super Ljava/lang/Object;
.source "RecoveryPasswordScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/RecoveryPasswordScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/RecoveryPasswordScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/RecoveryPasswordScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen$1;->this$0:Lcom/android/internal/policy/impl/RecoveryPasswordScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen$1;->this$0:Lcom/android/internal/policy/impl/RecoveryPasswordScreen;

    #getter for: Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mTitle:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->access$000(Lcom/android/internal/policy/impl/RecoveryPasswordScreen;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x1040496

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 102
    return-void
.end method
