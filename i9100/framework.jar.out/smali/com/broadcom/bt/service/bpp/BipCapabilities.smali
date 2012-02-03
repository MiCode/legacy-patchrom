.class public Lcom/broadcom/bt/service/bpp/BipCapabilities;
.super Ljava/lang/Object;
.source "BipCapabilities.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/broadcom/bt/service/bpp/BipCapabilities;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public AttachmentFormat:[Lcom/broadcom/bt/service/bpp/BipAttachmentFormat;

.field public Dpof:Lcom/broadcom/bt/service/bpp/DpofOptions;

.field public FilterCapability:Z

.field public Formats:[Lcom/broadcom/bt/service/bpp/BipParameters;

.field public Preferred:Lcom/broadcom/bt/service/bpp/BipParameters;

.field public Pres:B

.field private boolArray:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/broadcom/bt/service/bpp/BipCapabilities$1;

    invoke-direct {v0}, Lcom/broadcom/bt/service/bpp/BipCapabilities$1;-><init>()V

    sput-object v0, Lcom/broadcom/bt/service/bpp/BipCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x1

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/broadcom/bt/service/bpp/BipCapabilities;->boolArray:[Z

    .line 68
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x1

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/broadcom/bt/service/bpp/BipCapabilities;->boolArray:[Z

    .line 100
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/bpp/BipCapabilities;->readFromParcel(Landroid/os/Parcel;)V

    .line 101
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/broadcom/bt/service/bpp/BipCapabilities$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/bpp/BipCapabilities;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/broadcom/bt/service/bpp/BipParameters;[Lcom/broadcom/bt/service/bpp/BipParameters;[Lcom/broadcom/bt/service/bpp/BipAttachmentFormat;ZBLcom/broadcom/bt/service/bpp/DpofOptions;)V
    .locals 1
    .parameter "preferred"
    .parameter "formats"
    .parameter "attachmentFormat"
    .parameter "filterCapability"
    .parameter "pres"
    .parameter "dpof"

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x1

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/broadcom/bt/service/bpp/BipCapabilities;->boolArray:[Z

    .line 86
    iput-object p1, p0, Lcom/broadcom/bt/service/bpp/BipCapabilities;->Preferred:Lcom/broadcom/bt/service/bpp/BipParameters;

    .line 87
    iput-object p2, p0, Lcom/broadcom/bt/service/bpp/BipCapabilities;->Formats:[Lcom/broadcom/bt/service/bpp/BipParameters;

    .line 88
    iput-object p3, p0, Lcom/broadcom/bt/service/bpp/BipCapabilities;->AttachmentFormat:[Lcom/broadcom/bt/service/bpp/BipAttachmentFormat;

    .line 89
    iput-boolean p4, p0, Lcom/broadcom/bt/service/bpp/BipCapabilities;->FilterCapability:Z

    .line 90
    iput-byte p5, p0, Lcom/broadcom/bt/service/bpp/BipCapabilities;->Pres:B

    .line 91
    iput-object p6, p0, Lcom/broadcom/bt/service/bpp/BipCapabilities;->Dpof:Lcom/broadcom/bt/service/bpp/DpofOptions;

    .line 92
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 5
    .parameter "in"

    .prologue
    const/4 v4, 0x0

    .line 125
    const/4 v0, 0x0

    .line 127
    .local v0, i:I
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/broadcom/bt/service/bpp/BipParameters;

    iput-object v2, p0, Lcom/broadcom/bt/service/bpp/BipCapabilities;->Preferred:Lcom/broadcom/bt/service/bpp/BipParameters;

    .line 130
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v1

    .line 131
    .local v1, tempParcelArray:[Landroid/os/Parcelable;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 132
    array-length v2, v1

    new-array v2, v2, [Lcom/broadcom/bt/service/bpp/BipParameters;

    iput-object v2, p0, Lcom/broadcom/bt/service/bpp/BipCapabilities;->Formats:[Lcom/broadcom/bt/service/bpp/BipParameters;

    .line 133
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 134
    iget-object v3, p0, Lcom/broadcom/bt/service/bpp/BipCapabilities;->Formats:[Lcom/broadcom/bt/service/bpp/BipParameters;

    aget-object v2, v1, v0

    check-cast v2, Lcom/broadcom/bt/service/bpp/BipParameters;

    aput-object v2, v3, v0

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    :cond_0
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v1

    .line 140
    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    .line 141
    array-length v2, v1

    new-array v2, v2, [Lcom/broadcom/bt/service/bpp/BipAttachmentFormat;

    iput-object v2, p0, Lcom/broadcom/bt/service/bpp/BipCapabilities;->AttachmentFormat:[Lcom/broadcom/bt/service/bpp/BipAttachmentFormat;

    .line 142
    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 143
    iget-object v3, p0, Lcom/broadcom/bt/service/bpp/BipCapabilities;->AttachmentFormat:[Lcom/broadcom/bt/service/bpp/BipAttachmentFormat;

    aget-object v2, v1, v0

    check-cast v2, Lcom/broadcom/bt/service/bpp/BipAttachmentFormat;

    aput-object v2, v3, v0

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 147
    :cond_1
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/broadcom/bt/service/bpp/DpofOptions;

    iput-object v2, p0, Lcom/broadcom/bt/service/bpp/BipCapabilities;->Dpof:Lcom/broadcom/bt/service/bpp/DpofOptions;

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Lcom/broadcom/bt/service/bpp/BipCapabilities;->Pres:B

    .line 149
    iget-object v2, p0, Lcom/broadcom/bt/service/bpp/BipCapabilities;->boolArray:[Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 150
    iget-object v2, p0, Lcom/broadcom/bt/service/bpp/BipCapabilities;->boolArray:[Z

    const/4 v3, 0x0

    aget-boolean v2, v2, v3

    iput-boolean v2, p0, Lcom/broadcom/bt/service/bpp/BipCapabilities;->FilterCapability:Z

    .line 151
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BipCapabilities;->Preferred:Lcom/broadcom/bt/service/bpp/BipParameters;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 110
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BipCapabilities;->Formats:[Lcom/broadcom/bt/service/bpp/BipParameters;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 111
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BipCapabilities;->AttachmentFormat:[Lcom/broadcom/bt/service/bpp/BipAttachmentFormat;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 112
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BipCapabilities;->Dpof:Lcom/broadcom/bt/service/bpp/DpofOptions;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 113
    iget-byte v0, p0, Lcom/broadcom/bt/service/bpp/BipCapabilities;->Pres:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 114
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BipCapabilities;->boolArray:[Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/broadcom/bt/service/bpp/BipCapabilities;->FilterCapability:Z

    aput-boolean v2, v0, v1

    .line 115
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BipCapabilities;->boolArray:[Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 116
    return-void
.end method
