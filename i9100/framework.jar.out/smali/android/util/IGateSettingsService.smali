.class public interface abstract Landroid/util/IGateSettingsService;
.super Ljava/lang/Object;
.source "IGateSettingsService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/IGateSettingsService$Stub;
    }
.end annotation


# virtual methods
.method public abstract registerBroadcastRecievers()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterBroadcastRecievers()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
