.class public Lcom/android/phone/MultiPartyCallListAdapter;
.super Lcom/android/phone/ContactPhotoCacheListAdapter;
.source "MultiPartyCallListAdapter.java"


# static fields
.field private static final MULTI_PARTY_CALL:Ljava/lang/String; = "multi_party_call"

.field private static final TAG:Ljava/lang/String; = "MultiPartyCallListAdapter"

.field private static mDataCollections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/MultiPartyCallUtils$MultiPartyCallerData;",
            ">;"
        }
    .end annotation
.end field

.field private static mMultiPartyNumberList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/phone/MultiPartyCallUtils$MultiPartyCallerData;",
            ">;"
        }
    .end annotation
.end field

.field private static mNumberCollections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field private mMPCUtils:Lcom/android/phone/MultiPartyCallUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/phone/MultiPartyCallListAdapter;->mMultiPartyNumberList:Ljava/util/HashMap;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/phone/MultiPartyCallListAdapter;->mNumberCollections:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/phone/MultiPartyCallListAdapter;->mDataCollections:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/HashMap;Lcom/android/phone/MultiPartyCallUtils;)V
    .locals 2
    .parameter "context"
    .parameter
    .parameter "mpc"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/phone/MultiPartyCallUtils$MultiPartyCallerData;",
            ">;",
            "Lcom/android/phone/MultiPartyCallUtils;",
            ")V"
        }
    .end annotation

    .prologue
    .line 47
    .local p2, numberList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/phone/MultiPartyCallUtils$MultiPartyCallerData;>;"
    invoke-direct {p0, p1}, Lcom/android/phone/ContactPhotoCacheListAdapter;-><init>(Landroid/content/Context;)V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/MultiPartyCallListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 48
    iput-object p1, p0, Lcom/android/phone/MultiPartyCallListAdapter;->mContext:Landroid/content/Context;

    .line 49
    sput-object p2, Lcom/android/phone/MultiPartyCallListAdapter;->mMultiPartyNumberList:Ljava/util/HashMap;

    .line 50
    sget-object v0, Lcom/android/phone/MultiPartyCallListAdapter;->mNumberCollections:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 51
    sget-object v0, Lcom/android/phone/MultiPartyCallListAdapter;->mDataCollections:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 52
    iput-object p3, p0, Lcom/android/phone/MultiPartyCallListAdapter;->mMPCUtils:Lcom/android/phone/MultiPartyCallUtils;

    .line 53
    return-void
.end method

.method static synthetic access$000()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/android/phone/MultiPartyCallListAdapter;->mDataCollections:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/android/phone/MultiPartyCallListAdapter;->mNumberCollections:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/MultiPartyCallListAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/phone/MultiPartyCallListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x1

    return v0
.end method

.method public canSeparate()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 79
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    iget-object v3, v4, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    .line 80
    .local v3, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_1

    move v1, v6

    .line 81
    .local v1, hasActiveCall:Z
    :goto_0
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_2

    move v2, v6

    .line 82
    .local v2, hasHoldingCall:Z
    :goto_1
    if-eqz v1, :cond_0

    if-nez v2, :cond_3

    :cond_0
    move v0, v6

    .line 83
    .local v0, canSeparate:Z
    :goto_2
    return v0

    .end local v0           #canSeparate:Z
    .end local v1           #hasActiveCall:Z
    .end local v2           #hasHoldingCall:Z
    :cond_1
    move v1, v5

    .line 80
    goto :goto_0

    .restart local v1       #hasActiveCall:Z
    :cond_2
    move v2, v5

    .line 81
    goto :goto_1

    .restart local v2       #hasHoldingCall:Z
    :cond_3
    move v0, v5

    .line 82
    goto :goto_2
.end method

