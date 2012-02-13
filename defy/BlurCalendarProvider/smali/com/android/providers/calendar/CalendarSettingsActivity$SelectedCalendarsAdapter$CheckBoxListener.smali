.class Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter$CheckBoxListener;
.super Ljava/lang/Object;
.source "CalendarSettingsActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckBoxListener"
.end annotation


# instance fields
.field private final mPosition:I

.field final synthetic this$1:Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;


# direct methods
.method private constructor <init>(Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;I)V
    .locals 0
    .parameter
    .parameter "position"

    .prologue
    .line 408
    iput-object p1, p0, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter$CheckBoxListener;->this$1:Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    iput p2, p0, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter$CheckBoxListener;->mPosition:I

    .line 410
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;ILcom/android/providers/calendar/CalendarSettingsActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 405
    invoke-direct {p0, p1, p2}, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter$CheckBoxListener;-><init>(Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;I)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v2, 0x0

    .line 413
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter$CheckBoxListener;->this$1:Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;

    #getter for: Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->mCurrentSelections:[Z
    invoke-static {v0}, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->access$300(Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;)[Z

    move-result-object v0

    iget v1, p0, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter$CheckBoxListener;->mPosition:I

    aput-boolean p2, v0, v1

    .line 414
    iget v0, p0, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter$CheckBoxListener;->mPosition:I

    if-nez v0, :cond_1

    .line 415
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter$CheckBoxListener;->this$1:Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;

    #calls: Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->allCalendarsSelection(Z)V
    invoke-static {v0, p2}, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->access$400(Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;Z)V

    .line 429
    :cond_0
    :goto_0
    return-void

    .line 417
    :cond_1
    if-eqz p2, :cond_2

    .line 418
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter$CheckBoxListener;->this$1:Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;

    #calls: Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->areAllSelected()Z
    invoke-static {v0}, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->access$500(Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter$CheckBoxListener;->this$1:Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;

    #getter for: Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->mCurrentSelections:[Z
    invoke-static {v0}, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->access$300(Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;)[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 420
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter$CheckBoxListener;->this$1:Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;

    invoke-virtual {v0}, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 423
    :cond_2
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter$CheckBoxListener;->this$1:Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;

    #getter for: Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->mCurrentSelections:[Z
    invoke-static {v0}, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->access$300(Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;)[Z

    move-result-object v0

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter$CheckBoxListener;->this$1:Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;

    #getter for: Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->mCurrentSelections:[Z
    invoke-static {v0}, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->access$300(Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;)[Z

    move-result-object v0

    aput-boolean v2, v0, v2

    .line 425
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter$CheckBoxListener;->this$1:Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;

    invoke-virtual {v0}, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
