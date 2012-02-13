.class public interface abstract Lcom/android/internal/telephony/MmiCode;
.super Ljava/lang/Object;
.source "MmiCode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/MmiCode$State;
    }
.end annotation


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract getMessage()Ljava/lang/CharSequence;
.end method

.method public abstract getState()Lcom/android/internal/telephony/MmiCode$State;
.end method

.method public abstract isCancelable()Z
.end method

.method public abstract isUssdRequest()Z
.end method