.method protected createItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "view"
    .parameter "viewGroup"

    .prologue
    .line 88
    iget-object v7, p0, Lcom/android/phone/MultiPartyCallListAdapter;->mContext:Landroid/content/Context;

    const v8, 0x7f03003d

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 90
    const v7, 0x7f070123

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 91
    .local v3, name:Landroid/widget/TextView;
    const v7, -0xbbbbbc

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 92
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 94
    const v7, 0x7f070125

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 95
    .local v4, number:Landroid/widget/TextView;
    const-string v7, ""

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    const v7, 0x7f070124

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 98
    .local v5, numberType:Landroid/widget/TextView;
    const-string v7, ""

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    const v7, 0x7f0700b9

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 102
    .local v2, callerDetailView:Landroid/view/View;
    new-instance v7, Lcom/android/phone/MultiPartyCallListAdapter$1;

    invoke-direct {v7, p0, p1}, Lcom/android/phone/MultiPartyCallListAdapter$1;-><init>(Lcom/android/phone/MultiPartyCallListAdapter;I)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    const v7, 0x7f070126

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 110
    .local v6, separateCall:Landroid/widget/ImageView;
    sget-object v7, Lcom/android/phone/MultiPartyCallListAdapter;->mDataCollections:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    .end local p3
    check-cast p3, Lcom/android/phone/MultiPartyCallUtils$MultiPartyCallerData;

    iget-object v7, p3, Lcom/android/phone/MultiPartyCallUtils$MultiPartyCallerData;->mIsConnected:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/phone/MultiPartyCallListAdapter;->mMPCUtils:Lcom/android/phone/MultiPartyCallUtils;

    invoke-virtual {v7}, Lcom/android/phone/MultiPartyCallUtils;->getNumCallersInActualConnection()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_0

    .line 113
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/view/View;->setClickable(Z)V

    .line 122
    :goto_0
    const v7, 0x7f0700bc

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 124
    .local v1, callView:Landroid/view/View;
    const v7, 0x7f0700bd

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 126
    .local v0, callIcon:Landroid/widget/ImageView;
    new-instance v7, Lcom/android/phone/MultiPartyCallListAdapter$2;

    invoke-direct {v7, p0, p1}, Lcom/android/phone/MultiPartyCallListAdapter$2;-><init>(Lcom/android/phone/MultiPartyCallListAdapter;I)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    sget-object v7, Lcom/android/phone/MultiPartyCallListAdapter;->mDataCollections:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/phone/MultiPartyCallUtils$MultiPartyCallerData;

    iget-object v7, p0, Lcom/android/phone/MultiPartyCallUtils$MultiPartyCallerData;->mIsConnected:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 147
    const v7, 0x7f0200d1

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 152
    :goto_1
    return-object p2

    .line 118
    .end local v0           #callIcon:Landroid/widget/ImageView;
    .end local v1           #callView:Landroid/view/View;
    .restart local p0
    :cond_0
    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 119
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    .line 150
    .end local p0
    .restart local v0       #callIcon:Landroid/widget/ImageView;
    .restart local v1       #callView:Landroid/view/View;
    :cond_1
    const v7, 0x108008d

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public dataSetChangeRequest()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/phone/MultiPartyCallListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/phone/MultiPartyCallListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 159
    :cond_0
    return-void
.end method

