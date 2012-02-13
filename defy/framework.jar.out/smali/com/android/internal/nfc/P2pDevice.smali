.class public abstract Lcom/android/internal/nfc/P2pDevice;
.super Ljava/lang/Object;
.source "P2pDevice.java"


# static fields
.field public static final MODE_INVALID:S = 0xffs

.field public static final MODE_P2P_INITIATOR:S = 0x1s

.field public static final MODE_P2P_TARGET:S


# instance fields
.field protected isClosed:Z

.field protected mHandle:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/nfc/P2pDevice;->isClosed:Z

    return-void
.end method


# virtual methods
.method public getGeneralBytes()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    const/16 v0, 0xff

    return v0
.end method
