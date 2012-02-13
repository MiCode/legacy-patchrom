.class Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;
.super Ljava/lang/Object;
.source "CalendarAppWidgetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/calendar/CalendarAppWidgetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventInfoIds"
.end annotation


# instance fields
.field bkgImageId:I

.field conflictCount:I

.field conflictId:I

.field rowId:I

.field statusImageId:I

.field titleId:I

.field whenId:I

.field whereId:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/calendar/CalendarAppWidgetService$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1280
    invoke-direct {p0}, Lcom/android/providers/calendar/CalendarAppWidgetService$EventInfoIds;-><init>()V

    return-void
.end method
