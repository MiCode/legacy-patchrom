.class public Lcom/android/providers/calendar/CalendarAppWidgetSettingAdapter;
.super Landroid/widget/CursorAdapter;
.source "CalendarAppWidgetSettingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/calendar/CalendarAppWidgetSettingAdapter$1;,
        Lcom/android/providers/calendar/CalendarAppWidgetSettingAdapter$CheckBoxListener;
    }
.end annotation


# static fields
.field private static final CLEAR_ALPHA_MASK:I = 0xffffff

.field private static final CORNERS:[F = null

.field private static final HIGH_ALPHA:I = -0x1000000

.field private static final LOW_ALPHA:I = -0x6a000000

.field private static final MED_ALPHA:I = -0x4c000000

.field private static final TAG:Ljava/lang/String; = "Calendar"


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mValues:Landroid/content/ContentValues;

.field private final mWidgetId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/providers/calendar/CalendarAppWidgetSettingAdapter;->CORNERS:[F

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;I)V
    .locals 1
    .parameter "context"
    .parameter "cursor"
    .parameter "widgetId"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 48
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarAppWidgetSettingAdapter;->mValues:Landroid/content/ContentValues;

    .line 67
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarAppWidgetSettingAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarAppWidgetSettingAdapter;->mResolver:Landroid/content/ContentResolver;

    .line 69
    iput p3, p0, Lcom/android/providers/calendar/CalendarAppWidgetSettingAdapter;->mWidgetId:I

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/calendar/CalendarAppWidgetSettingAdapter;)Landroid/content/ContentValues;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarAppWidgetSettingAdapter;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/providers/calendar/CalendarAppWidgetSettingAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/android/providers/calendar/CalendarAppWidgetSettingAdapter;->mWidgetId:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/providers/calendar/CalendarAppWidgetSettingAdapter;IJI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/providers/calendar/CalendarAppWidgetSettingAdapter;->updateChipData(IJI)V

    return-void
.end method

.method private getChipSelection(IJ)Z
    .locals 11
    .parameter "chipId"
    .parameter "calendarId"

    .prologue
    const/4 v2, 0x0

    .line 136
    const/4 v7, 0x1

    .line 137
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

    .line 138
    .local v3, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarAppWidgetSettingAdapter;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/providers/calendar/AppWidgetShared;->CHIP_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 139
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 140
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 141
    .local v8, dbCount:I
    if-lez v8, :cond_0

    .line 142
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 143
    const-string v0, "chip_calendar_selected"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 144
    .local v10, selectedColumn:I
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 145
    .local v9, selected:I
    if-nez v9, :cond_0

    .line 146
    const/4 v7, 0x0

    .line 149
    .end local v9           #selected:I
    .end local v10           #selectedColumn:I
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 151
    .end local v8           #dbCount:I
    :cond_1
    return v7
.end method

