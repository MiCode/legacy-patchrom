.class public Lcom/motorola/android/widget/TasksListAdapter;
.super Landroid/widget/MotoAppWidgetAdapter;
.source "TasksListAdapter.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field public static final ACTION_TASKS_APPWIDGET_UPDATE:Ljava/lang/String; = "com.android.motorola.tasks.APPWIDGET_UPDATE"

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/motorola/android/widget/TasksListAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private static final IMG_PRIORITY_HIGH_INDEX:I = 0x0

.field private static final IMG_PRIORITY_LOW_INDEX:I = 0x1

.field private static final STRING_DUE_ON_INDEX:I = 0x1

.field private static final STRING_UNTAGGED_INDEX:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TaskWidgetListViewAdapter"

.field public static final VALUE_NO_DATE:J = 0xfffffffffffffffL

.field public static final VALUE_PRIORITY_HIGH:I = 0x1

.field public static final VALUE_PRIORITY_LOW:I = 0x5

.field public static final VALUE_PRIORITY_NORMAL:I = 0x3

.field private static final VIEW_DESC_DATA1_INDEX:I = 0x3

.field private static final VIEW_DESC_DATA2_INDEX:I = 0x4

.field private static final VIEW_DESC_DATA3_INDEX:I = 0x5

.field private static final VIEW_PRIORITY_ICON_INDEX:I = 0x0

.field private static final VIEW_REMINDER_ICON_INDEX:I = 0x2

.field private static final VIEW_STARRED_ICON_INDEX:I = 0x1


# instance fields
.field private imgIDlists:[I

.field private itemLayoutId:I

.field private mListData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/android/widget/TaskWidgetItemData;",
            ">;"
        }
    .end annotation
.end field

.field private qUriForClick:Landroid/net/Uri;

