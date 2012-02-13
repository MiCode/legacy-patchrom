.class public Lcom/android/providers/calendar/CalendarDebug;
.super Landroid/app/ListActivity;
.source "CalendarDebug.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/calendar/CalendarDebug$1;,
        Lcom/android/providers/calendar/CalendarDebug$FetchInfoTask;
    }
.end annotation


# static fields
.field private static final CALENDARS_PROJECTION:[Ljava/lang/String; = null

.field private static final EVENTS_PROJECTION:[Ljava/lang/String; = null

.field private static final INDEX_DISPLAY_NAME:I = 0x1

.field private static final INDEX_ID:I = 0x0

.field private static final KEY_TEXT:Ljava/lang/String; = "text"

.field private static final KEY_TITLE:Ljava/lang/String; = "title"


# instance fields
.field private mActivity:Landroid/app/ListActivity;

.field private mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v4, "_id"

    .line 42
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v4, v0, v2

    const-string v1, "displayName"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/providers/calendar/CalendarDebug;->CALENDARS_PROJECTION:[Ljava/lang/String;

    .line 49
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v4, v0, v2

    sput-object v0, Lcom/android/providers/calendar/CalendarDebug;->EVENTS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 61
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/android/providers/calendar/CalendarDebug;->CALENDARS_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/providers/calendar/CalendarDebug;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarDebug;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/providers/calendar/CalendarDebug;)Landroid/app/ListActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarDebug;->mActivity:Landroid/app/ListActivity;

    return-object v0
.end method

.method static synthetic access$300()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/android/providers/calendar/CalendarDebug;->EVENTS_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected addItem(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "title"
    .parameter "text"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 183
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 184
    .local v0, itemMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "title"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const-string v1, "text"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 167
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 168
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/providers/calendar/CalendarDebug;->requestWindowFeature(I)Z

    .line 169
    iput-object p0, p0, Lcom/android/providers/calendar/CalendarDebug;->mActivity:Landroid/app/ListActivity;

    .line 170
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarDebug;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarDebug;->mContentResolver:Landroid/content/ContentResolver;

    .line 171
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarDebug;->getListView()Landroid/widget/ListView;

    .line 172
    new-instance v0, Lcom/android/providers/calendar/CalendarDebug$FetchInfoTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/providers/calendar/CalendarDebug$FetchInfoTask;-><init>(Lcom/android/providers/calendar/CalendarDebug;Lcom/android/providers/calendar/CalendarDebug$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarDebug$FetchInfoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 174
    return-void
.end method
