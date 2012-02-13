.class public Lcom/android/providers/calendar/CalendarWidgetProvider$WidgetService;
.super Lcom/motorola/blur/home/widget/ChipWidgetProvider$WidgetService;
.source "CalendarWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/calendar/CalendarWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WidgetService"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 486
    invoke-static {}, Lcom/android/providers/calendar/CalendarWidgetProvider;->getInstance()Lcom/android/providers/calendar/CalendarWidgetProvider;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/motorola/blur/home/widget/ChipWidgetProvider$WidgetService;-><init>(Lcom/motorola/blur/home/widget/ChipWidgetProvider;)V

    .line 487
    return-void
.end method
