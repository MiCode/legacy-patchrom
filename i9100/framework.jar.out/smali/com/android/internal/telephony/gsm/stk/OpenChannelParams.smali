.class Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;
.super Lcom/android/internal/telephony/gsm/stk/CommandParams;
.source "CommandParams.java"


# instance fields
.field mBearerDesc:Lcom/android/internal/telephony/gsm/stk/BearerDescription;

.field mBearerMode:Lcom/android/internal/telephony/gsm/stk/BearerMode;

.field mBufferSize:I

.field mDataDestinationAddress:Lcom/android/internal/telephony/gsm/stk/DataDestinationAddress;

.field mNetworkAccessName:Ljava/lang/String;

.field mPasswordTextMessage:Lcom/android/internal/telephony/gsm/stk/TextMessage;

.field mTextMessage:Lcom/android/internal/telephony/gsm/stk/TextMessage;

.field mTransportLevel:Lcom/android/internal/telephony/gsm/stk/TransportLevel;

.field mUsernameTextMessage:Lcom/android/internal/telephony/gsm/stk/TextMessage;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;ILcom/android/internal/telephony/gsm/stk/TransportLevel;Lcom/android/internal/telephony/gsm/stk/DataDestinationAddress;Lcom/android/internal/telephony/gsm/stk/TextMessage;)V
    .locals 0
    .parameter "cmdDet"
    .parameter "bufferSize"
    .parameter "transportLevel"
    .parameter "dataDestinationAddress"
    .parameter "textMessage"

    .prologue
    .line 274
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/CommandParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;)V

    .line 275
    iput p2, p0, Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;->mBufferSize:I

    .line 276
    iput-object p3, p0, Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;->mTransportLevel:Lcom/android/internal/telephony/gsm/stk/TransportLevel;

    .line 277
    iput-object p4, p0, Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;->mDataDestinationAddress:Lcom/android/internal/telephony/gsm/stk/DataDestinationAddress;

    .line 278
    iput-object p5, p0, Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;->mTextMessage:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    .line 279
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/BearerDescription;ILcom/android/internal/telephony/gsm/stk/TransportLevel;Lcom/android/internal/telephony/gsm/stk/DataDestinationAddress;Ljava/lang/String;Lcom/android/internal/telephony/gsm/stk/BearerMode;Lcom/android/internal/telephony/gsm/stk/TextMessage;Lcom/android/internal/telephony/gsm/stk/TextMessage;Lcom/android/internal/telephony/gsm/stk/TextMessage;)V
    .locals 0
    .parameter "cmdDet"
    .parameter "bearerDesc"
    .parameter "bufferSize"
    .parameter "transportLevel"
    .parameter "dataDestinationAddress"
    .parameter "networkAccessName"
    .parameter "bearerMode"
    .parameter "textMessage"
    .parameter "usernameTextMessage"
    .parameter "passwordTextMessage"

    .prologue
    .line 260
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/CommandParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;)V

    .line 261
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;->mBearerDesc:Lcom/android/internal/telephony/gsm/stk/BearerDescription;

    .line 262
    iput p3, p0, Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;->mBufferSize:I

    .line 263
    iput-object p4, p0, Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;->mTransportLevel:Lcom/android/internal/telephony/gsm/stk/TransportLevel;

    .line 264
    iput-object p5, p0, Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;->mDataDestinationAddress:Lcom/android/internal/telephony/gsm/stk/DataDestinationAddress;

    .line 265
    iput-object p6, p0, Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;->mNetworkAccessName:Ljava/lang/String;

    .line 266
    iput-object p7, p0, Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;->mBearerMode:Lcom/android/internal/telephony/gsm/stk/BearerMode;

    .line 267
    iput-object p8, p0, Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;->mTextMessage:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    .line 268
    iput-object p9, p0, Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;->mUsernameTextMessage:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    .line 269
    iput-object p10, p0, Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;->mPasswordTextMessage:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    .line 270
    return-void
.end method
