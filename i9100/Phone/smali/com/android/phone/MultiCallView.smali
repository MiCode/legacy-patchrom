.class public Lcom/android/phone/MultiCallView;
.super Landroid/widget/LinearLayout;
.source "MultiCallView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected mCM:Lcom/android/internal/telephony/CallManager;

.field protected mCallCardScreenState:Lcom/android/phone/CallCard$CallCardScreenState;

.field protected mContext:Landroid/content/Context;

.field protected mFirstCallImageInfo:Landroid/widget/ImageView;

.field protected mFirstCallInfo:Landroid/view/View;

.field protected mFirstCallNameInfo:Landroid/widget/TextView;

.field protected mFirstCallNumberInfo:Landroid/widget/TextView;

.field protected mFirstCallTimeInfo:Landroid/widget/TextView;

.field protected mFirstInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation
.end field

.field protected mInCallScreen:Lcom/android/phone/InCallScreen;

.field protected mIsFirstCallInfoForeground:Z

.field protected mListBackgroundDisable:I

.field protected mListBackgroundNormal:I

.field protected mMergeButton:Landroid/widget/Button;

.field protected mRecInfo:Landroid/view/View;

.field protected mSecondCallImageInfo:Landroid/widget/ImageView;

.field protected mSecondCallInfo:Landroid/view/View;

.field protected mSecondCallNameInfo:Landroid/widget/TextView;

.field protected mSecondCallNumberInfo:Landroid/widget/TextView;

.field protected mSecondCallTimeInfo:Landroid/widget/TextView;

.field protected mSwapButton:Landroid/widget/Button;

.field protected mTextColorGray:I

.field protected mTextColorWhite:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    sget-object v0, Lcom/android/phone/CallCard$CallCardScreenState;->PORTRAIT:Lcom/android/phone/CallCard$CallCardScreenState;

    iput-object v0, p0, Lcom/android/phone/MultiCallView;->mCallCardScreenState:Lcom/android/phone/CallCard$CallCardScreenState;

    .line 90
    iput-object p1, p0, Lcom/android/phone/MultiCallView;->mContext:Landroid/content/Context;

    .line 91
    return-void
.end method


