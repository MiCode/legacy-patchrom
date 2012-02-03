.class public Landroid/net/DhcpServerConfiguration;
.super Ljava/lang/Object;
.source "DhcpServerConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/DhcpServerConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "DhcpServerConfiguration"

.field public static final dhcpEnableVarName:Ljava/lang/String; = "dhcp"

.field public static final ipRangeEndVarName:Ljava/lang/String; = "end_ip"

.field public static final ipRangeStartVarName:Ljava/lang/String; = "start_ip"

.field public static final leaseTimeVarName:Ljava/lang/String; = "lease_time"

.field public static final maxClientVarName:Ljava/lang/String; = "max_client"


# instance fields
.field public dhcpEnable:Z

.field public ipRangeEnd:Ljava/lang/String;

.field public ipRangeStart:Ljava/lang/String;

.field public leaseTime:I

.field public localIp:Ljava/lang/String;

.field public maxClient:I

.field public subnetmask:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 150
    new-instance v0, Landroid/net/DhcpServerConfiguration$1;

    invoke-direct {v0}, Landroid/net/DhcpServerConfiguration$1;-><init>()V

    sput-object v0, Landroid/net/DhcpServerConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object v1, p0, Landroid/net/DhcpServerConfiguration;->localIp:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Landroid/net/DhcpServerConfiguration;->subnetmask:Ljava/lang/String;

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/DhcpServerConfiguration;->dhcpEnable:Z

    .line 60
    iput-object v1, p0, Landroid/net/DhcpServerConfiguration;->ipRangeStart:Ljava/lang/String;

    .line 61
    iput-object v1, p0, Landroid/net/DhcpServerConfiguration;->ipRangeEnd:Ljava/lang/String;

    .line 62
    iput v2, p0, Landroid/net/DhcpServerConfiguration;->leaseTime:I

    .line 63
    iput v2, p0, Landroid/net/DhcpServerConfiguration;->maxClient:I

    .line 64
    return-void
.end method

