.class public Landroid/app/Application;
.super Landroid/content/ContextWrapper;
.source "Application.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method final attach(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    invoke-virtual {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    return-void
.end method

.method public onCreate()V
    .locals 0

    .prologue
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    return-void
.end method

.method public onTerminate()V
    .locals 0

    .prologue
    return-void
.end method
