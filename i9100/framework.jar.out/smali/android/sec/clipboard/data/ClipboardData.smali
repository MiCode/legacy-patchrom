.class public abstract Landroid/sec/clipboard/data/ClipboardData;
.super Ljava/lang/Object;
.source "ClipboardData.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/sec/clipboard/data/ClipboardData;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final LOG_LEN:I

.field protected mFormatID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 172
    new-instance v0, Landroid/sec/clipboard/data/ClipboardData$1;

    invoke-direct {v0}, Landroid/sec/clipboard/data/ClipboardData$1;-><init>()V

    sput-object v0, Landroid/sec/clipboard/data/ClipboardData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "format"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/16 v0, 0x14

    iput v0, p0, Landroid/sec/clipboard/data/ClipboardData;->LOG_LEN:I

    .line 64
    iput p1, p0, Landroid/sec/clipboard/data/ClipboardData;->mFormatID:I

    .line 65
    return-void
.end method


# virtual methods
.method public GetAlternateFormat(I)Landroid/sec/clipboard/data/ClipboardData;
    .locals 4
    .parameter "format"

    .prologue
    .line 81
    invoke-static {p1}, Landroid/sec/clipboard/data/ClipboardDataFactory;->CreateClipBoardData(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    .line 83
    .local v0, Result:Landroid/sec/clipboard/data/ClipboardData;
    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {p0, p1, v0}, Landroid/sec/clipboard/data/ClipboardData;->SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    const/4 v0, 0x0

    .line 93
    :cond_0
    :goto_0
    return-object v0

    .line 88
    :cond_1
    const-string v1, "ClipboardServiceEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClipBoardDataFactory.CreateClipBoardData(format) -> result == null, format == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public GetFomat()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Landroid/sec/clipboard/data/ClipboardData;->mFormatID:I

    return v0
.end method

.method public IsAlternateformatAvailable(I)Z
    .locals 3
    .parameter "format"

    .prologue
    .line 103
    const/4 v1, 0x0

    .line 104
    .local v1, isformat:Z
    iget v2, p0, Landroid/sec/clipboard/data/ClipboardData;->mFormatID:I

    if-ne v2, p1, :cond_0

    .line 105
    const/4 v2, 0x1

    .line 112
    :goto_0
    return v2

    .line 107
    :cond_0
    invoke-static {p1}, Landroid/sec/clipboard/data/ClipboardDataFactory;->CreateClipBoardData(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    .line 110
    .local v0, altData:Landroid/sec/clipboard/data/ClipboardData;
    invoke-virtual {p0, p1, v0}, Landroid/sec/clipboard/data/ClipboardData;->SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v1

    move v2, v1

    .line 112
    goto :goto_0
.end method

.method public SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .locals 1
    .parameter "format"
    .parameter "altData"

    .prologue
    .line 123
    if-nez p2, :cond_0

    .line 124
    const/4 v0, 0x0

    .line 126
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public abstract clearData()V
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    .line 146
    const/4 v1, 0x0

    .line 148
    .local v1, Result:Z
    if-eqz p1, :cond_0

    .line 149
    instance-of v3, p1, Landroid/sec/clipboard/data/ClipboardData;

    if-eqz v3, :cond_2

    .line 150
    move-object v0, p1

    check-cast v0, Landroid/sec/clipboard/data/ClipboardData;

    move-object v2, v0

    .line 151
    .local v2, trgData:Landroid/sec/clipboard/data/ClipboardData;
    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v3

    invoke-virtual {p0}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v4

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    move v1, v3

    .line 155
    .end local v2           #trgData:Landroid/sec/clipboard/data/ClipboardData;
    :cond_0
    :goto_0
    return v1

    .line 151
    .restart local v2       #trgData:Landroid/sec/clipboard/data/ClipboardData;
    :cond_1
    const/4 v3, 0x0

    move v1, v3

    goto :goto_0

    .line 153
    .end local v2           #trgData:Landroid/sec/clipboard/data/ClipboardData;
    :cond_2
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method protected abstract readFormSource(Landroid/os/Parcel;)V
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 141
    iget v0, p0, Landroid/sec/clipboard/data/ClipboardData;->mFormatID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    return-void
.end method
