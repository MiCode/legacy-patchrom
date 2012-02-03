.class public Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyDateConstraints;
.super Ljava/lang/Object;
.source "PlayReadyRightsInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/playready/playreadymanager/PlayReadyRightsInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayReadyDateConstraints"
.end annotation


# instance fields
.field public tm_hour:I

.field public tm_mday:I

.field public tm_min:I

.field public tm_mon:I

.field public tm_sec:I

.field public tm_year:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput v0, p0, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyDateConstraints;->tm_year:I

    .line 101
    iput v0, p0, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyDateConstraints;->tm_mon:I

    .line 102
    iput v0, p0, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyDateConstraints;->tm_mday:I

    .line 103
    iput v0, p0, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyDateConstraints;->tm_hour:I

    .line 104
    iput v0, p0, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyDateConstraints;->tm_min:I

    .line 105
    iput v0, p0, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyDateConstraints;->tm_sec:I

    .line 99
    return-void
.end method
