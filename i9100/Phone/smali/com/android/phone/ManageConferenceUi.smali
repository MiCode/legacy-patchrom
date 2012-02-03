.class public Lcom/android/phone/ManageConferenceUi;
.super Landroid/widget/RelativeLayout;
.source "ManageConferenceUi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/ManageConferenceUi$ConferenceCallItem;,
        Lcom/android/phone/ManageConferenceUi$ConferenceCallAdapter;
    }
.end annotation


# instance fields
.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mConferenceCallAdapter:Lcom/android/phone/ManageConferenceUi$ConferenceCallAdapter;

.field private mConferenceCallItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/ManageConferenceUi$ConferenceCallItem;",
            ">;"
        }
    .end annotation
.end field

.field private mConferenceCallListView:Landroid/widget/ListView;

.field private mContext:Landroid/content/Context;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mManageDoneButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    iput-object v0, p0, Lcom/android/phone/ManageConferenceUi;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 49
    iput-object v0, p0, Lcom/android/phone/ManageConferenceUi;->mContext:Landroid/content/Context;

    .line 59
    iput-object p1, p0, Lcom/android/phone/ManageConferenceUi;->mContext:Landroid/content/Context;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/ManageConferenceUi;)Lcom/android/phone/InCallScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/ManageConferenceUi;)Lcom/android/internal/telephony/CallManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUi;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/ManageConferenceUi;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/phone/ManageConferenceUi;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/ManageConferenceUi;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUi;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/ManageConferenceUi;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/phone/ManageConferenceUi;->getPresentationString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPresentationString(I)Ljava/lang/String;
    .locals 3
    .parameter "presentation"

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/android/phone/ManageConferenceUi;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0008

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, name:Ljava/lang/String;
    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-ne p1, v1, :cond_1

    .line 229
    invoke-virtual {p0}, Lcom/android/phone/ManageConferenceUi;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0009

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 233
    :cond_0
    :goto_0
    return-object v0

    .line 230
    :cond_1
    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_PAYPHONE:I

    if-ne p1, v1, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/android/phone/ManageConferenceUi;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d000a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 238
    const-string v0, "ManageConferenceUi"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    return-void
.end method


# virtual methods
.method initialize(Lcom/android/phone/InCallScreen;)V
    .locals 5
    .parameter "inCallScreen"

    .prologue
    .line 64
    iget-object v1, p0, Lcom/android/phone/ManageConferenceUi;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 65
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030028

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 69
    const-string v1, "Inflate manage conference view"

    invoke-direct {p0, v1}, Lcom/android/phone/ManageConferenceUi;->log(Ljava/lang/String;)V

    .line 70
    const v1, 0x7f0800ae

    invoke-virtual {p0, v1}, Lcom/android/phone/ManageConferenceUi;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/phone/ManageConferenceUi;->mConferenceCallListView:Landroid/widget/ListView;

    .line 71
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/phone/ManageConferenceUi;->mConferenceCallItemList:Ljava/util/ArrayList;

    .line 72
    new-instance v1, Lcom/android/phone/ManageConferenceUi$ConferenceCallAdapter;

    iget-object v2, p0, Lcom/android/phone/ManageConferenceUi;->mContext:Landroid/content/Context;

    const v3, 0x7f03000d

    iget-object v4, p0, Lcom/android/phone/ManageConferenceUi;->mConferenceCallItemList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/phone/ManageConferenceUi$ConferenceCallAdapter;-><init>(Lcom/android/phone/ManageConferenceUi;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/phone/ManageConferenceUi;->mConferenceCallAdapter:Lcom/android/phone/ManageConferenceUi$ConferenceCallAdapter;

    .line 76
    iget-object v1, p0, Lcom/android/phone/ManageConferenceUi;->mConferenceCallListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/ManageConferenceUi;->mConferenceCallAdapter:Lcom/android/phone/ManageConferenceUi$ConferenceCallAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 78
    const v1, 0x7f0800af

    invoke-virtual {p0, v1}, Lcom/android/phone/ManageConferenceUi;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/ManageConferenceUi;->mManageDoneButton:Landroid/widget/Button;

    .line 79
    iget-object v1, p0, Lcom/android/phone/ManageConferenceUi;->mManageDoneButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/phone/ManageConferenceUi$1;

    invoke-direct {v2, p0}, Lcom/android/phone/ManageConferenceUi$1;-><init>(Lcom/android/phone/ManageConferenceUi;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iput-object p1, p0, Lcom/android/phone/ManageConferenceUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 86
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 90
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 91
    return-void
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;)V
    .locals 8
    .parameter "cm"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/phone/ManageConferenceUi;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 95
    const/4 v0, 0x0

    .line 96
    .local v0, call:Lcom/android/internal/telephony/Call;
    iget-object v6, p0, Lcom/android/phone/ManageConferenceUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v6}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/phone/ManageConferenceUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v7, 0x7f080092

    invoke-virtual {v6, v7}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    .line 97
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 98
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 105
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v2

    .line 106
    .local v2, conns:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    iget-object v6, p0, Lcom/android/phone/ManageConferenceUi;->mConferenceCallItemList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 107
    .local v5, itemListSize:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v5, :cond_3

    .line 108
    iget-object v6, p0, Lcom/android/phone/ManageConferenceUi;->mConferenceCallItemList:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 107
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 99
    .end local v2           #conns:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    .end local v3           #i:I
    .end local v5           #itemListSize:I
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 100
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_0

    .line 102
    :cond_2
    iget-object v6, p0, Lcom/android/phone/ManageConferenceUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v7, 0x7f0800af

    invoke-virtual {v6, v7}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    .line 114
    :goto_2
    return-void

    .line 110
    .restart local v2       #conns:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    .restart local v3       #i:I
    .restart local v5       #itemListSize:I
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 111
    .local v1, conn:Lcom/android/internal/telephony/Connection;
    iget-object v6, p0, Lcom/android/phone/ManageConferenceUi;->mConferenceCallItemList:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/phone/ManageConferenceUi$ConferenceCallItem;

    invoke-direct {v7, p0, v1}, Lcom/android/phone/ManageConferenceUi$ConferenceCallItem;-><init>(Lcom/android/phone/ManageConferenceUi;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 113
    .end local v1           #conn:Lcom/android/internal/telephony/Connection;
    :cond_4
    iget-object v6, p0, Lcom/android/phone/ManageConferenceUi;->mConferenceCallAdapter:Lcom/android/phone/ManageConferenceUi$ConferenceCallAdapter;

    invoke-virtual {v6}, Lcom/android/phone/ManageConferenceUi$ConferenceCallAdapter;->notifyDataSetInvalidated()V

    goto :goto_2
.end method
