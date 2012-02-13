.class public Lcom/android/phone/MultiPartyCallUtils;
.super Ljava/lang/Object;
.source "MultiPartyCallUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MultiPartyCallUtils$MultiPartyCallerData;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "MultiPartyCallUtils"

.field private static mMultiPartyNumberList:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/phone/MultiPartyCallUtils$MultiPartyCallerData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mManageMultiPartyPanel:Landroid/view/ViewGroup;

.field mMultiCallListAdapter:Lcom/android/phone/MultiPartyCallListAdapter;

.field private mMultiPartyCallList:Landroid/widget/ListView;

.field private mMultiPartyCallTime:Landroid/widget/Chronometer;

.field private mNumCallersInActualConnection:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    sput-boolean v0, Lcom/android/phone/MultiPartyCallUtils;->DBG:Z

    .line 57
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/MultiPartyCallUtils;->mMultiPartyNumberList:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public constructor <init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Phone;)V
    .locals 1
    .parameter "inCallScreen"
    .parameter "phone"

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    sget-boolean v0, Lcom/android/phone/MultiPartyCallUtils;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "ManageMultiPartyUtils constructor..."

    invoke-direct {p0, v0}, Lcom/android/phone/MultiPartyCallUtils;->log(Ljava/lang/String;)V

    .line 67
    :cond_0
    iput-object p1, p0, Lcom/android/phone/MultiPartyCallUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 68
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 214
    const-string v0, "MultiPartyCallUtils"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    return-void
.end method


# virtual methods
.method public getNumCallersInActualConnection()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/android/phone/MultiPartyCallUtils;->mNumCallersInActualConnection:I

    return v0
.end method

