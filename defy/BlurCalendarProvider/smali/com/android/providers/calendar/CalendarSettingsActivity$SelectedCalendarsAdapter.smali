.class Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;
.super Landroid/widget/BaseAdapter;
.source "CalendarSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/calendar/CalendarSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectedCalendarsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter$CheckBoxListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SelCalAdapter"


# instance fields
.field private final CORNERS:[F

.field private mCalAttrs:[Lcom/android/providers/calendar/CalendarSettingsActivity$CalendarAttrs;

.field private mCalendarIds:[J

.field private mContext:Landroid/content/Context;

.field private mCurrentSelections:[Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private final mResolver:Landroid/content/ContentResolver;

.field private mStartSelections:[Z

.field private mWidgetId:I

.field final synthetic this$0:Lcom/android/providers/calendar/CalendarSettingsActivity;


# direct methods
.method public constructor <init>(Lcom/android/providers/calendar/CalendarSettingsActivity;Landroid/content/Context;Landroid/database/Cursor;I)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "c"
    .parameter "widgetId"

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->this$0:Lcom/android/providers/calendar/CalendarSettingsActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 207
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->CORNERS:[F

    .line 218
    iput-object p2, p0, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->mContext:Landroid/content/Context;

    .line 219
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 220
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->mResolver:Landroid/content/ContentResolver;

    .line 221
    iput p4, p0, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->mWidgetId:I

    .line 222
    invoke-direct {p0, p3}, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->convertToCalAttrs(Landroid/database/Cursor;)[Lcom/android/providers/calendar/CalendarSettingsActivity$CalendarAttrs;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->mCalAttrs:[Lcom/android/providers/calendar/CalendarSettingsActivity$CalendarAttrs;

    .line 223
    invoke-direct {p0}, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->initializeArrays()V

    .line 224
    return-void

    .line 207
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

.method static synthetic access$300(Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;)[Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->mCurrentSelections:[Z

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 203
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->allCalendarsSelection(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->areAllSelected()Z

    move-result v0

    return v0
.end method

.method private allCalendarsSelection(Z)V
    .locals 2
    .parameter "setting"

    .prologue
    .line 301
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->mCurrentSelections:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 302
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->mCurrentSelections:[Z

    aput-boolean p1, v1, v0

    .line 301
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 304
    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->notifyDataSetChanged()V

    .line 305
    return-void
.end method

.method private areAllSelected()Z
    .locals 3

    .prologue
    .line 308
    const/4 v1, 0x1

    .line 310
    .local v1, ret:Z
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->mCurrentSelections:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 311
    iget-object v2, p0, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->mCurrentSelections:[Z

    aget-boolean v2, v2, v0

    if-nez v2, :cond_1

    .line 312
    const/4 v1, 0x0

    .line 316
    :cond_0
    return v1

    .line 310
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private convertToCalAttrs(Landroid/database/Cursor;)[Lcom/android/providers/calendar/CalendarSettingsActivity$CalendarAttrs;
    .locals 32
    .parameter "cursor"

    .prologue
    .line 227
    const/16 v19, 0x0

    .line 228
    .local v19, attrs:[Lcom/android/providers/calendar/CalendarSettingsActivity$CalendarAttrs;
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_5

    .line 229
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    move v0, v2

    new-array v0, v0, [Lcom/android/providers/calendar/CalendarSettingsActivity$CalendarAttrs;

    move-object/from16 v19, v0

    .line 231
    const-string v2, "_id"

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 232
    .local v22, idColumn:I
    const-string v2, "selected"

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v29

    .line 233
    .local v29, selectedColumn:I
    const-string v2, "displayName"

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    .line 234
    .local v24, nameColumn:I
    const-string v2, "color"

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 235
    .local v21, colorColumn:I
    const-string v2, "_sync_account"

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 236
    .local v18, accountColumn:I
    const/16 v27, 0x0

    .line 237
    .local v27, position:I
    const-string v2, "sync_type"

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v31

    .line 238
    .local v31, syncTypeColumn:I
    const-string v2, "ownerAccount"

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    .line 241
    .local v26, ownerColumn:I
    add-int/lit8 v28, v27, 0x1

    .end local v27           #position:I
    .local v28, position:I
    new-instance v2, Lcom/android/providers/calendar/CalendarSettingsActivity$CalendarAttrs;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->this$0:Lcom/android/providers/calendar/CalendarSettingsActivity;

    move-object v3, v0

    const-wide/16 v4, 0x270f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->mContext:Landroid/content/Context;

    move-object v6, v0

    const v7, 0x7f08000a

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->mContext:Landroid/content/Context;

    move-object v7, v0

    const v8, 0x7f08000a

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-direct/range {v2 .. v9}, Lcom/android/providers/calendar/CalendarSettingsActivity$CalendarAttrs;-><init>(Lcom/android/providers/calendar/CalendarSettingsActivity;JLjava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    aput-object v2, v19, v27

    .line 243
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    move/from16 v27, v28

    .line 245
    .end local v28           #position:I
    .restart local v27       #position:I
    :cond_0
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 246
    .local v4, id:J
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 247
    .local v20, color:I
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 248
    .local v7, account:Ljava/lang/String;
    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    move v9, v2

    .line 249
    .local v9, selected:Z
    :goto_0
    const/4 v6, 0x0

    .line 250
    .local v6, name:Ljava/lang/String;
    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    .line 251
    .local v30, syncType:I
    const-string v2, "local@phone"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, -0x1

    move/from16 v0, v30

    move v1, v2

    if-ne v0, v1, :cond_3

    const/4 v2, 0x1

    move/from16 v23, v2

    .line 252
    .local v23, isLocal:Z
    :goto_1
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 254
    .local v25, owner:Ljava/lang/String;
    if-eqz v23, :cond_4

    const-string v2, "local@phone"

    move-object/from16 v0, v25

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->mContext:Landroid/content/Context;

    move-object v2, v0

    const v3, 0x7f080016

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 259
    :goto_2
    if-eqz v9, :cond_1

    .line 260
    add-int/lit8 v28, v27, 0x1

    .end local v27           #position:I
    .restart local v28       #position:I
    new-instance v2, Lcom/android/providers/calendar/CalendarSettingsActivity$CalendarAttrs;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->this$0:Lcom/android/providers/calendar/CalendarSettingsActivity;

    move-object v3, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->getColorChip(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-direct/range {v2 .. v9}, Lcom/android/providers/calendar/CalendarSettingsActivity$CalendarAttrs;-><init>(Lcom/android/providers/calendar/CalendarSettingsActivity;JLjava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    aput-object v2, v19, v27

    move/from16 v27, v28

    .line 262
    .end local v28           #position:I
    .restart local v27       #position:I
    :cond_1
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 269
    .end local v4           #id:J
    .end local v6           #name:Ljava/lang/String;
    .end local v7           #account:Ljava/lang/String;
    .end local v9           #selected:Z
    .end local v18           #accountColumn:I
    .end local v20           #color:I
    .end local v21           #colorColumn:I
    .end local v22           #idColumn:I
    .end local v23           #isLocal:Z
    .end local v24           #nameColumn:I
    .end local v25           #owner:Ljava/lang/String;
    .end local v26           #ownerColumn:I
    .end local v27           #position:I
    .end local v29           #selectedColumn:I
    .end local v30           #syncType:I
    .end local v31           #syncTypeColumn:I
    :goto_3
    return-object v19

    .line 248
    .restart local v4       #id:J
    .restart local v7       #account:Ljava/lang/String;
    .restart local v18       #accountColumn:I
    .restart local v20       #color:I
    .restart local v21       #colorColumn:I
    .restart local v22       #idColumn:I
    .restart local v24       #nameColumn:I
    .restart local v26       #ownerColumn:I
    .restart local v27       #position:I
    .restart local v29       #selectedColumn:I
    .restart local v31       #syncTypeColumn:I
    :cond_2
    const/4 v2, 0x0

    move v9, v2

    goto :goto_0

    .line 251
    .restart local v6       #name:Ljava/lang/String;
    .restart local v9       #selected:Z
    .restart local v30       #syncType:I
    :cond_3
    const/4 v2, 0x0

    move/from16 v23, v2

    goto :goto_1

    .line 257
    .restart local v23       #isLocal:Z
    .restart local v25       #owner:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 265
    .end local v4           #id:J
    .end local v6           #name:Ljava/lang/String;
    .end local v7           #account:Ljava/lang/String;
    .end local v9           #selected:Z
    .end local v18           #accountColumn:I
    .end local v20           #color:I
    .end local v21           #colorColumn:I
    .end local v22           #idColumn:I
    .end local v23           #isLocal:Z
    .end local v24           #nameColumn:I
    .end local v25           #owner:Ljava/lang/String;
    .end local v26           #ownerColumn:I
    .end local v27           #position:I
    .end local v29           #selectedColumn:I
    .end local v30           #syncType:I
    .end local v31           #syncTypeColumn:I
    :cond_5
    const/4 v2, 0x1

    move v0, v2

    new-array v0, v0, [Lcom/android/providers/calendar/CalendarSettingsActivity$CalendarAttrs;

    move-object/from16 v19, v0

    .line 267
    const/4 v2, 0x0

    new-instance v10, Lcom/android/providers/calendar/CalendarSettingsActivity$CalendarAttrs;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->this$0:Lcom/android/providers/calendar/CalendarSettingsActivity;

    move-object v11, v0

    const-wide/16 v12, 0x270f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->mContext:Landroid/content/Context;

    move-object v3, v0

    const v4, 0x7f08000a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->mContext:Landroid/content/Context;

    move-object v3, v0

    const v4, 0x7f08000a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v10 .. v17}, Lcom/android/providers/calendar/CalendarSettingsActivity$CalendarAttrs;-><init>(Lcom/android/providers/calendar/CalendarSettingsActivity;JLjava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    aput-object v10, v19, v2

    goto :goto_3

    .restart local v18       #accountColumn:I
    .restart local v21       #colorColumn:I
    .restart local v22       #idColumn:I
    .restart local v24       #nameColumn:I
    .restart local v26       #ownerColumn:I
    .restart local v28       #position:I
    .restart local v29       #selectedColumn:I
    .restart local v31       #syncTypeColumn:I
    :cond_6
    move/from16 v27, v28

    .end local v28           #position:I
    .restart local v27       #position:I
    goto :goto_3
.end method

.method private getColorChip(I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "color"

    .prologue
    .line 360
    const/high16 v1, -0x100

    or-int/2addr p1, v1

    .line 361
    new-instance v0, Landroid/graphics/drawable/PaintDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V

    .line 362
    .local v0, d:Landroid/graphics/drawable/PaintDrawable;
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->CORNERS:[F

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadii([F)V

    .line 363
    return-object v0
.end method

.method private initializeArrays()V
    .locals 7

    .prologue
    .line 273
    iget-object v2, p0, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->mCalAttrs:[Lcom/android/providers/calendar/CalendarSettingsActivity$CalendarAttrs;

    if-eqz v2, :cond_0

    .line 274
    iget-object v2, p0, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->mCalAttrs:[Lcom/android/providers/calendar/CalendarSettingsActivity$CalendarAttrs;

    array-length v2, v2

    new-array v2, v2, [J

    iput-object v2, p0, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->mCalendarIds:[J

    .line 275
    iget-object v2, p0, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->mCalAttrs:[Lcom/android/providers/calendar/CalendarSettingsActivity$CalendarAttrs;

    array-length v2, v2

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->mStartSelections:[Z

    .line 276
    iget-object v2, p0, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->mCalAttrs:[Lcom/android/providers/calendar/CalendarSettingsActivity$CalendarAttrs;

    array-length v2, v2

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->mCurrentSelections:[Z

    .line 278
    iget-object v2, p0, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->mCalAttrs:[Lcom/android/providers/calendar/CalendarSettingsActivity$CalendarAttrs;

    array-length v2, v2

    if-lez v2, :cond_0

    .line 279
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->mCalAttrs:[Lcom/android/providers/calendar/CalendarSettingsActivity$CalendarAttrs;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 280
    iget-object v2, p0, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->mCalAttrs:[Lcom/android/providers/calendar/CalendarSettingsActivity$CalendarAttrs;

    aget-object v0, v2, v1

    .line 281
    .local v0, attrs:Lcom/android/providers/calendar/CalendarSettingsActivity$CalendarAttrs;
    iget-object v2, p0, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->mCalendarIds:[J

    iget-wide v3, v0, Lcom/android/providers/calendar/CalendarSettingsActivity$CalendarAttrs;->mId:J

    aput-wide v3, v2, v1

    .line 282
    iget-object v2, p0, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->mStartSelections:[Z

    iget-object v3, p0, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->mResolver:Landroid/content/ContentResolver;

    iget v4, p0, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->mWidgetId:I

    iget-wide v5, v0, Lcom/android/providers/calendar/CalendarSettingsActivity$CalendarAttrs;->mId:J

    #calls: Lcom/android/providers/calendar/CalendarSettingsActivity;->getChipSelection(Landroid/content/ContentResolver;IJ)Z
    invoke-static {v3, v4, v5, v6}, Lcom/android/providers/calendar/CalendarSettingsActivity;->access$100(Landroid/content/ContentResolver;IJ)Z

    move-result v3

    aput-boolean v3, v2, v1

    .line 283
    iget-object v2, p0, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->mCurrentSelections:[Z

    iget-object v3, p0, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->mStartSelections:[Z

    aget-boolean v3, v3, v1

    aput-boolean v3, v2, v1

    .line 279
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 287
    .end local v0           #attrs:Lcom/android/providers/calendar/CalendarSettingsActivity$CalendarAttrs;
    .end local v1           #i:I
    :cond_0
    return-void
.end method

.method private newView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "parent"

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030027

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private setSelections([Z)V
    .locals 3
    .parameter "selections"

    .prologue
    .line 290
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 291
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->mCurrentSelections:[Z

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 297
    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->notifyDataSetChanged()V

    .line 298
    return-void

    .line 294
    :cond_1
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->mCurrentSelections:[Z

    aget-boolean v2, p1, v0

    aput-boolean v2, v1, v0

    .line 290
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setText(Landroid/view/View;ILjava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "id"
    .parameter "text"

    .prologue
    .line 352
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 357
    :goto_0
    return-void

    .line 355
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 356
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized bindView(Landroid/view/View;I)V
    .locals 5
    .parameter "view"
    .parameter "position"

    .prologue
    .line 335
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->mCalAttrs:[Lcom/android/providers/calendar/CalendarSettingsActivity$CalendarAttrs;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->mCalAttrs:[Lcom/android/providers/calendar/CalendarSettingsActivity$CalendarAttrs;

    array-length v2, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt p2, v2, :cond_1

    .line 349
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 339
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->mCalAttrs:[Lcom/android/providers/calendar/CalendarSettingsActivity$CalendarAttrs;

    aget-object v0, v2, p2

    .line 340
    .local v0, attrs:Lcom/android/providers/calendar/CalendarSettingsActivity$CalendarAttrs;
    const v2, 0x7f0b0053

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, v0, Lcom/android/providers/calendar/CalendarSettingsActivity$CalendarAttrs;->mColor:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 341
    const v2, 0x7f0b0054

    iget-object v3, v0, Lcom/android/providers/calendar/CalendarSettingsActivity$CalendarAttrs;->mDisplayName:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v3}, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->setText(Landroid/view/View;ILjava/lang/String;)V

    .line 342
    const v2, 0x7f0b0055

    iget-object v3, v0, Lcom/android/providers/calendar/CalendarSettingsActivity$CalendarAttrs;->mAccountName:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v3}, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->setText(Landroid/view/View;ILjava/lang/String;)V

    .line 343
    iget-object v2, p0, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->mCalendarIds:[J

    iget-wide v3, v0, Lcom/android/providers/calendar/CalendarSettingsActivity$CalendarAttrs;->mId:J

    aput-wide v3, v2, p2

    .line 345
    const v2, 0x7f0b0056

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 346
    .local v1, box:Landroid/widget/CheckBox;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 347
    iget-object v2, p0, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->mCurrentSelections:[Z

    aget-boolean v2, v2, p2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 348
    new-instance v2, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter$CheckBoxListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p2, v3}, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter$CheckBoxListener;-><init>(Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;ILcom/android/providers/calendar/CalendarSettingsActivity$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 335
    .end local v0           #attrs:Lcom/android/providers/calendar/CalendarSettingsActivity$CalendarAttrs;
    .end local v1           #box:Landroid/widget/CheckBox;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public commitChanges()Z
    .locals 9

    .prologue
    .line 373
    iget-object v4, p0, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->mCalAttrs:[Lcom/android/providers/calendar/CalendarSettingsActivity$CalendarAttrs;

    if-nez v4, :cond_0

    .line 374
    const/4 v4, 0x0

    .line 386
    :goto_0
    return v4

    .line 376
    :cond_0
    const/4 v0, 0x0

    .line 377
    .local v0, changed:Z
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 378
    .local v3, values:Landroid/content/ContentValues;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 379
    .local v1, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v2, 0x0

    .local v2, position:I
    :goto_1
    iget-object v4, p0, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->mCalendarIds:[J

    array-length v4, v4

    if-ge v2, v4, :cond_2

    .line 380
    iget-object v4, p0, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->mResolver:Landroid/content/ContentResolver;

    iget v5, p0, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->mWidgetId:I

    iget-object v6, p0, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->mCalendarIds:[J

    aget-wide v6, v6, v2

    iget-object v8, p0, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->mCurrentSelections:[Z

    aget-boolean v8, v8, v2

    invoke-static {v4, v5, v6, v7, v8}, Lcom/android/providers/calendar/CalendarSettingsActivity;->updateChipData(Landroid/content/ContentResolver;IJZ)V

    .line 381
    iget-object v4, p0, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->mStartSelections:[Z

    aget-boolean v4, v4, v2

    iget-object v5, p0, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->mCurrentSelections:[Z

    aget-boolean v5, v5, v2

    if-eq v4, v5, :cond_1

    .line 382
    const/4 v0, 0x1

    .line 379
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v4, v0

    .line 386
    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->mCalAttrs:[Lcom/android/providers/calendar/CalendarSettingsActivity$CalendarAttrs;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->mCalAttrs:[Lcom/android/providers/calendar/CalendarSettingsActivity$CalendarAttrs;

    array-length v0, v0

    .line 393
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 398
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 402
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 320
    move-object v0, p2

    .line 322
    .local v0, view:Landroid/view/View;
    if-nez v0, :cond_0

    .line 323
    invoke-direct {p0, p3}, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->newView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 325
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/android/providers/calendar/CalendarSettingsActivity$SelectedCalendarsAdapter;->bindView(Landroid/view/View;I)V

    .line 327
    return-object v0
.end method
