.class public Lcom/vzw/location/VzwCriteria;
.super Landroid/location/Criteria;
.source "VzwCriteria.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ACCURACY_OPTIMAL:I = 0x6

.field public static final AFLT:I = 0x4

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vzw/location/VzwCriteria;",
            ">;"
        }
    .end annotation
.end field

.field public static final DATA_OPTIMAL:I = 0x7

.field public static final FIX_PRIORITY:[I = null

.field public static final MS_ASSISTED:I = 0x1

.field public static final MS_BASED:I = 0x2

.field public static final SPEED_OPTIMAL:I = 0x5

.field public static final STANDALONE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "VzwCriteria"


# instance fields
.field private mAssistanceHost:Ljava/net/InetAddress;

.field private mAssistancePort:I

.field private mFixMode:I

.field private mFixRate:Lcom/vzw/location/VzwGpsFixRate;

.field private mPerformance:Lcom/vzw/location/VzwGpsPerformance;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/vzw/location/VzwCriteria;->FIX_PRIORITY:[I

    new-instance v0, Lcom/vzw/location/VzwCriteria$1;

    invoke-direct {v0}, Lcom/vzw/location/VzwCriteria$1;-><init>()V

    sput-object v0, Lcom/vzw/location/VzwCriteria;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/location/Criteria;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/vzw/location/VzwCriteria;->mFixMode:I

    new-instance v0, Lcom/vzw/location/VzwGpsFixRate;

    invoke-direct {v0}, Lcom/vzw/location/VzwGpsFixRate;-><init>()V

    iput-object v0, p0, Lcom/vzw/location/VzwCriteria;->mFixRate:Lcom/vzw/location/VzwGpsFixRate;

    new-instance v0, Lcom/vzw/location/VzwGpsPerformance;

    invoke-direct {v0}, Lcom/vzw/location/VzwGpsPerformance;-><init>()V

    iput-object v0, p0, Lcom/vzw/location/VzwCriteria;->mPerformance:Lcom/vzw/location/VzwGpsPerformance;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vzw/location/VzwCriteria;->mAssistanceHost:Ljava/net/InetAddress;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    sget-object v0, Landroid/location/Criteria;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Criteria;

    invoke-direct {p0, v0}, Landroid/location/Criteria;-><init>(Landroid/location/Criteria;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwCriteria;->mFixMode:I

    const-class v0, Lcom/vzw/location/VzwGpsFixRate;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vzw/location/VzwGpsFixRate;

    iput-object v0, p0, Lcom/vzw/location/VzwCriteria;->mFixRate:Lcom/vzw/location/VzwGpsFixRate;

    const-class v0, Lcom/vzw/location/VzwGpsPerformance;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vzw/location/VzwGpsPerformance;

    iput-object v0, p0, Lcom/vzw/location/VzwCriteria;->mPerformance:Lcom/vzw/location/VzwGpsPerformance;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/vzw/location/VzwCriteria$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/vzw/location/VzwCriteria;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/vzw/location/VzwCriteria;)V
    .locals 2
    .parameter "crit"

    .prologue
    invoke-direct {p0}, Landroid/location/Criteria;-><init>()V

    invoke-virtual {p1}, Lcom/vzw/location/VzwCriteria;->getFixMode()I

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwCriteria;->mFixMode:I

    new-instance v0, Lcom/vzw/location/VzwGpsFixRate;

    invoke-virtual {p1}, Lcom/vzw/location/VzwCriteria;->getFixRate()Lcom/vzw/location/VzwGpsFixRate;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vzw/location/VzwGpsFixRate;-><init>(Lcom/vzw/location/VzwGpsFixRate;)V

    iput-object v0, p0, Lcom/vzw/location/VzwCriteria;->mFixRate:Lcom/vzw/location/VzwGpsFixRate;

    new-instance v0, Lcom/vzw/location/VzwGpsPerformance;

    invoke-virtual {p1}, Lcom/vzw/location/VzwCriteria;->getPerformance()Lcom/vzw/location/VzwGpsPerformance;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vzw/location/VzwGpsPerformance;-><init>(Lcom/vzw/location/VzwGpsPerformance;)V

    iput-object v0, p0, Lcom/vzw/location/VzwCriteria;->mPerformance:Lcom/vzw/location/VzwGpsPerformance;

    invoke-virtual {p1}, Lcom/vzw/location/VzwCriteria;->getAssistanceHost()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p1}, Lcom/vzw/location/VzwCriteria;->getAssistancePort()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/vzw/location/VzwCriteria;->setAssistanceHost(Ljava/net/InetAddress;I)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_0

    move v2, v4

    :goto_0
    return v2

    :cond_0
    if-ne p1, p0, :cond_1

    move v2, v5

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/vzw/location/VzwCriteria;

    move-object v1, v0

    .local v1, other:Lcom/vzw/location/VzwCriteria;
    iget v2, p0, Lcom/vzw/location/VzwCriteria;->mFixMode:I

    invoke-virtual {v1}, Lcom/vzw/location/VzwCriteria;->getFixMode()I

    move-result v3

    if-eq v2, v3, :cond_3

    move v2, v4

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/vzw/location/VzwCriteria;->mFixRate:Lcom/vzw/location/VzwGpsFixRate;

    if-nez v2, :cond_4

    invoke-virtual {v1}, Lcom/vzw/location/VzwCriteria;->getFixRate()Lcom/vzw/location/VzwGpsFixRate;

    move-result-object v2

    if-eqz v2, :cond_5

    move v2, v4

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/vzw/location/VzwCriteria;->mFixRate:Lcom/vzw/location/VzwGpsFixRate;

    invoke-virtual {v1}, Lcom/vzw/location/VzwCriteria;->getFixRate()Lcom/vzw/location/VzwGpsFixRate;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vzw/location/VzwGpsFixRate;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v2, v4

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/vzw/location/VzwCriteria;->mPerformance:Lcom/vzw/location/VzwGpsPerformance;

    if-nez v2, :cond_6

    invoke-virtual {v1}, Lcom/vzw/location/VzwCriteria;->getPerformance()Lcom/vzw/location/VzwGpsPerformance;

    move-result-object v2

    if-eqz v2, :cond_7

    move v2, v4

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/vzw/location/VzwCriteria;->mPerformance:Lcom/vzw/location/VzwGpsPerformance;

    invoke-virtual {v1}, Lcom/vzw/location/VzwCriteria;->getPerformance()Lcom/vzw/location/VzwGpsPerformance;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vzw/location/VzwGpsPerformance;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v2, v4

    goto :goto_0

    :cond_7
    move v2, v5

    goto :goto_0
.end method

.method getAssistanceHost()Ljava/net/InetAddress;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/vzw/location/VzwCriteria;->mAssistanceHost:Ljava/net/InetAddress;

    return-object v0
.end method

.method getAssistancePort()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/vzw/location/VzwCriteria;->mAssistancePort:I

    return v0
.end method

.method public getFixMode()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/vzw/location/VzwCriteria;->mFixMode:I

    return v0
.end method

.method public getFixRate()Lcom/vzw/location/VzwGpsFixRate;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/vzw/location/VzwCriteria;->mFixRate:Lcom/vzw/location/VzwGpsFixRate;

    return-object v0
.end method

.method public getPerformance()Lcom/vzw/location/VzwGpsPerformance;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/vzw/location/VzwCriteria;->mPerformance:Lcom/vzw/location/VzwGpsPerformance;

    return-object v0
.end method

.method public getPriority()I
    .locals 2

    .prologue
    sget-object v0, Lcom/vzw/location/VzwCriteria;->FIX_PRIORITY:[I

    iget v1, p0, Lcom/vzw/location/VzwCriteria;->mFixMode:I

    aget v0, v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .local v0, hash:I
    mul-int/lit8 v1, v0, 0x1f

    iget v1, p0, Lcom/vzw/location/VzwCriteria;->mFixMode:I

    add-int/lit8 v0, v1, 0x1f

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/vzw/location/VzwCriteria;->mFixRate:Lcom/vzw/location/VzwGpsFixRate;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/vzw/location/VzwCriteria;->mPerformance:Lcom/vzw/location/VzwGpsPerformance;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v1, v2

    return v0

    :cond_0
    iget-object v2, p0, Lcom/vzw/location/VzwCriteria;->mFixRate:Lcom/vzw/location/VzwGpsFixRate;

    invoke-virtual {v2}, Lcom/vzw/location/VzwGpsFixRate;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/vzw/location/VzwCriteria;->mPerformance:Lcom/vzw/location/VzwGpsPerformance;

    invoke-virtual {v2}, Lcom/vzw/location/VzwGpsPerformance;->hashCode()I

    move-result v2

    goto :goto_1
.end method

.method setAssistanceHost(Ljava/net/InetAddress;I)V
    .locals 0
    .parameter "assistanceHost"
    .parameter "assistancePort"

    .prologue
    iput-object p1, p0, Lcom/vzw/location/VzwCriteria;->mAssistanceHost:Ljava/net/InetAddress;

    iput p2, p0, Lcom/vzw/location/VzwCriteria;->mAssistancePort:I

    return-void
.end method

.method public setFixMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/vzw/location/VzwCriteria;->mFixMode:I

    :goto_0
    const-string v0, "VzwCriteria"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFixMode() mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mFixMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vzw/location/VzwCriteria;->mFixMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_1
    iput p1, p0, Lcom/vzw/location/VzwCriteria;->mFixMode:I

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    iput v0, p0, Lcom/vzw/location/VzwCriteria;->mFixMode:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setFixRate(Lcom/vzw/location/VzwGpsFixRate;)V
    .locals 0
    .parameter "fixRate"

    .prologue
    iput-object p1, p0, Lcom/vzw/location/VzwCriteria;->mFixRate:Lcom/vzw/location/VzwGpsFixRate;

    return-void
.end method

.method public setPerformance(Lcom/vzw/location/VzwGpsPerformance;)V
    .locals 0
    .parameter "performance"

    .prologue
    iput-object p1, p0, Lcom/vzw/location/VzwCriteria;->mPerformance:Lcom/vzw/location/VzwGpsPerformance;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    invoke-super {p0, p1, p2}, Landroid/location/Criteria;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Lcom/vzw/location/VzwCriteria;->mFixMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/vzw/location/VzwCriteria;->mFixRate:Lcom/vzw/location/VzwGpsFixRate;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/vzw/location/VzwCriteria;->mPerformance:Lcom/vzw/location/VzwGpsPerformance;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
