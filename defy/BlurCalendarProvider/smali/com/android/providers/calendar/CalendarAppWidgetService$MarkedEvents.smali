.class Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;
.super Ljava/lang/Object;
.source "CalendarAppWidgetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/calendar/CalendarAppWidgetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MarkedEvents"
.end annotation


# instance fields
.field fifthCount:I

.field fifthRow:I

.field fifthTime:J

.field fourthCount:I

.field fourthRow:I

.field fourthTime:J

.field primaryConflictRow:I

.field primaryCount:I

.field primaryRow:I

.field primaryTime:J

.field secondaryCount:I

.field secondaryRow:I

.field secondaryTime:J

.field seventhCount:I

.field seventhRow:I

.field seventhTime:J

.field sixthCount:I

.field sixthRow:I

.field sixthTime:J

.field thirdCount:I

.field thirdRow:I

.field thirdTime:J

.field watchFound:Z


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 1254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1255
    iput-wide v2, p0, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->primaryTime:J

    .line 1256
    iput v0, p0, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->primaryRow:I

    .line 1257
    iput v0, p0, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->primaryConflictRow:I

    .line 1258
    iput v1, p0, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->primaryCount:I

    .line 1259
    iput-wide v2, p0, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->secondaryTime:J

    .line 1260
    iput v0, p0, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->secondaryRow:I

    .line 1261
    iput v1, p0, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->secondaryCount:I

    .line 1262
    iput-wide v2, p0, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->thirdTime:J

    .line 1263
    iput v0, p0, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->thirdRow:I

    .line 1264
    iput v1, p0, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->thirdCount:I

    .line 1265
    iput-wide v2, p0, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->fourthTime:J

    .line 1266
    iput v0, p0, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->fourthRow:I

    .line 1267
    iput v1, p0, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->fourthCount:I

    .line 1268
    iput-wide v2, p0, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->fifthTime:J

    .line 1269
    iput v0, p0, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->fifthRow:I

    .line 1270
    iput v1, p0, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->fifthCount:I

    .line 1271
    iput-wide v2, p0, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->sixthTime:J

    .line 1272
    iput v0, p0, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->sixthRow:I

    .line 1273
    iput v1, p0, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->sixthCount:I

    .line 1274
    iput-wide v2, p0, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->seventhTime:J

    .line 1275
    iput v0, p0, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->seventhRow:I

    .line 1276
    iput v1, p0, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->seventhCount:I

    .line 1277
    iput-boolean v1, p0, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->watchFound:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/calendar/CalendarAppWidgetService$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1254
    invoke-direct {p0}, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;-><init>()V

    return-void
.end method
