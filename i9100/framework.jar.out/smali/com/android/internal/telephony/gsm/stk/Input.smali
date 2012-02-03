.class public Lcom/android/internal/telephony/gsm/stk/Input;
.super Ljava/lang/Object;
.source "Input.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/Input;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public defaultText:Ljava/lang/String;

.field public digitOnly:Z

.field public echo:Z

.field public helpAvailable:Z

.field public icon:Landroid/graphics/Bitmap;

.field public maxLen:I

.field public minLen:I

.field public packed:Z

.field public text:Ljava/lang/String;

.field public ucs2:Z

.field public yesNo:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/Input$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/stk/Input$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/Input;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/Input;->text:Ljava/lang/String;

    .line 42
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/Input;->defaultText:Ljava/lang/String;

    .line 43
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/Input;->icon:Landroid/graphics/Bitmap;

    .line 44
    iput v1, p0, Lcom/android/internal/telephony/gsm/stk/Input;->minLen:I

    .line 45
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/stk/Input;->maxLen:I

    .line 46
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/stk/Input;->ucs2:Z

    .line 47
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/stk/Input;->packed:Z

    .line 48
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/stk/Input;->digitOnly:Z

    .line 49
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/stk/Input;->echo:Z

    .line 50
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/stk/Input;->yesNo:Z

    .line 51
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/stk/Input;->helpAvailable:Z

    .line 52
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/Input;->text:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/Input;->defaultText:Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/Input;->icon:Landroid/graphics/Bitmap;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/stk/Input;->minLen:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/stk/Input;->maxLen:I

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/Input;->ucs2:Z

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/Input;->packed:Z

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/Input;->digitOnly:Z

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/Input;->echo:Z

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/Input;->yesNo:Z

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_5

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/Input;->helpAvailable:Z

    .line 66
    return-void

    :cond_0
    move v0, v2

    .line 60
    goto :goto_0

    :cond_1
    move v0, v2

    .line 61
    goto :goto_1

    :cond_2
    move v0, v2

    .line 62
    goto :goto_2

    :cond_3
    move v0, v2

    .line 63
    goto :goto_3

    :cond_4
    move v0, v2

    .line 64
    goto :goto_4

    :cond_5
    move v0, v2

    .line 65
    goto :goto_5
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/internal/telephony/gsm/stk/Input$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/Input;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method setIcon(Landroid/graphics/Bitmap;)Z
    .locals 1
    .parameter "Icon"

    .prologue
    .line 96
    const/4 v0, 0x1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 73
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/Input;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/Input;->defaultText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/Input;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 76
    iget v0, p0, Lcom/android/internal/telephony/gsm/stk/Input;->minLen:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget v0, p0, Lcom/android/internal/telephony/gsm/stk/Input;->maxLen:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/Input;->ucs2:Z

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/Input;->packed:Z

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/Input;->digitOnly:Z

    if-eqz v0, :cond_2

    move v0, v2

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/Input;->echo:Z

    if-eqz v0, :cond_3

    move v0, v2

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/Input;->yesNo:Z

    if-eqz v0, :cond_4

    move v0, v2

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/Input;->helpAvailable:Z

    if-eqz v0, :cond_5

    move v0, v2

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    return-void

    :cond_0
    move v0, v1

    .line 78
    goto :goto_0

    :cond_1
    move v0, v1

    .line 79
    goto :goto_1

    :cond_2
    move v0, v1

    .line 80
    goto :goto_2

    :cond_3
    move v0, v1

    .line 81
    goto :goto_3

    :cond_4
    move v0, v1

    .line 82
    goto :goto_4

    :cond_5
    move v0, v1

    .line 83
    goto :goto_5
.end method
