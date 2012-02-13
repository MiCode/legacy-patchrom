.class public final Lcom/android/providers/calendar/CalendarProvider2$InstancesRange;
.super Ljava/lang/Object;
.source "CalendarProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/calendar/CalendarProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InstancesRange"
.end annotation


# instance fields
.field public begin:J

.field public end:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0
    .parameter "begin"
    .parameter "end"

    .prologue
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput-wide p1, p0, Lcom/android/providers/calendar/CalendarProvider2$InstancesRange;->begin:J

    .line 212
    iput-wide p3, p0, Lcom/android/providers/calendar/CalendarProvider2$InstancesRange;->end:J

    .line 213
    return-void
.end method
