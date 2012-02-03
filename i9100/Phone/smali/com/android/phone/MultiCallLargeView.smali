.class public Lcom/android/phone/MultiCallLargeView;
.super Lcom/android/phone/MultiCallView;
.source "MultiCallLargeView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field protected mMultiCallInfoLandLayout:Landroid/widget/LinearLayout;

.field protected mMultiCallInfoPortLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/phone/MultiCallView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    iput-object p1, p0, Lcom/android/phone/MultiCallView;->mContext:Landroid/content/Context;

    .line 57
    return-void
.end method

.method private linkControls(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 71
    const v0, 0x7f0800b1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MultiCallView;->mFirstCallInfo:Landroid/view/View;

    .line 72
    iget-object v0, p0, Lcom/android/phone/MultiCallView;->mFirstCallInfo:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/android/phone/MultiCallView;->mFirstCallInfo:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 74
    const v0, 0x7f0800b6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MultiCallView;->mSecondCallInfo:Landroid/view/View;

    .line 75
    iget-object v0, p0, Lcom/android/phone/MultiCallView;->mSecondCallInfo:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/android/phone/MultiCallView;->mSecondCallInfo:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 77
    const v0, 0x7f0800b2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/MultiCallView;->mFirstCallImageInfo:Landroid/widget/ImageView;

    .line 78
    const v0, 0x7f0800b7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/MultiCallView;->mSecondCallImageInfo:Landroid/widget/ImageView;

    .line 79
    const v0, 0x7f0800b3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/MultiCallView;->mFirstCallNameInfo:Landroid/widget/TextView;

    .line 80
    const v0, 0x7f0800b8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/MultiCallView;->mSecondCallNameInfo:Landroid/widget/TextView;

    .line 81
    const v0, 0x7f0800b4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/MultiCallView;->mFirstCallNumberInfo:Landroid/widget/TextView;

    .line 82
    const v0, 0x7f0800b9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/MultiCallView;->mSecondCallNumberInfo:Landroid/widget/TextView;

    .line 83
    const v0, 0x7f0800b5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/MultiCallView;->mFirstCallTimeInfo:Landroid/widget/TextView;

    .line 84
    const v0, 0x7f0800ba

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/MultiCallView;->mSecondCallTimeInfo:Landroid/widget/TextView;

    .line 85
    return-void
.end method


# virtual methods
.method protected fillCallerInfo(ZLcom/android/internal/telephony/Call;)V
    .locals 12
    .parameter "isFirst"
    .parameter "call"

    .prologue
    const v11, 0x7f0d02c7

    const v10, 0x7f0d0029

    const/4 v9, 0x1

    const v7, 0x7f020123

    const/4 v8, 0x0

    .line 150
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/phone/MultiCallLargeView;->getCallerInfo(Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 151
    .local v0, info:Lcom/android/internal/telephony/CallerInfo;
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v4

    .line 152
    .local v4, presentation:I
    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    .line 153
    .local v1, isConf:Z
    if-eqz v0, :cond_d

    .line 154
    const/4 v2, 0x0

    .line 155
    .local v2, name:Ljava/lang/String;
    const/4 v3, 0x0

    .line 156
    .local v3, number:Ljava/lang/String;
    iget-object v5, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 157
    sget v5, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq v4, v5, :cond_1

    .line 158
    invoke-virtual {p0, v4}, Lcom/android/phone/MultiCallLargeView;->getPresentationString(I)Ljava/lang/String;

    move-result-object v2

    .line 170
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/MultiCallLargeView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0d0008

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 171
    :cond_0
    if-eqz p1, :cond_9

    .line 172
    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mFirstCallNameInfo:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    iget-object v6, p0, Lcom/android/phone/MultiCallView;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mFirstCallNumberInfo:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/MultiCallView;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_2
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mFirstCallInfo:Landroid/view/View;

    if-eqz v1, :cond_6

    move v6, v9

    :goto_3
    invoke-virtual {v5, v6}, Landroid/view/View;->setClickable(Z)V

    .line 176
    if-eqz v1, :cond_7

    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mFirstCallImageInfo:Landroid/widget/ImageView;

    const v6, 0x7f02011b

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 208
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #number:Ljava/lang/String;
    :goto_4
    return-void

    .line 160
    .restart local v2       #name:Ljava/lang/String;
    .restart local v3       #number:Ljava/lang/String;
    :cond_1
    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 161
    iget-object v3, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_0

    .line 164
    :cond_2
    sget v5, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq v4, v5, :cond_3

    .line 165
    invoke-virtual {p0, v4}, Lcom/android/phone/MultiCallLargeView;->getPresentationString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 167
    :cond_3
    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_0

    :cond_4
    move-object v6, v2

    .line 172
    goto :goto_1

    :cond_5
    move-object v6, v3

    .line 173
    goto :goto_2

    :cond_6
    move v6, v8

    .line 174
    goto :goto_3

    .line 177
    :cond_7
    iget-object v5, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mFirstCallImageInfo:Landroid/widget/ImageView;

    iget-object v6, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 178
    :cond_8
    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mFirstCallImageInfo:Landroid/widget/ImageView;

    const v6, 0x7f02011d

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 181
    :cond_9
    if-eqz v1, :cond_a

    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mSecondCallImageInfo:Landroid/widget/ImageView;

    const v6, 0x7f02011c

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 185
    :goto_5
    if-eqz v1, :cond_c

    .line 186
    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mSecondCallNumberInfo:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/phone/MultiCallView;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mSecondCallNameInfo:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/MultiCallView;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mSecondCallNumberInfo:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 189
    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mSecondCallInfo:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setClickable(Z)V

    goto :goto_4

    .line 182
    :cond_a
    iget-object v5, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mSecondCallImageInfo:Landroid/widget/ImageView;

    iget-object v6, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 183
    :cond_b
    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mSecondCallImageInfo:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 192
    :cond_c
    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mSecondCallNameInfo:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mSecondCallNumberInfo:Landroid/widget/TextView;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 194
    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mSecondCallInfo:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setClickable(Z)V

    goto/16 :goto_4

    .line 198
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #number:Ljava/lang/String;
    :cond_d
    if-eqz p1, :cond_e

    .line 199
    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mFirstCallNameInfo:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/android/phone/MultiCallLargeView;->getPresentationString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mFirstCallImageInfo:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 201
    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mFirstCallInfo:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setClickable(Z)V

    goto/16 :goto_4

    .line 203
    :cond_e
    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mSecondCallNameInfo:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/android/phone/MultiCallLargeView;->getPresentationString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mSecondCallImageInfo:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 205
    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mSecondCallInfo:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setClickable(Z)V

    goto/16 :goto_4
.end method

.method initialize(Lcom/android/phone/InCallScreen;)V
    .locals 1
    .parameter "inCallScreen"

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/android/phone/MultiCallView;->initialize(Lcom/android/phone/InCallScreen;)V

    .line 61
    const-string v0, "Inflate multi call large view"

    invoke-virtual {p0, v0}, Lcom/android/phone/MultiCallLargeView;->log(Ljava/lang/String;)V

    .line 62
    const v0, 0x7f0800be

    invoke-virtual {p0, v0}, Lcom/android/phone/MultiCallLargeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/MultiCallLargeView;->mMultiCallInfoPortLayout:Landroid/widget/LinearLayout;

    .line 63
    const v0, 0x7f0800bf

    invoke-virtual {p0, v0}, Lcom/android/phone/MultiCallLargeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/MultiCallLargeView;->mMultiCallInfoLandLayout:Landroid/widget/LinearLayout;

    .line 64
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "event"

    .prologue
    .line 211
    const/4 v0, 0x0

    return v0
.end method

.method setFirstCallInfoForground(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;)V
    .locals 2
    .parameter "fgCall"
    .parameter "bgCall"

    .prologue
    .line 67
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/phone/MultiCallView;->mIsFirstCallInfoForeground:Z

    .line 68
    return-void

    .line 67
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;)V
    .locals 9
    .parameter "cm"

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 89
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 90
    .local v2, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 92
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    iget-object v4, p0, Lcom/android/phone/MultiCallView;->mFirstInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 93
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 94
    .local v1, c:Lcom/android/internal/telephony/Connection;
    iget-object v4, p0, Lcom/android/phone/MultiCallView;->mFirstInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 97
    .end local v1           #c:Lcom/android/internal/telephony/Connection;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_0
    invoke-virtual {p0, v2, v0}, Lcom/android/phone/MultiCallLargeView;->setFirstCallInfoForground(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;)V

    .line 108
    iget-object v4, p0, Lcom/android/phone/MultiCallView;->mCallCardScreenState:Lcom/android/phone/CallCard$CallCardScreenState;

    sget-object v5, Lcom/android/phone/CallCard$CallCardScreenState;->PORTRAIT:Lcom/android/phone/CallCard$CallCardScreenState;

    if-ne v4, v5, :cond_1

    .line 109
    iget-object v4, p0, Lcom/android/phone/MultiCallLargeView;->mMultiCallInfoPortLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v4}, Lcom/android/phone/MultiCallLargeView;->linkControls(Landroid/view/View;)V

    .line 114
    :goto_1
    iget-boolean v4, p0, Lcom/android/phone/MultiCallView;->mIsFirstCallInfoForeground:Z

    invoke-virtual {p0, v4, v2}, Lcom/android/phone/MultiCallLargeView;->fillCallerInfo(ZLcom/android/internal/telephony/Call;)V

    .line 115
    iget-boolean v4, p0, Lcom/android/phone/MultiCallView;->mIsFirstCallInfoForeground:Z

    if-nez v4, :cond_2

    move v4, v7

    :goto_2
    invoke-virtual {p0, v4, v0}, Lcom/android/phone/MultiCallLargeView;->fillCallerInfo(ZLcom/android/internal/telephony/Call;)V

    .line 123
    const-string v4, "!SecFeature.U1_NA_SPR"

    invoke-virtual {p0, v4}, Lcom/android/phone/MultiCallLargeView;->log(Ljava/lang/String;)V

    .line 132
    iget-object v4, p0, Lcom/android/phone/MultiCallView;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 134
    iget-object v4, p0, Lcom/android/phone/MultiCallView;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 137
    iput-object p1, p0, Lcom/android/phone/MultiCallView;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 139
    iget-object v4, p0, Lcom/android/phone/MultiCallView;->mCallCardScreenState:Lcom/android/phone/CallCard$CallCardScreenState;

    sget-object v5, Lcom/android/phone/CallCard$CallCardScreenState;->PORTRAIT:Lcom/android/phone/CallCard$CallCardScreenState;

    if-ne v4, v5, :cond_3

    .line 140
    iget-object v4, p0, Lcom/android/phone/MultiCallLargeView;->mMultiCallInfoPortLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 141
    iget-object v4, p0, Lcom/android/phone/MultiCallLargeView;->mMultiCallInfoLandLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 147
    :goto_3
    return-void

    .line 112
    :cond_1
    iget-object v4, p0, Lcom/android/phone/MultiCallLargeView;->mMultiCallInfoLandLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v4}, Lcom/android/phone/MultiCallLargeView;->linkControls(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    move v4, v6

    .line 115
    goto :goto_2

    .line 144
    :cond_3
    iget-object v4, p0, Lcom/android/phone/MultiCallLargeView;->mMultiCallInfoPortLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 145
    iget-object v4, p0, Lcom/android/phone/MultiCallLargeView;->mMultiCallInfoLandLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3
.end method
