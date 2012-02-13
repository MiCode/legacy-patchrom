.class public interface abstract Lcom/android/server/StatusBarManagerService$NotificationCallbacks;
.super Ljava/lang/Object;
.source "StatusBarManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StatusBarManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NotificationCallbacks"
.end annotation


# virtual methods
.method public abstract onClearAll()V
.end method

.method public abstract onNotificationClick(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract onNotificationError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
.end method

.method public abstract onNotificationRemove(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract onPanelRevealed()V
.end method

.method public abstract onSetDisabled(I)V
.end method
