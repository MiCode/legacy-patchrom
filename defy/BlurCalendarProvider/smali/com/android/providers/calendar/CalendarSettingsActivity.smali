.class public Lcom/android/providers/calendar/CalendarSettingsActivity;
.super Lcom/motorola/blur/home/widget/AbstractSettingsActivity;
.source "CalendarSettingsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/calendar/CalendarSettingsActivity$CalendarAttrs;,
        Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;
    }
.end annotation


# static fields
.field public static final ALL_CALENDARS_ID:J = 0x270fL

.field static final LOGD:Z = false

.field private static final TAG:Ljava/lang/String; = "Calendar"


# instance fields
.field private mAdapter:Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;

.field private mCursor:Landroid/database/Cursor;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Lcom/motorola/blur/home/widget/AbstractSettingsActivity;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/android/providers/calendar/CalendarSettingsActivity;->mView:Landroid/view/View;

    .line 53
    iput-object v0, p0, Lcom/android/providers/calendar/CalendarSettingsActivity;->mCursor:Landroid/database/Cursor;

    .line 433
    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/calendar/CalendarSettingsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarSettingsActivity;->handleDone()V

    return-void
.end method

.method static synthetic access$100(Landroid/content/ContentResolver;IJ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 47
    invoke-static {p0, p1, p2, p3}, Lcom/android/providers/calendar/CalendarSettingsActivity;->getChipSelection(Landroid/content/ContentResolver;IJ)Z

    move-result v0

    return v0
.end method

.method public static areAllCalendarsSelected(Landroid/content/ContentResolver;I)Z
    .locals 2
    .parameter "resolver"
    .parameter "widgetId"

    .prologue
    .line 196
    const-wide/16 v0, 0x270f

    invoke-static {p0, p1, v0, v1}, Lcom/android/providers/calendar/CalendarSettingsActivity;->getChipSelection(Landroid/content/ContentResolver;IJ)Z

    move-result v0

    return v0
.end method

.method private static getChipSelection(Landroid/content/ContentResolver;IJ)Z
    .locals 11
    .parameter "resolver"
    .parameter "chipId"
    .parameter "calendarId"

    .prologue
    const/4 v2, 0x0

    .line 177
    const/4 v7, 0x1

    .line 178
    .local v7, checked:Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "chip_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "chip_calendar_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 179
    .local v3, selection:Ljava/lang/String;
    sget-object v1, Lcom/android/providers/calendar/AppWidgetShared;->CHIP_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 180
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 181
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 182
    .local v8, dbCount:I
    if-lez v8, :cond_0

    .line 183
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 184
    const-string v0, "chip_calendar_selected"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 185
    .local v10, selectedColumn:I
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 186
    .local v9, selected:I
    if-nez v9, :cond_0

    .line 187
    const/4 v7, 0x0

    .line 190
    .end local v9           #selected:I
    .end local v10           #selectedColumn:I
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 192
    .end local v8           #dbCount:I
    :cond_1
    return v7
.end method

.method public static updateChipData(Landroid/content/ContentResolver;IJZ)V
    .locals 10
    .parameter "resolver"
    .parameter "chipId"
    .parameter "calendarId"
    .parameter "checked"

    .prologue
    const/4 v2, 0x0

    const-string v9, "chip_calendar_id"

    .line 158
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 159
    .local v8, values:Landroid/content/ContentValues;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "chip_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "chip_calendar_id"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 160
    .local v3, selection:Ljava/lang/String;
    sget-object v1, Lcom/android/providers/calendar/AppWidgetShared;->CHIP_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 161
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 162
    const-string v0, "chip_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 163
    const-string v0, "chip_calendar_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 164
    const-string v0, "chip_calendar_selected"

    if-eqz p4, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 166
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 167
    .local v7, dbCount:I
    if-nez v7, :cond_2

    .line 168
    sget-object v0, Lcom/android/providers/calendar/AppWidgetShared;->CHIP_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 172
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 174
    .end local v7           #dbCount:I
    :cond_0
    return-void

    .line 164
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 170
    .restart local v7       #dbCount:I
    :cond_2
    sget-object v0, Lcom/android/providers/calendar/AppWidgetShared;->CHIP_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, v8, v3, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method protected bindSettingsValues()V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method protected getAppNameId()I
    .locals 1

    .prologue
    .line 94
    const/high16 v0, 0x7f08

    return v0
.end method

.method protected getDoneButtonId()I
    .locals 1

    .prologue
    .line 99
    const v0, 0x7f0b0051

    return v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 104
    const v0, 0x7f030026

    return v0
.end method

.method protected getProvider()Lcom/motorola/blur/home/widget/ChipWidgetProvider;
    .locals 1

    .prologue
    .line 109
    invoke-static {}, Lcom/android/providers/calendar/CalendarWidgetProvider;->getInstance()Lcom/android/providers/calendar/CalendarWidgetProvider;

    move-result-object v0

    return-object v0
.end method

.method protected getTitleWidgetId()I
    .locals 1

    .prologue
    .line 114
    const v0, 0x7f0b004d

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/motorola/blur/home/widget/AbstractSettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v0, 0x7f0b004c

    invoke-virtual {p0, v0}, Lcom/android/providers/calendar/CalendarSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarSettingsActivity;->mView:Landroid/view/View;

    .line 60
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarSettingsActivity;->mView:Landroid/view/View;

    const v1, 0x7f0b0050

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ListView;

    .line 61
    .local v9, items:Landroid/widget/ListView;
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarSettingsActivity;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 62
    .local v7, context:Landroid/content/Context;
    sget-object v1, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/calendar/AppWidgetShared;->CALENDAR_PROJECTION:[Ljava/lang/String;

    const-string v3, "selected=1"

    const/4 v4, 0x0

    const-string v5, "displayName"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/calendar/CalendarSettingsActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarSettingsActivity;->mCursor:Landroid/database/Cursor;

    .line 67
    new-instance v0, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;

    iget-object v1, p0, Lcom/android/providers/calendar/CalendarSettingsActivity;->mCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/android/providers/calendar/CalendarSettingsActivity;->mAppWidgetId:I

    invoke-direct {v0, p0, v7, v1, v2}, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;-><init>(Lcom/android/providers/calendar/CalendarSettingsActivity;Landroid/content/Context;Landroid/database/Cursor;I)V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarSettingsActivity;->mAdapter:Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;

    .line 68
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarSettingsActivity;->mAdapter:Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;

    invoke-virtual {v9, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 69
    invoke-virtual {v9, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 71
    const v0, 0x7f0b0052

    invoke-virtual {p0, v0}, Lcom/android/providers/calendar/CalendarSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/motorola/android/widget/ActionBar;

    .line 72
    .local v6, actionBar:Lcom/motorola/android/widget/ActionBar;
    new-instance v8, Landroid/widget/Button;

    invoke-direct {v8, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 73
    .local v8, doneButton:Landroid/widget/Button;
    const v0, 0x30a0077

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setText(I)V

    .line 74
    new-instance v0, Lcom/android/providers/calendar/CalendarSettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/providers/calendar/CalendarSettingsActivity$1;-><init>(Lcom/android/providers/calendar/CalendarSettingsActivity;)V

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    invoke-virtual {v6, v8}, Lcom/motorola/android/widget/ActionBar;->addButton(Landroid/widget/Button;)V

    .line 80
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const v1, 0x7f0b0056

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 84
    .local v0, box:Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 85
    return-void
.end method

.method protected storeSettingsValues()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarSettingsActivity;->mAdapter:Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;

    invoke-virtual {v0}, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->commitChanges()Z

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "chip_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/providers/calendar/CalendarSettingsActivity;->mAppWidgetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 122
    .local v3, selection:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/providers/calendar/AppWidgetShared;->CHIP_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 123
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 124
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 125
    .local v9, dbCount:I
    if-lez v9, :cond_1

    .line 126
    const/4 v13, 0x0

    .line 127
    .local v13, selectedColumn:I
    const/4 v12, 0x0

    .line 128
    .local v12, selected:I
    const/4 v7, 0x0

    .line 129
    .local v7, calendarColumn:I
    const/4 v8, 0x0

    .line 130
    .local v8, calendarId:I
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 131
    .local v11, object:Lorg/json/JSONObject;
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    const-string v0, "chip_calendar_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 133
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 134
    const-string v0, "chip_calendar_selected"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 135
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 136
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    .line 140
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarSettingsActivity;->mSettings:Lorg/json/JSONObject;

    const-string v1, "chip_calendar_id"

    invoke-virtual {v0, v1, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .end local v3           #selection:Ljava/lang/String;
    .end local v7           #calendarColumn:I
    .end local v8           #calendarId:I
    .end local v11           #object:Lorg/json/JSONObject;
    .end local v12           #selected:I
    .end local v13           #selectedColumn:I
    :cond_1
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 150
    .end local v9           #dbCount:I
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarSettingsActivity;->mSettings:Lorg/json/JSONObject;

    const-string v1, "displayName"

    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 156
    :goto_2
    return-void

    .line 141
    .restart local v3       #selection:Ljava/lang/String;
    .restart local v7       #calendarColumn:I
    .restart local v8       #calendarId:I
    .restart local v9       #dbCount:I
    .restart local v11       #object:Lorg/json/JSONObject;
    .restart local v12       #selected:I
    .restart local v13       #selectedColumn:I
    :catch_0
    move-exception v0

    move-object v10, v0

    .line 142
    .local v10, e:Lorg/json/JSONException;
    const-string v0, "Calendar"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Unable to save calendar ids"

    .end local v3           #selection:Ljava/lang/String;
    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 151
    .end local v7           #calendarColumn:I
    .end local v8           #calendarId:I
    .end local v9           #dbCount:I
    .end local v10           #e:Lorg/json/JSONException;
    .end local v11           #object:Lorg/json/JSONObject;
    .end local v12           #selected:I
    .end local v13           #selectedColumn:I
    :catch_1
    move-exception v0

    move-object v10, v0

    .line 152
    .restart local v10       #e:Lorg/json/JSONException;
    const-string v0, "Calendar"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Unable to save display name"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method
