.class public Landroid/net/TrafficStats;
.super Ljava/lang/Object;
.source "TrafficStats.java"


# static fields
.field public static final UNSUPPORTED:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native getMobileRxBytes()J
.end method

.method public static native getMobileRxPackets()J
.end method

.method public static native getMobileTxBytes()J
.end method

.method public static native getMobileTxPackets()J
.end method

.method public static native getTotalRxBytes()J
.end method

.method public static native getTotalRxPackets()J
.end method

.method public static native getTotalTxBytes()J
.end method

.method public static native getTotalTxPackets()J
.end method

.method public static native getUidRxBytes(I)J
.end method

.method public static native getUidTxBytes(I)J
.end method