# virtual methods
.method protected CallEndTimeBlink(Ljava/lang/String;)V
    .locals 2
    .parameter "callCardTitle"

    .prologue
    const/4 v1, 0x0

    .line 404
    invoke-virtual {p0}, Lcom/android/phone/MultiCallView;->isFirstCallInfoForground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/android/phone/MultiCallView;->mFirstCallTimeInfo:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    iget-object v0, p0, Lcom/android/phone/MultiCallView;->mFirstCallTimeInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 411
    :goto_0
    return-void

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MultiCallView;->mSecondCallTimeInfo:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    iget-object v0, p0, Lcom/android/phone/MultiCallView;->mSecondCallTimeInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected CallEndTimeBlink(Z)V
    .locals 3
    .parameter "invisibleCallTime"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 396
    invoke-virtual {p0}, Lcom/android/phone/MultiCallView;->isFirstCallInfoForground()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 397
    iget-object v0, p0, Lcom/android/phone/MultiCallView;->mFirstCallTimeInfo:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 401
    :goto_0
    return-void

    .line 399
    :cond_1
    iget-object v0, p0, Lcom/android/phone/MultiCallView;->mSecondCallTimeInfo:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected fillCallerInfo(ZLcom/android/internal/telephony/Call;)V
    .locals 12
    .parameter "isFirst"
    .parameter "call"

    .prologue
    const v8, 0x7f0d0029

    const v11, 0x7f02011f

    const/4 v10, 0x1

    const/4 v7, 0x0

    const v9, 0x7f020120

    .line 211
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/phone/MultiCallView;->getCallerInfo(Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 213
    .local v0, info:Lcom/android/internal/telephony/CallerInfo;
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v4

    .line 214
    .local v4, presentation:I
    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    .line 215
    .local v1, isConf:Z
    if-eqz v0, :cond_d

    .line 216
    const/4 v2, 0x0

    .line 217
    .local v2, name:Ljava/lang/String;
    const/4 v3, 0x0

    .line 218
    .local v3, number:Ljava/lang/String;
    iget-object v5, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 219
    sget v5, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq v4, v5, :cond_1

    .line 220
    invoke-virtual {p0, v4}, Lcom/android/phone/MultiCallView;->getPresentationString(I)Ljava/lang/String;

    move-result-object v2

    .line 232
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 233
    invoke-virtual {p0}, Lcom/android/phone/MultiCallView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0d0008

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 234
    :cond_0
    if-eqz p1, :cond_8

    .line 235
    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mFirstCallNameInfo:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    iget-object v6, p0, Lcom/android/phone/MultiCallView;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
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

    const v8, 0x7f0d02c7

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_2
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mFirstCallInfo:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->setClickable(Z)V

    .line 241
    if-eqz v1, :cond_6

    .line 242
    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mFirstCallImageInfo:Landroid/widget/ImageView;

    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 279
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #number:Ljava/lang/String;
    :goto_3
    return-void

    .line 222
    .restart local v2       #name:Ljava/lang/String;
    .restart local v3       #number:Ljava/lang/String;
    :cond_1
    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 223
    iget-object v3, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_0

    .line 226
    :cond_2
    sget v5, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq v4, v5, :cond_3

    .line 227
    invoke-virtual {p0, v4}, Lcom/android/phone/MultiCallView;->getPresentationString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 229
    :cond_3
    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_0

    :cond_4
    move-object v6, v2

    .line 235
    goto :goto_1

    :cond_5
    move-object v6, v3

    .line 237
    goto :goto_2

    .line 244
    :cond_6
    iget-object v5, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_7

    .line 245
    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mFirstCallImageInfo:Landroid/widget/ImageView;

    iget-object v6, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 247
    :cond_7
    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mFirstCallImageInfo:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 250
    :cond_8
    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mSecondCallNameInfo:Landroid/widget/TextView;

    if-eqz v1, :cond_9

    iget-object v6, p0, Lcom/android/phone/MultiCallView;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_4
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mSecondCallNumberInfo:Landroid/widget/TextView;

    if-eqz v1, :cond_a

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

    const v8, 0x7f0d02c7

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_5
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mSecondCallInfo:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->setClickable(Z)V

    .line 256
    if-eqz v1, :cond_b

    .line 257
    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mSecondCallImageInfo:Landroid/widget/ImageView;

    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    :cond_9
    move-object v6, v2

    .line 250
    goto :goto_4

    :cond_a
    move-object v6, v3

    .line 252
    goto :goto_5

    .line 259
    :cond_b
    iget-object v5, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_c

    .line 260
    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mSecondCallImageInfo:Landroid/widget/ImageView;

    iget-object v6, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 262
    :cond_c
    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mSecondCallImageInfo:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 266
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #number:Ljava/lang/String;
    :cond_d
    if-eqz p1, :cond_e

    .line 267
    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mFirstCallNameInfo:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/android/phone/MultiCallView;->getPresentationString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mFirstCallImageInfo:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 270
    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mFirstCallInfo:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setClickable(Z)V

    goto/16 :goto_3

    .line 272
    :cond_e
    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mSecondCallNameInfo:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/android/phone/MultiCallView;->getPresentationString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mSecondCallImageInfo:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 276
    iget-object v5, p0, Lcom/android/phone/MultiCallView;->mSecondCallInfo:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setClickable(Z)V

    goto/16 :goto_3
.end method

.method protected getCallerInfo(Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfo;
    .locals 3
    .parameter "obj"

    .prologue
    .line 282
    const/4 v1, 0x0

    .line 283
    .local v1, info:Lcom/android/internal/telephony/CallerInfo;
    instance-of v2, p1, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_1

    .line 284
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    move-object v1, v0

    .line 288
    .end local p1
    :cond_0
    :goto_0
    return-object v1

    .line 285
    .restart local p1
    :cond_1
    instance-of v2, p1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v2, :cond_0

    .line 286
    check-cast p1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local p1
    iget-object v1, p1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto :goto_0
.end method

.method protected getPresentationString(I)Ljava/lang/String;
    .locals 3
    .parameter "presentation"

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/android/phone/MultiCallView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0008

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 293
    .local v0, name:Ljava/lang/String;
    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-ne p1, v1, :cond_1

    .line 294
    invoke-virtual {p0}, Lcom/android/phone/MultiCallView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0009

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 298
    :cond_0
    :goto_0
    return-object v0

    .line 295
    :cond_1
    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_PAYPHONE:I

    if-ne p1, v1, :cond_0

    .line 296
    invoke-virtual {p0}, Lcom/android/phone/MultiCallView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d000a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method initialize(Lcom/android/phone/InCallScreen;)V
    .locals 4
    .parameter "inCallScreen"

    .prologue
    const/4 v3, 0x1

    .line 94
    iget-object v1, p0, Lcom/android/phone/MultiCallView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 95
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030029

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 99
    const-string v1, "Inflate multi call view"

    invoke-virtual {p0, v1}, Lcom/android/phone/MultiCallView;->log(Ljava/lang/String;)V

    .line 100
    const v1, 0x7f0800b1

    invoke-virtual {p0, v1}, Lcom/android/phone/MultiCallView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MultiCallView;->mFirstCallInfo:Landroid/view/View;

    .line 101
    iget-object v1, p0, Lcom/android/phone/MultiCallView;->mFirstCallInfo:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    const v1, 0x7f0800b6

    invoke-virtual {p0, v1}, Lcom/android/phone/MultiCallView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MultiCallView;->mSecondCallInfo:Landroid/view/View;

    .line 103
    iget-object v1, p0, Lcom/android/phone/MultiCallView;->mSecondCallInfo:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    const v1, 0x7f0800b2

    invoke-virtual {p0, v1}, Lcom/android/phone/MultiCallView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/MultiCallView;->mFirstCallImageInfo:Landroid/widget/ImageView;

    .line 105
    const v1, 0x7f0800b7

    invoke-virtual {p0, v1}, Lcom/android/phone/MultiCallView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/MultiCallView;->mSecondCallImageInfo:Landroid/widget/ImageView;

    .line 106
    const v1, 0x7f0800b3

    invoke-virtual {p0, v1}, Lcom/android/phone/MultiCallView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/MultiCallView;->mFirstCallNameInfo:Landroid/widget/TextView;

    .line 107
    const v1, 0x7f0800b8

    invoke-virtual {p0, v1}, Lcom/android/phone/MultiCallView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/MultiCallView;->mSecondCallNameInfo:Landroid/widget/TextView;

    .line 108
    const v1, 0x7f0800b4

    invoke-virtual {p0, v1}, Lcom/android/phone/MultiCallView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/MultiCallView;->mFirstCallNumberInfo:Landroid/widget/TextView;

    .line 109
    const v1, 0x7f0800b9

    invoke-virtual {p0, v1}, Lcom/android/phone/MultiCallView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/MultiCallView;->mSecondCallNumberInfo:Landroid/widget/TextView;

    .line 110
    const v1, 0x7f0800b5

    invoke-virtual {p0, v1}, Lcom/android/phone/MultiCallView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/MultiCallView;->mFirstCallTimeInfo:Landroid/widget/TextView;

    .line 111
    const v1, 0x7f0800ba

    invoke-virtual {p0, v1}, Lcom/android/phone/MultiCallView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/MultiCallView;->mSecondCallTimeInfo:Landroid/widget/TextView;

    .line 113
    const v1, 0x7f0800bb

    invoke-virtual {p0, v1}, Lcom/android/phone/MultiCallView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/MultiCallView;->mSwapButton:Landroid/widget/Button;

    .line 114
    iget-object v1, p0, Lcom/android/phone/MultiCallView;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    const v1, 0x7f0800bc

    invoke-virtual {p0, v1}, Lcom/android/phone/MultiCallView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/MultiCallView;->mMergeButton:Landroid/widget/Button;

    .line 116
    iget-object v1, p0, Lcom/android/phone/MultiCallView;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    const v1, 0x7f0800bd

    invoke-virtual {p0, v1}, Lcom/android/phone/MultiCallView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MultiCallView;->mRecInfo:Landroid/view/View;

    .line 121
    invoke-virtual {p0}, Lcom/android/phone/MultiCallView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/MultiCallView;->mTextColorWhite:I

    .line 122
    invoke-virtual {p0}, Lcom/android/phone/MultiCallView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/MultiCallView;->mTextColorGray:I

    .line 124
    iget-object v1, p0, Lcom/android/phone/MultiCallView;->mFirstCallTimeInfo:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/phone/MultiCallView;->mTextColorWhite:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 125
    iget-object v1, p0, Lcom/android/phone/MultiCallView;->mSecondCallTimeInfo:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/phone/MultiCallView;->mTextColorWhite:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 127
    iput-object p1, p0, Lcom/android/phone/MultiCallView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 128
    iput-boolean v3, p0, Lcom/android/phone/MultiCallView;->mIsFirstCallInfoForeground:Z

    .line 130
    const v1, 0x7f02012d

    iput v1, p0, Lcom/android/phone/MultiCallView;->mListBackgroundNormal:I

    .line 131
    const v1, 0x7f02012c

    iput v1, p0, Lcom/android/phone/MultiCallView;->mListBackgroundDisable:I

    .line 133
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/phone/MultiCallView;->mFirstInfoList:Ljava/util/ArrayList;

    .line 134
    return-void
.end method

.method isFirstCallInfoForground()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/android/phone/MultiCallView;->mIsFirstCallInfoForeground:Z

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 344
    const-string v0, "MultiCallView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v3, 0x0

    const-string v4, ", id "

    .line 305
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 306
    .local v0, id:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick(View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/MultiCallView;->log(Ljava/lang/String;)V

    .line 308
    sparse-switch v0, :sswitch_data_0

    .line 328
    const-string v1, "MultiCallView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick: unexpected click: View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :goto_0
    return-void

    .line 311
    :sswitch_0
    iget-boolean v1, p0, Lcom/android/phone/MultiCallView;->mIsFirstCallInfoForeground:Z

    const v2, 0x7f0800b1

    if-ne v0, v2, :cond_0

    move v2, v3

    :goto_1
    if-ne v1, v2, :cond_1

    .line 312
    iget-object v1, p0, Lcom/android/phone/MultiCallView;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)Z

    .line 331
    :goto_2
    iget-object v1, p0, Lcom/android/phone/MultiCallView;->mFirstCallInfo:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 332
    iget-object v1, p0, Lcom/android/phone/MultiCallView;->mSecondCallInfo:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 333
    iget-object v1, p0, Lcom/android/phone/MultiCallView;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 334
    iget-object v1, p0, Lcom/android/phone/MultiCallView;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 311
    :cond_0
    const/4 v2, 0x1

    goto :goto_1

    .line 313
    :cond_1
    iget-object v1, p0, Lcom/android/phone/MultiCallView;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 314
    iget-object v1, p0, Lcom/android/phone/MultiCallView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0800ad

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 317
    :cond_2
    const-string v1, "Nothing to do.."

    invoke-virtual {p0, v1}, Lcom/android/phone/MultiCallView;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 322
    :sswitch_1
    iget-object v1, p0, Lcom/android/phone/MultiCallView;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)Z

    goto :goto_2

    .line 325
    :sswitch_2
    iget-object v1, p0, Lcom/android/phone/MultiCallView;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->mergeCalls(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_2

    .line 308
    :sswitch_data_0
    .sparse-switch
        0x7f0800b1 -> :sswitch_0
        0x7f0800b6 -> :sswitch_0
        0x7f0800bb -> :sswitch_1
        0x7f0800bc -> :sswitch_2
    .end sparse-switch
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 141
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 142
    return-void
.end method

.method resetOriginalState()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/phone/MultiCallView;->mFirstInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 137
    return-void
.end method

.method public setCallCardScreenState(Lcom/android/phone/CallCard$CallCardScreenState;)V
    .locals 0
    .parameter "callCardScreenState"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/phone/MultiCallView;->mCallCardScreenState:Lcom/android/phone/CallCard$CallCardScreenState;

    .line 86
    return-void
.end method

.method setFirstCallInfoForground(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;)V
    .locals 2
    .parameter "fgCall"
    .parameter "bgCall"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/phone/MultiCallView;->mFirstInfoList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/phone/MultiCallView;->mIsFirstCallInfoForeground:Z

    .line 155
    return-void

    .line 153
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setRecInfoViewVisibility(I)V
    .locals 1
    .parameter "view"

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/phone/MultiCallView;->mRecInfo:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/MultiCallView;->mRecInfo:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 340
    :cond_0
    return-void
.end method

.method protected updateElapsedTimeWidget(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "time"
    .parameter "holdText"

    .prologue
    .line 414
    invoke-virtual {p0}, Lcom/android/phone/MultiCallView;->isFirstCallInfoForground()Z

    move-result v0

    .line 415
    .local v0, flag:Z
    iget-object v1, p0, Lcom/android/phone/MultiCallView;->mFirstCallTimeInfo:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    move-object v2, p1

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    iget-object v1, p0, Lcom/android/phone/MultiCallView;->mSecondCallTimeInfo:Landroid/widget/TextView;

    if-nez v0, :cond_1

    move-object v2, p1

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    return-void

    :cond_0
    move-object v2, p2

    .line 415
    goto :goto_0

    :cond_1
    move-object v2, p2

    .line 416
    goto :goto_1
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;)V
    .locals 7
    .parameter "cm"

    .prologue
    const/4 v6, 0x1

    .line 158
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 159
    .local v2, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 161
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    iget-object v4, p0, Lcom/android/phone/MultiCallView;->mFirstInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 162
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

    .line 163
    .local v1, c:Lcom/android/internal/telephony/Connection;
    iget-object v4, p0, Lcom/android/phone/MultiCallView;->mFirstInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 166
    .end local v1           #c:Lcom/android/internal/telephony/Connection;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_0
    invoke-virtual {p0, v2, v0}, Lcom/android/phone/MultiCallView;->setFirstCallInfoForground(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;)V

    .line 168
    iget-object v4, p0, Lcom/android/phone/MultiCallView;->mFirstCallInfo:Landroid/view/View;

    iget-boolean v5, p0, Lcom/android/phone/MultiCallView;->mIsFirstCallInfoForeground:Z

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/android/phone/MultiCallView;->mListBackgroundNormal:I

    :goto_1
    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 169
    iget-object v4, p0, Lcom/android/phone/MultiCallView;->mSecondCallInfo:Landroid/view/View;

    iget-boolean v5, p0, Lcom/android/phone/MultiCallView;->mIsFirstCallInfoForeground:Z

    if-nez v5, :cond_2

    iget v5, p0, Lcom/android/phone/MultiCallView;->mListBackgroundNormal:I

    :goto_2
    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 170
    iget-object v4, p0, Lcom/android/phone/MultiCallView;->mFirstCallNameInfo:Landroid/widget/TextView;

    iget-boolean v5, p0, Lcom/android/phone/MultiCallView;->mIsFirstCallInfoForeground:Z

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/android/phone/MultiCallView;->mTextColorWhite:I

    :goto_3
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 171
    iget-object v4, p0, Lcom/android/phone/MultiCallView;->mSecondCallNameInfo:Landroid/widget/TextView;

    iget-boolean v5, p0, Lcom/android/phone/MultiCallView;->mIsFirstCallInfoForeground:Z

    if-nez v5, :cond_4

    iget v5, p0, Lcom/android/phone/MultiCallView;->mTextColorWhite:I

    :goto_4
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 172
    iget-object v4, p0, Lcom/android/phone/MultiCallView;->mFirstCallNumberInfo:Landroid/widget/TextView;

    iget-boolean v5, p0, Lcom/android/phone/MultiCallView;->mIsFirstCallInfoForeground:Z

    if-eqz v5, :cond_5

    iget v5, p0, Lcom/android/phone/MultiCallView;->mTextColorWhite:I

    :goto_5
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 173
    iget-object v4, p0, Lcom/android/phone/MultiCallView;->mSecondCallNumberInfo:Landroid/widget/TextView;

    iget-boolean v5, p0, Lcom/android/phone/MultiCallView;->mIsFirstCallInfoForeground:Z

    if-nez v5, :cond_6

    iget v5, p0, Lcom/android/phone/MultiCallView;->mTextColorWhite:I

    :goto_6
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 184
    iget-boolean v4, p0, Lcom/android/phone/MultiCallView;->mIsFirstCallInfoForeground:Z

    invoke-virtual {p0, v4, v2}, Lcom/android/phone/MultiCallView;->fillCallerInfo(ZLcom/android/internal/telephony/Call;)V

    .line 185
    iget-boolean v4, p0, Lcom/android/phone/MultiCallView;->mIsFirstCallInfoForeground:Z

    if-nez v4, :cond_7

    move v4, v6

    :goto_7
    invoke-virtual {p0, v4, v0}, Lcom/android/phone/MultiCallView;->fillCallerInfo(ZLcom/android/internal/telephony/Call;)V

    .line 193
    const-string v4, "!SecFeature.U1_NA_SPR"

    invoke-virtual {p0, v4}, Lcom/android/phone/MultiCallView;->log(Ljava/lang/String;)V

    .line 202
    iget-object v4, p0, Lcom/android/phone/MultiCallView;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 204
    iget-object v4, p0, Lcom/android/phone/MultiCallView;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 207
    iput-object p1, p0, Lcom/android/phone/MultiCallView;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 208
    return-void

    .line 168
    :cond_1
    iget v5, p0, Lcom/android/phone/MultiCallView;->mListBackgroundDisable:I

    goto :goto_1

    .line 169
    :cond_2
    iget v5, p0, Lcom/android/phone/MultiCallView;->mListBackgroundDisable:I

    goto :goto_2

    .line 170
    :cond_3
    iget v5, p0, Lcom/android/phone/MultiCallView;->mTextColorGray:I

    goto :goto_3

    .line 171
    :cond_4
    iget v5, p0, Lcom/android/phone/MultiCallView;->mTextColorGray:I

    goto :goto_4

    .line 172
    :cond_5
    iget v5, p0, Lcom/android/phone/MultiCallView;->mTextColorGray:I

    goto :goto_5

    .line 173
    :cond_6
    iget v5, p0, Lcom/android/phone/MultiCallView;->mTextColorGray:I

    goto :goto_6

    .line 185
    :cond_7
    const/4 v4, 0x0

    goto :goto_7
.end method
