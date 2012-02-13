.class Lcom/android/providers/calendar/CalendarWidgetProviderHelper;
.super Ljava/lang/Object;
.source "CalendarWidgetProvider.java"


# static fields
.field static sInstance:Lcom/android/providers/calendar/CalendarWidgetProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 494
    new-instance v0, Lcom/android/providers/calendar/CalendarWidgetProvider;

    invoke-direct {v0}, Lcom/android/providers/calendar/CalendarWidgetProvider;-><init>()V

    sput-object v0, Lcom/android/providers/calendar/CalendarWidgetProviderHelper;->sInstance:Lcom/android/providers/calendar/CalendarWidgetProvider;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
