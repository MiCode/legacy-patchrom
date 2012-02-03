.class public Lcom/android/internal/telephony/IccCardStatus;
.super Ljava/lang/Object;
.source "IccCardStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IccCardStatus$PinState;,
        Lcom/android/internal/telephony/IccCardStatus$CardState;
    }
.end annotation


# static fields
.field static final CARD_MAX_APPS:I = 0x8


# instance fields
.field private mApplications:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/IccCardApplication;",
            ">;"
        }
    .end annotation
.end field

.field private mCardState:Lcom/android/internal/telephony/IccCardStatus$CardState;

.field private mCdmaSubscriptionAppIndex:I

.field private mGsmUmtsSubscriptionAppIndex:I

.field private mNumApplications:I

.field private mUniversalPinState:Lcom/android/internal/telephony/IccCardStatus$PinState;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardStatus;->mApplications:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addApplication(Lcom/android/internal/telephony/IccCardApplication;)V
    .locals 1
    .parameter "application"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardStatus;->mApplications:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    return-void
.end method

.method public getApplication(I)Lcom/android/internal/telephony/IccCardApplication;
    .locals 1
    .parameter "index"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardStatus;->mApplications:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/IccCardApplication;

    return-object p0
.end method

.method public getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardStatus;->mCardState:Lcom/android/internal/telephony/IccCardStatus$CardState;

    return-object v0
.end method

.method public getCdmaSubscriptionAppIndex()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/android/internal/telephony/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    return v0
.end method

.method public getGsmUmtsSubscriptionAppIndex()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/android/internal/telephony/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    return v0
.end method

.method public getNumApplications()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/android/internal/telephony/IccCardStatus;->mNumApplications:I

    return v0
.end method

.method public setCardState(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 62
    packed-switch p1, :pswitch_data_0

    .line 73
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized RIL_CardState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardStatus;->mCardState:Lcom/android/internal/telephony/IccCardStatus$CardState;

    .line 75
    :goto_0
    return-void

    .line 67
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardStatus;->mCardState:Lcom/android/internal/telephony/IccCardStatus$CardState;

    goto :goto_0

    .line 70
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_ERROR:Lcom/android/internal/telephony/IccCardStatus$CardState;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardStatus;->mCardState:Lcom/android/internal/telephony/IccCardStatus$CardState;

    goto :goto_0

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setCdmaSubscriptionAppIndex(I)V
    .locals 0
    .parameter "cdmaSubscriptionAppIndex"

    .prologue
    .line 115
    iput p1, p0, Lcom/android/internal/telephony/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    .line 116
    return-void
.end method

.method public setGsmUmtsSubscriptionAppIndex(I)V
    .locals 0
    .parameter "gsmUmtsSubscriptionAppIndex"

    .prologue
    .line 107
    iput p1, p0, Lcom/android/internal/telephony/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    .line 108
    return-void
.end method

.method public setNumApplications(I)V
    .locals 0
    .parameter "numApplications"

    .prologue
    .line 123
    iput p1, p0, Lcom/android/internal/telephony/IccCardStatus;->mNumApplications:I

    .line 124
    return-void
.end method

.method public setUniversalPinState(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 78
    packed-switch p1, :pswitch_data_0

    .line 98
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized RIL_PinState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_UNKNOWN:Lcom/android/internal/telephony/IccCardStatus$PinState;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardStatus;->mUniversalPinState:Lcom/android/internal/telephony/IccCardStatus$PinState;

    .line 100
    :goto_0
    return-void

    .line 83
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_ENABLED_NOT_VERIFIED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardStatus;->mUniversalPinState:Lcom/android/internal/telephony/IccCardStatus$PinState;

    goto :goto_0

    .line 86
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_ENABLED_VERIFIED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardStatus;->mUniversalPinState:Lcom/android/internal/telephony/IccCardStatus$PinState;

    goto :goto_0

    .line 89
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_DISABLED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardStatus;->mUniversalPinState:Lcom/android/internal/telephony/IccCardStatus$PinState;

    goto :goto_0

    .line 92
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_ENABLED_BLOCKED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardStatus;->mUniversalPinState:Lcom/android/internal/telephony/IccCardStatus$PinState;

    goto :goto_0

    .line 95
    :pswitch_5
    sget-object v0, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardStatus;->mUniversalPinState:Lcom/android/internal/telephony/IccCardStatus$PinState;

    goto :goto_0

    .line 78
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
