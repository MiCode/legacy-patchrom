.class public Lcom/android/internal/atfwd/AtCmd;
.super Ljava/lang/Object;
.source "AtCmd.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final AT_OPCODE_AR:I = 0x8

.field public static final AT_OPCODE_EQ:I = 0x2

.field public static final AT_OPCODE_NA:I = 0x1

.field public static final AT_OPCODE_QU:I = 0x4

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/atfwd/AtCmd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mName:Ljava/lang/String;

.field private mOpcode:I

.field private mTokens:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    new-instance v0, Lcom/android/internal/atfwd/AtCmd$1;

    invoke-direct {v0}, Lcom/android/internal/atfwd/AtCmd$1;-><init>()V

    sput-object v0, Lcom/android/internal/atfwd/AtCmd;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter "opcode"
    .parameter "name"
    .parameter "tokens"

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/atfwd/AtCmd;->init(ILjava/lang/String;[Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "source"

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 77
    .local v1, opcode:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, name:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, tokens:[Ljava/lang/String;
    invoke-direct {p0, v1, v0, v2}, Lcom/android/internal/atfwd/AtCmd;->init(ILjava/lang/String;[Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/internal/atfwd/AtCmd$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/internal/atfwd/AtCmd;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private init(ILjava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter "opcode"
    .parameter "name"
    .parameter "tokens"

    .prologue
    .line 83
    iput p1, p0, Lcom/android/internal/atfwd/AtCmd;->mOpcode:I

    .line 84
    iput-object p2, p0, Lcom/android/internal/atfwd/AtCmd;->mName:Ljava/lang/String;

    .line 85
    iput-object p3, p0, Lcom/android/internal/atfwd/AtCmd;->mTokens:[Ljava/lang/String;

    .line 86
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/internal/atfwd/AtCmd;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getOpcode()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/android/internal/atfwd/AtCmd;->mOpcode:I

    return v0
.end method

.method public getTokens()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/atfwd/AtCmd;->mTokens:[Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "mName"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/internal/atfwd/AtCmd;->mName:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setOpcode(I)V
    .locals 0
    .parameter "mOpcode"

    .prologue
    .line 51
    iput p1, p0, Lcom/android/internal/atfwd/AtCmd;->mOpcode:I

    .line 52
    return-void
.end method

.method public setTokens([Ljava/lang/String;)V
    .locals 0
    .parameter "mTokens"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/internal/atfwd/AtCmd;->mTokens:[Ljava/lang/String;

    .line 68
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 100
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AtCmd { opcode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/atfwd/AtCmd;->mOpcode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/atfwd/AtCmd;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mTokens = {"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 101
    .local v3, ret:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/atfwd/AtCmd;->mTokens:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 102
    .local v4, token:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104
    .end local v4           #token:Ljava/lang/String;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 105
    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 94
    iget v0, p0, Lcom/android/internal/atfwd/AtCmd;->mOpcode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget-object v0, p0, Lcom/android/internal/atfwd/AtCmd;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/android/internal/atfwd/AtCmd;->mTokens:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 97
    return-void
.end method
