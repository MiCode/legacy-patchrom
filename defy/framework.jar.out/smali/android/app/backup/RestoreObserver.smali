.class public abstract Landroid/app/backup/RestoreObserver;
.super Ljava/lang/Object;
.source "RestoreObserver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(ILjava/lang/String;)V
    .locals 0
    .parameter "nowBeingRestored"
    .parameter "currentPackage"

    .prologue
    return-void
.end method

.method public restoreFinished(I)V
    .locals 0
    .parameter "error"

    .prologue
    return-void
.end method

.method public restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    .locals 0
    .parameter "result"

    .prologue
    return-void
.end method

.method public restoreStarting(I)V
    .locals 0
    .parameter "numPackages"

    .prologue
    return-void
.end method