.field private stringIDlists:[I

.field private viewIDlists:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/motorola/android/widget/TasksListAdapter$2;

    invoke-direct {v0}, Lcom/motorola/android/widget/TasksListAdapter$2;-><init>()V

    sput-object v0, Lcom/motorola/android/widget/TasksListAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I[I[I[ILandroid/net/Uri;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "queryUri"
    .parameter "queryProjection"
    .parameter "querySelection"
    .parameter "querySelectionArgs"
    .parameter "querySortOrder"
    .parameter "itemLayoutId"
    .parameter "viewIDlists"
    .parameter "imgIDlists"
    .parameter "stringIDlists"
    .parameter "queryUriForClick"
    .parameter "queryUriForTag"
    .parameter "queryProjectionForTag"
    .parameter "querySelectionForTag"

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/widget/MotoAppWidgetAdapter;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/android/widget/TasksListAdapter;->itemLayoutId:I

    iput-object v1, p0, Lcom/motorola/android/widget/TasksListAdapter;->viewIDlists:[I

    iput-object v1, p0, Lcom/motorola/android/widget/TasksListAdapter;->imgIDlists:[I

    iput-object v1, p0, Lcom/motorola/android/widget/TasksListAdapter;->stringIDlists:[I

    iput-object v1, p0, Lcom/motorola/android/widget/TasksListAdapter;->qUriForClick:Landroid/net/Uri;

    iput-object v1, p0, Lcom/motorola/android/widget/TasksListAdapter;->mListData:Ljava/util/ArrayList;

    const-string v0, "TaskWidgetListViewAdapter"

    const-string v1, "TasksListAdapter, keep this interface to avoid compile error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .parameter "parcel"

    .prologue
    const/4 v4, 0x0

    invoke-direct {p0}, Landroid/widget/MotoAppWidgetAdapter;-><init>()V

    const/4 v3, 0x0

    iput v3, p0, Lcom/motorola/android/widget/TasksListAdapter;->itemLayoutId:I

    iput-object v4, p0, Lcom/motorola/android/widget/TasksListAdapter;->viewIDlists:[I

    iput-object v4, p0, Lcom/motorola/android/widget/TasksListAdapter;->imgIDlists:[I

    iput-object v4, p0, Lcom/motorola/android/widget/TasksListAdapter;->stringIDlists:[I

    iput-object v4, p0, Lcom/motorola/android/widget/TasksListAdapter;->qUriForClick:Landroid/net/Uri;

    iput-object v4, p0, Lcom/motorola/android/widget/TasksListAdapter;->mListData:Ljava/util/ArrayList;

    const-string v3, "TaskWidgetListViewAdapter"

    const-string v4, "TaskWidgetListViewAdapter init with parcel"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/motorola/android/widget/TasksListAdapter;->itemLayoutId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/android/widget/TasksListAdapter;->viewIDlists:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/android/widget/TasksListAdapter;->imgIDlists:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/android/widget/TasksListAdapter;->stringIDlists:[I

    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iput-object v3, p0, Lcom/motorola/android/widget/TasksListAdapter;->qUriForClick:Landroid/net/Uri;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/motorola/android/widget/TasksListAdapter;->mListData:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    new-instance v0, Lcom/motorola/android/widget/TaskWidgetItemData;

    invoke-direct {v0}, Lcom/motorola/android/widget/TaskWidgetItemData;-><init>()V

    .local v0, content:Lcom/motorola/android/widget/TaskWidgetItemData;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Lcom/motorola/android/widget/TaskWidgetItemData;->mID:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/motorola/android/widget/TaskWidgetItemData;->mTitle:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/motorola/android/widget/TaskWidgetItemData;->mTagName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Lcom/motorola/android/widget/TaskWidgetItemData;->mStarred:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Lcom/motorola/android/widget/TaskWidgetItemData;->mIsComplete:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Lcom/motorola/android/widget/TaskWidgetItemData;->mPriority:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Lcom/motorola/android/widget/TaskWidgetItemData;->mRemindStatus:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/motorola/android/widget/TaskWidgetItemData;->mDueDate:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Lcom/motorola/android/widget/TaskWidgetItemData;->mIsOverDue:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/motorola/android/widget/TaskWidgetItemData;->mSectionTitle:Ljava/lang/String;

    iget-object v3, p0, Lcom/motorola/android/widget/TasksListAdapter;->mListData:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #content:Lcom/motorola/android/widget/TaskWidgetItemData;
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;I[I[I[ILandroid/net/Uri;)V
    .locals 2
    .parameter
    .parameter "itemLayoutId"
    .parameter "viewIDlists"
    .parameter "imgIDlists"
    .parameter "stringIDlists"
    .parameter "queryUriForClick"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/android/widget/TaskWidgetItemData;",
            ">;I[I[I[I",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, listData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/android/widget/TaskWidgetItemData;>;"
    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/widget/MotoAppWidgetAdapter;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/android/widget/TasksListAdapter;->itemLayoutId:I

    iput-object v1, p0, Lcom/motorola/android/widget/TasksListAdapter;->viewIDlists:[I

    iput-object v1, p0, Lcom/motorola/android/widget/TasksListAdapter;->imgIDlists:[I

    iput-object v1, p0, Lcom/motorola/android/widget/TasksListAdapter;->stringIDlists:[I

    iput-object v1, p0, Lcom/motorola/android/widget/TasksListAdapter;->qUriForClick:Landroid/net/Uri;

    iput-object v1, p0, Lcom/motorola/android/widget/TasksListAdapter;->mListData:Ljava/util/ArrayList;

    const-string v0, "TaskWidgetListViewAdapter"

    const-string v1, "TaskWidgetListViewAdapter init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/motorola/android/widget/TasksListAdapter;->mListData:Ljava/util/ArrayList;

    iput p2, p0, Lcom/motorola/android/widget/TasksListAdapter;->itemLayoutId:I

    iput-object p3, p0, Lcom/motorola/android/widget/TasksListAdapter;->viewIDlists:[I

    iput-object p4, p0, Lcom/motorola/android/widget/TasksListAdapter;->imgIDlists:[I

    iput-object p5, p0, Lcom/motorola/android/widget/TasksListAdapter;->stringIDlists:[I

    iput-object p6, p0, Lcom/motorola/android/widget/TasksListAdapter;->qUriForClick:Landroid/net/Uri;

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/android/widget/TasksListAdapter;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/widget/TasksListAdapter;->qUriForClick:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100(Lcom/motorola/android/widget/TasksListAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/widget/MotoAppWidgetAdapter;->passedContext:Landroid/content/Context;

    return-object v0
.end method

.method private convertDateToString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "dueDate"

    .prologue
    const v1, 0x18016

    .local v1, flags:I
    invoke-static {p1, p2, p3, v1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .local v0, date:Ljava/lang/String;
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .prologue
    const-string v0, "TaskWidgetListViewAdapter"

    const-string v1, "describeContents is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public final getCount()I
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/motorola/android/widget/TasksListAdapter;->mListData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, returnValue:I
    const-string v1, "TaskWidgetListViewAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "List has"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "items"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 4
    .parameter "position"

    .prologue
    const-string v1, "TaskWidgetListViewAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getItem "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/motorola/android/widget/TasksListAdapter;->mListData:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/widget/TaskWidgetItemData;

    .local v0, itemData:Lcom/motorola/android/widget/TaskWidgetItemData;
    return-object v0
.end method

.method public final getItemId(I)J
    .locals 4
    .parameter "position"

    .prologue
    const/4 v0, 0x0

    .local v0, _id:I
    iget-object v2, p0, Lcom/motorola/android/widget/TasksListAdapter;->mListData:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/motorola/android/widget/TasksListAdapter;->mListData:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/android/widget/TaskWidgetItemData;

    .local v1, itemData:Lcom/motorola/android/widget/TaskWidgetItemData;
    iget v0, v1, Lcom/motorola/android/widget/TaskWidgetItemData;->mID:I

    .end local v1           #itemData:Lcom/motorola/android/widget/TaskWidgetItemData;
    :cond_0
    int-to-long v2, v0

    return-wide v2
.end method

.method public getOnItemClickListner()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .local v0, listener:Landroid/widget/AdapterView$OnItemClickListener;
    new-instance v0, Lcom/motorola/android/widget/TasksListAdapter$1;

    .end local v0           #listener:Landroid/widget/AdapterView$OnItemClickListener;
    invoke-direct {v0, p0}, Lcom/motorola/android/widget/TasksListAdapter$1;-><init>(Lcom/motorola/android/widget/TasksListAdapter;)V

    .restart local v0       #listener:Landroid/widget/AdapterView$OnItemClickListener;
    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .local v4, txtView:Landroid/widget/TextView;
    const/4 v1, 0x0

    .local v1, imgView:Landroid/widget/ImageView;
    iget-object v5, p0, Landroid/widget/MotoAppWidgetAdapter;->passedContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .local v3, mInflater:Landroid/view/LayoutInflater;
    if-nez p2, :cond_0

    iget v5, p0, Lcom/motorola/android/widget/TasksListAdapter;->itemLayoutId:I

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    iget-object v5, p0, Lcom/motorola/android/widget/TasksListAdapter;->mListData:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/android/widget/TaskWidgetItemData;

    .local v2, itemData:Lcom/motorola/android/widget/TaskWidgetItemData;
    iget-object v5, p0, Lcom/motorola/android/widget/TasksListAdapter;->viewIDlists:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #imgView:Landroid/widget/ImageView;
    check-cast v1, Landroid/widget/ImageView;

    .restart local v1       #imgView:Landroid/widget/ImageView;
    const/4 v5, 0x1

    iget v6, v2, Lcom/motorola/android/widget/TaskWidgetItemData;->mPriority:I

    if-ne v5, v6, :cond_1

    iget-object v5, p0, Lcom/motorola/android/widget/TasksListAdapter;->imgIDlists:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    iget-object v5, p0, Lcom/motorola/android/widget/TasksListAdapter;->viewIDlists:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #imgView:Landroid/widget/ImageView;
    check-cast v1, Landroid/widget/ImageView;

    .restart local v1       #imgView:Landroid/widget/ImageView;
    iget v5, v2, Lcom/motorola/android/widget/TaskWidgetItemData;->mStarred:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    iget-object v5, p0, Lcom/motorola/android/widget/TasksListAdapter;->viewIDlists:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #imgView:Landroid/widget/ImageView;
    check-cast v1, Landroid/widget/ImageView;

    .restart local v1       #imgView:Landroid/widget/ImageView;
    iget v5, v2, Lcom/motorola/android/widget/TaskWidgetItemData;->mRemindStatus:I

    if-nez v5, :cond_4

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    iget-object v5, p0, Lcom/motorola/android/widget/TasksListAdapter;->viewIDlists:[I

    const/4 v6, 0x3

    aget v5, v5, v6

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #txtView:Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .restart local v4       #txtView:Landroid/widget/TextView;
    iget-object v5, v2, Lcom/motorola/android/widget/TaskWidgetItemData;->mTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/motorola/android/widget/TasksListAdapter;->viewIDlists:[I

    const/4 v6, 0x4

    aget v5, v5, v6

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #txtView:Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .restart local v4       #txtView:Landroid/widget/TextView;
    const-wide/16 v5, 0x0

    iget-wide v7, v2, Lcom/motorola/android/widget/TaskWidgetItemData;->mDueDate:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_5

    const-wide v5, 0xfffffffffffffffL

    iget-wide v7, v2, Lcom/motorola/android/widget/TaskWidgetItemData;->mDueDate:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Landroid/widget/MotoAppWidgetAdapter;->passedContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/motorola/android/widget/TasksListAdapter;->stringIDlists:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/MotoAppWidgetAdapter;->passedContext:Landroid/content/Context;

    iget-wide v7, v2, Lcom/motorola/android/widget/TaskWidgetItemData;->mDueDate:J

    invoke-direct {p0, v6, v7, v8}, Lcom/motorola/android/widget/TasksListAdapter;->convertDateToString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, descStr:Ljava/lang/String;
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .end local v0           #descStr:Ljava/lang/String;
    :goto_3
    iget-object v5, p0, Lcom/motorola/android/widget/TasksListAdapter;->viewIDlists:[I

    const/4 v6, 0x5

    aget v5, v5, v6

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #txtView:Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .restart local v4       #txtView:Landroid/widget/TextView;
    iget-object v5, v2, Lcom/motorola/android/widget/TaskWidgetItemData;->mTagName:Ljava/lang/String;

    if-eqz v5, :cond_6

    iget-object v5, v2, Lcom/motorola/android/widget/TaskWidgetItemData;->mTagName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4
    return-object p2

    :cond_1
    const/4 v5, 0x5

    iget v6, v2, Lcom/motorola/android/widget/TaskWidgetItemData;->mPriority:I

    if-ne v5, v6, :cond_2

    iget-object v5, p0, Lcom/motorola/android/widget/TasksListAdapter;->imgIDlists:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_2
    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_3
    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_4
    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_5
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :cond_6
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    const-string v2, "TaskWidgetListViewAdapter"

    const-string v3, "writeToParcel is called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/motorola/android/widget/TasksListAdapter;->itemLayoutId:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Lcom/motorola/android/widget/TasksListAdapter;->viewIDlists:[I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v2, p0, Lcom/motorola/android/widget/TasksListAdapter;->imgIDlists:[I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v2, p0, Lcom/motorola/android/widget/TasksListAdapter;->stringIDlists:[I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v2, p0, Lcom/motorola/android/widget/TasksListAdapter;->qUriForClick:Landroid/net/Uri;

    invoke-static {p1, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V

    iget-object v2, p0, Lcom/motorola/android/widget/TasksListAdapter;->mListData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/motorola/android/widget/TasksListAdapter;->mListData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/motorola/android/widget/TasksListAdapter;->mListData:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/widget/TaskWidgetItemData;

    .local v0, content:Lcom/motorola/android/widget/TaskWidgetItemData;
    iget v2, v0, Lcom/motorola/android/widget/TaskWidgetItemData;->mID:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, v0, Lcom/motorola/android/widget/TaskWidgetItemData;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/motorola/android/widget/TaskWidgetItemData;->mTagName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v2, v0, Lcom/motorola/android/widget/TaskWidgetItemData;->mStarred:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget v2, v0, Lcom/motorola/android/widget/TaskWidgetItemData;->mIsComplete:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget v2, v0, Lcom/motorola/android/widget/TaskWidgetItemData;->mPriority:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget v2, v0, Lcom/motorola/android/widget/TaskWidgetItemData;->mRemindStatus:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v2, v0, Lcom/motorola/android/widget/TaskWidgetItemData;->mDueDate:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    iget v2, v0, Lcom/motorola/android/widget/TaskWidgetItemData;->mIsOverDue:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, v0, Lcom/motorola/android/widget/TaskWidgetItemData;->mSectionTitle:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #content:Lcom/motorola/android/widget/TaskWidgetItemData;
    :cond_0
    return-void
.end method
