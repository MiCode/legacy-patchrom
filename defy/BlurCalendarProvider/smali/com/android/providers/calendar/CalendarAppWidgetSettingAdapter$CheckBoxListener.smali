.class Lcom/android/providers/calendar/CalendarAppWidgetSettingAdapter$CheckBoxListener;
.super Ljava/lang/Object;
.source "CalendarAppWidgetSettingAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/calendar/CalendarAppWidgetSettingAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckBoxListener"
.end annotation


# instance fields
.field private final mCalendarId:J

.field final synthetic this$0:Lcom/android/providers/calendar/CalendarAppWidgetSettingAdapter;


# direct methods
.method private constructor <init>(Lcom/android/providers/calendar/CalendarAppWidgetSettingAdapter;J)V
    .locals 0
    .parameter
    .parameter "calendarId"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/providers/calendar/CalendarAppWidgetSettingAdapter$CheckBoxListener;->this$0:Lcom/android/providers/calendar/CalendarAppWidgetSettingAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-wide p2, p0, Lcom/android/providers/calendar/CalendarAppWidgetSettingAdapter$CheckBoxListener;->mCalendarId:J

    .line 56
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/calendar/CalendarAppWidgetSettingAdapter;JLcom/android/providers/calendar/CalendarAppWidgetSettingAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/calendar/CalendarAppWidgetSettingAdapter$CheckBoxListener;-><init>(Lcom/android/providers/calendar/CalendarAppWidgetSettingAdapter;J)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 59
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarAppWidgetSettingAdapter$CheckBoxListener;->this$0:Lcom/android/providers/calendar/CalendarAppWidgetSettingAdapter;

    #getter for: Lcom/android/providers/calendar/CalendarAppWidgetSettingAdapter;->mValues:Landroid/content/ContentValues;
    invoke-static {v1}, Lcom/android/providers/calendar/CalendarAppWidgetSettingAdapter;->access$000(Lcom/android/providers/calendar/CalendarAppWidgetSettingAdapter;)Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 60
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 61
    .local v0, checked:I
    :goto_0
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarAppWidgetSettingAdapter$CheckBoxListener;->this$0:Lcom/android/providers/calendar/CalendarAppWidgetSettingAdapter;

    iget-object v2, p0, Lcom/android/providers/calendar/CalendarAppWidgetSettingAdapter$CheckBoxListener;->this$0:Lcom/android/providers/calendar/CalendarAppWidgetSettingAdapter;

    #getter for: Lcom/android/providers/calendar/CalendarAppWidgetSettingAdapter;->mWidgetId:I
    invoke-static {v2}, Lcom/android/providers/calendar/CalendarAppWidgetSettingAdapter;->access$100(Lcom/android/providers/calendar/CalendarAppWidgetSettingAdapter;)I

    move-result v2

    iget-wide v3, p0, Lcom/android/providers/calendar/CalendarAppWidgetSettingAdapter$CheckBoxListener;->mCalendarId:J

    #calls: Lcom/android/providers/calendar/CalendarAppWidgetSettingAdapter;->updateChipData(IJI)V
    invoke-static {v1, v2, v3, v4, v0}, Lcom/android/providers/calendar/CalendarAppWidgetSettingAdapter;->access$200(Lcom/android/providers/calendar/CalendarAppWidgetSettingAdapter;IJI)V

    .line 62
    return-void

    .line 60
    .end local v0           #checked:I
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method
