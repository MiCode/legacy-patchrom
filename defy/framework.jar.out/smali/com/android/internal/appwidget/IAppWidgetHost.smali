.class public interface abstract Lcom/android/internal/appwidget/IAppWidgetHost;
.super Ljava/lang/Object;
.source "IAppWidgetHost.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/appwidget/IAppWidgetHost$Stub;
    }
.end annotation


# virtual methods
.method public abstract providerChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract updateAppWidget(ILandroid/widget/RemoteViews;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
