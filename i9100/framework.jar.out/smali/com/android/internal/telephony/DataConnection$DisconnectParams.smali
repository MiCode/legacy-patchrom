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

.field public userObj:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/os/Message;)V
    .locals 0
    .parameter "onCompletedMsg"

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnection$DisconnectParams;->onCompletedMsg:Landroid/os/Message;

    .line 154
    return-void
.end method

.method public constructor <init>(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 0
    .parameter "onCompletedMsg"
    .parameter "userObj"

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnection$DisconnectParams;->onCompletedMsg:Landroid/os/Message;

    .line 161
    iput-object p2, p0, Lcom/android/internal/telephony/DataConnection$DisconnectParams;->userObj:Ljava/lang/Object;

    .line 162
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/DataConnection$ResetSynchronouslyLock;)V
    .locals 0
    .parameter "lockObj"

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnection$DisconnectParams;->lockObj:Lcom/android/internal/telephony/DataConnection$ResetSynchronouslyLock;

    .line 157
    return-void
.end method