.method protected getContactQueryData(I)Lcom/android/phone/ContactPhotoCacheListAdapter$QueryData;
    .locals 6
    .parameter "position"

    .prologue
    const/4 v5, 0x0

    .line 168
    new-instance v1, Lcom/android/phone/ContactPhotoCacheListAdapter$QueryData;

    invoke-direct {v1, p0}, Lcom/android/phone/ContactPhotoCacheListAdapter$QueryData;-><init>(Lcom/android/phone/ContactPhotoCacheListAdapter;)V

    .line 169
    .local v1, queryData:Lcom/android/phone/ContactPhotoCacheListAdapter$QueryData;
    invoke-virtual {p0, p1}, Lcom/android/phone/MultiPartyCallListAdapter;->getItemKey(I)Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, num:Ljava/lang/String;
    if-nez v0, :cond_0

    move-object v2, v5

    .line 185
    :goto_0
    return-object v2

    .line 173
    :cond_0
    sget-object v2, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v2, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v1, Lcom/android/phone/ContactPhotoCacheListAdapter$QueryData;->uri:Landroid/net/Uri;

    .line 174
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "number"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "display_name"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "type"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "label"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "photo_id"

    aput-object v4, v2, v3

    iput-object v2, v1, Lcom/android/phone/ContactPhotoCacheListAdapter$QueryData;->projection:[Ljava/lang/String;

    .line 182
    const-string v2, " LIMIT 1"

    iput-object v2, v1, Lcom/android/phone/ContactPhotoCacheListAdapter$QueryData;->selection:Ljava/lang/String;

    .line 183
    iput-object v5, v1, Lcom/android/phone/ContactPhotoCacheListAdapter$QueryData;->selectionArgs:[Ljava/lang/String;

    .line 184
    iput-object v5, v1, Lcom/android/phone/ContactPhotoCacheListAdapter$QueryData;->orderBy:Ljava/lang/String;

    move-object v2, v1

    .line 185
    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 273
    sget-object v0, Lcom/android/phone/MultiPartyCallListAdapter;->mMultiPartyNumberList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 277
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 281
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected getItemKey(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 163
    sget-object v0, Lcom/android/phone/MultiPartyCallListAdapter;->mNumberCollections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "arg0"

    .prologue
    .line 289
    const/4 v0, 0x0

    return v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/android/phone/MultiPartyCallListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 259
    const/4 v0, 0x1

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .parameter "dso"

    .prologue
    .line 263
    iput-object p1, p0, Lcom/android/phone/MultiPartyCallListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 264
    return-void
.end method

.method public resetDataCollections()V
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/android/phone/MultiPartyCallListAdapter;->mMultiPartyNumberList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 71
    sget-object v0, Lcom/android/phone/MultiPartyCallListAdapter;->mNumberCollections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 72
    sget-object v0, Lcom/android/phone/MultiPartyCallListAdapter;->mDataCollections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 73
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "dso"

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/phone/MultiPartyCallListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/phone/MultiPartyCallListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/MultiPartyCallListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 270
    :cond_0
    return-void
.end method

.method public updateInternalDataSets(Ljava/util/HashMap;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/phone/MultiPartyCallUtils$MultiPartyCallerData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, numberList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/phone/MultiPartyCallUtils$MultiPartyCallerData;>;"
    sput-object p1, Lcom/android/phone/MultiPartyCallListAdapter;->mMultiPartyNumberList:Ljava/util/HashMap;

    .line 60
    sget-object v0, Lcom/android/phone/MultiPartyCallListAdapter;->mNumberCollections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 61
    sget-object v0, Lcom/android/phone/MultiPartyCallListAdapter;->mDataCollections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 62
    sget-object v0, Lcom/android/phone/MultiPartyCallListAdapter;->mNumberCollections:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 63
    sget-object v0, Lcom/android/phone/MultiPartyCallListAdapter;->mDataCollections:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 64
    return-void
.end method

.method protected updateViewForContact(Ljava/lang/String;Landroid/view/View;Landroid/database/Cursor;)V
    .locals 9
    .parameter "key"
    .parameter "view"
    .parameter "cursor"

    .prologue
    .line 190
    const v6, 0x7f070123

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 191
    .local v3, viewName:Landroid/widget/TextView;
    const v6, 0x7f070125

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 192
    .local v4, viewNumber:Landroid/widget/TextView;
    const v6, 0x7f070124

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 193
    .local v5, viewNumberType:Landroid/widget/TextView;
    const v6, 0x7f070122

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/QuickContactBadge;

    .line 195
    .local v0, callerPhoto:Landroid/widget/QuickContactBadge;
    const-string v6, "MultiPartyCallListAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Key:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    if-eqz p3, :cond_2

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz p1, :cond_2

    .line 198
    const-string v6, "display_name"

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 199
    .local v1, name:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/phone/MultiPartyCallListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "type"

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-string v8, "label"

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 203
    .local v2, type:Ljava/lang/String;
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    const/high16 v6, -0x100

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 205
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 206
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #type:Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 237
    const/4 v6, 0x1

    invoke-virtual {v0, p1, v6}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    .line 239
    :cond_1
    return-void

    .line 209
    :cond_2
    if-eqz p1, :cond_0

    .line 210
    const-string v6, ""

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    const/high16 v6, -0x100

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 212
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 213
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    if-eqz p3, :cond_4

    .line 215
    const v6, 0x3020286

    invoke-virtual {v0, v6}, Landroid/widget/QuickContactBadge;->setImageResource(I)V

    .line 216
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    .line 222
    :goto_1
    const-string v6, "-1"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "-2"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "-3"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 224
    :cond_3
    const-string v6, "-1"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 225
    const v6, 0x7f0b0138

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    .line 231
    :goto_2
    const v6, 0x3020286

    invoke-virtual {v0, v6}, Landroid/widget/QuickContactBadge;->setImageResource(I)V

    .line 232
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    goto :goto_0

    .line 219
    :cond_4
    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    goto :goto_1

    .line 226
    :cond_5
    const-string v6, "-2"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 227
    const v6, 0x7f0b0139

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 229
    :cond_6
    const v6, 0x7f0b013a

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2
.end method

.method protected updateViewForPhoto(Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "view"
    .parameter "bitmap"

    .prologue
    .line 243
    const v1, 0x7f070122

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/QuickContactBadge;

    .line 244
    .local v0, image:Landroid/widget/QuickContactBadge;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    .line 245
    if-eqz p2, :cond_0

    .line 247
    invoke-virtual {v0, p2}, Landroid/widget/QuickContactBadge;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 252
    :goto_0
    return-void

    .line 250
    :cond_0
    const v1, 0x3020251

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setImageResource(I)V

    goto :goto_0
.end method
