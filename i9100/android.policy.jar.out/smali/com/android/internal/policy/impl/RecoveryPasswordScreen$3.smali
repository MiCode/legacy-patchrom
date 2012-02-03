.class Lcom/android/internal/policy/impl/RecoveryPasswordScreen$3;
.super Ljava/lang/Object;
.source "RecoveryPasswordScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/RecoveryPasswordScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
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
    .line 152
    iput-object p1, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen$3;->this$0:Lcom/android/internal/policy/impl/RecoveryPasswordScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 154
    sput-boolean v1, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->recoveryScreen:Z

    .line 155
    iget-object v0, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen$3;->this$0:Lcom/android/internal/policy/impl/RecoveryPasswordScreen;

    #getter for: Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->access$200(Lcom/android/internal/policy/impl/RecoveryPasswordScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->reportDeviceWipe(I)V

    .line 156
    return-void
.end method
