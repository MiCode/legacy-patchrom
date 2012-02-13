.class public Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;
.super Ljava/lang/Object;
.source "StkCmdMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$2;,
        Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;,
        Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;
    }
.end annotation


# static fields
.field public static final CDMA:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;",
            ">;"
        }
    .end annotation
.end field

.field public static final GSM:I


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mBrowserSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;

.field private mCallSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

.field mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

.field private mInput:Lcom/android/internal/telephony/gsm/stk/Input;

.field mLoadIconSuccess:Z

.field private mMenu:Lcom/android/internal/telephony/gsm/stk/Menu;

.field private mSmsTpdu:[B

.field private mTextMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

.field private mToneSettings:Lcom/android/internal/telephony/gsm/stk/ToneSettings;

.field private tpduType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .parameter "in"

    .prologue
    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mToneSettings:Lcom/android/internal/telephony/gsm/stk/ToneSettings;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCallSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mAddress:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mSmsTpdu:[B

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mTextMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gsm/stk/Menu;

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mMenu:Lcom/android/internal/telephony/gsm/stk/Menu;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gsm/stk/Input;

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mInput:Lcom/android/internal/telephony/gsm/stk/Input;

    sget-object v3, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$2;->$SwitchMap$com$android$internal$telephony$gsm$stk$AppInterface$CommandType:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getCmdType()Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .end local p0
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .restart local p0
    :pswitch_1
    new-instance v3, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;-><init>(Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;)V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;

    invoke-static {}, Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;->values()[Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    aget-object v4, v4, v5

    iput-object v4, v3, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;->mode:Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gsm/stk/ToneSettings;

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mToneSettings:Lcom/android/internal/telephony/gsm/stk/ToneSettings;

    goto :goto_0

    :pswitch_3
    new-instance v3, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;-><init>(Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;)V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCallSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCallSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iput-object v3, v4, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;->confirmMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCallSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iput-object p0, v3, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;->callMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    goto :goto_0

    .restart local p0
    :pswitch_4
    const-string v3, "ro.mot.phonemode.vzw4gphone"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, vzw4gphonefeatureOn:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    move v1, v3

    .local v1, mVZW4gPhoneOnFlag:Z
    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mAddress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, dataLen:I
    if-lez v0, :cond_1

    new-array v3, v0, [B

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mSmsTpdu:[B

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mSmsTpdu:[B

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readByteArray([B)V

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->tpduType:I

    goto :goto_0

    .end local v0           #dataLen:I
    .end local v1           #mVZW4gPhoneOnFlag:Z
    :cond_2
    const/4 v3, 0x0

    move v1, v3

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method constructor <init>(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V
    .locals 9
    .parameter "cmdParams"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mToneSettings:Lcom/android/internal/telephony/gsm/stk/ToneSettings;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCallSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mAddress:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mSmsTpdu:[B

    iget-object v5, p1, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    iget-boolean v5, p1, Lcom/android/internal/telephony/gsm/stk/CommandParams;->mLoadIconSuccess:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mLoadIconSuccess:Z

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$2;->$SwitchMap$com$android$internal$telephony$gsm$stk$AppInterface$CommandType:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getCmdType()Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .end local p1
    :goto_0
    return-void

    .restart local p1
    :pswitch_0
    check-cast p1, Lcom/android/internal/telephony/gsm/stk/SelectItemParams;

    .end local p1
    iget-object v5, p1, Lcom/android/internal/telephony/gsm/stk/SelectItemParams;->menu:Lcom/android/internal/telephony/gsm/stk/Menu;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mMenu:Lcom/android/internal/telephony/gsm/stk/Menu;

    goto :goto_0

    .restart local p1
    :pswitch_1
    check-cast p1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    .end local p1
    iget-object v5, p1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mTextMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    goto :goto_0

    .restart local p1
    :pswitch_2
    const-string v5, "ro.mot.phonemode.vzw4gphone"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, vzw4gphonefeatureOn:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v1, v8

    .local v1, mVZW4gPhoneOnFlag:Z
    :goto_1
    if-eqz v1, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/SmsSendParams;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/stk/SmsSendParams;->address:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mAddress:Ljava/lang/String;

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/SmsSendParams;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/stk/SmsSendParams;->smsTpdu:[B

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mSmsTpdu:[B

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/SmsSendParams;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/android/internal/telephony/gsm/stk/SmsSendParams;->isCdmaTpdu:Z

    if-eqz v5, :cond_1

    iput v8, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->tpduType:I

    :goto_2
    check-cast p1, Lcom/android/internal/telephony/gsm/stk/SmsSendParams;

    .end local p1
    iget-object v5, p1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mTextMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    goto :goto_0

    .end local v1           #mVZW4gPhoneOnFlag:Z
    .restart local p1
    :cond_0
    move v1, v7

    goto :goto_1

    .restart local v1       #mVZW4gPhoneOnFlag:Z
    :cond_1
    iput v7, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->tpduType:I

    goto :goto_2

    :cond_2
    check-cast p1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    .end local p1
    iget-object v5, p1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mTextMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    goto :goto_0

    .end local v1           #mVZW4gPhoneOnFlag:Z
    .end local v4           #vzw4gphonefeatureOn:Ljava/lang/String;
    .restart local p1
    :pswitch_3
    check-cast p1, Lcom/android/internal/telephony/gsm/stk/GetInputParams;

    .end local p1
    iget-object v5, p1, Lcom/android/internal/telephony/gsm/stk/GetInputParams;->input:Lcom/android/internal/telephony/gsm/stk/Input;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mInput:Lcom/android/internal/telephony/gsm/stk/Input;

    goto :goto_0

    .restart local p1
    :pswitch_4
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/LaunchBrowserParams;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/stk/LaunchBrowserParams;->confirmMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mTextMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    new-instance v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;-><init>(Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/LaunchBrowserParams;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/stk/LaunchBrowserParams;->url:Ljava/lang/String;

    iput-object v5, v6, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;

    check-cast p1, Lcom/android/internal/telephony/gsm/stk/LaunchBrowserParams;

    .end local p1
    iget-object v6, p1, Lcom/android/internal/telephony/gsm/stk/LaunchBrowserParams;->mode:Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;

    iput-object v6, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;->mode:Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;

    goto :goto_0

    .restart local p1
    :pswitch_5
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/PlayToneParams;

    move-object v3, v0

    .local v3, params:Lcom/android/internal/telephony/gsm/stk/PlayToneParams;
    iget-object v5, v3, Lcom/android/internal/telephony/gsm/stk/PlayToneParams;->settings:Lcom/android/internal/telephony/gsm/stk/ToneSettings;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mToneSettings:Lcom/android/internal/telephony/gsm/stk/ToneSettings;

    iget-object v5, v3, Lcom/android/internal/telephony/gsm/stk/PlayToneParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mTextMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    goto/16 :goto_0

    .end local v3           #params:Lcom/android/internal/telephony/gsm/stk/PlayToneParams;
    :pswitch_6
    new-instance v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;-><init>(Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCallSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCallSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/CallSetupParams;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/stk/CallSetupParams;->confirmMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iput-object v5, v6, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;->confirmMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCallSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

    check-cast p1, Lcom/android/internal/telephony/gsm/stk/CallSetupParams;

    .end local p1
    iget-object v6, p1, Lcom/android/internal/telephony/gsm/stk/CallSetupParams;->callMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iput-object v6, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;->callMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    goto/16 :goto_0

    .restart local p1
    :pswitch_7
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/BIPClientParams;

    move-object v2, v0

    .local v2, param:Lcom/android/internal/telephony/gsm/stk/BIPClientParams;
    iget-object v5, v2, Lcom/android/internal/telephony/gsm/stk/BIPClientParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mTextMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public geInput()Lcom/android/internal/telephony/gsm/stk/Input;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mInput:Lcom/android/internal/telephony/gsm/stk/Input;

    return-object v0
.end method

.method public geTextMessage()Lcom/android/internal/telephony/gsm/stk/TextMessage;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mTextMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    return-object v0
.end method

.method public getBrowserSettings()Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;

    return-object v0
.end method

.method public getCallSettings()Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCallSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

    return-object v0
.end method

.method public getCmdType()Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->typeOfCommand:I

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    move-result-object v0

    return-object v0
.end method

.method public getMenu()Lcom/android/internal/telephony/gsm/stk/Menu;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mMenu:Lcom/android/internal/telephony/gsm/stk/Menu;

    return-object v0
.end method

.method public getSmsSendAddress()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getSmsSendTpdu()[B
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mSmsTpdu:[B

    return-object v0
.end method

.method public getSmsSendTpduType()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->tpduType:I

    return v0
.end method

.method public getToneSettings()Lcom/android/internal/telephony/gsm/stk/ToneSettings;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mToneSettings:Lcom/android/internal/telephony/gsm/stk/ToneSettings;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    invoke-virtual {p1, v2, v4}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mTextMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-virtual {p1, v2, v4}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mMenu:Lcom/android/internal/telephony/gsm/stk/Menu;

    invoke-virtual {p1, v2, v4}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mInput:Lcom/android/internal/telephony/gsm/stk/Input;

    invoke-virtual {p1, v2, v4}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$2;->$SwitchMap$com$android$internal$telephony$gsm$stk$AppInterface$CommandType:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getCmdType()Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;->mode:Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;->ordinal()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mToneSettings:Lcom/android/internal/telephony/gsm/stk/ToneSettings;

    invoke-virtual {p1, v2, v4}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCallSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;->confirmMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-virtual {p1, v2, v4}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCallSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;->callMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-virtual {p1, v2, v4}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    :pswitch_4
    const-string v2, "ro.mot.phonemode.vzw4gphone"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, vzw4gphonefeatureOn:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    move v0, v2

    .local v0, mVZW4gPhoneOnFlag:Z
    :goto_1
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mAddress:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mSmsTpdu:[B

    array-length v2, v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mSmsTpdu:[B

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    iget v2, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->tpduType:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0           #mVZW4gPhoneOnFlag:Z
    :cond_1
    move v0, v4

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
