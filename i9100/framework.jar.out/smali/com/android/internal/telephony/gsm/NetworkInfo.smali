.class public Lcom/android/internal/telephony/gsm/NetworkInfo;
.super Ljava/lang/Object;
.source "NetworkInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/NetworkInfo$State;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/gsm/NetworkInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field lac:I

.field operatorAlphaLong:Ljava/lang/String;

.field operatorAlphaShort:Ljava/lang/String;

.field operatorNumeric:Ljava/lang/String;

.field state:Lcom/android/internal/telephony/gsm/NetworkInfo$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 162
    new-instance v0, Lcom/android/internal/telephony/gsm/NetworkInfo$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/NetworkInfo$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gsm/NetworkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/gsm/NetworkInfo$State;)V
    .locals 1
    .parameter "operatorAlphaLong"
    .parameter "operatorAlphaShort"
    .parameter "operatorNumeric"
    .parameter "state"

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-object v0, Lcom/android/internal/telephony/gsm/NetworkInfo$State;->UNKNOWN:Lcom/android/internal/telephony/gsm/NetworkInfo$State;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/NetworkInfo;->state:Lcom/android/internal/telephony/gsm/NetworkInfo$State;

    .line 75
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/NetworkInfo;->operatorAlphaLong:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/NetworkInfo;->operatorAlphaShort:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Lcom/android/internal/telephony/gsm/NetworkInfo;->operatorNumeric:Ljava/lang/String;

    .line 79
    iput-object p4, p0, Lcom/android/internal/telephony/gsm/NetworkInfo;->state:Lcom/android/internal/telephony/gsm/NetworkInfo$State;

    .line 80
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/gsm/NetworkInfo;->lac:I

    .line 81
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/gsm/NetworkInfo$State;I)V
    .locals 1
    .parameter "operatorAlphaLong"
    .parameter "operatorAlphaShort"
    .parameter "operatorNumeric"
    .parameter "state"
    .parameter "lac"

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-object v0, Lcom/android/internal/telephony/gsm/NetworkInfo$State;->UNKNOWN:Lcom/android/internal/telephony/gsm/NetworkInfo$State;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/NetworkInfo;->state:Lcom/android/internal/telephony/gsm/NetworkInfo$State;

    .line 99
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/NetworkInfo;->operatorAlphaLong:Ljava/lang/String;

    .line 100
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/NetworkInfo;->operatorAlphaShort:Ljava/lang/String;

    .line 101
    iput-object p3, p0, Lcom/android/internal/telephony/gsm/NetworkInfo;->operatorNumeric:Ljava/lang/String;

    .line 103
    iput-object p4, p0, Lcom/android/internal/telephony/gsm/NetworkInfo;->state:Lcom/android/internal/telephony/gsm/NetworkInfo$State;

    .line 104
    iput p5, p0, Lcom/android/internal/telephony/gsm/NetworkInfo;->lac:I

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "operatorAlphaLong"
    .parameter "operatorAlphaShort"
    .parameter "operatorNumeric"
    .parameter "stateString"

    .prologue
    .line 88
    invoke-static {p4}, Lcom/android/internal/telephony/gsm/NetworkInfo;->rilStateToState(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/NetworkInfo$State;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/gsm/NetworkInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/gsm/NetworkInfo$State;)V

    .line 90
    return-void
.end method

.method private static rilStateToState(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/NetworkInfo$State;
    .locals 3
    .parameter "s"

    .prologue
    .line 111
    const-string/jumbo v0, "unknown"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    sget-object v0, Lcom/android/internal/telephony/gsm/NetworkInfo$State;->UNKNOWN:Lcom/android/internal/telephony/gsm/NetworkInfo$State;

    .line 118
    :goto_0
    return-object v0

    .line 113
    :cond_0
    const-string v0, "available"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    sget-object v0, Lcom/android/internal/telephony/gsm/NetworkInfo$State;->AVAILABLE:Lcom/android/internal/telephony/gsm/NetworkInfo$State;

    goto :goto_0

    .line 115
    :cond_1
    const-string v0, "current"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    sget-object v0, Lcom/android/internal/telephony/gsm/NetworkInfo$State;->CURRENT:Lcom/android/internal/telephony/gsm/NetworkInfo$State;

    goto :goto_0

    .line 117
    :cond_2
    const-string v0, "forbidden"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 118
    sget-object v0, Lcom/android/internal/telephony/gsm/NetworkInfo$State;->FORBIDDEN:Lcom/android/internal/telephony/gsm/NetworkInfo$State;

    goto :goto_0

    .line 120
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RIL impl error: Invalid network state \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public getLac()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/android/internal/telephony/gsm/NetworkInfo;->lac:I

    return v0
.end method

.method public getOperatorAlphaLong()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/NetworkInfo;->operatorAlphaLong:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorAlphaShort()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/NetworkInfo;->operatorAlphaShort:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/NetworkInfo;->operatorNumeric:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/gsm/NetworkInfo$State;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/NetworkInfo;->state:Lcom/android/internal/telephony/gsm/NetworkInfo$State;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const-string v2, "/"

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkInfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/NetworkInfo;->operatorAlphaLong:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/NetworkInfo;->operatorAlphaShort:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/NetworkInfo;->operatorNumeric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/NetworkInfo;->state:Lcom/android/internal/telephony/gsm/NetworkInfo$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/NetworkInfo;->lac:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/NetworkInfo;->operatorAlphaLong:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/NetworkInfo;->operatorAlphaShort:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/NetworkInfo;->operatorNumeric:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/NetworkInfo;->state:Lcom/android/internal/telephony/gsm/NetworkInfo$State;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 155
    iget v0, p0, Lcom/android/internal/telephony/gsm/NetworkInfo;->lac:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    return-void
.end method
