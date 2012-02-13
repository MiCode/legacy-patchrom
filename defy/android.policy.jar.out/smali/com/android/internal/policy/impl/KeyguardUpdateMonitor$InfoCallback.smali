.class interface abstract Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "InfoCallback"
.end annotation


# virtual methods
.method public abstract onPhoneStateChanged(Ljava/lang/String;)V
.end method

.method public abstract onRefreshBatteryInfo(ZZI)V
.end method

.method public abstract onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
.end method

.method public abstract onRingerModeChanged(I)V
.end method

.method public abstract onTimeChanged()V
.end method
