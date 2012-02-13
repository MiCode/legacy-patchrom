.class public final Lcom/android/providers/calendar/CalendarProvider2$EventInstancesMap;
.super Ljava/util/HashMap;
.source "CalendarProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/calendar/CalendarProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventInstancesMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/android/providers/calendar/CalendarProvider2$InstancesList;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 220
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 1
    .parameter "syncIdKey"
    .parameter "values"

    .prologue
    .line 223
    invoke-virtual {p0, p1}, Lcom/android/providers/calendar/CalendarProvider2$EventInstancesMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/calendar/CalendarProvider2$InstancesList;

    .line 224
    .local v0, instances:Lcom/android/providers/calendar/CalendarProvider2$InstancesList;
    if-nez v0, :cond_0

    .line 225
    new-instance v0, Lcom/android/providers/calendar/CalendarProvider2$InstancesList;

    .end local v0           #instances:Lcom/android/providers/calendar/CalendarProvider2$InstancesList;
    invoke-direct {v0}, Lcom/android/providers/calendar/CalendarProvider2$InstancesList;-><init>()V

    .line 226
    .restart local v0       #instances:Lcom/android/providers/calendar/CalendarProvider2$InstancesList;
    invoke-virtual {p0, p1, v0}, Lcom/android/providers/calendar/CalendarProvider2$EventInstancesMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/providers/calendar/CalendarProvider2$InstancesList;->add(Ljava/lang/Object;)Z

    .line 229
    return-void
.end method
