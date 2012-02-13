.class public Lcom/android/providers/calendar/EmptyService;
.super Landroid/app/Service;
.source "EmptyService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 30
    const/4 v0, 0x0

    return-object v0
.end method