.method public initMultiPartyCallPanel(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, contactNumbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-boolean v2, Lcom/android/phone/MultiPartyCallUtils;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "initManageMultiPartyPanel()..."

    invoke-direct {p0, v2}, Lcom/android/phone/MultiPartyCallUtils;->log(Ljava/lang/String;)V

    .line 75
    :cond_0
    sget-object v2, Lcom/android/phone/MultiPartyCallUtils;->mMultiPartyNumberList:Ljava/util/LinkedHashMap;

    if-eqz v2, :cond_1

    .line 76
    invoke-virtual {p0}, Lcom/android/phone/MultiPartyCallUtils;->resetMultiPartyCallList()V

    .line 81
    :goto_0
    if-eqz p1, :cond_2

    .line 82
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 83
    new-instance v0, Lcom/android/phone/MultiPartyCallUtils$MultiPartyCallerData;

    invoke-direct {v0, p0}, Lcom/android/phone/MultiPartyCallUtils$MultiPartyCallerData;-><init>(Lcom/android/phone/MultiPartyCallUtils;)V

    .line 84
    .local v0, data:Lcom/android/phone/MultiPartyCallUtils$MultiPartyCallerData;
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/phone/MultiPartyCallUtils$MultiPartyCallerData;->mConn:Lcom/android/internal/telephony/Connection;

    .line 85
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/android/phone/MultiPartyCallUtils$MultiPartyCallerData;->mIsConnected:Ljava/lang/Boolean;

    .line 86
    sget-object v3, Lcom/android/phone/MultiPartyCallUtils;->mMultiPartyNumberList:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 79
    .end local v0           #data:Lcom/android/phone/MultiPartyCallUtils$MultiPartyCallerData;
    .end local v1           #i:I
    :cond_1
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v2, Lcom/android/phone/MultiPartyCallUtils;->mMultiPartyNumberList:Ljava/util/LinkedHashMap;

    goto :goto_0

    .line 90
    :cond_2
    sget-boolean v2, Lcom/android/phone/MultiPartyCallUtils;->DBG:Z

    if-eqz v2, :cond_3

    const-string v2, "initManageMultiPartyPanel: first-time initialization!"

    invoke-direct {p0, v2}, Lcom/android/phone/MultiPartyCallUtils;->log(Ljava/lang/String;)V

    .line 91
    :cond_3
    iget-object v2, p0, Lcom/android/phone/MultiPartyCallUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v3, 0x7f07011d

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/phone/MultiPartyCallUtils;->mManageMultiPartyPanel:Landroid/view/ViewGroup;

    .line 93
    iget-object v2, p0, Lcom/android/phone/MultiPartyCallUtils;->mManageMultiPartyPanel:Landroid/view/ViewGroup;

    if-nez v2, :cond_4

    .line 94
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Couldn\'t find multiPartyCallPanel!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 96
    :cond_4
    iget-object v2, p0, Lcom/android/phone/MultiPartyCallUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v3, 0x7f070120

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/phone/MultiPartyCallUtils;->mMultiPartyCallList:Landroid/widget/ListView;

    .line 97
    new-instance v2, Lcom/android/phone/MultiPartyCallListAdapter;

    iget-object v3, p0, Lcom/android/phone/MultiPartyCallUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    sget-object v4, Lcom/android/phone/MultiPartyCallUtils;->mMultiPartyNumberList:Ljava/util/LinkedHashMap;

    invoke-direct {v2, v3, v4, p0}, Lcom/android/phone/MultiPartyCallListAdapter;-><init>(Landroid/content/Context;Ljava/util/HashMap;Lcom/android/phone/MultiPartyCallUtils;)V

    iput-object v2, p0, Lcom/android/phone/MultiPartyCallUtils;->mMultiCallListAdapter:Lcom/android/phone/MultiPartyCallListAdapter;

    .line 98
    iget-object v2, p0, Lcom/android/phone/MultiPartyCallUtils;->mMultiPartyCallList:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/phone/MultiPartyCallUtils;->mMultiCallListAdapter:Lcom/android/phone/MultiPartyCallListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 100
    return-void
.end method

.method public resetMultiCallerData()V
    .locals 4

    .prologue
    .line 188
    sget-object v2, Lcom/android/phone/MultiPartyCallUtils;->mMultiPartyNumberList:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 189
    .local v1, myVeryOwnIterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 190
    new-instance v0, Lcom/android/phone/MultiPartyCallUtils$MultiPartyCallerData;

    invoke-direct {v0, p0}, Lcom/android/phone/MultiPartyCallUtils$MultiPartyCallerData;-><init>(Lcom/android/phone/MultiPartyCallUtils;)V

    .line 191
    .local v0, data:Lcom/android/phone/MultiPartyCallUtils$MultiPartyCallerData;
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/phone/MultiPartyCallUtils$MultiPartyCallerData;->mConn:Lcom/android/internal/telephony/Connection;

    .line 192
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/android/phone/MultiPartyCallUtils$MultiPartyCallerData;->mIsConnected:Ljava/lang/Boolean;

    .line 193
    sget-object v3, Lcom/android/phone/MultiPartyCallUtils;->mMultiPartyNumberList:Ljava/util/LinkedHashMap;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 195
    .end local v0           #data:Lcom/android/phone/MultiPartyCallUtils$MultiPartyCallerData;
    :cond_0
    return-void
.end method

.method public resetMultiPartyCallList()V
    .locals 2

    .prologue
    .line 201
    sget-object v1, Lcom/android/phone/MultiPartyCallUtils;->mMultiPartyNumberList:Ljava/util/LinkedHashMap;

    if-eqz v1, :cond_0

    .line 202
    sget-object v1, Lcom/android/phone/MultiPartyCallUtils;->mMultiPartyNumberList:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    .line 204
    :cond_0
    iget-object v1, p0, Lcom/android/phone/MultiPartyCallUtils;->mMultiPartyCallList:Landroid/widget/ListView;

    if-eqz v1, :cond_1

    .line 205
    iget-object v1, p0, Lcom/android/phone/MultiPartyCallUtils;->mMultiPartyCallList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/phone/MultiPartyCallListAdapter;

    .line 206
    .local v0, adapter:Lcom/android/phone/MultiPartyCallListAdapter;
    if-eqz v0, :cond_1

    .line 207
    invoke-virtual {v0}, Lcom/android/phone/MultiPartyCallListAdapter;->clearCache()V

    .line 208
    invoke-virtual {v0}, Lcom/android/phone/MultiPartyCallListAdapter;->resetDataCollections()V

    .line 211
    .end local v0           #adapter:Lcom/android/phone/MultiPartyCallListAdapter;
    :cond_1
    return-void
.end method

.method public setPanelVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/phone/MultiPartyCallUtils;->mManageMultiPartyPanel:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/phone/MultiPartyCallUtils;->mManageMultiPartyPanel:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 109
    :cond_0
    return-void

    .line 107
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public updateManageMultiPartyPanel(Ljava/util/List;)V
    .locals 19
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/MultiPartyCallUtils;->mNumCallersInActualConnection:I

    .line 124
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MultiPartyCallUtils;->resetMultiCallerData()V

    .line 125
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v16

    move v0, v5

    move/from16 v1, v16

    if-ge v0, v1, :cond_6

    .line 126
    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/Connection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v13

    .line 127
    .local v13, presentation:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MultiPartyCallUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/Connection;

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MultiPartyCallUtils;->mManageMultiPartyPanel:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object v1, v4

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/PhoneUtils;->retrieveLatestCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/phone/BlurCallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v6

    .line 132
    .local v6, info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    move-object v0, v6

    iget-object v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object/from16 v16, v0

    if-eqz v16, :cond_3

    move-object v0, v6

    iget-object v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_3

    .line 133
    move-object v0, v6

    iget-object v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 134
    .local v12, phoneNumber:Ljava/lang/String;
    new-instance v4, Lcom/android/phone/MultiPartyCallUtils$MultiPartyCallerData;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/phone/MultiPartyCallUtils$MultiPartyCallerData;-><init>(Lcom/android/phone/MultiPartyCallUtils;)V

    .line 135
    .local v4, data:Lcom/android/phone/MultiPartyCallUtils$MultiPartyCallerData;
    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    check-cast v6, Lcom/android/internal/telephony/Connection;

    iput-object v6, v4, Lcom/android/phone/MultiPartyCallUtils$MultiPartyCallerData;->mConn:Lcom/android/internal/telephony/Connection;

    .line 136
    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v4

    iput-object v0, v1, Lcom/android/phone/MultiPartyCallUtils$MultiPartyCallerData;->mIsConnected:Ljava/lang/Boolean;

    .line 141
    sget-object v16, Lcom/android/phone/MultiPartyCallUtils;->mMultiPartyNumberList:Ljava/util/LinkedHashMap;

    invoke-virtual/range {v16 .. v16}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, numberitr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1

    .line 142
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 143
    .local v8, keyVal:Ljava/lang/String;
    invoke-static {v12, v8}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_0

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_0

    .line 144
    move-object v12, v8

    goto :goto_1

    .line 146
    .end local v8           #keyVal:Ljava/lang/String;
    :cond_1
    sget-object v16, Lcom/android/phone/MultiPartyCallUtils;->mMultiPartyNumberList:Ljava/util/LinkedHashMap;

    move-object/from16 v0, v16

    move-object v1, v12

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .end local v4           #data:Lcom/android/phone/MultiPartyCallUtils$MultiPartyCallerData;
    .end local v11           #numberitr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v12           #phoneNumber:Ljava/lang/String;
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 150
    .restart local v6       #info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_3
    move-object v0, v6

    iget-object v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2

    move-object v0, v6

    iget-object v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v16, v0

    if-nez v16, :cond_2

    .line 151
    const/4 v7, 0x0

    .line 152
    .local v7, key:Ljava/lang/String;
    sget v16, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    move v0, v13

    move/from16 v1, v16

    if-ne v0, v1, :cond_4

    .line 153
    const-string v7, "-2"

    .line 159
    :goto_3
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    .local v15, uniKey:Ljava/lang/StringBuilder;
    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/Connection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getConnectTime()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    .line 161
    .local v14, times:Ljava/lang/String;
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    new-instance v4, Lcom/android/phone/MultiPartyCallUtils$MultiPartyCallerData;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/phone/MultiPartyCallUtils$MultiPartyCallerData;-><init>(Lcom/android/phone/MultiPartyCallUtils;)V

    .line 163
    .restart local v4       #data:Lcom/android/phone/MultiPartyCallUtils$MultiPartyCallerData;
    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    check-cast v6, Lcom/android/internal/telephony/Connection;

    iput-object v6, v4, Lcom/android/phone/MultiPartyCallUtils$MultiPartyCallerData;->mConn:Lcom/android/internal/telephony/Connection;

    .line 164
    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v4

    iput-object v0, v1, Lcom/android/phone/MultiPartyCallUtils$MultiPartyCallerData;->mIsConnected:Ljava/lang/Boolean;

    .line 165
    sget-object v16, Lcom/android/phone/MultiPartyCallUtils;->mMultiPartyNumberList:Ljava/util/LinkedHashMap;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 154
    .end local v4           #data:Lcom/android/phone/MultiPartyCallUtils$MultiPartyCallerData;
    .end local v14           #times:Ljava/lang/String;
    .end local v15           #uniKey:Ljava/lang/StringBuilder;
    .restart local v6       #info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_4
    sget v16, Lcom/android/internal/telephony/Connection;->PRESENTATION_PAYPHONE:I

    move v0, v13

    move/from16 v1, v16

    if-ne v0, v1, :cond_5

    .line 155
    const-string v7, "-3"

    goto :goto_3

    .line 156
    :cond_5
    const-string v7, "-1"

    goto :goto_3

    .line 168
    .end local v6           #info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v7           #key:Ljava/lang/String;
    .end local v13           #presentation:I
    :cond_6
    sget-object v16, Lcom/android/phone/MultiPartyCallUtils;->mMultiPartyNumberList:Ljava/util/LinkedHashMap;

    invoke-virtual/range {v16 .. v16}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .end local p1           #connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    .local v10, keyitr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_7
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_9

    .line 169
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 170
    .local v9, keyValue:Ljava/lang/String;
    const-string v16, "-2"

    move-object v0, v9

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_8

    const-string v16, "-3"

    move-object v0, v9

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_8

    const-string v16, "-1"

    move-object v0, v9

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 172
    :cond_8
    sget-object v16, Lcom/android/phone/MultiPartyCallUtils;->mMultiPartyNumberList:Ljava/util/LinkedHashMap;

    move-object/from16 v0, v16

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    if-eqz v16, :cond_7

    sget-object v16, Lcom/android/phone/MultiPartyCallUtils;->mMultiPartyNumberList:Ljava/util/LinkedHashMap;

    move-object/from16 v0, v16

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/phone/MultiPartyCallUtils$MultiPartyCallerData;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/phone/MultiPartyCallUtils$MultiPartyCallerData;->mIsConnected:Ljava/lang/Boolean;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    if-nez v16, :cond_7

    .line 173
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    .line 177
    .end local v9           #keyValue:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MultiPartyCallUtils;->mMultiCallListAdapter:Lcom/android/phone/MultiPartyCallListAdapter;

    move-object/from16 v16, v0

    sget-object v17, Lcom/android/phone/MultiPartyCallUtils;->mMultiPartyNumberList:Ljava/util/LinkedHashMap;

    invoke-virtual/range {v16 .. v17}, Lcom/android/phone/MultiPartyCallListAdapter;->updateInternalDataSets(Ljava/util/HashMap;)V

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MultiPartyCallUtils;->mMultiCallListAdapter:Lcom/android/phone/MultiPartyCallListAdapter;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/MultiPartyCallListAdapter;->dataSetChangeRequest()V

    .line 179
    sget-boolean v16, Lcom/android/phone/MultiPartyCallUtils;->DBG:Z

    if-eqz v16, :cond_a

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "updateManageMultiPartyPanel()... num connections in MultiParty = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/MultiPartyCallUtils;->mNumCallersInActualConnection:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/phone/MultiPartyCallUtils;->log(Ljava/lang/String;)V

    .line 182
    :cond_a
    return-void
.end method