.method public static IpToInt(Ljava/lang/String;)I
    .locals 5
    .parameter "addr"

    .prologue
    const/4 v4, 0x4

    .line 117
    if-nez p0, :cond_0

    .line 118
    const/4 v3, -0x1

    .line 126
    :goto_0
    return v3

    .line 120
    :cond_0
    const-string v3, "\\."

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, addrArray:[Ljava/lang/String;
    new-array v2, v4, [I

    .line 123
    .local v2, ipOct:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v4, :cond_1

    .line 124
    aget-object v3, v0, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v1

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 126
    :cond_1
    const/4 v3, 0x0

    aget v3, v2, v3

    shl-int/lit8 v3, v3, 0x18

    const/4 v4, 0x1

    aget v4, v2, v4

    shl-int/lit8 v4, v4, 0x10

    add-int/2addr v3, v4

    const/4 v4, 0x2

    aget v4, v2, v4

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v3, v4

    const/4 v4, 0x3

    aget v4, v2, v4

    add-int/2addr v3, v4

    goto :goto_0
.end method

.method public static putAddress(Ljava/lang/StringBuffer;I)V
    .locals 3
    .parameter "buf"
    .parameter "addr"

    .prologue
    const/16 v2, 0x2e

    .line 110
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    ushr-int/lit8 p1, p1, 0x8

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    ushr-int/lit8 p1, p1, 0x8

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    ushr-int/lit8 p1, p1, 0x8

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 114
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 75
    if-ne p0, p1, :cond_0

    move v2, v5

    .line 85
    :goto_0
    return v2

    .line 79
    :cond_0
    instance-of v2, p1, Landroid/net/DhcpServerConfiguration;

    if-nez v2, :cond_1

    move v2, v4

    .line 80
    goto :goto_0

    .line 83
    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/net/DhcpServerConfiguration;

    move-object v1, v0

    .line 85
    .local v1, testConfig:Landroid/net/DhcpServerConfiguration;
    iget-object v2, p0, Landroid/net/DhcpServerConfiguration;->localIp:Ljava/lang/String;

    if-nez v2, :cond_3

    iget-object v2, v1, Landroid/net/DhcpServerConfiguration;->localIp:Ljava/lang/String;

    if-nez v2, :cond_4

    :cond_2
    iget-object v2, p0, Landroid/net/DhcpServerConfiguration;->subnetmask:Ljava/lang/String;

    if-nez v2, :cond_5

    iget-object v2, v1, Landroid/net/DhcpServerConfiguration;->subnetmask:Ljava/lang/String;

    if-nez v2, :cond_4

    :goto_1
    iget-boolean v2, p0, Landroid/net/DhcpServerConfiguration;->dhcpEnable:Z

    iget-boolean v3, v1, Landroid/net/DhcpServerConfiguration;->dhcpEnable:Z

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Landroid/net/DhcpServerConfiguration;->ipRangeStart:Ljava/lang/String;

    if-nez v2, :cond_6

    iget-object v2, v1, Landroid/net/DhcpServerConfiguration;->ipRangeStart:Ljava/lang/String;

    if-nez v2, :cond_4

    :goto_2
    iget-object v2, p0, Landroid/net/DhcpServerConfiguration;->ipRangeEnd:Ljava/lang/String;

    if-nez v2, :cond_7

    iget-object v2, v1, Landroid/net/DhcpServerConfiguration;->ipRangeEnd:Ljava/lang/String;

    if-nez v2, :cond_4

    :goto_3
    iget v2, p0, Landroid/net/DhcpServerConfiguration;->leaseTime:I

    iget v3, v1, Landroid/net/DhcpServerConfiguration;->leaseTime:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Landroid/net/DhcpServerConfiguration;->maxClient:I

    iget v3, v1, Landroid/net/DhcpServerConfiguration;->maxClient:I

    if-ne v2, v3, :cond_4

    move v2, v5

    goto :goto_0

    :cond_3
    iget-object v2, p0, Landroid/net/DhcpServerConfiguration;->localIp:Ljava/lang/String;

    iget-object v3, v1, Landroid/net/DhcpServerConfiguration;->localIp:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_4
    move v2, v4

    goto :goto_0

    :cond_5
    iget-object v2, p0, Landroid/net/DhcpServerConfiguration;->subnetmask:Ljava/lang/String;

    iget-object v3, v1, Landroid/net/DhcpServerConfiguration;->subnetmask:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_6
    iget-object v2, p0, Landroid/net/DhcpServerConfiguration;->ipRangeStart:Ljava/lang/String;

    iget-object v3, v1, Landroid/net/DhcpServerConfiguration;->ipRangeStart:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_7
    iget-object v2, p0, Landroid/net/DhcpServerConfiguration;->ipRangeEnd:Ljava/lang/String;

    iget-object v3, v1, Landroid/net/DhcpServerConfiguration;->ipRangeEnd:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const-string v3, " "

    .line 98
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 99
    .local v0, sbuf:Ljava/lang/StringBuffer;
    iget-object v1, p0, Landroid/net/DhcpServerConfiguration;->localIp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    iget-object v1, p0, Landroid/net/DhcpServerConfiguration;->subnetmask:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    iget-boolean v1, p0, Landroid/net/DhcpServerConfiguration;->dhcpEnable:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    iget-object v1, p0, Landroid/net/DhcpServerConfiguration;->ipRangeStart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    iget-object v1, p0, Landroid/net/DhcpServerConfiguration;->ipRangeEnd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    iget v1, p0, Landroid/net/DhcpServerConfiguration;->leaseTime:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "m "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    iget v1, p0, Landroid/net/DhcpServerConfiguration;->maxClient:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 101
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    const-string v3, "DhcpServerConfiguration"

    .line 131
    iget-object v0, p0, Landroid/net/DhcpServerConfiguration;->localIp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Landroid/net/DhcpServerConfiguration;->subnetmask:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Landroid/net/DhcpServerConfiguration;->dhcpEnable:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 134
    iget-object v0, p0, Landroid/net/DhcpServerConfiguration;->ipRangeStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Landroid/net/DhcpServerConfiguration;->ipRangeEnd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    iget v0, p0, Landroid/net/DhcpServerConfiguration;->leaseTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    iget v0, p0, Landroid/net/DhcpServerConfiguration;->maxClient:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    const-string v0, "DhcpServerConfiguration"

    const-string/jumbo v0, "writeToParcel"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const-string v0, "DhcpServerConfiguration"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "localIp  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/DhcpServerConfiguration;->localIp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const-string v0, "DhcpServerConfiguration"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "subnetmask  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/DhcpServerConfiguration;->subnetmask:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const-string v0, "DhcpServerConfiguration"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dhcpEnable  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/DhcpServerConfiguration;->dhcpEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const-string v0, "DhcpServerConfiguration"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ipRangeStart  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/DhcpServerConfiguration;->ipRangeStart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const-string v0, "DhcpServerConfiguration"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ipRangeEnd  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/DhcpServerConfiguration;->ipRangeEnd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const-string v0, "DhcpServerConfiguration"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "leaseTime  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/DhcpServerConfiguration;->leaseTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const-string v0, "DhcpServerConfiguration"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "maxClient  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/DhcpServerConfiguration;->maxClient:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-void
.end method
