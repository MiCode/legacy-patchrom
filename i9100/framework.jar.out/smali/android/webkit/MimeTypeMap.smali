.class public Landroid/webkit/MimeTypeMap;
.super Ljava/lang/Object;
.source "MimeTypeMap.java"


# static fields
.field private static sMimeTypeMap:Landroid/webkit/MimeTypeMap;


# instance fields
.field private mExtensionToMimeTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMimeTypeToExtensionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/webkit/MimeTypeMap;->mMimeTypeToExtensionMap:Ljava/util/HashMap;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/webkit/MimeTypeMap;->mExtensionToMimeTypeMap:Ljava/util/HashMap;

    .line 48
    return-void
.end method

.method private static extensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "mimeType"

    .prologue
    .line 135
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "url"

    .prologue
    .line 58
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 59
    const/16 v4, 0x3f

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 60
    .local v3, query:I
    if-lez v3, :cond_0

    .line 61
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 63
    :cond_0
    const/16 v4, 0x2f

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 64
    .local v2, filenamePos:I
    if-ltz v2, :cond_1

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 69
    .local v1, filename:Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    const-string v4, "[a-zA-Z_0-9\\.\\-\\(\\)\\%]+"

    invoke-static {v4, v1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 71
    const/16 v4, 0x2e

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 72
    .local v0, dotPos:I
    if-ltz v0, :cond_2

    .line 73
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 78
    .end local v0           #dotPos:I
    .end local v1           #filename:Ljava/lang/String;
    .end local v2           #filenamePos:I
    .end local v3           #query:I
    :goto_1
    return-object v4

    .restart local v2       #filenamePos:I
    .restart local v3       #query:I
    :cond_1
    move-object v1, p0

    .line 64
    goto :goto_0

    .line 78
    .end local v2           #filenamePos:I
    .end local v3           #query:I
    :cond_2
    const-string v4, ""

    goto :goto_1
.end method

.method public static getSingleton()Landroid/webkit/MimeTypeMap;
    .locals 8

    .prologue
    const-string v7, "application/x-koan"

    const-string/jumbo v6, "text/plain"

    const-string v5, "audio/mpeg"

    const-string v4, "application/x-font"

    const-string v3, "application/x-maker"

    .line 173
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    if-nez v0, :cond_0

    .line 174
    new-instance v0, Landroid/webkit/MimeTypeMap;

    invoke-direct {v0}, Landroid/webkit/MimeTypeMap;-><init>()V

    sput-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    .line 191
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/andrew-inset"

    const-string v2, "ez"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/dsptype"

    const-string/jumbo v2, "tsp"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/futuresplash"

    const-string/jumbo v2, "spl"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/hta"

    const-string v2, "hta"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/mac-binhex40"

    const-string v2, "hqx"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/mac-compactpro"

    const-string v2, "cpt"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/mathematica"

    const-string/jumbo v2, "nb"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/msaccess"

    const-string/jumbo v2, "mdb"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/oda"

    const-string/jumbo v2, "oda"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/ogg"

    const-string/jumbo v2, "ogg"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/pdf"

    const-string/jumbo v2, "pdf"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/pgp-keys"

    const-string v2, "key"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/pgp-signature"

    const-string/jumbo v2, "pgp"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/pics-rules"

    const-string/jumbo v2, "prf"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/rar"

    const-string/jumbo v2, "rar"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/rdf+xml"

    const-string/jumbo v2, "rdf"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/rss+xml"

    const-string/jumbo v2, "rss"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/zip"

    const-string/jumbo v2, "zip"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/vnd.android.package-archive"

    const-string v2, "apk"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/vnd.cinderella"

    const-string v2, "cdy"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/vnd.ms-pki.stl"

    const-string/jumbo v2, "stl"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/vnd.oasis.opendocument.database"

    const-string/jumbo v2, "odb"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/vnd.oasis.opendocument.formula"

    const-string/jumbo v2, "odf"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/vnd.oasis.opendocument.graphics"

    const-string/jumbo v2, "odg"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/vnd.oasis.opendocument.graphics-template"

    const-string/jumbo v2, "otg"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/vnd.oasis.opendocument.image"

    const-string/jumbo v2, "odi"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/vnd.oasis.opendocument.spreadsheet"

    const-string/jumbo v2, "ods"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/vnd.oasis.opendocument.spreadsheet-template"

    const-string/jumbo v2, "ots"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/vnd.oasis.opendocument.text"

    const-string/jumbo v2, "odt"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/vnd.oasis.opendocument.text-master"

    const-string/jumbo v2, "odm"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/vnd.oasis.opendocument.text-template"

    const-string/jumbo v2, "ott"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/vnd.oasis.opendocument.text-web"

    const-string/jumbo v2, "oth"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/msword"

    const-string v2, "doc"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/msword"

    const-string v2, "dot"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    const-string v2, "docx"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/vnd.openxmlformats-officedocument.wordprocessingml.template"

    const-string v2, "dotx"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/vnd.ms-excel"

    const-string/jumbo v2, "xls"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/vnd.ms-excel"

    const-string/jumbo v2, "xlt"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    const-string/jumbo v2, "xlsx"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/vnd.openxmlformats-officedocument.spreadsheetml.template"

    const-string/jumbo v2, "xltx"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/vnd.ms-powerpoint"

    const-string/jumbo v2, "ppt"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/vnd.ms-powerpoint"

    const-string/jumbo v2, "pot"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/vnd.ms-powerpoint"

    const-string/jumbo v2, "pps"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    const-string/jumbo v2, "pptx"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/vnd.openxmlformats-officedocument.presentationml.template"

    const-string/jumbo v2, "potx"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/vnd.openxmlformats-officedocument.presentationml.slideshow"

    const-string/jumbo v2, "ppsx"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/vnd.rim.cod"

    const-string v2, "cod"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/vnd.smaf"

    const-string/jumbo v2, "mmf"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/vnd.stardivision.calc"

    const-string/jumbo v2, "sdc"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/vnd.stardivision.draw"

    const-string/jumbo v2, "sda"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/vnd.stardivision.impress"

    const-string/jumbo v2, "sdd"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/vnd.stardivision.impress"

    const-string/jumbo v2, "sdp"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/vnd.stardivision.math"

    const-string/jumbo v2, "smf"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/vnd.stardivision.writer"

    const-string/jumbo v2, "sdw"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/vnd.stardivision.writer"

    const-string/jumbo v2, "vor"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/vnd.stardivision.writer-global"

    const-string/jumbo v2, "sgl"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/vnd.sun.xml.calc"

    const-string/jumbo v2, "sxc"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/vnd.sun.xml.calc.template"

    const-string/jumbo v2, "stc"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/vnd.sun.xml.draw"

    const-string/jumbo v2, "sxd"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/vnd.sun.xml.draw.template"

    const-string/jumbo v2, "std"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/vnd.sun.xml.impress"

    const-string/jumbo v2, "sxi"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/vnd.sun.xml.impress.template"

    const-string/jumbo v2, "sti"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/vnd.sun.xml.math"

    const-string/jumbo v2, "sxm"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/vnd.sun.xml.writer"

    const-string/jumbo v2, "sxw"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/vnd.sun.xml.writer.global"

    const-string/jumbo v2, "sxg"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/vnd.sun.xml.writer.template"

    const-string/jumbo v2, "stw"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/vnd.visio"

    const-string/jumbo v2, "vsd"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-abiword"

    const-string v2, "abw"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-apple-diskimage"

    const-string v2, "dmg"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-bcpio"

    const-string v2, "bcpio"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-bittorrent"

    const-string/jumbo v2, "torrent"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-cdf"

    const-string v2, "cdf"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-cdlink"

    const-string/jumbo v2, "vcd"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-chess-pgn"

    const-string/jumbo v2, "pgn"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-cpio"

    const-string v2, "cpio"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-debian-package"

    const-string v2, "deb"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-debian-package"

    const-string/jumbo v2, "udeb"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-director"

    const-string v2, "dcr"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-director"

    const-string v2, "dir"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-director"

    const-string v2, "dxr"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-dms"

    const-string v2, "dms"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-doom"

    const-string/jumbo v2, "wad"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-dvi"

    const-string v2, "dvi"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-flac"

    const-string v2, "flac"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-font"

    const-string/jumbo v1, "pfa"

    invoke-direct {v0, v4, v1}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-font"

    const-string/jumbo v1, "pfb"

    invoke-direct {v0, v4, v1}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-font"

    const-string v1, "gsf"

    invoke-direct {v0, v4, v1}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-font"

    const-string/jumbo v1, "pcf"

    invoke-direct {v0, v4, v1}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-font"

    const-string/jumbo v1, "pcf.Z"

    invoke-direct {v0, v4, v1}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-freemind"

    const-string/jumbo v2, "mm"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-futuresplash"

    const-string/jumbo v2, "spl"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-gnumeric"

    const-string v2, "gnumeric"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-go-sgf"

    const-string/jumbo v2, "sgf"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-graphing-calculator"

    const-string v2, "gcf"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-gtar"

    const-string v2, "gtar"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-gtar"

    const-string/jumbo v2, "tgz"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-gtar"

    const-string/jumbo v2, "taz"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-hdf"

    const-string v2, "hdf"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-ica"

    const-string v2, "ica"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-internet-signup"

    const-string v2, "ins"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-internet-signup"

    const-string v2, "isp"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-iphone"

    const-string v2, "iii"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-iso9660-image"

    const-string v2, "iso"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-jmol"

    const-string v2, "jmz"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-kchart"

    const-string v2, "chrt"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-killustrator"

    const-string v2, "kil"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-koan"

    const-string/jumbo v1, "skp"

    invoke-direct {v0, v7, v1}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-koan"

    const-string/jumbo v1, "skd"

    invoke-direct {v0, v7, v1}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-koan"

    const-string/jumbo v1, "skt"

    invoke-direct {v0, v7, v1}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-koan"

    const-string/jumbo v1, "skm"

    invoke-direct {v0, v7, v1}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-kpresenter"

    const-string v2, "kpr"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-kpresenter"

    const-string v2, "kpt"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-kspread"

    const-string v2, "ksp"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-kword"

    const-string v2, "kwd"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-kword"

    const-string v2, "kwt"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-latex"

    const-string v2, "latex"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-lha"

    const-string v2, "lha"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-lzh"

    const-string v2, "lzh"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-lzx"

    const-string v2, "lzx"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-maker"

    const-string v1, "frm"

    invoke-direct {v0, v3, v1}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-maker"

    const-string/jumbo v1, "maker"

    invoke-direct {v0, v3, v1}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-maker"

    const-string v1, "frame"

    invoke-direct {v0, v3, v1}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-maker"

    const-string v1, "fb"

    invoke-direct {v0, v3, v1}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-maker"

    const-string v1, "book"

    invoke-direct {v0, v3, v1}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-maker"

    const-string v1, "fbdoc"

    invoke-direct {v0, v3, v1}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-mif"

    const-string/jumbo v2, "mif"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-ms-wmd"

    const-string/jumbo v2, "wmd"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-ms-wmz"

    const-string/jumbo v2, "wmz"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-msi"

    const-string/jumbo v2, "msi"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-ns-proxy-autoconfig"

    const-string/jumbo v2, "pac"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-nwc"

    const-string/jumbo v2, "nwc"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-object"

    const-string/jumbo v2, "o"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-oz-application"

    const-string/jumbo v2, "oza"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-pkcs12"

    const-string/jumbo v2, "p12"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-pkcs7-certreqresp"

    const-string/jumbo v2, "p7r"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-pkcs7-crl"

    const-string v2, "crl"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-quicktimeplayer"

    const-string/jumbo v2, "qtl"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-shar"

    const-string/jumbo v2, "shar"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-shockwave-flash"

    const-string/jumbo v2, "swf"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-stuffit"

    const-string/jumbo v2, "sit"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-sv4cpio"

    const-string/jumbo v2, "sv4cpio"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-sv4crc"

    const-string/jumbo v2, "sv4crc"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-tar"

    const-string/jumbo v2, "tar"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-texinfo"

    const-string/jumbo v2, "texinfo"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-texinfo"

    const-string/jumbo v2, "texi"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-troff"

    const-string/jumbo v2, "t"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-troff"

    const-string/jumbo v2, "roff"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-troff-man"

    const-string/jumbo v2, "man"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-ustar"

    const-string/jumbo v2, "ustar"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-wais-source"

    const-string/jumbo v2, "src"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-wingz"

    const-string/jumbo v2, "wz"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-webarchive"

    const-string/jumbo v2, "webarchive"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-x509-ca-cert"

    const-string v2, "crt"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-x509-user-cert"

    const-string v2, "crt"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-xcf"

    const-string/jumbo v2, "xcf"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-xfig"

    const-string v2, "fig"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/xhtml+xml"

    const-string/jumbo v2, "xhtml"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "application/x-skt-lbs"

    const-string/jumbo v2, "mmf"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "audio/aac"

    const-string v2, "aac"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "audio/amr"

    const-string v2, "amr"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "audio/amr-wb"

    const-string v2, "awb"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "audio/imelody"

    const-string v2, "imy"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "audio/3ga"

    const-string v2, "3ga"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "audio/3gpp"

    const-string v2, "3gpp"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "audio/basic"

    const-string/jumbo v2, "snd"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "audio/midi"

    const-string/jumbo v2, "mid"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "audio/midi"

    const-string/jumbo v2, "midi"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "audio/midi"

    const-string v2, "kar"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "audio/mpeg"

    const-string/jumbo v1, "mpga"

    invoke-direct {v0, v5, v1}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "audio/mpeg"

    const-string/jumbo v1, "mpega"

    invoke-direct {v0, v5, v1}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "audio/mpeg"

    const-string/jumbo v1, "mp2"

    invoke-direct {v0, v5, v1}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "audio/mpeg"

    const-string/jumbo v1, "mp3"

    invoke-direct {v0, v5, v1}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "audio/mpeg"

    const-string v1, "m4a"

    invoke-direct {v0, v5, v1}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "audio/mpegurl"

    const-string v2, "m3u"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "audio/prs.sid"

    const-string/jumbo v2, "sid"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "audio/x-aiff"

    const-string v2, "aif"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "audio/x-aiff"

    const-string v2, "aiff"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "audio/x-aiff"

    const-string v2, "aifc"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "audio/x-gsm"

    const-string v2, "gsm"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "audio/x-mpegurl"

    const-string v2, "m3u"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "audio/x-ms-wma"

    const-string/jumbo v2, "wma"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "audio/x-ms-wax"

    const-string/jumbo v2, "wax"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "audio/x-pn-realaudio"

    const-string/jumbo v2, "ra"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "audio/x-pn-realaudio"

    const-string/jumbo v2, "rm"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "audio/x-pn-realaudio"

    const-string/jumbo v2, "ram"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "audio/x-realaudio"

    const-string/jumbo v2, "ra"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "audio/x-scpls"

    const-string/jumbo v2, "pls"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "audio/x-sd2"

    const-string/jumbo v2, "sd2"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "audio/x-wav"

    const-string/jumbo v2, "wav"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "image/bmp"

    const-string v2, "bmp"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "image/gif"

    const-string v2, "gif"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "image/ico"

    const-string v2, "cur"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "image/ico"

    const-string v2, "ico"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "image/ief"

    const-string v2, "ief"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "image/jpeg"

    const-string v2, "jpeg"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "image/jpeg"

    const-string v2, "jpg"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "image/jpeg"

    const-string v2, "jpe"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "image/pcx"

    const-string/jumbo v2, "pcx"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "image/png"

    const-string/jumbo v2, "png"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "image/svg+xml"

    const-string/jumbo v2, "svg"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "image/svg+xml"

    const-string/jumbo v2, "svgz"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "image/tiff"

    const-string/jumbo v2, "tiff"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "image/tiff"

    const-string/jumbo v2, "tif"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "image/vnd.djvu"

    const-string v2, "djvu"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "image/vnd.djvu"

    const-string v2, "djv"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "image/vnd.wap.wbmp"

    const-string/jumbo v2, "wbmp"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "image/x-cmu-raster"

    const-string/jumbo v2, "ras"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "image/x-coreldraw"

    const-string v2, "cdr"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "image/x-coreldrawpattern"

    const-string/jumbo v2, "pat"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "image/x-coreldrawtemplate"

    const-string v2, "cdt"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "image/x-corelphotopaint"

    const-string v2, "cpt"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "image/x-icon"

    const-string v2, "ico"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "image/x-jg"

    const-string v2, "art"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "image/x-jng"

    const-string v2, "jng"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "image/x-ms-bmp"

    const-string v2, "bmp"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "image/x-photoshop"

    const-string/jumbo v2, "psd"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "image/x-portable-anymap"

    const-string/jumbo v2, "pnm"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "image/x-portable-bitmap"

    const-string/jumbo v2, "pbm"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "image/x-portable-graymap"

    const-string/jumbo v2, "pgm"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "image/x-portable-pixmap"

    const-string/jumbo v2, "ppm"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "image/x-rgb"

    const-string/jumbo v2, "rgb"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "image/x-xbitmap"

    const-string/jumbo v2, "xbm"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "image/x-xpixmap"

    const-string/jumbo v2, "xpm"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string v1, "image/x-xwindowdump"

    const-string/jumbo v2, "xwd"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "model/iges"

    const-string v2, "igs"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "model/iges"

    const-string v2, "iges"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "model/mesh"

    const-string/jumbo v2, "msh"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "model/mesh"

    const-string/jumbo v2, "mesh"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "model/mesh"

    const-string/jumbo v2, "silo"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "text/calendar"

    const-string v2, "ics"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "text/calendar"

    const-string v2, "icz"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "text/comma-separated-values"

    const-string v2, "csv"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "text/css"

    const-string v2, "css"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "text/html"

    const-string v2, "htm"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "text/html"

    const-string v2, "html"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "text/h323"

    const-string v2, "323"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "text/iuls"

    const-string/jumbo v2, "uls"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "text/mathml"

    const-string/jumbo v2, "mml"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "text/plain"

    const-string/jumbo v1, "txt"

    invoke-direct {v0, v6, v1}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "text/plain"

    const-string v1, "asc"

    invoke-direct {v0, v6, v1}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "text/plain"

    const-string/jumbo v1, "text"

    invoke-direct {v0, v6, v1}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "text/plain"

    const-string v1, "diff"

    invoke-direct {v0, v6, v1}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "text/plain"

    const-string/jumbo v1, "po"

    invoke-direct {v0, v6, v1}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "text/richtext"

    const-string/jumbo v2, "rtx"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "text/rtf"

    const-string/jumbo v2, "rtf"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "text/texmacs"

    const-string/jumbo v2, "ts"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "text/text"

    const-string/jumbo v2, "phps"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "text/tab-separated-values"

    const-string/jumbo v2, "tsv"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "text/xml"

    const-string/jumbo v2, "xml"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "text/x-bibtex"

    const-string v2, "bib"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "text/x-boo"

    const-string v2, "boo"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "text/x-c++hdr"

    const-string v2, "h++"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "text/x-c++hdr"

    const-string v2, "hpp"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "text/x-c++hdr"

    const-string v2, "hxx"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "text/x-c++hdr"

    const-string v2, "hh"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "text/x-c++src"

    const-string v2, "c++"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "text/x-c++src"

    const-string v2, "cpp"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "text/x-c++src"

    const-string v2, "cxx"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "text/x-chdr"

    const-string v2, "h"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "text/x-component"

    const-string v2, "htc"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "text/x-csh"

    const-string v2, "csh"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "text/x-csrc"

    const-string v2, "c"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "text/x-dsrc"

    const-string v2, "d"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "text/x-haskell"

    const-string v2, "hs"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "text/x-java"

    const-string v2, "java"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "text/x-literate-haskell"

    const-string v2, "lhs"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "text/x-moc"

    const-string/jumbo v2, "moc"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "text/x-pascal"

    const-string/jumbo v2, "p"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "text/x-pascal"

    const-string/jumbo v2, "pas"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "text/x-pcs-gcd"

    const-string v2, "gcd"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "text/x-setext"

    const-string v2, "etx"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "text/x-tcl"

    const-string/jumbo v2, "tcl"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "text/x-tex"

    const-string/jumbo v2, "tex"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "text/x-tex"

    const-string v2, "ltx"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "text/x-tex"

    const-string/jumbo v2, "sty"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "text/x-tex"

    const-string v2, "cls"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "text/x-vcalendar"

    const-string/jumbo v2, "vcs"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "text/x-vcard"

    const-string/jumbo v2, "vcf"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "text/x-vnote"

    const-string/jumbo v2, "vnt"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "video/3gpp"

    const-string v2, "3gpp"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "video/3gpp"

    const-string v2, "3gp"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "video/3gpp"

    const-string v2, "3g2"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "video/dl"

    const-string v2, "dl"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "video/dv"

    const-string v2, "dif"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "video/dv"

    const-string v2, "dv"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "video/fli"

    const-string v2, "fli"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "video/m4v"

    const-string v2, "m4v"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "video/mpeg"

    const-string/jumbo v2, "mpeg"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "video/mpeg"

    const-string/jumbo v2, "mpg"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "video/mpeg"

    const-string/jumbo v2, "mpe"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "video/mp4"

    const-string/jumbo v2, "mp4"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "video/mpeg"

    const-string v2, "VOB"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "video/quicktime"

    const-string/jumbo v2, "qt"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "video/quicktime"

    const-string/jumbo v2, "mov"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "video/vnd.mpegurl"

    const-string/jumbo v2, "mxu"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "video/x-la-asf"

    const-string v2, "lsf"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "video/x-la-asf"

    const-string v2, "lsx"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "video/x-mng"

    const-string/jumbo v2, "mng"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "video/x-ms-asf"

    const-string v2, "asf"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "video/x-ms-asf"

    const-string v2, "asx"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "video/x-ms-wm"

    const-string/jumbo v2, "wm"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "video/x-ms-wmv"

    const-string/jumbo v2, "wmv"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "video/x-ms-wmx"

    const-string/jumbo v2, "wmx"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "video/x-ms-wvx"

    const-string/jumbo v2, "wvx"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "video/x-msvideo"

    const-string v2, "avi"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "video/x-sgi-movie"

    const-string/jumbo v2, "movie"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "x-conference/x-cooltalk"

    const-string v2, "ice"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    const-string/jumbo v1, "x-epoc/x-sisx-app"

    const-string/jumbo v2, "sisx"

    invoke-direct {v0, v1, v2}, Landroid/webkit/MimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    :cond_0
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    return-object v0
.end method

.method private loadEntry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "mimeType"
    .parameter "extension"

    .prologue
    .line 94
    iget-object v0, p0, Landroid/webkit/MimeTypeMap;->mMimeTypeToExtensionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Landroid/webkit/MimeTypeMap;->mMimeTypeToExtensionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :cond_0
    iget-object v0, p0, Landroid/webkit/MimeTypeMap;->mExtensionToMimeTypeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    return-void
.end method

.method private static mimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "extension"

    .prologue
    .line 129
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "mimeType"

    .prologue
    .line 161
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 162
    iget-object v0, p0, Landroid/webkit/MimeTypeMap;->mMimeTypeToExtensionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    .line 165
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "extension"

    .prologue
    .line 120
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 121
    iget-object v0, p0, Landroid/webkit/MimeTypeMap;->mExtensionToMimeTypeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    .line 124
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasExtension(Ljava/lang/String;)Z
    .locals 1
    .parameter "extension"

    .prologue
    .line 147
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 148
    iget-object v0, p0, Landroid/webkit/MimeTypeMap;->mExtensionToMimeTypeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 150
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMimeType(Ljava/lang/String;)Z
    .locals 1
    .parameter "mimeType"

    .prologue
    .line 107
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 108
    iget-object v0, p0, Landroid/webkit/MimeTypeMap;->mMimeTypeToExtensionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 111
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
