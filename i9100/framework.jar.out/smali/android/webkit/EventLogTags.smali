.class public Landroid/webkit/EventLogTags;
.super Ljava/lang/Object;
.source "EventLogTags.java"


# static fields
.field public static final BROWSER_DOUBLE_TAP_DURATION:I = 0x111d6

.field public static final BROWSER_SNAP_CENTER:I = 0x11206

.field public static final BROWSER_TEXT_SIZE_CHANGE:I = 0x11207

.field public static final BROWSER_ZOOM_LEVEL_CHANGE:I = 0x111d5


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static writeBrowserDoubleTapDuration(IJ)V
    .locals 4
    .parameter "duration"
    .parameter "time"

    .prologue
    .line 30
    const v0, 0x111d6

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 31
    return-void
.end method

.method public static writeBrowserSnapCenter()V
    .locals 2

    .prologue
    .line 34
    const v0, 0x11206

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 35
    return-void
.end method

.method public static writeBrowserTextSizeChange(II)V
    .locals 4
    .parameter "oldsize"
    .parameter "newsize"

    .prologue
    .line 38
    const v0, 0x11207

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 39
    return-void
.end method

.method public static writeBrowserZoomLevelChange(IIJ)V
    .locals 4
    .parameter "startLevel"
    .parameter "endLevel"
    .parameter "time"

    .prologue
    .line 26
    const v0, 0x111d5

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 27
    return-void
.end method