.method private getColorChip(I)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "color"

    .prologue
    .line 106
    const v5, 0xffffff

    and-int/2addr p1, v5

    .line 107
    const/high16 v5, -0x100

    or-int v4, p1, v5

    .line 108
    .local v4, startColor:I
    const/high16 v5, -0x4c00

    or-int v3, p1, v5

    .line 109
    .local v3, middleColor:I
    const/high16 v5, -0x6a00

    or-int v2, p1, v5

    .line 110
    .local v2, endColor:I
    const/4 v5, 0x3

    new-array v0, v5, [I

    const/4 v5, 0x0

    aput v4, v0, v5

    const/4 v5, 0x1

    aput v3, v0, v5

    const/4 v5, 0x2

    aput v2, v0, v5

    .line 111
    .local v0, colors:[I
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v5, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v1, v5, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 112
    .local v1, d:Landroid/graphics/drawable/GradientDrawable;
    sget-object v5, Lcom/android/providers/calendar/CalendarAppWidgetSettingAdapter;->CORNERS:[F

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 113
    return-object v1
.end method

.method private static setText(Landroid/view/View;ILjava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "id"
    .parameter "text"

    .prologue
    .line 98
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 102
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateChipData(IJI)V
    .locals 10
    .parameter "chipId"
    .parameter "calendarId"
    .parameter "checked"

    .prologue
    const/4 v2, 0x0

    const-string v9, "chip_calendar_id"

    .line 117
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 118
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

    .line 119
    .local v3, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarAppWidgetSettingAdapter;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/providers/calendar/AppWidgetShared;->CHIP_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 120
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 121
    const-string v0, "chip_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 122
    const-string v0, "chip_calendar_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 123
    const-string v0, "chip_calendar_selected"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 125
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 126
    .local v7, dbCount:I
    if-nez v7, :cond_1

    .line 127
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarAppWidgetSettingAdapter;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/providers/calendar/AppWidgetShared;->CHIP_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 131
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 133
    .end local v7           #dbCount:I
    :cond_0
    return-void

    .line 129
    .restart local v7       #dbCount:I
    :cond_1
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarAppWidgetSettingAdapter;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/providers/calendar/AppWidgetShared;->CHIP_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v8, v3, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 11
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 79
    const-string v9, "_id"

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 80
    .local v6, idColumn:I
    const-string v9, "displayName"

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 81
    .local v7, nameColumn:I
    const-string v9, "selected"

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 82
    .local v8, selectedColumn:I
    const-string v9, "color"

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 83
    .local v3, colorColumn:I
    const-string v9, "_sync_account"

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 84
    .local v0, accountColumn:I
    const v9, 0x7f0b0053

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-direct {p0, v10}, Lcom/android/providers/calendar/CalendarAppWidgetSettingAdapter;->getColorChip(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    const v9, 0x7f0b0054

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {p1, v9, v10}, Lcom/android/providers/calendar/CalendarAppWidgetSettingAdapter;->setText(Landroid/view/View;ILjava/lang/String;)V

    .line 86
    const v9, 0x7f0b0055

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {p1, v9, v10}, Lcom/android/providers/calendar/CalendarAppWidgetSettingAdapter;->setText(Landroid/view/View;ILjava/lang/String;)V

    .line 87
    const v9, 0x7f0b0056

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 88
    .local v1, box:Landroid/widget/CheckBox;
    invoke-interface {p3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 89
    .local v4, id:J
    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    move v2, v9

    .line 90
    .local v2, checked:Z
    :goto_0
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 91
    iget v9, p0, Lcom/android/providers/calendar/CalendarAppWidgetSettingAdapter;->mWidgetId:I

    invoke-direct {p0, v9, v4, v5}, Lcom/android/providers/calendar/CalendarAppWidgetSettingAdapter;->getChipSelection(IJ)Z

    move-result v2

    .line 92
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 93
    new-instance v9, Lcom/android/providers/calendar/CalendarAppWidgetSettingAdapter$CheckBoxListener;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v4, v5, v10}, Lcom/android/providers/calendar/CalendarAppWidgetSettingAdapter$CheckBoxListener;-><init>(Lcom/android/providers/calendar/CalendarAppWidgetSettingAdapter;JLcom/android/providers/calendar/CalendarAppWidgetSettingAdapter$1;)V

    invoke-virtual {v1, v9}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 94
    iget v9, p0, Lcom/android/providers/calendar/CalendarAppWidgetSettingAdapter;->mWidgetId:I

    if-eqz v2, :cond_1

    const/4 v10, 0x1

    :goto_1
    invoke-direct {p0, v9, v4, v5, v10}, Lcom/android/providers/calendar/CalendarAppWidgetSettingAdapter;->updateChipData(IJI)V

    .line 95
    return-void

    .line 89
    .end local v2           #checked:Z
    :cond_0
    const/4 v9, 0x0

    move v2, v9

    goto :goto_0

    .line 94
    .restart local v2       #checked:Z
    :cond_1
    const/4 v10, 0x0

    goto :goto_1
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarAppWidgetSettingAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030027

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
