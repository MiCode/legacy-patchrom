.class public final Landroid/net/Downloads$StatusInfo;
.super Ljava/lang/Object;
.source "Downloads.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/Downloads;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StatusInfo"
.end annotation


# instance fields
.field public bytesSoFar:J

.field public completed:Z

.field public filename:Ljava/lang/String;

.field public id:J

.field public statusCode:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, -0x1

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/Downloads$StatusInfo;->completed:Z

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/Downloads$StatusInfo;->filename:Ljava/lang/String;

    .line 180
    iput-wide v1, p0, Landroid/net/Downloads$StatusInfo;->id:J

    .line 182
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/Downloads$StatusInfo;->statusCode:I

    .line 184
    iput-wide v1, p0, Landroid/net/Downloads$StatusInfo;->bytesSoFar:J

    return-void
.end method


# virtual methods
.method public isComplete()Z
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Landroid/net/Downloads$StatusInfo;->statusCode:I

    invoke-static {v0}, Landroid/provider/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v0

    return v0
.end method

.method public isSuccessful()Z
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Landroid/net/Downloads$StatusInfo;->statusCode:I

    invoke-static {v0}, Landroid/provider/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v0

    return v0
.end method
