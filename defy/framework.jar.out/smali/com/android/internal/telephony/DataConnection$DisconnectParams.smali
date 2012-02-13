.class public Lcom/android/internal/telephony/DataConnection$DisconnectParams;
.super Ljava/lang/Object;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "DisconnectParams"
.end annotation


# instance fields
.field public lockObj:Lcom/android/internal/telephony/DataConnection$ResetSynchronouslyLock;

.field public onCompletedMsg:Landroid/os/Message;

.field public tag:I


# direct methods
.method public constructor <init>(Landroid/os/Message;)V
    .locals 0
    .parameter "onCompletedMsg"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/DataConnection$DisconnectParams;->onCompletedMsg:Landroid/os/Message;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/DataConnection$ResetSynchronouslyLock;)V
    .locals 0
    .parameter "lockObj"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/DataConnection$DisconnectParams;->lockObj:Lcom/android/internal/telephony/DataConnection$ResetSynchronouslyLock;

    return-void
.end method
