.class public Lcom/android/phone/ManageConferenceUtils;
.super Ljava/lang/Object;
.source "ManageConferenceUtils.java"

# interfaces
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "ManageConferenceUtils"

.field private static final MAX_CALLERS_IN_CONFERENCE:I = 0x5


# instance fields
.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mCallContactView:[Landroid/view/ViewGroup;

.field private mConferenceCallDisconnect:[Landroid/widget/ImageView;

.field private mConferenceCallList:[Landroid/view/ViewGroup;

.field private mConferenceCallPanelList:[Landroid/view/ViewGroup;

.field private mConferenceTime:Landroid/widget/Chronometer;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mManageConferencePanel:Landroid/view/ViewGroup;

.field private mNumCallersInConference:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    sput-boolean v0, Lcom/android/phone/ManageConferenceUtils;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/CallManager;)V
    .locals 1
    .parameter "inCallScreen"
    .parameter "cm"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    sget-boolean v0, Lcom/android/phone/ManageConferenceUtils;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "ManageConferenceUtils constructor..."

    invoke-direct {p0, v0}, Lcom/android/phone/ManageConferenceUtils;->log(Ljava/lang/String;)V

    .line 71
    :cond_0
    iput-object p1, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 72
    iput-object p2, p0, Lcom/android/phone/ManageConferenceUtils;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 73
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 403
    const-string v0, "ManageConferenceUtils"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    return-void
.end method


# virtual methods
.method public final displayCallerInfoForConferenceRow(Lcom/android/internal/telephony/CallerInfo;Landroid/widget/QuickContactBadge;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 13
    .parameter "ci"
    .parameter "photoView"
    .parameter "nameTextView"
    .parameter "numberTypeTextView"
    .parameter "numberTextView"

    .prologue
    .line 280
    const-string v10, ""

    .line 281
    .local v10, callerName:Ljava/lang/String;
    const-string v11, ""

    .line 282
    .local v11, callerNumber:Ljava/lang/String;
    const-string v12, ""

    .line 283
    .local v12, callerNumberType:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 284
    iget-object v10, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 285
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 286
    iget-object v10, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 287
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 288
    iget-object v2, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v3, 0x7f0b0138

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 297
    :cond_0
    :goto_0
    move-object/from16 v0, p3

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 301
    const/16 v2, 0x8

    move-object/from16 v0, p5

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 302
    const/16 v2, 0x8

    move-object/from16 v0, p4

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 310
    :goto_1
    if-eqz p1, :cond_a

    .line 311
    iget v2, p1, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    if-eqz v2, :cond_5

    .line 312
    iget v2, p1, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    invoke-virtual {p2, v2}, Landroid/widget/QuickContactBadge;->setImageResource(I)V

    .line 336
    :cond_1
    :goto_2
    if-eqz p1, :cond_2

    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 337
    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    .line 339
    :cond_2
    return-void

    .line 291
    :cond_3
    iget-object v11, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 292
    iget-object v12, p1, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    goto :goto_0

    .line 304
    :cond_4
    const/4 v2, 0x0

    move-object/from16 v0, p5

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 305
    move-object/from16 v0, p5

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    const/4 v2, 0x0

    move-object/from16 v0, p4

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 307
    move-object/from16 v0, p4

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 314
    :cond_5
    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_6

    .line 315
    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v2}, Landroid/widget/QuickContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 316
    :cond_6
    iget-wide v2, p1, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_8

    .line 317
    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 318
    const v2, 0x7f020133

    invoke-virtual {p2, v2}, Landroid/widget/QuickContactBadge;->setImageResource(I)V

    goto :goto_2

    .line 320
    :cond_7
    const v2, 0x7f020130

    invoke-virtual {p2, v2}, Landroid/widget/QuickContactBadge;->setImageResource(I)V

    goto :goto_2

    .line 323
    :cond_8
    sget-boolean v2, Lcom/android/phone/ManageConferenceUtils;->DBG:Z

    if-eqz v2, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ci.person_id ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p1, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/ManageConferenceUtils;->log(Ljava/lang/String;)V

    .line 324
    :cond_9
    const v2, 0x7f020130

    invoke-virtual {p2, v2}, Landroid/widget/QuickContactBadge;->setImageResource(I)V

    .line 325
    iget-boolean v2, p1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-nez v2, :cond_1

    .line 326
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p1, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 327
    .local v8, personUri:Landroid/net/Uri;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v9, 0x7f020130

    move-object v2, p1

    move-object v7, p2

    invoke-static/range {v2 .. v9}, Landroid/pim/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Lcom/android/internal/telephony/CallerInfo;ILandroid/pim/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V

    goto/16 :goto_2

    .line 333
    .end local v8           #personUri:Landroid/net/Uri;
    :cond_a
    const v2, 0x7f020133

    invoke-virtual {p2, v2}, Landroid/widget/QuickContactBadge;->setImageResource(I)V

    goto/16 :goto_2
.end method

.method public endConferenceConnection(ILcom/android/internal/telephony/Connection;)V
    .locals 2
    .parameter "i"
    .parameter "connection"

    .prologue
    .line 348
    sget-boolean v0, Lcom/android/phone/ManageConferenceUtils;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "===> ENDING conference connection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": Connection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/ManageConferenceUtils;->log(Ljava/lang/String;)V

    .line 351
    :cond_0
    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Connection;)V

    .line 355
    return-void
.end method

.method public getNumCallersInConference()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/android/phone/ManageConferenceUtils;->mNumCallersInConference:I

    return v0
.end method

.method public initManageConferencePanel()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    .line 76
    sget-boolean v5, Lcom/android/phone/ManageConferenceUtils;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "initManageConferencePanel()..."

    invoke-direct {p0, v5}, Lcom/android/phone/ManageConferenceUtils;->log(Ljava/lang/String;)V

    .line 77
    :cond_0
    iget-object v5, p0, Lcom/android/phone/ManageConferenceUtils;->mManageConferencePanel:Landroid/view/ViewGroup;

    if-nez v5, :cond_3

    .line 78
    sget-boolean v5, Lcom/android/phone/ManageConferenceUtils;->DBG:Z

    if-eqz v5, :cond_1

    const-string v5, "initManageConferencePanel: first-time initialization!"

    invoke-direct {p0, v5}, Lcom/android/phone/ManageConferenceUtils;->log(Ljava/lang/String;)V

    .line 82
    :cond_1
    iget-object v5, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v6, 0x7f070100

    invoke-virtual {v5, v6}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/android/phone/ManageConferenceUtils;->mManageConferencePanel:Landroid/view/ViewGroup;

    .line 84
    iget-object v5, p0, Lcom/android/phone/ManageConferenceUtils;->mManageConferencePanel:Landroid/view/ViewGroup;

    if-nez v5, :cond_2

    .line 85
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Couldn\'t find manageConferencePanel!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 89
    :cond_2
    iget-object v5, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v6, 0x7f070101

    invoke-virtual {v5, v6}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Chronometer;

    iput-object v5, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceTime:Landroid/widget/Chronometer;

    .line 91
    iget-object v5, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceTime:Landroid/widget/Chronometer;

    iget-object v6, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v7, 0x7f0b02f1

    invoke-virtual {v6, v7}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Chronometer;->setFormat(Ljava/lang/String;)V

    .line 94
    new-array v5, v8, [Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    .line 95
    new-array v5, v8, [Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallPanelList:[Landroid/view/ViewGroup;

    .line 96
    new-array v5, v8, [Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/android/phone/ManageConferenceUtils;->mCallContactView:[Landroid/view/ViewGroup;

    .line 98
    new-array v5, v8, [Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallDisconnect:[Landroid/widget/ImageView;

    .line 100
    new-array v3, v8, [I

    fill-array-data v3, :array_0

    .line 103
    .local v3, viewGroupIdList:[I
    new-array v4, v8, [I

    fill-array-data v4, :array_1

    .line 106
    .local v4, viewGroupPanelList:[I
    new-array v2, v8, [I

    fill-array-data v2, :array_2

    .line 112
    .local v2, viewEndButtonList:[I
    new-array v1, v8, [I

    fill-array-data v1, :array_3

    .line 118
    .local v1, viewCallContactList:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v8, :cond_3

    .line 119
    iget-object v6, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    aget v7, v3, v0

    invoke-virtual {v5, v7}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    aput-object v5, v6, v0

    .line 121
    iget-object v6, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallPanelList:[Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    aget v7, v4, v0

    invoke-virtual {v5, v7}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    aput-object v5, v6, v0

    .line 123
    iget-object v6, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallDisconnect:[Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    aget v7, v2, v0

    invoke-virtual {v5, v7}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    aput-object v5, v6, v0

    .line 125
    iget-object v6, p0, Lcom/android/phone/ManageConferenceUtils;->mCallContactView:[Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    aget v7, v1, v0

    invoke-virtual {v5, v7}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    aput-object v5, v6, v0

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    .end local v0           #i:I
    .end local v1           #viewCallContactList:[I
    .end local v2           #viewEndButtonList:[I
    .end local v3           #viewGroupIdList:[I
    .end local v4           #viewGroupPanelList:[I
    :cond_3
    return-void

    .line 100
    :array_0
    .array-data 0x4
        0x8t 0x1t 0x7t 0x7ft
        0xct 0x1t 0x7t 0x7ft
        0x10t 0x1t 0x7t 0x7ft
        0x14t 0x1t 0x7t 0x7ft
        0x18t 0x1t 0x7t 0x7ft
    .end array-data

    .line 103
    :array_1
    .array-data 0x4
        0x7t 0x1t 0x7t 0x7ft
        0xbt 0x1t 0x7t 0x7ft
        0xft 0x1t 0x7t 0x7ft
        0x13t 0x1t 0x7t 0x7ft
        0x17t 0x1t 0x7t 0x7ft
    .end array-data

    .line 106
    :array_2
    .array-data 0x4
        0xat 0x1t 0x7t 0x7ft
        0xet 0x1t 0x7t 0x7ft
        0x12t 0x1t 0x7t 0x7ft
        0x16t 0x1t 0x7t 0x7ft
        0x1at 0x1t 0x7t 0x7ft
    .end array-data

    .line 112
    :array_3
    .array-data 0x4
        0x9t 0x1t 0x7t 0x7ft
        0xdt 0x1t 0x7t 0x7ft
        0x11t 0x1t 0x7t 0x7ft
        0x15t 0x1t 0x7t 0x7ft
        0x19t 0x1t 0x7t 0x7ft
    .end array-data
.end method

.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 8
    .parameter "token"
    .parameter "cookie"
    .parameter "ci"

    .prologue
    .line 387
    sget-boolean v1, Lcom/android/phone/ManageConferenceUtils;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callerinfo query complete, updating UI."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/ManageConferenceUtils;->log(Ljava/lang/String;)V

    .line 390
    :cond_0
    move-object v0, p2

    check-cast v0, Landroid/view/ViewGroup;

    move-object v7, v0

    .line 391
    .local v7, vg:Landroid/view/ViewGroup;
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 394
    const v1, 0x7f070078

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/QuickContactBadge;

    const v1, 0x7f070079

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v1, 0x7f07007a

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v1, 0x7f07007b

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    move-object v1, p0

    move-object v2, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/phone/ManageConferenceUtils;->displayCallerInfoForConferenceRow(Lcom/android/internal/telephony/CallerInfo;Landroid/widget/QuickContactBadge;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 399
    return-void
.end method

.method public separateConferenceConnection(ILcom/android/internal/telephony/Connection;)V
    .locals 2
    .parameter "i"
    .parameter "connection"

    .prologue
    .line 364
    sget-boolean v0, Lcom/android/phone/ManageConferenceUtils;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "===> SEPARATING conference connection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": Connection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/ManageConferenceUtils;->log(Ljava/lang/String;)V

    .line 367
    :cond_0
    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->separateCall(Lcom/android/internal/telephony/Connection;)V

    .line 377
    return-void
.end method

.method public setPanelVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mManageConferencePanel:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mManageConferencePanel:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 138
    :cond_0
    return-void

    .line 136
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public startConferenceTime(J)V
    .locals 1
    .parameter "base"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceTime:Landroid/widget/Chronometer;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceTime:Landroid/widget/Chronometer;

    invoke-virtual {v0, p1, p2}, Landroid/widget/Chronometer;->setBase(J)V

    .line 146
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceTime:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->start()V

    .line 148
    :cond_0
    return-void
.end method

.method public stopConferenceTime()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceTime:Landroid/widget/Chronometer;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceTime:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->stop()V

    .line 157
    :cond_0
    return-void
.end method

.method public updateManageConferencePanel(Ljava/util/List;)V
    .locals 8
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
    .local p1, connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    const/4 v7, 0x0

    .line 172
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    iput v5, p0, Lcom/android/phone/ManageConferenceUtils;->mNumCallersInConference:I

    .line 173
    sget-boolean v5, Lcom/android/phone/ManageConferenceUtils;->DBG:Z

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateManageConferencePanel()... num connections in conference = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/phone/ManageConferenceUtils;->mNumCallersInConference:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/ManageConferenceUtils;->log(Ljava/lang/String;)V

    .line 178
    :cond_0
    iget-object v5, p0, Lcom/android/phone/ManageConferenceUtils;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v2

    .line 179
    .local v2, hasActiveCall:Z
    iget-object v5, p0, Lcom/android/phone/ManageConferenceUtils;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v3

    .line 180
    .local v3, hasHoldingCall:Z
    if-eqz v2, :cond_1

    if-nez v3, :cond_2

    :cond_1
    const/4 v5, 0x1

    move v0, v5

    .line 182
    .local v0, canSeparate:Z
    :goto_0
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    const/4 v5, 0x5

    if-ge v4, v5, :cond_4

    .line 183
    iget v5, p0, Lcom/android/phone/ManageConferenceUtils;->mNumCallersInConference:I

    if-ge v4, v5, :cond_3

    .line 185
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 186
    .local v1, connection:Lcom/android/internal/telephony/Connection;
    invoke-virtual {p0, v4, v1, v0}, Lcom/android/phone/ManageConferenceUtils;->updateManageConferenceRow(ILcom/android/internal/telephony/Connection;Z)V

    .line 182
    .end local v1           #connection:Lcom/android/internal/telephony/Connection;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v0           #canSeparate:Z
    .end local v4           #i:I
    :cond_2
    move v0, v7

    .line 180
    goto :goto_0

    .line 189
    .restart local v0       #canSeparate:Z
    .restart local v4       #i:I
    :cond_3
    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5, v7}, Lcom/android/phone/ManageConferenceUtils;->updateManageConferenceRow(ILcom/android/internal/telephony/Connection;Z)V

    goto :goto_2

    .line 192
    :cond_4
    return-void
.end method

.method public updateManageConferenceRow(ILcom/android/internal/telephony/Connection;Z)V
    .locals 12
    .parameter "i"
    .parameter "connection"
    .parameter "canSeparate"

    .prologue
    const/4 v11, 0x0

    .line 208
    sget-boolean v0, Lcom/android/phone/ManageConferenceUtils;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateManageConferenceRow("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")...  connection = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/ManageConferenceUtils;->log(Ljava/lang/String;)V

    .line 210
    :cond_0
    if-eqz p2, :cond_4

    .line 212
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallPanelList:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    const v1, 0x7f070078

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/QuickContactBadge;

    .line 217
    .local v2, photoView:Landroid/widget/QuickContactBadge;
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallDisconnect:[Landroid/widget/ImageView;

    aget-object v6, v0, p1

    .line 218
    .local v6, endButton:Landroid/widget/ImageView;
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    const v1, 0x7f07007c

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 220
    .local v9, separateButton:Landroid/widget/ImageView;
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    const v1, 0x7f070079

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 222
    .local v3, nameTextView:Landroid/widget/TextView;
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    const v1, 0x7f07007b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 224
    .local v5, numberTextView:Landroid/widget/TextView;
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    const v1, 0x7f07007a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 227
    .local v4, numberTypeTextView:Landroid/widget/TextView;
    sget-boolean v0, Lcom/android/phone/ManageConferenceUtils;->DBG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- button: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nameTextView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/ManageConferenceUtils;->log(Ljava/lang/String;)V

    .line 230
    :cond_1
    new-instance v7, Lcom/android/phone/ManageConferenceUtils$1;

    invoke-direct {v7, p0, p1, p2}, Lcom/android/phone/ManageConferenceUtils$1;-><init>(Lcom/android/phone/ManageConferenceUtils;ILcom/android/internal/telephony/Connection;)V

    .line 237
    .local v7, endThisConnection:Landroid/view/View$OnClickListener;
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mCallContactView:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    if-eqz p3, :cond_3

    .line 240
    new-instance v10, Lcom/android/phone/ManageConferenceUtils$2;

    invoke-direct {v10, p0, p1, p2}, Lcom/android/phone/ManageConferenceUtils$2;-><init>(Lcom/android/phone/ManageConferenceUtils;ILcom/android/internal/telephony/Connection;)V

    .line 247
    .local v10, separateThisConnection:Landroid/view/View$OnClickListener;
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 254
    .end local v10           #separateThisConnection:Landroid/view/View$OnClickListener;
    :goto_0
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const/4 v1, 0x0

    iget-object v11, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v11, v11, p1

    invoke-static {v0, p2, v1, v11}, Lcom/android/phone/PhoneUtils;->retrieveLatestCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/phone/BlurCallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v8

    .line 259
    .local v8, info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    sget-boolean v0, Lcom/android/phone/ManageConferenceUtils;->DBG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  - got info from retrieveLatestCallerInfo(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/ManageConferenceUtils;->log(Ljava/lang/String;)V

    .line 262
    :cond_2
    iget-object v1, v8, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/ManageConferenceUtils;->displayCallerInfoForConferenceRow(Lcom/android/internal/telephony/CallerInfo;Landroid/widget/QuickContactBadge;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 268
    .end local v2           #photoView:Landroid/widget/QuickContactBadge;
    .end local v3           #nameTextView:Landroid/widget/TextView;
    .end local v4           #numberTypeTextView:Landroid/widget/TextView;
    .end local v5           #numberTextView:Landroid/widget/TextView;
    .end local v6           #endButton:Landroid/widget/ImageView;
    .end local v7           #endThisConnection:Landroid/view/View$OnClickListener;
    .end local v8           #info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v9           #separateButton:Landroid/widget/ImageView;
    :goto_1
    return-void

    .line 250
    .restart local v2       #photoView:Landroid/widget/QuickContactBadge;
    .restart local v3       #nameTextView:Landroid/widget/TextView;
    .restart local v4       #numberTypeTextView:Landroid/widget/TextView;
    .restart local v5       #numberTextView:Landroid/widget/TextView;
    .restart local v6       #endButton:Landroid/widget/ImageView;
    .restart local v7       #endThisConnection:Landroid/view/View$OnClickListener;
    .restart local v9       #separateButton:Landroid/widget/ImageView;
    :cond_3
    const/4 v0, 0x4

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 266
    .end local v2           #photoView:Landroid/widget/QuickContactBadge;
    .end local v3           #nameTextView:Landroid/widget/TextView;
    .end local v4           #numberTypeTextView:Landroid/widget/TextView;
    .end local v5           #numberTextView:Landroid/widget/TextView;
    .end local v6           #endButton:Landroid/widget/ImageView;
    .end local v7           #endThisConnection:Landroid/view/View$OnClickListener;
    .end local v9           #separateButton:Landroid/widget/ImageView;
    :cond_4
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallPanelList:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method
