.class Lcom/android/internal/policy/impl/RecoveryPasswordScreen$2;
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
    .line 146
    iput-object p1, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen$2;->this$0:Lcom/android/internal/policy/impl/RecoveryPasswordScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen$2;->this$0:Lcom/android/internal/policy/impl/RecoveryPasswordScreen;

    #calls: Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->verifyRecoveryPassword()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->access$100(Lcom/android/internal/policy/impl/RecoveryPasswordScreen;)V

    .line 149
    return-void
.end method
