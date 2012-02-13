.class public interface abstract Lcom/android/internal/policy/impl/KeyguardScreenCallback;
.super Ljava/lang/Object;
.source "KeyguardScreenCallback.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardViewCallback;


# virtual methods
.method public abstract doesFallbackUnlockScreenExist()Z
.end method

.method public abstract forgotPassword(Z)V
.end method

.method public abstract forgotPattern(Z)V
.end method

.method public abstract goToLockScreen()V
.end method

.method public abstract goToUnlockScreen()V
.end method

.method public abstract isIceInfoStored()Z
.end method

.method public abstract isSecure()Z
.end method

.method public abstract isVerifyUnlockOnly()Z
.end method

.method public abstract jumpToICEActivity()V
.end method

.method public abstract passwordVerified(Z)V
.end method

.method public abstract recreateMe(Landroid/content/res/Configuration;)V
.end method

.method public abstract reportFailedUnlockAttempt()V
.end method

.method public abstract reportSuccessfulUnlockAttempt()V
.end method

.method public abstract takeEmergencyCallAction()V
.end method
