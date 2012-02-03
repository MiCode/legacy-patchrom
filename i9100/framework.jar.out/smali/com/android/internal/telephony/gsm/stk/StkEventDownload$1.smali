.class final Lcom/android/internal/telephony/gsm/stk/StkEventDownload$1;
.super Ljava/lang/Object;
.source "StkEventDownload.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/stk/StkEventDownload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/internal/telephony/gsm/stk/StkEventDownload;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/gsm/stk/StkEventDownload;
    .locals 5
    .parameter "source"

    .prologue
    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 74
    .local v1, eventType:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, language:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 76
    .local v0, browserTerminationCause:I
    packed-switch v1, :pswitch_data_0

    .line 85
    :pswitch_0
    new-instance v3, Lcom/android/internal/telephony/gsm/stk/StkEventDownload;

    const/16 v4, 0xfe

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/gsm/stk/StkEventDownload;-><init>(I)V

    :goto_0
    return-object v3

    .line 79
    :pswitch_1
    new-instance v3, Lcom/android/internal/telephony/gsm/stk/StkEventDownload;

    invoke-direct {v3, v1}, Lcom/android/internal/telephony/gsm/stk/StkEventDownload;-><init>(I)V

    goto :goto_0

    .line 81
    :pswitch_2
    new-instance v3, Lcom/android/internal/telephony/gsm/stk/StkEventDownload;

    invoke-direct {v3, v1, v2}, Lcom/android/internal/telephony/gsm/stk/StkEventDownload;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 83
    :pswitch_3
    new-instance v3, Lcom/android/internal/telephony/gsm/stk/StkEventDownload;

    invoke-direct {v3, v1, v0}, Lcom/android/internal/telephony/gsm/stk/StkEventDownload;-><init>(II)V

    goto :goto_0

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/stk/StkEventDownload$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/gsm/stk/StkEventDownload;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/internal/telephony/gsm/stk/StkEventDownload;
    .locals 1
    .parameter "size"

    .prologue
    .line 91
    new-array v0, p1, [Lcom/android/internal/telephony/gsm/stk/StkEventDownload;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/stk/StkEventDownload$1;->newArray(I)[Lcom/android/internal/telephony/gsm/stk/StkEventDownload;

    move-result-object v0

    return-object v0
.end method
