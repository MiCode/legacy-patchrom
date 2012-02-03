.class public Lcom/android/internal/telephony/gsm/stk/StkEventDownload;
.super Ljava/lang/Object;
.source "StkEventDownload.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/StkEventDownload;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_ACCESS_TECHNOLOGY_CHANGE:I = 0xb

.field public static final EVENT_BROWSER_TERMINATION:I = 0x8

.field public static final EVENT_BROWSING_STATUS:I = 0xf

.field public static final EVENT_CALL_CONNECTED:I = 0x1

.field public static final EVENT_CALL_DISCONNECTED:I = 0x2

.field public static final EVENT_CARD_READER_STATUS:I = 0x6

.field public static final EVENT_CHANNEL_STATUS:I = 0xa

.field public static final EVENT_DATA_AVAILABLE:I = 0x9

.field public static final EVENT_DISPLAY_PARAMETERS_CHANGE:I = 0xc

.field public static final EVENT_FRAMES_INFORMATION_CHANGE:I = 0x10

.field public static final EVENT_IDLE_SCREEN_AVAILABLE:I = 0x5

.field public static final EVENT_LENGUAGE_SELECTION:I = 0x7

.field public static final EVENT_LOCAL_CONNECTION:I = 0xd

.field public static final EVENT_LOCATION_STATUS:I = 0x3

.field public static final EVENT_MT_CALL:I = 0x0

.field public static final EVENT_NETWORK_SEARCH_MODE_CHANGE:I = 0xe

.field public static final EVENT_NOTHING:I = 0xfe

.field public static final EVENT_REMOVE:I = 0xff

.field public static final EVENT_USER_ACTIVITY:I = 0x4

.field public static final MAX_EVENTS_NUM:I = 0x14

.field public static final STK_EVENT_ACTION:Ljava/lang/String; = "android.intent.action.stk.event"

.field public static final TERMINATED_BY_ERROR:I = 0x1

.field public static final TERMINATED_BY_USER:I


# instance fields
.field private mBrowserTerminationCause:I

.field private mEvent:I

.field private mLanguage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/StkEventDownload$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/stk/StkEventDownload$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/StkEventDownload;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "event"

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/16 v0, 0xfe

    iput v0, p0, Lcom/android/internal/telephony/gsm/stk/StkEventDownload;->mEvent:I

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkEventDownload;->mLanguage:Ljava/lang/String;

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gsm/stk/StkEventDownload;->mBrowserTerminationCause:I

    .line 107
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/stk/StkEventDownload;->setEvent(I)V

    .line 108
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "event"
    .parameter "browserTerminationCause"

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/16 v0, 0xfe

    iput v0, p0, Lcom/android/internal/telephony/gsm/stk/StkEventDownload;->mEvent:I

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkEventDownload;->mLanguage:Ljava/lang/String;

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gsm/stk/StkEventDownload;->mBrowserTerminationCause:I

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/stk/StkEventDownload;->setEvent(I)V

    .line 112
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gsm/stk/StkEventDownload;->setBrowserTerminationCause(I)V

    .line 113
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .parameter "event"
    .parameter "language"

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/16 v0, 0xfe

    iput v0, p0, Lcom/android/internal/telephony/gsm/stk/StkEventDownload;->mEvent:I

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkEventDownload;->mLanguage:Ljava/lang/String;

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gsm/stk/StkEventDownload;->mBrowserTerminationCause:I

    .line 116
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/stk/StkEventDownload;->setEvent(I)V

    .line 117
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gsm/stk/StkEventDownload;->setLenguage(Ljava/lang/String;)V

    .line 118
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public getBrowserTerminationCause()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/android/internal/telephony/gsm/stk/StkEventDownload;->mBrowserTerminationCause:I

    return v0
.end method

.method public getEvent()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/android/internal/telephony/gsm/stk/StkEventDownload;->mEvent:I

    return v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkEventDownload;->mLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public setBrowserTerminationCause(I)V
    .locals 0
    .parameter "browserTerminationCause"

    .prologue
    .line 141
    iput p1, p0, Lcom/android/internal/telephony/gsm/stk/StkEventDownload;->mBrowserTerminationCause:I

    .line 142
    return-void
.end method

.method public setEvent(I)V
    .locals 0
    .parameter "event"

    .prologue
    .line 121
    iput p1, p0, Lcom/android/internal/telephony/gsm/stk/StkEventDownload;->mEvent:I

    .line 122
    return-void
.end method

.method public setLenguage(Ljava/lang/String;)V
    .locals 0
    .parameter "language"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/stk/StkEventDownload;->mLanguage:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 97
    iget v0, p0, Lcom/android/internal/telephony/gsm/stk/StkEventDownload;->mEvent:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkEventDownload;->mLanguage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget v0, p0, Lcom/android/internal/telephony/gsm/stk/StkEventDownload;->mBrowserTerminationCause:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    return-void
.end method
