.class public Lcom/broadcom/bt/service/bpp/BppAttributes;
.super Ljava/lang/Object;
.source "BppAttributes.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/broadcom/bt/service/bpp/BppAttributes;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public BppStatus:I

.field public BtpHeight:I

.field public BtpWidth:I

.field public CharRepresentations:[B

.field public ColorSupported:Z

.field public Id1284Info:[B

.field public MaxCopies:I

.field public MaxPages:I

.field public Media:[Lcom/broadcom/bt/service/bpp/LoadedMedia;

.field public MediaTypesMask:[I

.field public NumMediaLoaded:I

.field public OrientationMask:I

.field public PrinterLocation:Ljava/lang/String;

.field public PrinterName:Ljava/lang/String;

.field public PrinterStatus:I

.field public QualityMask:I

.field public QueuedJobs:I

.field public Reason:I

.field public SidesMask:I

.field public State:I

.field public SupportedDocumentFormats:[Ljava/lang/String;

.field public SupportedImageFormats:[Ljava/lang/String;

.field public SupportedMediaSizes:[Ljava/lang/String;

.field private boolArray:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lcom/broadcom/bt/service/bpp/BppAttributes$1;

    invoke-direct {v0}, Lcom/broadcom/bt/service/bpp/BppAttributes$1;-><init>()V

    sput-object v0, Lcom/broadcom/bt/service/bpp/BppAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x1

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->boolArray:[Z

    .line 97
    return-void
.end method

.method public constructor <init>(IIIIIIII[I[B[BLjava/lang/String;Ljava/lang/String;[Lcom/broadcom/bt/service/bpp/LoadedMedia;IIIIIZ[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .parameter "printerStatus"
    .parameter "bppStatus"
    .parameter "maxCopies"
    .parameter "maxPages"
    .parameter "queuedJobs"
    .parameter "btpWidth"
    .parameter "btpHeight"
    .parameter "numMediaLoaded"
    .parameter "mediaTypesMask"
    .parameter "charRepresentations"
    .parameter "id1284Info"
    .parameter "printerName"
    .parameter "printerLocation"
    .parameter "media"
    .parameter "state"
    .parameter "reason"
    .parameter "sidesMask"
    .parameter "qualityMask"
    .parameter "orientationMask"
    .parameter "colorSupported"
    .parameter "supportedDocumentFormats"
    .parameter "supportedMediaSizes"
    .parameter "supportedImageFormats"

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v2, 0x1

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->boolArray:[Z

    .line 149
    iput p1, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->PrinterStatus:I

    .line 150
    iput p2, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->BppStatus:I

    .line 151
    iput p3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->MaxCopies:I

    .line 152
    iput p4, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->MaxPages:I

    .line 153
    iput p5, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->QueuedJobs:I

    .line 154
    iput p6, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->BtpWidth:I

    .line 155
    iput p7, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->BtpHeight:I

    .line 156
    iput p8, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->NumMediaLoaded:I

    .line 157
    iput-object p9, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->MediaTypesMask:[I

    .line 158
    iput-object p10, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->CharRepresentations:[B

    .line 159
    iput-object p11, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->Id1284Info:[B

    .line 160
    iput-object p12, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->PrinterName:Ljava/lang/String;

    .line 161
    move-object/from16 v0, p13

    move-object v1, p0

    iput-object v0, v1, Lcom/broadcom/bt/service/bpp/BppAttributes;->PrinterLocation:Ljava/lang/String;

    .line 162
    move-object/from16 v0, p14

    move-object v1, p0

    iput-object v0, v1, Lcom/broadcom/bt/service/bpp/BppAttributes;->Media:[Lcom/broadcom/bt/service/bpp/LoadedMedia;

    .line 163
    move/from16 v0, p15

    move-object v1, p0

    iput v0, v1, Lcom/broadcom/bt/service/bpp/BppAttributes;->State:I

    .line 164
    move/from16 v0, p16

    move-object v1, p0

    iput v0, v1, Lcom/broadcom/bt/service/bpp/BppAttributes;->Reason:I

    .line 165
    move/from16 v0, p17

    move-object v1, p0

    iput v0, v1, Lcom/broadcom/bt/service/bpp/BppAttributes;->SidesMask:I

    .line 166
    move/from16 v0, p18

    move-object v1, p0

    iput v0, v1, Lcom/broadcom/bt/service/bpp/BppAttributes;->QualityMask:I

    .line 167
    move/from16 v0, p19

    move-object v1, p0

    iput v0, v1, Lcom/broadcom/bt/service/bpp/BppAttributes;->OrientationMask:I

    .line 168
    move/from16 v0, p20

    move-object v1, p0

    iput-boolean v0, v1, Lcom/broadcom/bt/service/bpp/BppAttributes;->ColorSupported:Z

    .line 169
    move-object/from16 v0, p21

    move-object v1, p0

    iput-object v0, v1, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedDocumentFormats:[Ljava/lang/String;

    .line 170
    move-object/from16 v0, p22

    move-object v1, p0

    iput-object v0, v1, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedMediaSizes:[Ljava/lang/String;

    .line 171
    move-object/from16 v0, p23

    move-object v1, p0

    iput-object v0, v1, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedImageFormats:[Ljava/lang/String;

    .line 172
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x1

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->boolArray:[Z

    .line 180
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/bpp/BppAttributes;->readFromParcel(Landroid/os/Parcel;)V

    .line 181
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/broadcom/bt/service/bpp/BppAttributes$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/bpp/BppAttributes;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 5
    .parameter "in"

    .prologue
    .line 244
    const/4 v0, 0x0

    .line 247
    .local v0, i:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->PrinterStatus:I

    .line 248
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->BppStatus:I

    .line 249
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->MaxCopies:I

    .line 250
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->MaxPages:I

    .line 251
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->QueuedJobs:I

    .line 252
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->BtpWidth:I

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->BtpHeight:I

    .line 254
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->NumMediaLoaded:I

    .line 256
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 257
    .local v2, tempSize:I
    if-lez v2, :cond_0

    .line 258
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->MediaTypesMask:[I

    .line 259
    iget-object v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->MediaTypesMask:[I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readIntArray([I)V

    .line 265
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->PrinterName:Ljava/lang/String;

    .line 266
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->PrinterLocation:Ljava/lang/String;

    .line 267
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v1

    .line 268
    .local v1, tempParcelArray:[Landroid/os/Parcelable;
    if-eqz v1, :cond_1

    array-length v3, v1

    if-lez v3, :cond_1

    .line 269
    array-length v3, v1

    new-array v3, v3, [Lcom/broadcom/bt/service/bpp/LoadedMedia;

    iput-object v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->Media:[Lcom/broadcom/bt/service/bpp/LoadedMedia;

    .line 270
    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 271
    iget-object v4, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->Media:[Lcom/broadcom/bt/service/bpp/LoadedMedia;

    aget-object v3, v1, v0

    check-cast v3, Lcom/broadcom/bt/service/bpp/LoadedMedia;

    aput-object v3, v4, v0

    .line 270
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 274
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->State:I

    .line 275
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->Reason:I

    .line 276
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SidesMask:I

    .line 277
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->QualityMask:I

    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->OrientationMask:I

    .line 279
    iget-object v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->boolArray:[Z

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 280
    iget-object v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->boolArray:[Z

    const/4 v4, 0x0

    aget-boolean v3, v3, v4

    iput-boolean v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->ColorSupported:Z

    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 282
    if-lez v2, :cond_2

    .line 283
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedDocumentFormats:[Ljava/lang/String;

    .line 284
    iget-object v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedDocumentFormats:[Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 286
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 287
    if-lez v2, :cond_3

    .line 288
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedMediaSizes:[Ljava/lang/String;

    .line 289
    iget-object v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedMediaSizes:[Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 291
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 292
    if-lez v2, :cond_4

    .line 293
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedImageFormats:[Ljava/lang/String;

    .line 294
    iget-object v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedImageFormats:[Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 296
    :cond_4
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "out"
    .parameter "flags"

    .prologue
    const/4 v2, 0x0

    .line 188
    iget v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->PrinterStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    iget v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->BppStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    iget v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->MaxCopies:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    iget v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->MaxPages:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    iget v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->QueuedJobs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    iget v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->BtpWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    iget v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->BtpHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    iget v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->NumMediaLoaded:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->MediaTypesMask:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->MediaTypesMask:[I

    array-length v0, v0

    if-lez v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->MediaTypesMask:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->MediaTypesMask:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 206
    :goto_0
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->PrinterName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->PrinterLocation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->Media:[Lcom/broadcom/bt/service/bpp/LoadedMedia;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 209
    iget v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->State:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    iget v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->Reason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    iget v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SidesMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    iget v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->QualityMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    iget v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->OrientationMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->boolArray:[Z

    iget-boolean v1, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->ColorSupported:Z

    aput-boolean v1, v0, v2

    .line 215
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->boolArray:[Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 216
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedDocumentFormats:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedDocumentFormats:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedDocumentFormats:[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedDocumentFormats:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 222
    :goto_1
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedMediaSizes:[Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedMediaSizes:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 223
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedMediaSizes:[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 224
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedMediaSizes:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 228
    :goto_2
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedImageFormats:[Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedImageFormats:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 229
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedImageFormats:[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedImageFormats:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 234
    :goto_3
    return-void

    .line 201
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 220
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 226
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 232
    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3
.end method
