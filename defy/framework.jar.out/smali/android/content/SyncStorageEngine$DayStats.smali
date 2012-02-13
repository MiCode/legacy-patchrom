.class public Landroid/content/SyncStorageEngine$DayStats;
.super Ljava/lang/Object;
.source "SyncStorageEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/SyncStorageEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DayStats"
.end annotation


# instance fields
.field public final day:I

.field public failureCount:I

.field public failureTime:J

.field public successCount:I

.field public successTime:J


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "day"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/content/SyncStorageEngine$DayStats;->day:I

    return-void
.end method
