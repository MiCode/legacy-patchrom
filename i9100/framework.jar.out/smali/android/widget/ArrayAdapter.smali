.class public Landroid/widget/ArrayAdapter;
.super Landroid/widget/BaseAdapter;
.source "ArrayAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ArrayAdapter$1;,
        Landroid/widget/ArrayAdapter$ArrayFilter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;",
        "Landroid/widget/Filterable;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDropDownResource:I

.field private mFieldId:I

.field private mFilter:Landroid/widget/ArrayAdapter$ArrayFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<TT;>.ArrayFilter;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private final mLock:Ljava/lang/Object;

.field private mNotifyOnChange:Z

.field private mObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mOriginalValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mResource:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "textViewResourceId"

    .prologue
    .local p0, this:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<TT;>;"
    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/widget/ArrayAdapter;->mLock:Ljava/lang/Object;

    .line 78
    iput v1, p0, Landroid/widget/ArrayAdapter;->mFieldId:I

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ArrayAdapter;->mNotifyOnChange:Z

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2, v1, v0}, Landroid/widget/ArrayAdapter;->init(Landroid/content/Context;IILjava/util/List;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .parameter "context"
    .parameter "resource"
    .parameter "textViewResourceId"

    .prologue
    .line 112
    .local p0, this:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<TT;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/widget/ArrayAdapter;->mLock:Ljava/lang/Object;

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ArrayAdapter;->mFieldId:I

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ArrayAdapter;->mNotifyOnChange:Z

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ArrayAdapter;->init(Landroid/content/Context;IILjava/util/List;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/util/List;)V
    .locals 1
    .parameter "context"
    .parameter "resource"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 162
    .local p0, this:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<TT;>;"
    .local p4, objects:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/widget/ArrayAdapter;->mLock:Ljava/lang/Object;

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ArrayAdapter;->mFieldId:I

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ArrayAdapter;->mNotifyOnChange:Z

    .line 163
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ArrayAdapter;->init(Landroid/content/Context;IILjava/util/List;)V

    .line 164
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II[Ljava/lang/Object;)V
    .locals 1
    .parameter "context"
    .parameter "resource"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II[TT;)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p0, this:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<TT;>;"
    .local p4, objects:[Ljava/lang/Object;,"[TT;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/widget/ArrayAdapter;->mLock:Ljava/lang/Object;

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ArrayAdapter;->mFieldId:I

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ArrayAdapter;->mNotifyOnChange:Z

    .line 138
    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ArrayAdapter;->init(Landroid/content/Context;IILjava/util/List;)V

    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 2
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<TT;>;"
    .local p3, objects:Ljava/util/List;,"Ljava/util/List<TT;>;"
    const/4 v1, 0x0

    .line 149
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/widget/ArrayAdapter;->mLock:Ljava/lang/Object;

    .line 78
    iput v1, p0, Landroid/widget/ArrayAdapter;->mFieldId:I

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ArrayAdapter;->mNotifyOnChange:Z

    .line 150
    invoke-direct {p0, p1, p2, v1, p3}, Landroid/widget/ArrayAdapter;->init(Landroid/content/Context;IILjava/util/List;)V

    .line 151
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I[Ljava/lang/Object;)V
    .locals 2
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I[TT;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<TT;>;"
    .local p3, objects:[Ljava/lang/Object;,"[TT;"
    const/4 v1, 0x0

    .line 124
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/widget/ArrayAdapter;->mLock:Ljava/lang/Object;

    .line 78
    iput v1, p0, Landroid/widget/ArrayAdapter;->mFieldId:I

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ArrayAdapter;->mNotifyOnChange:Z

    .line 125
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, v1, v0}, Landroid/widget/ArrayAdapter;->init(Landroid/content/Context;IILjava/util/List;)V

    .line 126
    return-void
.end method

.method static synthetic access$100(Landroid/widget/ArrayAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Landroid/widget/ArrayAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Landroid/widget/ArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$200(Landroid/widget/ArrayAdapter;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/ArrayAdapter;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mObjects:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$302(Landroid/widget/ArrayAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Landroid/widget/ArrayAdapter;->mObjects:Ljava/util/List;

    return-object p1
.end method

.method public static createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;
    .locals 2
    .parameter "context"
    .parameter "textArrayResId"
    .parameter "textViewResId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 391
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 392
    .local v0, strings:[Ljava/lang/CharSequence;
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-direct {v1, p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-object v1
.end method

.method private createViewFromResource(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"
    .parameter "resource"

    .prologue
    .line 331
    .local p0, this:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<TT;>;"
    if-nez p2, :cond_0

    .line 332
    iget-object v5, p0, Landroid/widget/ArrayAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 v6, 0x0

    invoke-virtual {v5, p4, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 338
    .local v4, view:Landroid/view/View;
    :goto_0
    :try_start_0
    iget v5, p0, Landroid/widget/ArrayAdapter;->mFieldId:I

    if-nez v5, :cond_1

    .line 340
    move-object v0, v4

    check-cast v0, Landroid/widget/TextView;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    .local v3, text:Landroid/widget/TextView;
    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .line 352
    .local v2, item:Ljava/lang/Object;,"TT;"
    instance-of v5, v2, Ljava/lang/CharSequence;

    if-eqz v5, :cond_2

    .line 353
    check-cast v2, Ljava/lang/CharSequence;

    .end local v2           #item:Ljava/lang/Object;,"TT;"
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    :goto_2
    return-object v4

    .line 334
    .end local v3           #text:Landroid/widget/TextView;
    .end local v4           #view:Landroid/view/View;
    :cond_0
    move-object v4, p2

    .restart local v4       #view:Landroid/view/View;
    goto :goto_0

    .line 343
    :cond_1
    :try_start_1
    iget v5, p0, Landroid/widget/ArrayAdapter;->mFieldId:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v3       #text:Landroid/widget/TextView;
    goto :goto_1

    .line 345
    .end local v3           #text:Landroid/widget/TextView;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 346
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v5, "ArrayAdapter"

    const-string v6, "You must supply a resource ID for a TextView"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "ArrayAdapter requires the resource ID to be a TextView"

    invoke-direct {v5, v6, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 355
    .end local v1           #e:Ljava/lang/ClassCastException;
    .restart local v2       #item:Ljava/lang/Object;,"TT;"
    .restart local v3       #text:Landroid/widget/TextView;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private init(Landroid/content/Context;IILjava/util/List;)V
    .locals 1
    .parameter "context"
    .parameter "resource"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 270
    .local p0, this:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<TT;>;"
    .local p4, objects:Ljava/util/List;,"Ljava/util/List<TT;>;"
    iput-object p1, p0, Landroid/widget/ArrayAdapter;->mContext:Landroid/content/Context;

    .line 271
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/widget/ArrayAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 272
    iput p2, p0, Landroid/widget/ArrayAdapter;->mDropDownResource:I

    iput p2, p0, Landroid/widget/ArrayAdapter;->mResource:I

    .line 273
    iput-object p4, p0, Landroid/widget/ArrayAdapter;->mObjects:Ljava/util/List;

    .line 274
    iput p3, p0, Landroid/widget/ArrayAdapter;->mFieldId:I

    .line 275
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 172
    .local p0, this:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<TT;>;"
    .local p1, object:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 173
    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 174
    :try_start_0
    iget-object v1, p0, Landroid/widget/ArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    iget-boolean v1, p0, Landroid/widget/ArrayAdapter;->mNotifyOnChange:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 176
    :cond_0
    monitor-exit v0

    .line 181
    :cond_1
    :goto_0
    return-void

    .line 176
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 178
    :cond_2
    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    iget-boolean v0, p0, Landroid/widget/ArrayAdapter;->mNotifyOnChange:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 221
    .local p0, this:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<TT;>;"
    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 223
    :try_start_0
    iget-object v1, p0, Landroid/widget/ArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 224
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    :goto_0
    iget-boolean v0, p0, Landroid/widget/ArrayAdapter;->mNotifyOnChange:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 229
    :cond_0
    return-void

    .line 224
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 226
    :cond_1
    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 284
    .local p0, this:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<TT;>;"
    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 291
    .local p0, this:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<TT;>;"
    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 376
    .local p0, this:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<TT;>;"
    iget v0, p0, Landroid/widget/ArrayAdapter;->mDropDownResource:I

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ArrayAdapter;->createViewFromResource(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .prologue
    .line 399
    .local p0, this:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<TT;>;"
    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mFilter:Landroid/widget/ArrayAdapter$ArrayFilter;

    if-nez v0, :cond_0

    .line 400
    new-instance v0, Landroid/widget/ArrayAdapter$ArrayFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/ArrayAdapter$ArrayFilter;-><init>(Landroid/widget/ArrayAdapter;Landroid/widget/ArrayAdapter$1;)V

    iput-object v0, p0, Landroid/widget/ArrayAdapter;->mFilter:Landroid/widget/ArrayAdapter$ArrayFilter;

    .line 402
    :cond_0
    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mFilter:Landroid/widget/ArrayAdapter$ArrayFilter;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 298
    .local p0, this:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<TT;>;"
    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 316
    .local p0, this:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<TT;>;"
    int-to-long v0, p1

    return-wide v0
.end method

.method public getPosition(Ljava/lang/Object;)I
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 309
    .local p0, this:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<TT;>;"
    .local p1, item:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 323
    .local p0, this:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<TT;>;"
    iget v0, p0, Landroid/widget/ArrayAdapter;->mResource:I

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ArrayAdapter;->createViewFromResource(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public insert(Ljava/lang/Object;I)V
    .locals 2
    .parameter
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .prologue
    .line 190
    .local p0, this:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<TT;>;"
    .local p1, object:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 191
    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 192
    :try_start_0
    iget-object v1, p0, Landroid/widget/ArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 193
    iget-boolean v1, p0, Landroid/widget/ArrayAdapter;->mNotifyOnChange:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 194
    :cond_0
    monitor-exit v0

    .line 199
    :cond_1
    :goto_0
    return-void

    .line 194
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 196
    :cond_2
    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 197
    iget-boolean v0, p0, Landroid/widget/ArrayAdapter;->mNotifyOnChange:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 247
    .local p0, this:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<TT;>;"
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 248
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ArrayAdapter;->mNotifyOnChange:Z

    .line 249
    return-void
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 207
    .local p0, this:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<TT;>;"
    .local p1, object:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 209
    :try_start_0
    iget-object v1, p0, Landroid/widget/ArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 210
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    :goto_0
    iget-boolean v0, p0, Landroid/widget/ArrayAdapter;->mNotifyOnChange:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 215
    :cond_0
    return-void

    .line 210
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 212
    :cond_1
    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setDropDownViewResource(I)V
    .locals 0
    .parameter "resource"

    .prologue
    .line 368
    .local p0, this:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<TT;>;"
    iput p1, p0, Landroid/widget/ArrayAdapter;->mDropDownResource:I

    .line 369
    return-void
.end method

.method public setNotifyOnChange(Z)V
    .locals 0
    .parameter "notifyOnChange"

    .prologue
    .line 266
    .local p0, this:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<TT;>;"
    iput-boolean p1, p0, Landroid/widget/ArrayAdapter;->mNotifyOnChange:Z

    .line 267
    return-void
.end method

.method public sort(Ljava/util/Comparator;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 238
    .local p0, this:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<TT;>;"
    .local p1, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TT;>;"
    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mObjects:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 239
    iget-boolean v0, p0, Landroid/widget/ArrayAdapter;->mNotifyOnChange:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 240
    :cond_0
    return-void
.end method
