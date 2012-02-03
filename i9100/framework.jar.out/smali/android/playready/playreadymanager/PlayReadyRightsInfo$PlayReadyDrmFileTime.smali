.class public Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyDrmFileTime;
.super Ljava/lang/Object;
.source "PlayReadyRightsInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/playready/playreadymanager/PlayReadyRightsInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayReadyDrmFileTime"
.end annotation


# instance fields
.field public HighDateTime:I

.field public LowDateTime:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput v0, p0, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyDrmFileTime;->HighDateTime:I

    .line 112
    iput v0, p0, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyDrmFileTime;->LowDateTime:I

    .line 110
    return-void
.end method
