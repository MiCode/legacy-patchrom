.class public Lcom/motorola/android/widget/CalendarEventsListAdapter;
.super Landroid/widget/MotoAppWidgetAdapter;
.source "CalendarEventsListAdapter.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field private static final ACTION_CALENDAR_APP_PACKAGE:Ljava/lang/String; = "com.android.calendar"

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/motorola/android/widget/CalendarEventsListAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final EVENT_INFO_ACTIVITY:Ljava/lang/String; = "com.android.calendar.EventInfoActivity"

.field private static final TAG:Ljava/lang/String; = "CalendarEventsListAdapter"


# instance fields
.field private itemLayoutId:I

.field private itemViewIdList:[I

.field private mListItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/android/widget/CalendarEventAttrs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/motorola/android/widget/CalendarEventsListAdapter$1;

    invoke-direct {v0}, Lcom/motorola/android/widget/CalendarEventsListAdapter$1;-><init>()V

    sput-object v0, Lcom/motorola/android/widget/CalendarEventsListAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I[ILjava/util/ArrayList;)V
    .locals 1
    .parameter "itemLayoutId"
    .parameter "itemViewIdList"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/android/widget/CalendarEventAttrs;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, calendarEventsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/android/widget/CalendarEventAttrs;>;"
    invoke-direct {p0}, Landroid/widget/MotoAppWidgetAdapter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/android/widget/CalendarEventsListAdapter;->mListItem:Ljava/util/ArrayList;

    iput p1, p0, Lcom/motorola/android/widget/CalendarEventsListAdapter;->itemLayoutId:I

    iput-object p2, p0, Lcom/motorola/android/widget/CalendarEventsListAdapter;->itemViewIdList:[I

    iput-object p3, p0, Lcom/motorola/android/widget/CalendarEventsListAdapter;->mListItem:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I[IIIIIJ)V
    .locals 1
    .parameter "queryUri"
    .parameter "queryProjection"
    .parameter "querySelection"
    .parameter "querySelectionArgs"
    .parameter "querySortOrder"
    .parameter "itemLayoutId"
    .parameter "itemViewIdList"
    .parameter "noTitleLabelId"
    .parameter "bkgImgId"
    .parameter "statusColorWhiteId"
    .parameter "statusColorPurpleId"
    .parameter "now"

    .prologue
    invoke-direct {p0}, Landroid/widget/MotoAppWidgetAdapter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/android/widget/CalendarEventsListAdapter;->mListItem:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 21
    .parameter "parcel"

    .prologue
    invoke-direct/range {p0 .. p0}, Landroid/widget/MotoAppWidgetAdapter;-><init>()V

    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/android/widget/CalendarEventsListAdapter;->mListItem:Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/motorola/android/widget/CalendarEventsListAdapter;->itemLayoutId:I

    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/android/widget/CalendarEventsListAdapter;->itemViewIdList:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/android/widget/CalendarEventsListAdapter;->itemLayoutId:I

    move/from16 v19, v0

    if-eqz v19, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .local v18, totolIds:I
    if-lez v18, :cond_0

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/android/widget/CalendarEventsListAdapter;->itemViewIdList:[I

    const/16 v16, 0x0

    .local v16, i:I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/CalendarEventsListAdapter;->itemViewIdList:[I

    move-object/from16 v19, v0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v20

    aput v20, v19, v16

    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .end local v16           #i:I
    .end local v18           #totolIds:I
    :cond_0
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/android/widget/CalendarEventsListAdapter;->mListItem:Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .local v17, size:I
    const-wide/16 v7, 0x0

    .local v7, endMillis:J
    const/4 v14, 0x0

    .local v14, bkgImageId:I
    const/4 v13, 0x0

    .local v13, where:Ljava/lang/String;
    const/4 v15, 0x0

    .local v15, statusImageId:Landroid/graphics/Bitmap;
    const/16 v16, 0x0

    .restart local v16       #i:I
    :goto_1
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .local v3, eventId:J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .local v5, startMillis:J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .local v9, color:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .local v10, when:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .local v11, conflictCount:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .local v12, title:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    sget-object v19, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    .end local v15           #statusImageId:Landroid/graphics/Bitmap;
    check-cast v15, Landroid/graphics/Bitmap;

    .restart local v15       #statusImageId:Landroid/graphics/Bitmap;
    new-instance v2, Lcom/motorola/android/widget/CalendarEventAttrs;

    invoke-direct/range {v2 .. v15}, Lcom/motorola/android/widget/CalendarEventAttrs;-><init>(JJJILjava/lang/String;ILjava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;)V

    .local v2, content:Lcom/motorola/android/widget/CalendarEventAttrs;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/widget/CalendarEventsListAdapter;->mListItem:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .end local v2           #content:Lcom/motorola/android/widget/CalendarEventAttrs;
    .end local v3           #eventId:J
    .end local v5           #startMillis:J
    .end local v9           #color:I
    .end local v10           #when:Ljava/lang/String;
    .end local v11           #conflictCount:I
    .end local v12           #title:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/android/widget/CalendarEventsListAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/widget/CalendarEventsListAdapter;->mListItem:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/motorola/android/widget/CalendarEventsListAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/widget/MotoAppWidgetAdapter;->passedContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public final getCount()I
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/motorola/android/widget/CalendarEventsListAdapter;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, returnValue:I
    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/motorola/android/widget/CalendarEventsListAdapter;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/motorola/android/widget/CalendarEventsListAdapter;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    int-to-long v0, p1

    return-wide v0
.end method

.method public getOnItemClickListner()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .local v0, listener:Landroid/widget/AdapterView$OnItemClickListener;
    new-instance v0, Lcom/motorola/android/widget/CalendarEventsListAdapter$2;

    .end local v0           #listener:Landroid/widget/AdapterView$OnItemClickListener;
    invoke-direct {v0, p0}, Lcom/motorola/android/widget/CalendarEventsListAdapter$2;-><init>(Lcom/motorola/android/widget/CalendarEventsListAdapter;)V

    .restart local v0       #listener:Landroid/widget/AdapterView$OnItemClickListener;
    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .local v2, iv:Landroid/widget/ImageView;
    const/4 v3, 0x0

    .local v3, tv:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/motorola/android/widget/CalendarEventsListAdapter;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/widget/CalendarEventAttrs;

    .local v0, eventRecord:Lcom/motorola/android/widget/CalendarEventAttrs;
    if-nez p2, :cond_0

    iget-object v4, p0, Landroid/widget/MotoAppWidgetAdapter;->passedContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .local v1, factory:Landroid/view/LayoutInflater;
    iget v4, p0, Lcom/motorola/android/widget/CalendarEventsListAdapter;->itemLayoutId:I

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .end local v1           #factory:Landroid/view/LayoutInflater;
    :cond_0
    if-nez v0, :cond_1

    :goto_0
    return-object p2

    :cond_1
    iget-object v4, p0, Lcom/motorola/android/widget/CalendarEventsListAdapter;->itemViewIdList:[I

    aget v4, v4, v6

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #tv:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .restart local v3       #tv:Landroid/widget/TextView;
    iget-object v4, v0, Lcom/motorola/android/widget/CalendarEventAttrs;->mWhen:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/motorola/android/widget/CalendarEventsListAdapter;->itemViewIdList:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #tv:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .restart local v3       #tv:Landroid/widget/TextView;
    iget v4, v0, Lcom/motorola/android/widget/CalendarEventAttrs;->mColor:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, v0, Lcom/motorola/android/widget/CalendarEventAttrs;->mTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/motorola/android/widget/CalendarEventsListAdapter;->itemViewIdList:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #tv:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .restart local v3       #tv:Landroid/widget/TextView;
    iget-object v4, v0, Lcom/motorola/android/widget/CalendarEventAttrs;->mWhere:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/motorola/android/widget/CalendarEventsListAdapter;->itemViewIdList:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #tv:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .restart local v3       #tv:Landroid/widget/TextView;
    iget v4, v0, Lcom/motorola/android/widget/CalendarEventAttrs;->mConflictCount:I

    if-lez v4, :cond_2

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/motorola/android/widget/CalendarEventAttrs;->mConflictCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v4, p0, Lcom/motorola/android/widget/CalendarEventsListAdapter;->itemViewIdList:[I

    const/4 v5, 0x4

    aget v4, v4, v5

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #iv:Landroid/widget/ImageView;
    check-cast v2, Landroid/widget/ImageView;

    .restart local v2       #iv:Landroid/widget/ImageView;
    iget-object v4, v0, Lcom/motorola/android/widget/CalendarEventAttrs;->mStatusImageId:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v4, p0, Lcom/motorola/android/widget/CalendarEventsListAdapter;->itemViewIdList:[I

    const/4 v5, 0x5

    aget v4, v4, v5

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #iv:Landroid/widget/ImageView;
    check-cast v2, Landroid/widget/ImageView;

    .restart local v2       #iv:Landroid/widget/ImageView;
    goto :goto_0

    :cond_2
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .parameter "dest"
    .parameter "flags"

    .prologue
    iget v4, p0, Lcom/motorola/android/widget/CalendarEventsListAdapter;->itemLayoutId:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, p0, Lcom/motorola/android/widget/CalendarEventsListAdapter;->itemLayoutId:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/motorola/android/widget/CalendarEventsListAdapter;->itemViewIdList:[I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/motorola/android/widget/CalendarEventsListAdapter;->itemViewIdList:[I

    array-length v3, v4

    .local v3, totolIds:I
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    iget-object v4, p0, Lcom/motorola/android/widget/CalendarEventsListAdapter;->itemViewIdList:[I

    aget v4, v4, v1

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1           #i:I
    .end local v3           #totolIds:I
    :cond_0
    const/4 v2, 0x0

    .local v2, statusImageId:Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/motorola/android/widget/CalendarEventsListAdapter;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    iget-object v4, p0, Lcom/motorola/android/widget/CalendarEventsListAdapter;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    iget-object v4, p0, Lcom/motorola/android/widget/CalendarEventsListAdapter;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/widget/CalendarEventAttrs;

    .local v0, content:Lcom/motorola/android/widget/CalendarEventAttrs;
    iget-wide v4, v0, Lcom/motorola/android/widget/CalendarEventAttrs;->mEventId:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v4, v0, Lcom/motorola/android/widget/CalendarEventAttrs;->mStartMillis:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v4, v0, Lcom/motorola/android/widget/CalendarEventAttrs;->mEndMillis:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget v4, v0, Lcom/motorola/android/widget/CalendarEventAttrs;->mColor:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v4, v0, Lcom/motorola/android/widget/CalendarEventAttrs;->mWhen:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v4, v0, Lcom/motorola/android/widget/CalendarEventAttrs;->mConflictCount:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v4, v0, Lcom/motorola/android/widget/CalendarEventAttrs;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/motorola/android/widget/CalendarEventAttrs;->mWhere:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v4, v0, Lcom/motorola/android/widget/CalendarEventAttrs;->mBkgImageId:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, v0, Lcom/motorola/android/widget/CalendarEventAttrs;->mStatusImageId:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0           #content:Lcom/motorola/android/widget/CalendarEventAttrs;
    :cond_1
    return-void
.end method
