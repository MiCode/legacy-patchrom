.class public abstract Landroid/accessibilityservice/AccessibilityService;
.super Landroid/app/Service;
.source "AccessibilityService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/AccessibilityService$IEventListenerWrapper;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AccessibilityService"

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.accessibilityservice.AccessibilityService"


# instance fields
.field mConnection:Landroid/accessibilityservice/IAccessibilityServiceConnection;

.field private mInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 179
    return-void
.end method

.method private sendServiceInfo()V
    .locals 3

    .prologue
    .line 157
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService;->mInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService;->mConnection:Landroid/accessibilityservice/IAccessibilityServiceConnection;

    if-eqz v1, :cond_0

    .line 159
    :try_start_0
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService;->mConnection:Landroid/accessibilityservice/IAccessibilityServiceConnection;

    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService;->mInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-interface {v1, v2}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 161
    .local v0, re:Landroid/os/RemoteException;
    const-string v1, "AccessibilityService"

    const-string v2, "Error while setting AccessibilityServiceInfo"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public abstract onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 172
    new-instance v0, Landroid/accessibilityservice/AccessibilityService$IEventListenerWrapper;

    invoke-direct {v0, p0, p0}, Landroid/accessibilityservice/AccessibilityService$IEventListenerWrapper;-><init>(Landroid/accessibilityservice/AccessibilityService;Landroid/accessibilityservice/AccessibilityService;)V

    return-object v0
.end method

.method public abstract onInterrupt()V
.end method

.method protected onServiceConnected()V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method public final setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .locals 0
    .parameter "info"

    .prologue
    .line 147
    iput-object p1, p0, Landroid/accessibilityservice/AccessibilityService;->mInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 148
    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService;->sendServiceInfo()V

    .line 149
    return-void
.end method
