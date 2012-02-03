.class public Lcom/android/internal/telephony/UsimPhonebookCapaInfo;
.super Ljava/lang/Object;
.source "UsimPhonebookCapaInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/UsimPhonebookCapaInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final ENTRY_LENGTH:I = 0x2

.field public static final FIELD_3GPP_ANR:I = 0x3

.field public static final FIELD_3GPP_ANRA:I = 0x8

.field public static final FIELD_3GPP_ANRB:I = 0x9

.field public static final FIELD_3GPP_ANRC:I = 0xa

.field public static final FIELD_3GPP_EMAIL:I = 0x4

.field public static final FIELD_3GPP_EMAILA:I = 0xb

.field public static final FIELD_3GPP_EMAILB:I = 0xc

.field public static final FIELD_3GPP_EMAILC:I = 0xd

.field public static final FIELD_3GPP_GRP:I = 0x6

.field public static final FIELD_3GPP_NAME:I = 0x1

.field public static final FIELD_3GPP_NUMBER:I = 0x2

.field public static final FIELD_3GPP_PBC:I = 0x7

.field public static final FIELD_3GPP_SNE:I = 0x5

.field public static final FIELD_TYPE_TAG:I = 0x0

.field static final MAX_3GPP_FIELD:I = 0xd

.field public static final MAX_DATA_LENGTH:I = 0x4

.field public static final MAX_INDEX:I = 0x1

.field public static final USED_RECORD:I = 0x3


# instance fields
.field private mFieldTypeInfo:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/android/internal/telephony/UsimPhonebookCapaInfo$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/16 v0, 0x34

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->mFieldTypeInfo:[I

    .line 76
    return-void
.end method

.method public constructor <init>([I)V
    .locals 0
    .parameter "data"

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->mFieldTypeInfo:[I

    .line 80
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public getFieldInfo(II)I
    .locals 3
    .parameter "fieldType"
    .parameter "fieldInfo"

    .prologue
    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, i:I
    :goto_0
    const/16 v1, 0x34

    if-ge v0, v1, :cond_1

    .line 85
    iget-object v1, p0, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->mFieldTypeInfo:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->mFieldTypeInfo:[I

    add-int v2, v0, p2

    aget v1, v1, v2

    .line 89
    :goto_1
    return v1

    .line 84
    :cond_0
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 89
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->mFieldTypeInfo:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 68
    return-void
.end method
