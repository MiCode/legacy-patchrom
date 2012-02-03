.class public Landroid/net/wifi/ScanResult;
.super Ljava/lang/Object;
.source "ScanResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public BSSID:Ljava/lang/String;

.field public SSID:Ljava/lang/String;

.field public capabilities:Ljava/lang/String;

.field public frequency:I

.field public level:I

.field public primaryDev:I

.field public status:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 130
    new-instance v0, Landroid/net/wifi/ScanResult$1;

    invoke-direct {v0}, Landroid/net/wifi/ScanResult$1;-><init>()V

    sput-object v0, Landroid/net/wifi/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1
    .parameter "SSID"
    .parameter "BSSID"
    .parameter "caps"
    .parameter "level"
    .parameter "frequency"

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 68
    iput-object p3, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 69
    iput p4, p0, Landroid/net/wifi/ScanResult;->level:I

    .line 70
    iput p5, p0, Landroid/net/wifi/ScanResult;->frequency:I

    .line 71
    iput v0, p0, Landroid/net/wifi/ScanResult;->primaryDev:I

    .line 72
    iput v0, p0, Landroid/net/wifi/ScanResult;->status:I

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 0
    .parameter "SSID"
    .parameter "BSSID"
    .parameter "caps"
    .parameter "level"
    .parameter "frequency"
    .parameter "devType"
    .parameter "status"

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 81
    iput-object p2, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 82
    iput-object p3, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 83
    iput p4, p0, Landroid/net/wifi/ScanResult;->level:I

    .line 84
    iput p5, p0, Landroid/net/wifi/ScanResult;->frequency:I

    .line 85
    iput p6, p0, Landroid/net/wifi/ScanResult;->primaryDev:I

    .line 86
    iput p7, p0, Landroid/net/wifi/ScanResult;->status:I

    .line 87
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 92
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 93
    .local v1, sb:Ljava/lang/StringBuffer;
    const-string v0, "<none>"

    .line 95
    .local v0, none:Ljava/lang/String;
    const-string v2, "SSID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-nez v3, :cond_0

    move-object v3, v0

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", BSSID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v3, v0

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", capabilities: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    if-nez v3, :cond_2

    move-object v3, v0

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", level: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", frequency: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", primaryDev: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/ScanResult;->primaryDev:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/ScanResult;->status:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 110
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 95
    :cond_0
    iget-object v3, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v3, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v3, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    goto :goto_2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 120
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    iget v0, p0, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    iget v0, p0, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget v0, p0, Landroid/net/wifi/ScanResult;->primaryDev:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget v0, p0, Landroid/net/wifi/ScanResult;->status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    return-void
.end method
