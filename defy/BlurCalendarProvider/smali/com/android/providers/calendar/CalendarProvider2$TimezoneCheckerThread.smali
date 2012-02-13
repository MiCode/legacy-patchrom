.class Lcom/android/providers/calendar/CalendarProvider2$TimezoneCheckerThread;
.super Ljava/lang/Thread;
.source "CalendarProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/calendar/CalendarProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimezoneCheckerThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/calendar/CalendarProvider2;


# direct methods
.method private constructor <init>(Lcom/android/providers/calendar/CalendarProvider2;)V
    .locals 0
    .parameter

    .prologue
    .line 507
    iput-object p1, p0, Lcom/android/providers/calendar/CalendarProvider2$TimezoneCheckerThread;->this$0:Lcom/android/providers/calendar/CalendarProvider2;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/calendar/CalendarProvider2;Lcom/android/providers/calendar/CalendarProvider2$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 507
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarProvider2$TimezoneCheckerThread;-><init>(Lcom/android/providers/calendar/CalendarProvider2;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const-string v2, "CalendarProvider2"

    .line 510
    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 511
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2$TimezoneCheckerThread;->this$0:Lcom/android/providers/calendar/CalendarProvider2;

    invoke-virtual {v1}, Lcom/android/providers/calendar/CalendarProvider2;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 512
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_1

    .line 513
    const-string v1, "CalendarProvider2"

    const/4 v1, 0x2

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 514
    const-string v1, "CalendarProvider2"

    const-string v1, "Cannot update Events table from EventsRawTimes table"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_0
    :goto_0
    return-void

    .line 519
    :cond_1
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2$TimezoneCheckerThread;->this$0:Lcom/android/providers/calendar/CalendarProvider2;

    #calls: Lcom/android/providers/calendar/CalendarProvider2;->performTimeZoneDependentFieldsUpdate(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {v1, v0}, Lcom/android/providers/calendar/CalendarProvider2;->access$600(Lcom/android/providers/calendar/CalendarProvider2;Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0
.end method
