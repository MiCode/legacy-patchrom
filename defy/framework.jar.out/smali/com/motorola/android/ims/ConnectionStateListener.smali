.class public Lcom/motorola/android/ims/ConnectionStateListener;
.super Ljava/lang/Object;
.source "ConnectionStateListener.java"


# static fields
.field protected static final LISTEN_CONNECTION_STATE:I = 0x1


# instance fields
.field protected mCallback:Lcom/motorola/android/ims/IConnectionStateListener;

.field protected mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/motorola/android/ims/ConnectionStateListener$1;

    invoke-direct {v0, p0}, Lcom/motorola/android/ims/ConnectionStateListener$1;-><init>(Lcom/motorola/android/ims/ConnectionStateListener;)V

    iput-object v0, p0, Lcom/motorola/android/ims/ConnectionStateListener;->mCallback:Lcom/motorola/android/ims/IConnectionStateListener;

    new-instance v0, Lcom/motorola/android/ims/ConnectionStateListener$2;

    invoke-direct {v0, p0}, Lcom/motorola/android/ims/ConnectionStateListener$2;-><init>(Lcom/motorola/android/ims/ConnectionStateListener;)V

    iput-object v0, p0, Lcom/motorola/android/ims/ConnectionStateListener;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public processImsConnected(Z)V
    .locals 0
    .parameter "isLimited"

    .prologue
    return-void
.end method

.method public processImsDisconnected()V
    .locals 0

    .prologue
    return-void
.end method
